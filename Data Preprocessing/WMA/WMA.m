clc;
clear all;
close all;
data = xlsread('MyoRight-ztd-dajia-30-emg-1519732926.csv');
b = data(:,2);
lenn=length(data(:,2));

nlen=input('����������������nlen: '); %����nlen
for indi=1:lenn-nlen+1 %��ʼ��ѭ��
    index=indi:indi+nlen-1;%
    average=sum(b(index))/nlen; %
    sig2(indi)=average; %��ֵ���ź�2
end
% plot(data(:,1),a1);
% a = data(:,2)
%��ͨ�˲�
% b = smooth(aa,20,'moving');

%������С�����˲�
% d = smooth(aa,30,'lowess');


% legend('��������','Ĭ����ֵ�˲�','20����ֵ�˲�')

% xx = medfilt1(a,20);

subplot(2,1,1); 
plot(b);
subplot(2,1,2); 
plot(sig2);
% plot(data(:,1),data(:,2))