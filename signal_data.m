clear all;clc;
%NE data
% NE1 = readtable('C:\\Users\\fatem\\Desktop\\University\\FYP\\FK_dummytummy\\V3\\test2_NE1.csv','NumHeaderLines',1);
% NE2 = readtable('C:\\Users\\fatem\\Desktop\\University\\FYP\\FK_dummytummy\\V3\\test3_NE2.csv','NumHeaderLines',1);

csvFiles = dir('*.csv') ; 
N = length(csvFiles) ;
for i = 1:N
    sensor_Data = readtable(csvFiles(i).name) ;
    % plot
    figure(i)
    title(sprintf('Diagram for %s!', csvFiles(i).name))
    stackedplot(sensor_Data)
    
end

% for k = 1 : length(files)
%     load (files(k).name)
%     figure(k)
%     plot(data.time,data.s)
%     hold on
% end