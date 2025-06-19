% lie = [5 10 15 20 25 30 35 40];
% K = [5 10 15];
% for n = 1:length(K)
    
% for r = 1:length(lie)
function [xwsheng,gaosheng,xwjiang,gaojiang] = zxd929shuang(h,pp,p1,p2,f,ff,fff,kk,Weiju,Gele)
% xwjiang = [];
% xwsheng = [];
% p1 = 10;  
% p2 = 20;  
% % pp =  lie(r) ;    %   21  16  11  6                
% pp = 10;
%%  
% f =  1  ;
% ff =  2  ;
% fff =  2  ;
% h =         27         ;  
ans1 = Weiju{h};  
ans2 = Gele{h};  
% ans2 = [ ans21  ans22  ans23 ];  
% % kk = K(n) ;       
% kk = 10;
% qq = 1;      
for y =   3  :  44    %    size(ans2,2)       
%     y =       29        ;       
 
% pp = 11;     

    ele_yao = ans2(y).jiaodu;                 
    [u,~] = find(ele_yao<0);
    ele_yao(u) = 0;
    weijuP1P2C5 = ans1(y).SP;        
                
% ele_yong = [];      
ele_yongs = [];     
ele_yongj =[];    
weijuP1P2C51s = [];        
weijuP1P2C51j = [];    
[qqqq,~] = find(ele_yao ~=0,1,'first');     
[qqqq1,~] = find(ele_yao ~=0,1,'last');     
weiba =[];   
toutou = [];   
e = 1;   
if qqqq == 1 & qqqq1 ==length(ele_yao)      
%     toutou(1) = qqqq;   
for ll = 1:size(ele_yao,1)-1    
      
    if ele_yao(ll,1)>0   &   ele_yao(ll+1,1)==0        
        weiba = [weiba ll];   
        e = e+1;    
    elseif ele_yao(ll,1)==0  &ele_yao(ll+1,1)>0     
        toutou = [toutou  ll+1];   
        e=e+1;   
    end   
%      e = e+1;    
end    
toutou = [qqqq toutou ];   
weiba = [weiba qqqq1];   
end    
     
if qqqq == 1 & qqqq1 ~=length(ele_yao)        
    for ll = 1:size(ele_yao,1)-1   
    
    if ele_yao(ll,1)>0  & ele_yao(ll+1,1)==0     
        weiba = [weiba ll];      
        e = e+1;     
    elseif ele_yao(ll,1)==0  & ele_yao(ll+1,1)>0       
        toutou = [toutou  ll+1];      
        e=e+1;   
    end    
%      e = e+1;   
    end    
    toutou = [qqqq toutou ];   
end   

% weiba = [weiba qqqq1];

if qqqq ~= 1 & qqqq1 ==length(ele_yao)   
    
    for ll = 1:size(ele_yao,1)-1
    
    if ele_yao(ll,1)>0  & ele_yao(ll+1,1)==0 
        weiba = [weiba ll];
        e = e+1;
    elseif ele_yao(ll,1)==0  & ele_yao(ll+1,1)>0  
        toutou = [toutou  ll+1];
        e=e+1;
    end
%      e = e+1;
    end
    weiba = [weiba qqqq1];
end

% toutou = [qqqq toutou ];

if qqqq ~= 1 & qqqq1 ~=length(ele_yao)   
    for ll = 1:size(ele_yao,1)-1
    
    if ele_yao(ll,1)>0  & ele_yao(ll+1,1)==0 %  
        weiba = [weiba ll];
        e = e+1;
        
    elseif ele_yao(ll,1)==0  & ele_yao(ll+1,1)>0   
        toutou = [toutou  ll+1];   
        e=e+1;
        
    end
%      e = e+1;
    end
end
% toutou = [qqqq toutou ];   
% weiba = [weiba qqqq1];  

%%       
    
ele_duan = [toutou' weiba'];   
ele_duan1 = ele_duan;   
  
%%                 
   
%        Struct1(y-2).duan = ele_duan1;   
% end   
   
%%    
if y>=1      &      y<=p1    
% if size(ele_duan,1) ~= 3              

if size(ele_duan,1) == 1         
    
%      xuan_duan = ele_duan(     1    ,:);    

%       if y == 15   % |    25         
%           xuan_duan = ele_duan(      1      ,:);    
%             jieguos = zeros(3,9);   
%             jieguoj = zeros(3,9); 
%     figure(17);    
%     plot(ele_yao);   
%     hold on;   
%     plot(xuan_duan(1):xuan_duan(2),ele_yao(xuan_duan(1):xuan_duan(2)));
%       else  
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
     xuan_duan = ele_duan(     f    ,:); 
            ele_yong = ele_yao(xuan_duan(1):xuan_duan(2));     
            weijuP1P2C51 = weijuP1P2C5(:,xuan_duan(1):xuan_duan(2));      
%            continue;     
% elewei = [ele_yong ; weijuP1P2C51];
    figure(17);    
    plot(ele_yao);   
    hold on;   
    plot(xuan_duan(1):xuan_duan(2),ele_yao(xuan_duan(1):xuan_duan(2)));      
  
