%%  
warning off            
close all               
clear                   
clc                     

% data = xlsread('data.xlsx');
input=xlsread('input.xlsx',  1  );
output=xlsread('output.xlsx',  1  );
data = [input output];
KK = 70;

%%  Divide the training set and testing set
temp = 1:length(output);
input_train = data(temp(1: KK), 1: 11)';
output_train = data(temp(1: KK), 12)';
M = size(input_train, 2);
input_test = data(temp(KK+1: end), 1: 11)';
output_test = data(temp(KK+1: end), 12)';
N = size(input_test, 2);

%%  Data normalization
[p_train, ps_input] = mapminmax(input_train, 0, 1);
p_test = mapminmax('apply', input_test, ps_input);
[t_train, ps_output] = mapminmax(output_train, 0, 1);
t_test = mapminmax('apply', output_test, ps_output);
%%  Transposition to adapt the model
p_train = p_train'; p_test = p_test';
t_train = t_train'; t_test = t_test';

%%  Create Model
model = fitlm(p_train,t_train);

%%  Simulation prediction
t_sim1 = predict(model, p_train);
t_sim2 = predict(model, p_test);

%%  Data de normalization
output_sim1 = mapminmax('reverse', t_sim1, ps_output);
output_sim2 = mapminmax('reverse', t_sim2, ps_output);
output_sim = [output_sim1 ;output_sim2]';
%%  Root Mean Squared Error
error1 = sqrt(sum((output_sim1' - output_train).^2) ./ M);
error2 = sqrt(sum((output_sim2' - output_test ).^2) ./ N);

%%  Generate Graph
% figure
% plot(1: M, output_train, 'r-*', 1: M, output_sim1, 'b-o', 'LineWidth', 1)
% legend('True value','Predicted value')
% xlabel('forecasting sample')
% ylabel('forecast results')
% string = {'Comparison of Training Set Prediction Results'; ['RMSE=' num2str(error1)]};
% title(string)
% xlim([1, M])
% grid

% figure
% plot(1: N, output_test, 'r-*', 1: N, output_sim2, 'b-o', 'LineWidth', 1)
% legend('True value','Predicted value')
% xlabel('forecasting sample')
% ylabel('forecast results')
% string = {'Comparison of Test Set Prediction Results';['RMSE=' num2str(error2)]};
% title(string)
% xlim([1, N])
% grid

%%  Calculation of relevant indicators
%  R2
R1 = 1 - norm(output_train - output_sim1')^2 / norm(output_train - mean(output_train))^2;
R2 = 1 - norm(output_test -  output_sim2')^2 / norm(output_test -  mean(output_test ))^2;

% disp(['The R2 of the training set data is£º', num2str(R1)])
% disp(['The R2 of the test set data is£º', num2str(R2)])

%  MAE
mae1 = sum(abs(output_sim1' - output_train)) ./ M ;
mae2 = sum(abs(output_sim2' - output_test )) ./ N ;

% disp(['The MAE of the training set data is£º', num2str(mae1)])
% disp(['The MAE of the test set data is£º', num2str(mae2)])

%  MBE
mbe1 = sum(output_sim1' - output_train) ./ M ;
mbe2 = sum(output_sim2' - output_test ) ./ N ;
% disp(['The MBE of the training set data is£º', num2str(mbe1)])
% disp(['The MBE of the test set data is£º', num2str(mbe2)])
