function [ M, Omega ] = sensing(I, p)
    M = I;
    [n1,n2,n3]=size(M);
 
%������������
amount = fix(n1*n2*p);
sampledata = zeros(amount,3);
%������ɲ����������
for j=1:amount
    x = randi(n1,1,1);    
    y = randi(n2,1,1);        
    %ȡ�õ�����
    sampledata(j,:) = M(x,y,:);
    %��ͼ�ϱ�עΪ��ɫ
    M(x,y,:)=[255 255 255];
end
Omega = (M < 254);
end

