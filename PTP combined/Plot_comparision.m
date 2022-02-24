clc
clear all

% A1-A2_2 
figure(1);
data_sim = importdata('KukaOL - 0_A1_A2_2_NextGenDrive#1.csv');
data_real = importdata('WINDOWS-V37DJA1 - 8101392_A1_A2_2_NextGenDrive#1.csv');
plot(data_sim.data(:,1),data_sim.data(:,6));
hold on
plot(data_real.data(:,1),data_real.data(:,6));
grid on
title('PTP combined A1-A2 Real and Simulation velocity plots for A1');
legend('Simulation','Real Robot')
xlabel(data_sim.textdata(1));
ylabel(data_sim.textdata(6));

% A1-A3_2 
figure(2);
data_sim = importdata('KukaOL - 0_A1_A3_2_NextGenDrive#1.csv');
data_real = importdata('WINDOWS-V37DJA1 - 8101392_A1_A3_2_NextGenDrive#1.csv');
plot(data_sim.data(:,1),data_sim.data(:,6));
hold on
plot(data_real.data(:,1),data_real.data(:,6));
grid on
title('PTP combined A1-A3 Real and Simulation velocity plots for A1');
legend('Simulation','Real Robot')
xlabel(data_sim.textdata(1));
ylabel(data_sim.textdata(6));

% A1-A4_2 
figure(3);
data_sim = importdata('KukaOL - 0_A1_A4_2_NextGenDrive#1.csv');
data_real = importdata('WINDOWS-V37DJA1 - 8101392_A1_A4_2_NextGenDrive#1.csv');
plot(data_sim.data(:,1),data_sim.data(:,6));
hold on
plot(data_real.data(:,1),data_real.data(:,6));
grid on
title('PTP combined A1-A4 Real and Simulation velocity plots for A1');
legend('Simulation','Real Robot')
xlabel(data_sim.textdata(1));
ylabel(data_sim.textdata(6));

% A1-A5_2 
figure(4);
data_sim = importdata('KukaOL - 0_A1_A5_2_NextGenDrive#1.csv');
data_real = importdata('WINDOWS-V37DJA1 - 8101392_A1_A5_2_NextGenDrive#1.csv');
plot(data_sim.data(:,1),data_sim.data(:,6));
hold on
plot(data_real.data(:,1),data_real.data(:,6));
grid on
title('PTP combined A1-A5 Real and Simulation velocity plots for A1');
legend('Simulation','Real Robot')
xlabel(data_sim.textdata(1));
ylabel(data_sim.textdata(6));

% A1-A5_2 
figure(5);
data_sim = importdata('KukaOL - 0_A1_A6_2_NextGenDrive#1.csv');
data_real = importdata('WINDOWS-V37DJA1 - 8101392_A1_A6_2_NextGenDrive#1.csv');
plot(data_sim.data(:,1),data_sim.data(:,6));
hold on
plot(data_real.data(:,1),data_real.data(:,6));
grid on
title('PTP combined A1-A6 Real and Simulation velocity plots for A1');
legend('Simulation','Real Robot')
xlabel(data_sim.textdata(1));
ylabel(data_sim.textdata(6));

% A1-A5_1 
figure(6);
data_sim = importdata('KukaOL - 0_A1_A6_1_NextGenDrive#1.csv');
data_real = importdata('WINDOWS-V37DJA1 - 8101392_A1_A6_1_NextGenDrive#1.csv');
plot(data_sim.data(:,1),data_sim.data(:,6));
hold on
plot(data_real.data(:,1),data_real.data(:,6));
grid on
title('PTP combined A1-A6 Real and Simulation velocity plots for A1');
legend('Simulation','Real Robot')
xlabel(data_sim.textdata(1));
ylabel(data_sim.textdata(6));

% % A2-A4_2 
% figure(4);
% data_sim = importdata('KukaOL - 0_A2_A4_2_NextGenDrive#2.csv');
% data_real = importdata('WINDOWS-V37DJA1 - 8101392_A2_A4_2_NextGenDrive#2.csv');
% plot(data_sim.data(:,1),data_sim.data(:,6));
% hold on
% plot(data_real.data(:,1),data_real.data(:,6));
% grid on
% title('PTP combined A2-A4 Real and Simulation velocity plots for A2');
% legend('Simulation','Real Robot')
% xlabel(data_sim.textdata(1));
% ylabel(data_sim.textdata(6));
% 
% % A3-A6_2 
% figure(5);
% data_sim = importdata('KukaOL - 0_A3_A6_2_NextGenDrive#3.csv');
% data_real = importdata('WINDOWS-V37DJA1 - 8101392_A3_A6_2_NextGenDrive#3.csv');
% plot(data_sim.data(:,1),data_sim.data(:,6));
% hold on
% plot(data_real.data(:,1),data_real.data(:,6));
% grid on
% title('PTP combined A3-A6 Real and Simulation velocity plots for A3');
% legend('Simulation','Real Robot')
% xlabel(data_sim.textdata(1));
% ylabel(data_sim.textdata(6));

