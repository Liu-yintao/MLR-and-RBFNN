function [shuchu] = fanyanshengzxdL1L2L51(shuru,pp,hh,gg)   
if   isempty(shuru) == 0   &&  size( shuru,2) >= pp  
       XWss = [];  
    alpha0 = 0.3;                
pi=3.14; 
bochang2 = 0.2442;       
bochang1 = 0.1902;     
bochang5 = 0.2550;      
bochang = [bochang1 bochang2 bochang5 ];        
h_tx = 100;              
for hhh = 1:3        
    hhh =    gg    ;         
rr = 1;     
    for u = 1:size(shuru,2)-pp+1     
delta0 = 2*h_tx*shuru(2,u:u+pp-1);       
delta00 = delta0(1,1);
fai0 = delta0*2*pi/bochang(1,hhh);   
fai00 = fai0(1,1);  
B1 = [];B2 = [];B11 =[];B3 = [];  
for i = 1:size(fai0,2)  
B1(i) = alpha0*cos(fai00);     
B2(i) = sin(fai00);          
B11(i) = alpha0*sin(fai00);   
end  
L =shuru(3,u:u+pp-1)-B11;   

L = L';  
x0 = [fai00,alpha0]';   
B = [B1',B2'];  
P = eye(size(L,1)); l = L;    
    W=B'*P*L;  
    N=B'*P*B;         
    xss=pinv(N)*W;                     
    v=B*xss-L;    
    Xss = x0+xss;      
L_pingcha = shuru(3,u:u+pp-1)+ v';    
shuchu(1,rr) = shuru(1,u);   
shuchu(2,rr) = shuru(1,u+pp-1);   
shuchu(3,rr) = Xss(1) ;   
shuchu(4,rr) = Xss(2) ; 
rr = rr+1;
    end
end
elseif  isempty(shuru)  ~=  0    
shuchu = zeros(hh,9); 
elseif  size( shuru,2) < pp   
shuchu = zeros(hh,9);        
end
end