[all_1416s,all_1416j,all_s,all_j,all_530s,all_530j,all_1015s,all_1015j,all_1520s,all_1520j,all_2025s,all_2025j,all_510s,all_510j] = shengjiangshuangzxd(ele_yong,weijuP1P2C51,kk);       
% all_1416j = shengjiang(ele_yong,weijuP1P2C51);       
% figure(678);  
% plot(all_1416s(2,:),all_1416s(3,:),'-*');
% figure(789);  
% plot(all_1416j(2,:),all_1416j(3,:),'-*');
% dlj_fyss = emdZXD(all_s);    
% dlj_fyjj = emdZXD(all_j);
SHE = all_1520s;
JIA = all_1520j;
jieguos = fanyanshengzxd(SHE,pp);      
jieguoj = fanyanjiangzxd(JIA,pp);      

%       end
% % %       if y == 15             |            y== 25           
% % % %           xuan_duan = ele_duan(      2      ,:);    
% % %             jieguos = zeros(3,9);   
% % %             jieguoj = zeros(3,9); 
% % %       end  
    
%     jieguos = zeros(3,9);   
%     jieguoj = zeros(3,9); 
%     all_1416s = zeros(3,9);
%     all_1416j = zeros(3,9);
%     all_s = zeros(3,9);
%     all_j = zeros(3,9);
%         all_530s = zeros(3,9);
%         all_530j = zeros(3,9);
    
%     figure(17);    
%     plot(ele_yao);   
%     hold on;   
%     plot(xuan_duan(1):xuan_duan(2),ele_yao(xuan_duan(1):xuan_duan(2)));
%         Struct(y-2).all = elewei;
        Struct(y-2).boduanj = jieguoj;    
        Struct(y-2).boduans = jieguos;
        Struct(y-2).J1416 = all_1416j;  
        Struct(y-2).S1416 = all_1416s;
        Struct(y-2).quanJ = all_j;  
        Struct(y-2).quanS = all_s;   
        Struct(y-2).J530 = all_530j;    
        Struct(y-2).S530 = all_530s;  
        Struct(y-2).J1015 = all_1015j;   
        Struct(y-2).S1015 = all_1015s;  
        Struct(y-2).J1520 = all_1520j;  
        Struct(y-2).S1520 = all_1520s;   
        Struct(y-2).J2025 = all_2025j;  
        Struct(y-2).S2025 = all_2025s;   
        Struct(y-2).J510 = all_510j;  
        Struct(y-2).S510 = all_510s;
%     continue;   
elseif isempty(ele_duan) == 1   
    
        jieguos = zeros(3,9);   
        jieguoj = zeros(3,9); 
        all_1416s = zeros(3,9); 
        all_1416j = zeros(3,9); 
        all_s = zeros(3,9); 
        all_j = zeros(3,9); 
        all_530s = zeros(3,9); 
        all_530j = zeros(3,9); 
                all_1015s = zeros(3,9);
        all_1015j = zeros(3,9);
        all_1520s = zeros(3,9);
        all_1520j = zeros(3,9);
        all_2025s = zeros(3,9);
        all_2025j = zeros(3,9);
                all_510s = zeros(3,9);
        all_510j = zeros(3,9);
%         elewei = zeros(2,9); 
%         Struct(y-2).all = elewei;
        Struct(y-2).boduanj = jieguoj;    
        Struct(y-2).boduans = jieguos; 
        Struct(y-2).J1416 = all_1416j;  
        Struct(y-2).S1416 = all_1416s; 
        Struct(y-2).quanJ = all_j;  
        Struct(y-2).quanS = all_s; 
        Struct(y-2).J530 = all_530j;  
        Struct(y-2).S530 = all_530s; 
        Struct(y-2).J1015 = all_1015j;   
        Struct(y-2).S1015 = all_1015s;  
        Struct(y-2).J1520 = all_1520j;  
        Struct(y-2).S1520 = all_1520s;   
        Struct(y-2).J2025 = all_2025j;  
        Struct(y-2).S2025 = all_2025s;  
                Struct(y-2).J510 = all_510j;  
        Struct(y-2).S510 = all_510s;
  elseif size(ele_duan,1) == 2        
%       xuan_duan = ele_duan(      1    ,:); 
      
%       if y >=88 & y<=100
%                 xuan_duan = ele_duan(      1     ,:); 
%       end
           
% if y == 15    |  25       
% %           xuan_duan = ele_duan(      2      ,:);    
%           jieguos = zeros(3,9);   
%           jieguoj = zeros(3,9); 
% %                  ele_yong = ele_yao(xuan_duan(1):xuan_duan(2));     
% %        weijuP1P2C51 = weijuP1P2C5(:,xuan_duan(1):xuan_duan(2));      
% %             figure(177);  
% %             plot(ele_yao);   
% %             hold on;   
% %             plot(xuan_duan(1):xuan_duan(2),ele_yao(xuan_duan(1):xuan_duan(2)));    
% %       end  
% else

                 xuan_duan = ele_duan(      ff    ,:); 
                 ele_yong = ele_yao(xuan_duan(1):xuan_duan(2));      
       weijuP1P2C51 = weijuP1P2C5(:,xuan_duan(1):xuan_duan(2));       
