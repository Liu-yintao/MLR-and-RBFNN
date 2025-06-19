%% I. Clear environment variables
clear all
clc

%% II. Training set/test set generation
%%
% 1. Import Data
input=xlsread('input.xlsx');   %   x
output=xlsread('output.xlsx');   %   y
KK = 70;    
%%
for i=1:500
    temp = randperm(size(input,1));
    input_train = input(temp(1:KK),:)';
    output_train = output(temp(1:KK),:)';
    input_test = input(temp(KK+1:end),:)';
    output_test = output(temp(KK+1:end),:)';
    M = size(input_train,2);
    N = size(input_test,2);     

    %% ¢ó.Data normalization
    %%
     [input_train_m, ps_input] = mapminmax(input_train,0,1);
    input_test_m = mapminmax('apply',input_test,ps_input);
    %%
     [output_train_m, ps_output] = mapminmax(output_train,0,1);
    output_test_m = mapminmax('apply',output_test,ps_output);

    %% ¢ô. Creation and simulation testing of RBF neural network
    %%
    t = cputime;
    spread = 3e5;   
    % 1. Create Network
    net = newrbe(input_train_m,output_train_m,spread);  

    %%
    % 3.Simulation testing
    an1=sim(net,input_train_m);  
    an2=sim(net,input_test_m);
    %%
    % 5.Data de normalization
    RBFoutput1=mapminmax('reverse',an1,ps_output);
    RBFoutput2=mapminmax('reverse',an2,ps_output);
    t = cputime - t;
    %% ¢ö.Result analysis
    %%
    view (net);    
    % 1.Prediction Error
%     error=RBFoutput-output_test;
    %%
    % 2.Relative error
%     Rerror=abs(RBFoutput-output_test)./output_test;
    %%
    % 3.Root Mean Squared Error
    RMSE1=sqrt(sum((output_train-RBFoutput1).^2)/M);
    RMSE2=sqrt(sum((output_test-RBFoutput2).^2)/N);
    %%
    % 4. Coefficient of determination-R^2
    r=corrcoef(RBFoutput2,output_test);
    r=r(1,2);
    R2 = (N * sum(RBFoutput .* output_test) - sum(RBFoutput) * sum(output_test))^2 / ((N * sum((RBFoutput).^2) - (sum(RBFoutput))^2) * (N * sum((output_test).^2) - (sum(output_test))^2)); 
    result(i,:)=[r,R2,RMSE,t];
end

%     %% ¢ö. Generate Graph
%     figure
%     plot(1:N,output_test,'b:*',1:N,RBFoutput,'r-o')
%     legend('True value','Predicted value')
%     xlabel('forecasting sample')
%     ylabel('Soil moisture value')
%     string = {'Comparison of Soil Moisture Prediction Results in Test Sets';['R^2=' num2str(R2)]};
%     title(string)

