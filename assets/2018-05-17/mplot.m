clear all; clc;
figure;

% humidity
% chip = 47595;
chip = 368172;
cmd = sprintf('cat log.txt | grep %d/humidity | awk ''{split($0, a, "|"); print a[2]}'' > bathroom_humidity', chip);
unix(cmd);
data = load('bathroom_humidity');
len = length(data);
subplot(1, 2, 1);
hold on; grid on;
plot(data, 'linewidth', 2)
ylabel('Relative Humidity (%)')

% temperature
cmd = sprintf('cat log.txt | grep %d/temperature | awk ''{split($0, a, "|"); print a[2]}'' > bathroom_temperature', chip);
unix(cmd);
data = load('bathroom_temperature');
len = length(data);
subplot(1, 2, 2);
hold on; grid on;
plot(data, 'linewidth', 2)
ylabel('Temperature (C)')

unix('rm bathroom_*');