%        elewei = [ele_yong' ; weijuP1P2C51];
        figure(177);  
    plot(ele_yao);   
    hold on;   
    plot(xuan_duan(1):xuan_duan(2),ele_yao(xuan_duan(1):xuan_duan(2)));     
%     jieguos = zeros(3,9);   
%     jieguoj = zeros(3,9);    
[all_1416s,all_1416j,all_s,all_j,all_530s,all_530j,all_1015s,all_1015j,all_1520s,all_1520j,all_2025s,all_2025j,all_510s,all_510j] = shengjiangshuangzxd(ele_yong,weijuP1P2C51,kk);       
% all_1416j = shengjiang(ele_yong,weijuP1P2C51);      
% figure(678); 
% plot(all_1416s(2,:),all_1416s(3,:),'-*');
% figure(789);  
% plot(all_1416j(2,:),all_1416j(3,:),'-*');
% dlj_fyss = emdZXD(all_s);    
% dlj_fyjj = emdZXD(all_j);
SHE = all_1520s;
JIA = all_1520j;
jieguos = fanyanshengzxd(SHE,pp);      
jieguoj = fanyanjiangzxd(JIA,pp);       

% % % %       end
%       if y == 15           
% %           xuan_duan = ele_duan(      2      ,:);    
%     jieguos = zeros(3,9);   
%     jieguoj = zeros(3,9); 
% end   
  
% % %                  ele_yong = ele_yao(xuan_duan(1):xuan_duan(2));      
% % %        weijuP1P2C51 = weijuP1P2C5(:,xuan_duan(1):xuan_duan(2));      
% % %         figure(77);  
% % %     plot(ele_yao);   
% % %     hold on;   
% % %     plot(xuan_duan(1):xuan_duan(2),ele_yao(xuan_duan(1):xuan_duan(2)));      
%     jieguos = zeros(3,9);   
% % % %     jieguoj = zeros(3,9);    
% % % [all_1416s,all_1416j,all_s,all_j,all_530s,all_530j] = shengjiangshuangzxd(ele_yong,weijuP1P2C51,kk);      
% % % % all_1416j = shengjiang(ele_yong,weijuP1P2C51);     
% % % 
% % % jieguos = fanyanzxd(all_1416s);     
% % % jieguoj = fanyanzxd(all_1416j);       

   
%     all_1416s = zeros(3,9);
%     all_1416j = zeros(3,9); 
%     jieguos = zeros(3,9); 
%     jieguoj = zeros(3,9); 
%     all_s = zeros(3,9);
%     all_j = zeros(3,9);
%         all_530s = zeros(3,9);
%         all_530j = zeros(3,9);
    
%     Struct(y-2).all = elewei;
    Struct(y-2).boduanj = jieguoj;  
    Struct(y-2).boduans = jieguos;  
    Struct(y-2).J1416 = all_1416j;  
    Struct(y-2).S1416 = all_1416s;
    Struct(y-2).quanJ = all_j;  
    Struct(y-2).quanS = all_s;
    Struct(y-2).J530 = all_530j;  
    Struct(y-2).S530 = all_530s;
        Struct(y-2).J1015 = all_1015j;   
        Struct(y-2).S1015 = all_1015s;  
        Struct(y-2).J1520 = all_1520j;  
        Struct(y-2).S1520 = all_1520s;   
        Struct(y-2).J2025 = all_2025j;  
        Struct(y-2).S2025 = all_2025s;  
            Struct(y-2).J510 = all_510j;  
        Struct(y-2).S510 = all_510s;
%      continue;     
% else          
%     xuan_duan = ele_duan(3 ,:);            
%       end
elseif size(ele_duan,1) == 3             
    
       xuan_duan = ele_duan(      fff      ,:);   
% end   
       ele_yong = ele_yao(xuan_duan(1):xuan_duan(2));     
       weijuP1P2C51 = weijuP1P2C5(:,xuan_duan(1):xuan_duan(2));     
       [all_1416s,all_1416j,all_s,all_j,all_530s,all_530j,all_1015s,all_1015j,all_1520s,all_1520j,all_2025s,all_2025j,all_510s,all_510j] = shengjiangshuangzxd(ele_yong,weijuP1P2C51,kk);  
% elewei = [ele_yong ; weijuP1P2C51];
% figure(678);  
% plot(all_1416s(2,:),all_1416s(3,:),'-*');
% figure(789);  
% plot(all_1416j(2,:),all_1416j(3,:),'-*');

  ele_yao1 = ele_yao;
  figure(1777);
  plot(ele_yao1);
  hold on ;
  
%   plot(xuan_duan(1):xuan_duan(2),ele_yao(xuan_duan(1):xuan_duan(2)));
       plot(xuan_duan(1):xuan_duan(2),ele_yao(xuan_duan(1):xuan_duan(2)));    
%        dlj_fyss = emdZXD(all_s);    
%        dlj_fyjj = emdZXD(all_j);
SHE = all_1520s;
JIA = all_1520j;
       jieguos = fanyanshengzxd(SHE,pp);      
       jieguoj = fanyanjiangzxd(JIA,pp);       
%            Struct(y-2).all = elewei;
           Struct(y-2).boduans = jieguos; 
           Struct(y-2).boduanj = jieguoj;  
           Struct(y-2).J1416 = all_1416j;  
           Struct(y-2).S1416 = all_1416s;
           Struct(y-2).quanJ = all_j;  
           Struct(y-2).quanS = all_s;
           Struct(y-2).J530 = all_530j;  
           Struct(y-2).S530 = all_530s;
                    Struct(y-2).J1015 = all_1015j;   
        Struct(y-2).S1015 = all_1015s;  
        Struct(y-2).J1520 = all_1520j;  
        Struct(y-2).S1520 = all_1520s;   
        Struct(y-2).J2025 = all_2025j;  
        Struct(y-2).S2025 = all_2025s;
                Struct(y-2).J510 = all_510j;  
        Struct(y-2).S510 = all_510s;
end
%%
elseif  y>p1  &   y<=p2
    if size(ele_duan,1) == 1         
    
%      xuan_duan = ele_duan(     1    ,:);    

%       if y == 15   % |    25         
%           xuan_duan = ele_duan(      1      ,:);    
%             jieguos = zeros(3,9);   
%             jieguoj = zeros(3,9); 
%     figure(17);    
%     plot(ele_yao);   
%     hold on;   
%     plot(xuan_duan(1):xuan_duan(2),ele_yao(xuan_duan(1):xuan_duan(2)));
%       else  
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
     xuan_duan = ele_duan(     f    ,:); 
            ele_yong = ele_yao(xuan_duan(1):xuan_duan(2));      
            weijuP1P2C51 = weijuP1P2C5(:,xuan_duan(1):xuan_duan(2));       
%            continue;     
% elewei = [ele_yong ; weijuP1P2C51];
    figure(17);    
    plot(ele_yao);   
    hold on;   
    plot(xuan_duan(1):xuan_duan(2),ele_yao(xuan_duan(1):xuan_duan(2)));        
  
[all_1416s,all_1416j,all_s,all_j,all_530s,all_530j,all_1015s,all_1015j,all_1520s,all_1520j,all_2025s,all_2025j,all_510s,all_510j] = shengjiangshuangzxd(ele_yong,weijuP1P2C51,kk);       
% all_1416j = shengjiang(ele_yong,weijuP1P2C51);       
% figure(678);  
% plot(all_1416s(2,:),all_1416s(3,:),'-*');
% figure(789);  
% plot(all_1416j(2,:),all_1416j(3,:),'-*');
% dlj_fyss = emdZXD(all_s);    
% dlj_fyjj = emdZXD(all_j);
SHE = all_1520s;
JIA = all_1520j;
jieguos = fanyanshengzxd(SHE,pp);       
jieguoj = fanyanjiangzxd(JIA,pp);     

%       end
% % %       if y == 15             |            y== 25           
% % % %           xuan_duan = ele_duan(      2      ,:);    
% % %             jieguos = zeros(3,9);   
% % %             jieguoj = zeros(3,9); 
% % %       end  
      
%     jieguos = zeros(3,9);   
%     jieguoj = zeros(3,9);
%     all_1416s = zeros(3,9);
%     all_1416j = zeros(3,9);
%     all_s = zeros(3,9);
%     all_j = zeros(3,9);
%         all_530s = zeros(3,9);
%         all_530j = zeros(3,9);
    
%     figure(17);    
%     plot(ele_yao);   
%     hold on;   
%     plot(xuan_duan(1):xuan_duan(2),ele_yao(xuan_duan(1):xuan_duan(2)));
%         Struct(y-2).all = elewei;
        Struct(y-2).boduanj = jieguoj;    
        Struct(y-2).boduans = jieguos;
        Struct(y-2).J1416 = all_1416j;  
        Struct(y-2).S1416 = all_1416s;
        Struct(y-2).quanJ = all_j;  
        Struct(y-2).quanS = all_s;
        Struct(y-2).J530 = all_530j;  
        Struct(y-2).S530 = all_530s;
                Struct(y-2).J1015 = all_1015j;   
        Struct(y-2).S1015 = all_1015s;  
        Struct(y-2).J1520 = all_1520j;  
        Struct(y-2).S1520 = all_1520s;   
        Struct(y-2).J2025 = all_2025j;  
        Struct(y-2).S2025 = all_2025s;         
        Struct(y-2).J510 = all_510j;  
        Struct(y-2).S510 = all_510s;
%     continue;   
elseif isempty(ele_duan) == 1   
    
        jieguos = zeros(3,9);   
        jieguoj = zeros(3,9); 
        all_1416s = zeros(3,9);
        all_1416j = zeros(3,9);
        all_s = zeros(3,9);
        all_j = zeros(3,9);
        all_530s = zeros(3,9);
        all_530j = zeros(3,9);
                all_1015s = zeros(3,9);
        all_1015j = zeros(3,9);
        all_1520s = zeros(3,9);
        all_1520j = zeros(3,9);
        all_2025s = zeros(3,9);
        all_2025j = zeros(3,9);
                all_510s = zeros(3,9);
        all_510j = zeros(3,9);
%         elewei = zeros(2,9);
%         Struct(y-2).all = elewei;
        Struct(y-2).boduanj = jieguoj;    
        Struct(y-2).boduans = jieguos;
        Struct(y-2).J1416 = all_1416j;  
        Struct(y-2).S1416 = all_1416s;
        Struct(y-2).quanJ = all_j;  
        Struct(y-2).quanS = all_s;
        Struct(y-2).J530 = all_530j;  
        Struct(y-2).S530 = all_530s;
                Struct(y-2).J1015 = all_1015j;   
        Struct(y-2).S1015 = all_1015s;  
        Struct(y-2).J1520 = all_1520j;  
        Struct(y-2).S1520 = all_1520s;   
        Struct(y-2).J2025 = all_2025j;  
        Struct(y-2).S2025 = all_2025s;  
                Struct(y-2).J510 = all_510j;  
        Struct(y-2).S510 = all_510s;
  elseif size(ele_duan,1) == 2        
%       xuan_duan = ele_duan(      1    ,:); 
      
%       if y >=88 & y<=100
%                 xuan_duan = ele_duan(      1     ,:); 
%       end
           
% if y == 15    |  25       
% %           xuan_duan = ele_duan(      2      ,:);    
%           jieguos = zeros(3,9);   
%           jieguoj = zeros(3,9); 
% %                  ele_yong = ele_yao(xuan_duan(1):xuan_duan(2));     
% %        weijuP1P2C51 = weijuP1P2C5(:,xuan_duan(1):xuan_duan(2));      
% %             figure(177);  
% %             plot(ele_yao);   
% %             hold on;   
% %             plot(xuan_duan(1):xuan_duan(2),ele_yao(xuan_duan(1):xuan_duan(2)));    
% %       end  
% else  

                 xuan_duan = ele_duan(        ff      ,:); 
                 ele_yong = ele_yao(xuan_duan(1):xuan_duan(2));     
       weijuP1P2C51 = weijuP1P2C5(:,xuan_duan(1):xuan_duan(2));       
%        elewei = [ele_yong ; weijuP1P2C51];
        figure(177);  
    plot(ele_yao);   
    hold on;   
    plot(xuan_duan(1):xuan_duan(2),ele_yao(xuan_duan(1):xuan_duan(2)));         
%     jieguos = zeros(3,9);   
%     jieguoj = zeros(3,9);    
[all_1416s,all_1416j,all_s,all_j,all_530s,all_530j,all_1015s,all_1015j,all_1520s,all_1520j,all_2025s,all_2025j,all_510s,all_510j] = shengjiangshuangzxd(ele_yong,weijuP1P2C51,kk);       
% all_1416j = shengjiang(ele_yong,weijuP1P2C51);      
% figure(678); 
% plot(all_1416s(2,:),all_1416s(3,:),'-*');
% figure(789);  
% plot(all_1416j(2,:),all_1416j(3,:),'-*');
% dlj_fyss = emdZXD(all_s);    
% dlj_fyjj = emdZXD(all_j);
SHE = all_1520s;
JIA = all_1520j;
jieguos = fanyanshengzxd(SHE,pp);       
jieguoj = fanyanjiangzxd(JIA,pp);      

% % % %       end
%       if y == 15                
% %           xuan_duan = ele_duan(      2      ,:);    
%     jieguos = zeros(3,9);   
%     jieguoj = zeros(3,9); 
% end   
  
% % %                  ele_yong = ele_yao(xuan_duan(1):xuan_duan(2));     
% % %        weijuP1P2C51 = weijuP1P2C5(:,xuan_duan(1):xuan_duan(2));    
% % %         figure(77);  
% % %     plot(ele_yao);   
% % %     hold on;   
% % %     plot(xuan_duan(1):xuan_duan(2),ele_yao(xuan_duan(1):xuan_duan(2)));     
%     jieguos = zeros(3,9);   
% % % %     jieguoj = zeros(3,9);    
% % % [all_1416s,all_1416j,all_s,all_j,all_530s,all_530j] = shengjiangshuangzxd(ele_yong,weijuP1P2C51,kk);       
% % % % all_1416j = shengjiang(ele_yong,weijuP1P2C51);     
% % % 
% % % jieguos = fanyanzxd(all_1416s);       
% % % jieguoj = fanyanzxd(all_1416j);      

%     jieguos = zeros(3,9);   
%     jieguoj = zeros(3,9);
%     all_1416s = zeros(3,9);
%     all_1416j = zeros(3,9);
%     all_s = zeros(3,9);
%     all_j = zeros(3,9);
%       all_530s = zeros(3,9);
%       all_530j = zeros(3,9);
%     Struct(y-2).all = elewei;
    Struct(y-2).boduanj = jieguoj;  
    Struct(y-2).boduans = jieguos;
    Struct(y-2).J1416 = all_1416j;  
    Struct(y-2).S1416 = all_1416s;
    Struct(y-2).quanJ = all_j;  
    Struct(y-2).quanS = all_s;
    Struct(y-2).J530 = all_530j;  
    Struct(y-2).S530 = all_530s;
            Struct(y-2).J1015 = all_1015j;   
        Struct(y-2).S1015 = all_1015s;  
        Struct(y-2).J1520 = all_1520j;  
        Struct(y-2).S1520 = all_1520s;   
        Struct(y-2).J2025 = all_2025j;  
        Struct(y-2).S2025 = all_2025s;  
                Struct(y-2).J510 = all_510j;  
        Struct(y-2).S510 = all_510s;
%      continue;     
% else    lo      
%     xuan_duan = ele_duan(3 ,:);              
%       end
elseif size(ele_duan,1) == 3               
       xuan_duan = ele_duan(       fff       ,:);   
% end   
       ele_yong = ele_yao(xuan_duan(1):xuan_duan(2));     
       weijuP1P2C51 = weijuP1P2C5(:,xuan_duan(1):xuan_duan(2));       
       [all_1416s,all_1416j,all_s,all_j,all_530s,all_530j,all_1015s,all_1015j,all_1520s,all_1520j,all_2025s,all_2025j,all_510s,all_510j] = shengjiangshuangzxd(ele_yong,weijuP1P2C51,kk);   
%        elewei = [ele_yong ; weijuP1P2C51];
% figure(678);  
% plot(all_1416s(2,:),all_1416s(3,:),'-*');
% figure(789);  
% plot(all_1416j(2,:),all_1416j(3,:),'-*');

  ele_yao1 = ele_yao;
  figure(1777);
  plot(ele_yao1);
  hold on ;
  
%   plot(xuan_duan(1):xuan_duan(2),ele_yao(xuan_duan(1):xuan_duan(2)));
       plot(xuan_duan(1):xuan_duan(2),ele_yao(xuan_duan(1):xuan_duan(2)));     
%        dlj_fyss = emdZXD(all_s);    
%        dlj_fyjj = emdZXD(all_j);
SHE = all_1520s;
JIA = all_1520j;
       jieguos = fanyanshengzxd(SHE,pp);      
       jieguoj = fanyanjiangzxd(JIA,pp);      
%            Struct(y-2).all = elewei;
           Struct(y-2).boduans = jieguos; 
           Struct(y-2).boduanj = jieguoj;
           Struct(y-2).J1416 = all_1416j;  
           Struct(y-2).S1416 = all_1416s;
           Struct(y-2).quanJ = all_j;  
           Struct(y-2).quanS = all_s;
           Struct(y-2).J530 = all_530j;  
           Struct(y-2).S530 = all_530s;
                   Struct(y-2).J1015 = all_1015j;   
        Struct(y-2).S1015 = all_1015s;  
        Struct(y-2).J1520 = all_1520j;  
        Struct(y-2).S1520 = all_1520s;   
        Struct(y-2).J2025 = all_2025j;  
        Struct(y-2).S2025 = all_2025s;  
                Struct(y-2).J510 = all_510j;  
        Struct(y-2).S510 = all_510s;
    end
%%
elseif  y>p2  &   y<=length(ans1)
    if size(ele_duan,1) == 1         
    
%      xuan_duan = ele_duan(     1    ,:);    

%       if y == 15   % |    25              
%           xuan_duan = ele_duan(      1      ,:);    
%             jieguos = zeros(3,9);   
%             jieguoj = zeros(3,9); 
%     figure(17);    
%     plot(ele_yao);   
%     hold on;   
%     plot(xuan_duan(1):xuan_duan(2),ele_yao(xuan_duan(1):xuan_duan(2)));
%       else  
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
     xuan_duan = ele_duan(     f    ,:); 
            ele_yong = ele_yao(xuan_duan(1):xuan_duan(2));     
            weijuP1P2C51 = weijuP1P2C5(:,xuan_duan(1):xuan_duan(2));      
%            continue;  
% elewei = [ele_yong ; weijuP1P2C51];
    figure(17);    
    plot(ele_yao);   
    hold on;   
    plot(xuan_duan(1):xuan_duan(2),ele_yao(xuan_duan(1):xuan_duan(2)));       
  
[all_1416s,all_1416j,all_s,all_j,all_530s,all_530j,all_1015s,all_1015j,all_1520s,all_1520j,all_2025s,all_2025j,all_510s,all_510j] = shengjiangshuangzxd(ele_yong,weijuP1P2C51,kk);       
% all_1416j = shengjiang(ele_yong,weijuP1P2C51);       
% figure(678);  
% plot(all_1416s(2,:),all_1416s(3,:),'-*');
% figure(789);  
% plot(all_1416j(2,:),all_1416j(3,:),'-*');
% dlj_fyss = emdZXD(all_s);    
% dlj_fyjj = emdZXD(all_j);
SHE = all_1520s;
JIA = all_1520j;
jieguos = fanyanshengzxd(SHE,pp);        
jieguoj = fanyanjiangzxd(JIA,pp);      

%       end
% % %       if y == 15             |            y== 25           
% % % %           xuan_duan = ele_duan(      2      ,:);    
% % %             jieguos = zeros(3,9);   
% % %             jieguoj = zeros(3,9); 
% % %       end  
    
%     jieguos = zeros(3,9);   
%     jieguoj = zeros(3,9); 
%     all_1416s = zeros(3,9);
%     all_1416j = zeros(3,9);
%     all_s = zeros(3,9);
%     all_j = zeros(3,9);
%       all_530s = zeros(3,9);
%       all_530j = zeros(3,9);
    
%     figure(17);    
%     plot(ele_yao);   
%     hold on;   
%     plot(xuan_duan(1):xuan_duan(2),ele_yao(xuan_duan(1):xuan_duan(2)));
%         Struct(y-2).all = elewei;
        Struct(y-2).boduanj = jieguoj;    
        Struct(y-2).boduans = jieguos;
        Struct(y-2).J1416 = all_1416j;  
        Struct(y-2).S1416 = all_1416s; 
        Struct(y-2).quanJ = all_j;  
        Struct(y-2).quanS = all_s;
        Struct(y-2).J530 = all_530j;  
        Struct(y-2).S530 = all_530s;
                Struct(y-2).J1015 = all_1015j;   
        Struct(y-2).S1015 = all_1015s;  
        Struct(y-2).J1520 = all_1520j;  
        Struct(y-2).S1520 = all_1520s;   
        Struct(y-2).J2025 = all_2025j;  
        Struct(y-2).S2025 = all_2025s;  
                Struct(y-2).J510 = all_510j;  
        Struct(y-2).S510 = all_510s;
%     continue;   
elseif isempty(ele_duan) == 1      
    
        jieguos = zeros(3,9);   
        jieguoj = zeros(3,9); 
        all_1416s = zeros(3,9);
        all_1416j = zeros(3,9);
        all_s = zeros(3,9);
        all_j = zeros(3,9);
        all_530s = zeros(3,9);
        all_530j = zeros(3,9);
        all_1015s = zeros(3,9);
        all_1015j = zeros(3,9);
        all_1520s = zeros(3,9);
        all_1520j = zeros(3,9);
        all_2025s = zeros(3,9);
        all_2025j = zeros(3,9);
        all_510s = zeros(3,9);
        all_510j = zeros(3,9);
%         elewei = zeros(2,9);
%         Struct(y-2).all = elewei;
        Struct(y-2).boduanj = jieguoj;    
        Struct(y-2).boduans = jieguos;
        Struct(y-2).J1416 = all_1416j;  
        Struct(y-2).S1416 = all_1416s;
        Struct(y-2).quanJ = all_j;  
        Struct(y-2).quanS = all_s;
        Struct(y-2).J530 = all_530j;  
        Struct(y-2).S530 = all_530s;
                Struct(y-2).J1015 = all_1015j;   
        Struct(y-2).S1015 = all_1015s;  
        Struct(y-2).J1520 = all_1520j;  
        Struct(y-2).S1520 = all_1520s;   
        Struct(y-2).J2025 = all_2025j;  
        Struct(y-2).S2025 = all_2025s;  
                Struct(y-2).J510 = all_510j;  
        Struct(y-2).S510 = all_510s;
  elseif size(ele_duan,1) == 2        
%       xuan_duan = ele_duan(      1    ,:); 
      
%       if y >=88 & y<=100
%                 xuan_duan = ele_duan(      1     ,:); 
%       end
           
% if y == 15    |  25       
% %           xuan_duan = ele_duan(      2      ,:);    
%           jieguos = zeros(3,9);   
%           jieguoj = zeros(3,9); 
% %                  ele_yong = ele_yao(xuan_duan(1):xuan_duan(2));     
% %        weijuP1P2C51 = weijuP1P2C5(:,xuan_duan(1):xuan_duan(2));      
% %             figure(177);  
% %             plot(ele_yao);   
% %             hold on;   
% %             plot(xuan_duan(1):xuan_duan(2),ele_yao(xuan_duan(1):xuan_duan(2)));  
% %       end
% else

                 xuan_duan = ele_duan(      ff    ,:); 
                 ele_yong = ele_yao(xuan_duan(1):xuan_duan(2));      
       weijuP1P2C51 = weijuP1P2C5(:,xuan_duan(1):xuan_duan(2));      
%        elewei = [ele_yong ; weijuP1P2C51];
        figure(177);  
    plot(ele_yao);   
    hold on;   
    plot(xuan_duan(1):xuan_duan(2),ele_yao(xuan_duan(1):xuan_duan(2)));     
%     jieguos = zeros(3,9);   
%     jieguoj = zeros(3,9);    
[all_1416s,all_1416j,all_s,all_j,all_530s,all_530j,all_1015s,all_1015j,all_1520s,all_1520j,all_2025s,all_2025j,all_510s,all_510j] = shengjiangshuangzxd(ele_yong,weijuP1P2C51,kk);       
% all_1416j = shengjiang(ele_yong,weijuP1P2C51);     
% figure(678);  
% plot(all_1416s(2,:),all_1416s(3,:),'-*');
% figure(789);  
% plot(all_1416j(2,:),all_1416j(3,:),'-*');
% dlj_fyss = emdZXD(all_s);    
% dlj_fyjj = emdZXD(all_j);
SHE = all_1520s;
JIA = all_1520j;
jieguos = fanyanshengzxd(SHE,pp);       
jieguoj = fanyanjiangzxd(JIA,pp);       

% % % %       end
%       if y == 15           
% %           xuan_duan = ele_duan(      2      ,:);    
%     jieguos = zeros(3,9);   
%     jieguoj = zeros(3,9); 
% end   
  
% % %                  ele_yong = ele_yao(xuan_duan(1):xuan_duan(2));     
% % %        weijuP1P2C51 = weijuP1P2C5(:,xuan_duan(1):xuan_duan(2));       
% % %         figure(77);  
% % %     plot(ele_yao);   
% % %     hold on;   
% % %     plot(xuan_duan(1):xuan_duan(2),ele_yao(xuan_duan(1):xuan_duan(2)));     
%     jieguos = zeros(3,9);   
% % % %     jieguoj = zeros(3,9);    
% % % [all_1416s,all_1416j,all_s,all_j,all_530s,all_530j] = shengjiangshuangzxd(ele_yong,weijuP1P2C51,kk);       
% % % % all_1416j = shengjiang(ele_yong,weijuP1P2C51);      
% % % 
% % % jieguos = fanyanzxd(all_1416s);       
% % % jieguoj = fanyanzxd(all_1416j);      

%     jieguos = zeros(3,9);   
%     jieguoj = zeros(3,9);
%     all_1416s = zeros(3,9);
%     all_1416j = zeros(3,9);
%     all_s = zeros(3,9);
%     all_j = zeros(3,9);
%     all_530s = zeros(3,9);
%     all_530j = zeros(3,9);
%     Struct(y-2).all = elewei;
    Struct(y-2).boduanj = jieguoj;  
    Struct(y-2).boduans = jieguos;
    Struct(y-2).J1416 = all_1416j;  
    Struct(y-2).S1416 = all_1416s;
    Struct(y-2).quanJ = all_j;  
    Struct(y-2).quanS = all_s;
    Struct(y-2).J530 = all_530j;  
    Struct(y-2).S530 = all_530s;
        Struct(y-2).J1015 = all_1015j;   
        Struct(y-2).S1015 = all_1015s;  
        Struct(y-2).J1520 = all_1520j;  
        Struct(y-2).S1520 = all_1520s;   
        Struct(y-2).J2025 = all_2025j;  
        Struct(y-2).S2025 = all_2025s; 
                Struct(y-2).J510 = all_510j;  
        Struct(y-2).S510 = all_510s;
%      continue;     
% else    lo      
%     xuan_duan = ele_duan(3 ,:);              
%       end
elseif size(ele_duan,1) == 3               
       xuan_duan = ele_duan(       fff       ,:);   
% end   
       ele_yong = ele_yao(xuan_duan(1):xuan_duan(2));     
       weijuP1P2C51 = weijuP1P2C5(:,xuan_duan(1):xuan_duan(2));      
       [all_1416s,all_1416j,all_s,all_j,all_530s,all_530j,all_1015s,all_1015j,all_1520s,all_1520j,all_2025s,all_2025j,all_510s,all_510j] = shengjiangshuangzxd(ele_yong,weijuP1P2C51,kk);   
%        elewei = [ele_yong ; weijuP1P2C51];
% figure(678);  
% plot(all_1416s(2,:),all_1416s(3,:),'-*');
% figure(789);  
% plot(all_1416j(2,:),all_1416j(3,:),'-*');
  
  ele_yao1 = ele_yao;
  figure(1777);
  plot(ele_yao1);
  hold on ;
  
%   plot(xuan_duan(1):xuan_duan(2),ele_yao(xuan_duan(1):xuan_duan(2)));
       plot(xuan_duan(1):xuan_duan(2),ele_yao(xuan_duan(1):xuan_duan(2)));     
%        dlj_fyss = emdZXD(all_s);    
%        dlj_fyjj = emdZXD(all_j);
SHE = all_1520s;
JIA = all_1520j;
       jieguos = fanyanshengzxd(SHE,pp);      
       jieguoj = fanyanjiangzxd(JIA,pp);       
%            Struct(y-2).all = elewei;
           Struct(y-2).boduans = jieguos; 
           Struct(y-2).boduanj = jieguoj;
           Struct(y-2).J1416 = all_1416j;  
           Struct(y-2).S1416 = all_1416s;
           Struct(y-2).quanJ = all_j;
           Struct(y-2).quanS = all_s;
           Struct(y-2).J530 = all_530j;  
           Struct(y-2).S530 = all_530s;
        Struct(y-2).J1015 = all_1015j;   
        Struct(y-2).S1015 = all_1015s;  
        Struct(y-2).J1520 = all_1520j;  
        Struct(y-2).S1520 = all_1520s;   
        Struct(y-2).J2025 = all_2025j;  
        Struct(y-2).S2025 = all_2025s;  
                Struct(y-2).J510 = all_510j;  
        Struct(y-2).S510 = all_510s;
    end
end
% figure(678); 
% plot(all_1416s(2,:),all_1416s(3,:),'-*');
% figure(789);  
% plot(all_1416j(2,:),all_1416j(3,:),'-*');
end
       tianshu = length(Struct);      
       h = 5;
SS2 = [];        
ZZ2 = [];
% k = 1;         
for z = 1:tianshu%size(Struct,2)                   
%     z = 108;       
    SS1 = Struct(z).boduanj; 
    ZZ1 = Struct(z).boduans; 
%     SS(k,:) = SS1;       
    changdu = size(SS1,2);  
    changdu1 = size(ZZ1,2);  
    SS2(z) = changdu;  
    ZZ2(z) = changdu1;
%     k = k+1;        
end

max_changdu = max(SS2);        
max_changdu1 = max(ZZ2);  
SS = zeros(h*tianshu,  max_changdu);           
ZZ = zeros(h*tianshu,  max_changdu1);          
   k = 0;        
%    kk = 1;    
   for m = 1:tianshu%size(Struct,2)   
%        m = 1;    
if SS2(m)~=0   
       SS(k+1:k+h,1:SS2(m)) = Struct(m).boduanj;
%        ZZ(k+1:k+3,1:ZZ2(m)) = Struct(m).boduans;
       k = k+h;
%        kk = kk+1;

end    
%        k = k+3;
   end
      k = 0;        
%    kk = 1;    
for m = 1:tianshu%size(Struct,2) 
       
if ZZ2(m)~=0
%        SS(k+1:k+3,1:SS2(m)) = Struct(m).boduanj;    
       ZZ(k+1:k+h,1:ZZ2(m)) = Struct(m).boduans;   
       k = k+h;
%        kk = kk+1;
end  

end  
   
% % %    hang = [];
% % %    nn = 1;
% % %    for mm = 1:size(SS,1)
% % %        lie = size(SS(mm,:),2);
% % %  [hang(nn,lie),~] = find(SS(mm,:)<10); 
% % %  nn = nn+1;
% % %    end
   
xwjiang = [];          
gaojiang = [];   
bccjiang = [];
fsljiang = [];
mm = 1;
xx = 1;
   for nn = h:h:size(SS,1)
     bccjiang(mm,:) = SS(  nn,:);
     fsljiang(mm,:) = SS(  nn-1,:);
     xwjiang(mm,:) = SS(  nn-2,:);
     gaojiang(xx:xx+1,:) = SS(nn-4:nn-3,:);
     
     mm = mm+1;
     xx = xx+2;
   end
   
   
   xwsheng = [];   
   gaosheng = [];     
   bccsheng = []; 
   fslsheng = []; 
mmm = 1;
xxx = 1;
   for nnn = h:h:size(ZZ,1)
     bccsheng(mm,:) = ZZ(  nnn,:);
     fslsheng(mm,:) = ZZ(  nnn-1,:);
     xwsheng(mmm,:) = ZZ(  nnn-2,:);
     gaosheng(xxx:xxx+1,:) = ZZ(nnn-4:nnn-3,:);
     
     mmm = mmm+1;
     xxx = xxx+2;
   end
%    xw_all(r).xws = xwsheng;xw_all(r).xwj = xwjiang;
%    xw_all(r).gdjs = gaosheng;xw_all(r).gdjj = gaojiang;
% end
%         XW_all{n} = xw_all;
% end
end