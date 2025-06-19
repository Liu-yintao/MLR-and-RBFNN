function [XW_XF,R_XF,R_ZT,ycz,geshu] = MCDzxd22(data2,q,p)
JJJ = 500;
XW = data2(:,2);  
XWW = ismissing(XW);
XW = rmmissing(XW);        
SD = data2(:,1);   
SD(find(XWW == 1)) = [];
YCZ_WZ = zeros(length(XW),JJJ);
XGX_XF = zeros(JJJ,1);   
XF_XF = zeros(length(data2),JJJ);   
for jj = 1:JJJ
YB = floor(q*length(XW));   
SJ = [];   
SJ = randsample(1:length(XW),YB);     XW_YB = XW(SJ);  SD_YB = SD(SJ);    
JZ_YB = mean(XW_YB);  
XFC_YB = (XW_YB-JZ_YB)'*(XW_YB-JZ_YB)/(YB-1);  
XFC_YB_JZ = [];JZ_JZ = [];MD_JZ = [];MD = [];WZ = zeros(YB,1);  
XFC_YB_JZ(1).A =  XFC_YB;   
JZ_JZ(1) = JZ_YB;  
p1 = 1;
while (1)
for j = 1:length(XW)
MD(j) = sqrt((XW(j) - JZ_YB)*pinv(XFC_YB)*(XW(j)- JZ_YB));  ?
end
DM = sqrt((XW - JZ_YB)'*pinv(XFC_YB)*(XW - JZ_YB));
MD_JZ(p1,:) = MD;    
MD_PX = sort(MD);     
MD_YB = MD_PX(1:YB);      
for kk = 1:length(MD_YB)    
    [~,WZWZ] = find(MD == MD_YB(kk));   
    WZ(kk) = WZWZ(1);
end
XW_YB = XW(WZ);  
SD_YB = SD(WZ); 
JZ_YB = mean(XW_YB);
XFC_YB = (XW_YB-JZ_YB)'*(XW_YB-JZ_YB)/YB; 
p1 = p1+1;
XFC_YB_JZ(p1).A =  XFC_YB;
JZ_JZ(p1) = JZ_YB;
MD_JZ(p1,:) = MD;
if XFC_YB_JZ(p1).A== 0 || XFC_YB_JZ(p1).A == XFC_YB_JZ(p1-1).A
    DUAN = p1;   
    break;
end
end
XFC_MCD = XFC_YB_JZ(DUAN).A;  
JZ_MCD = JZ_JZ(DUAN);       
MD_MCD = MD_JZ(DUAN,:);   
TTT = sqrt(p);     
ycz = [];     
ycz = find(MD_MCD > TTT);   
ycz1 = ycz;
ttt = find(XWW == 1);
if isempty(ttt) == 0
    for f = 1:length(ttt)
        for ff = 1:length(ycz)
            if ycz(ff)>=ttt(f)
                ycz(ff) = ycz(ff)+1;     
            end
        end
    end
end
geshu1 = length(ycz);
XW1 = XW;  
XW1 = xiufu2(XW1,ycz1); 
r_xf = corr(SD,XW1);      
r_zt = corr(SD,XW);   
XW2 = XW1;
tt = nan;
weizhi = find(XWW == 1);
for i = 1:length(weizhi)
    XW2 = [XW2(1:weizhi(i)-1); tt ;XW2(weizhi(i):end)];     
end
XGX_XF(jj) = r_xf;   
XF_XF(:,jj) = XW2;         
YCZ_WZ(1:length(ycz),jj) = ycz;   
GESHU(jj) = geshu1;   
end   
XW_XF = [];R_XF = [];   
R_XF = max(abs(XGX_XF));   
dd = find(abs(XGX_XF) == R_XF);   
XW_XF = XF_XF(:,dd(1));   
R_ZT = r_zt;   
geshu = GESHU(dd(1));   
ycz = YCZ_WZ(:,dd(1));   
end