import struct
import csv
import sys
import os
import glob


# docu from http://forums.ni.com/attachments/ni/60/169/1/dmheader.pdf

class DIAdemType:
    def __init__(self):
        self.name = ""  # (200)
        self.comments = ""  # (201)
        self.unit = ""  # (202)
        self.implicit = True  # (210)
        self.length = 0  # (220) No. of values (channel length)
        self.start_offset = 0  # (221) File offset: Pointer to the first date of a channel
        self.start_value = 0  # (240) Starting value for the generation or offset
        self.step = 0.0  # (241) Step width for generation or scaling factor
        self.min_value = 0  # (250)  Minimum value of the channel
        self.max_value = 0  # (251)  Minimum value of the channel
        self.store_type = 0  # (213) 0=BLOCK, 1=CHANNEL
        self.data_type = ""  # (214) should be REAL64 for now (others are available)

        # not in spec (need for conversion to csv)
        self.last_value = 0


def read_r64(fname: str):
    types = []

    with open(fname + ".dat", "r") as f:
        lines = f.readlines()
        lines = [x.replace('\n', '').strip() for x in lines]
        lines = list(filter(len, lines))
        for line in lines:
            line = str(line)
            if line.startswith("#BEGINCHANNELHEADER"):
                types.append(DIAdemType())
            elif line.startswith("200"):
                types[-1].name = line.split(",")[1]
            elif line.startswith("201"):
                types[-1].comments = line.split(",")[1]
            elif line.startswith("202"):
                types[-1].unit = line.split(",")[1]
            elif line.startswith("210"):
                if line.split(",")[1] == "EXPLIZIT":
                    types[-1].implicit = False
            elif line.startswith("213"):
                if line.split(",")[1] == "BLOCK":
                    types[-1].store_type = 0
                else:
                    types[-1].store_type = 1
            elif line.startswith("214"):
                types[-1].data_type = line.split(",")[1]
            elif line.startswith("220"):
                types[-1].length = int(line.split(",")[1])
            elif line.startswith("221"):
                types[-1].start_offset = int(line.split(",")[1])
            elif line.startswith("240"):
                types[-1].start_value = float(line.split(",")[1])
            elif line.startswith("241"):
                types[-1].step = float(line.split(",")[1])
            elif line.startswith("250"):
                types[-1].min_value = float(line.split(",")[1])
            elif line.startswith("251"):
                types[-1].max_value = float(line.split(",")[1])

    explicit_types = []
    implicit_types = []
    for type in types:
        if type.implicit:
            implicit_types.append(type)
        else:
            explicit_types.append(type)

    # unpack explicit types, assuming everything is REAL64 for now

    # sort list by offset

    explicit_types = sorted(explicit_types, key=lambda dtype: dtype.start_offset)

    struct_fmt = "=" + len(explicit_types) * "d"
    struct_len = struct.calcsize(struct_fmt)
    struct_unpack = struct.Struct(struct_fmt).unpack_from

    values = []
    with open(fname + ".r64", "rb") as f:
        while True:
            data = f.read(struct_len)
            if not data: break
            s = struct_unpack(data)
            # print(s)
            values.append(s)

    with open(fname + ".csv", 'w', newline='') as csvfile:
        spamwriter = csv.writer(csvfile, delimiter=';',
                                quotechar='|', quoting=csv.QUOTE_MINIMAL)
        csv_header = []

        for dtype in implicit_types:
            csv_header.append(dtype.name + "[" + dtype.unit + "]")
            # initialize last value
            dtype.last_value = dtype.start_value

        for dtype in explicit_types:
            csv_header.append(dtype.name + "[" + dtype.unit + "]")

        spamwriter.writerow(csv_header)

        for value in values:
            csv_line = []
            for dtype in implicit_types:
                csv_line.append(dtype.last_value)
                dtype.last_value += dtype.step

            csv_line += value

            spamwriter.writerow(csv_line)


if len(sys.argv) < 2:
    print("Error! File name Parameter missing!")
    exit(-1)

fname_with_extension = sys.argv[1]

if not os.path.isdir(fname_with_extension):

    fname_splitted = fname_with_extension.split(".")
    if len(fname_splitted) > 2:
        print("Error! File has multiple extensions")

    read_r64(fname_splitted[0])

else:
    diadem_files = glob.glob(fname_with_extension + "/*.dat")
    for file in diadem_files:
        fname_splitted = file.split(".")
        read_r64(fname_splitted[0])

