clc
clear all

%% Fetch all files
data_sim_A1 = importdata('D:/MSc Digital Engg/Projects/DE Controller KUKA/Git/kuka_controller_project/Traces_Simulation/PTP_vel_new/KukaOL - 0_A1_PTP_10_KRCIpo.csv');
data_real_A1 = importdata('WINDOWS-V37DJA1 - 8101392_A1_PTP_10_po85_KRCIpo.csv');

data_sim_A2 = importdata('D:/MSc Digital Engg/Projects/DE Controller KUKA/Git/kuka_controller_project/Traces_Simulation/PTP_vel_new/KukaOL - 0_A2_PTP_10_KRCIpo.csv');
data_real_A2 = importdata('WINDOWS-V37DJA1 - 8101392_A2_PTP_10_po85_KRCIpo.csv');

data_sim_A3 = importdata('D:/MSc Digital Engg/Projects/DE Controller KUKA/Git/kuka_controller_project/Traces_Simulation/PTP_vel_new/KukaOL - 0_A3_PTP_10_KRCIpo.csv');
data_real_A3 = importdata('WINDOWS-V37DJA1 - 8101392_A3_PTP_10_po85_KRCIpo.csv');

data_sim_A4 = importdata('D:/MSc Digital Engg/Projects/DE Controller KUKA/Git/kuka_controller_project/Traces_Simulation/PTP_vel_new/KukaOL - 0_A4_PTP_10_KRCIpo.csv');
data_real_A4 = importdata('WINDOWS-V37DJA1 - 8101392_A4_PTP_10_po85_KRCIpo.csv');

data_sim_A5 = importdata('D:/MSc Digital Engg/Projects/DE Controller KUKA/Git/kuka_controller_project/Traces_Simulation/PTP_vel_new/KukaOL - 0_A5_PTP_10_KRCIpo.csv');
data_real_A5 = importdata('WINDOWS-V37DJA1 - 8101392_A5_PTP_10_po85_KRCIpo.csv');

data_sim_A6 = importdata('D:/MSc Digital Engg/Projects/DE Controller KUKA/Git/kuka_controller_project/Traces_Simulation/PTP_vel_new/KukaOL - 0_A6_PTP_10_KRCIpo.csv');
data_real_A6 = importdata('WINDOWS-V37DJA1 - 8101392_A6_PTP_10_po85_KRCIpo.csv');

%% Plotting the axis position of Simulation and real robot for Axis 1
f1 = figure(1);
f1.WindowState = 'Maximized';
hold on
grid on
plot(data_sim_A1.data(:,1),data_sim_A1.data(:,8));
plot(data_real_A1.data(:,1)+0.009,data_real_A1.data(:,8));        %Shift Real robot trace by 0.009 towards right
hold off
title('Simulation and Real position plots of A1 10% velocity');
legend({'Simulation','Real Robot'}, 'location', 'NORTHWEST')
xlabel(data_sim_A1.textdata(1));
ylabel(data_sim_A1.textdata(8));
saveas(gcf, 'A1.png');

%% Plotting the axis position of Simulation and real robot for Axis 2
f2 = figure(2);
f2.WindowState = 'Maximized';
hold on
grid on
plot(data_sim_A2.data(:,1),data_sim_A2.data(:,9));
plot(data_real_A2.data(:,1)-0.0025,data_real_A2.data(:,9));        %Shift Real robot trace by 0.0025 towards left
hold off
title('Simulation and Real position plots of A2 10% velocity');
legend({'Simulation','Real Robot'}, 'location', 'NORTHWEST');
xlabel(data_sim_A2.textdata(1));
ylabel(data_sim_A2.textdata(9));
saveas(gcf, 'A2.png');

%% Plotting the axis position of Simulation and real robot for Axis 3
f3 = figure(3);
f3.WindowState = 'Maximized';
hold on
grid on
plot(data_sim_A3.data(:,1),data_sim_A3.data(:,10));
plot(data_real_A3.data(:,1)+0.0095,data_real_A3.data(:,10));        %Shift Real robot trace by 0.0095 towards right
hold off
title('Simulation and Real position plots of A3 10% velocity');
legend({'Simulation','Real Robot'}, 'location', 'NORTHWEST');
xlabel(data_sim_A3.textdata(1));
ylabel(data_sim_A3.textdata(10));
saveas(gcf, 'A3.png');

%% Plotting the axis position of Simulation and real robot for Axis 4
f4 = figure(4);
f4.WindowState = 'Maximized';
hold on
grid on
plot(data_sim_A4.data(:,1),data_sim_A4.data(:,11));
plot(data_real_A4.data(:,1)+0.008,data_real_A4.data(:,11));        %Shift Real robot trace by 0.008 towards right
hold off
title('Simulation and Real position plots of A4 10% velocity');
legend({'Simulation','Real Robot'}, 'location', 'NORTHWEST');
xlabel(data_sim_A4.textdata(1));
ylabel(data_sim_A4.textdata(11));
saveas(gcf, 'A4.png');

%% Plotting the axis position of Simulation and real robot for Axis 5
f5 = figure(5);
f5.WindowState = 'Maximized';
hold on
grid on
plot(data_sim_A5.data(:,1),data_sim_A5.data(:,12));
plot(data_real_A5.data(:,1)+0.021,data_real_A5.data(:,12));        %Shift Real robot trace by 0.021 towards right
hold off
title('Simulation and Real position plots of A5 10% velocity');
legend({'Simulation','Real Robot'}, 'location', 'NORTHWEST');
xlabel(data_sim_A5.textdata(1));
ylabel(data_sim_A5.textdata(12));
saveas(gcf, 'A5.png');

%% Plotting the axis position of Simulation and real robot for Axis 6
f6 = figure(6);
f6.WindowState = 'Maximized';
hold on
grid on
plot(data_sim_A6.data(:,1),data_sim_A6.data(:,13));
plot(data_real_A6.data(:,1)+0.0215,data_real_A6.data(:,13));        %Shift Real robot trace by 0.0215 towards right
hold off
title('Simulation and Real position plots of A6 10% velocity');
legend({'Simulation','Real Robot'}, 'location', 'NORTHWEST');
xlabel(data_sim_A6.textdata(1));
ylabel(data_sim_A6.textdata(13));
saveas(gcf, 'A6.png');
