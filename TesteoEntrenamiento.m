clc
close all
clear all

dataset = readmatrix('clienteDatosOneHotEncodingCambiado.xlsx');

%%DIVIDIR EL DATASET A ENTRENAMIENTO Y TESTEO
cv = cvpartition(height(dataset), 'Holdout', 0.2);
trainingData = dataset(training(cv), :);
testingData = dataset(test(cv), :);

%%DATASET DE ENTRENAMIENTO
train_data = trainingData(: , 1:end-1);
train_y = trainingData(:,end);

%%DATASET DE TESTEO
test_data = testingData(: , 1:end-1);
test_y = testingData(:,end);

label = (train_y == 1:length(unique(train_y)));