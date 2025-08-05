
load('smart_energy_model_data.mat');

% Plot current over time
figure;
plot(time, I_total, 'LineWidth', 2);
hold on;
yline(threshold, '--r', 'Threshold');
xlabel('Time (s)');
ylabel('Current (A)');
title('Real-Time Load Monitoring and Load Shedding');
legend('Total Current', 'Threshold');
grid on;

% Simulate load shedding logic
figure;
plot(time, load_shed, 'k', 'LineWidth', 2);
xlabel('Time (s)');
ylabel('Load Shedding (1=ON)');
title('Load Shedding Activation');
ylim([-0.1, 1.1]);
grid on;
