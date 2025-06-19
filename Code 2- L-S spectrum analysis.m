function [shuchu1,shuchu2] = LSzxd(sheng)    

if isempty(sheng) == 0   
        S1 = sheng(2,:);   
        S2 = sheng(3,:);   
        [P1,f1,alpha11] = lomb(S2,S1);
%             figure(14);
%             plot(f1,P1);
%             hold on;
                   j=0;
          weizhi1 = [ ]; wantedf1 = [ ];
          for i=1:length(f1)    
              if f1(i)>= 0 && f1(i)<= 80                     
                  j=j+1;
                  wantedf1(j)=f1(i);    
                  weizhi1(j)=i;      
              end
          end

          if length(wantedf1) <= 3   
%               rightf1=max(wantedf1);       
                wantedf1 = [];
                wantedP1 = [];
          else
              wantedP1 =P1(weizhi1);                    
              [peaks1,locals1]=findpeaks(wantedP1);      
              if isempty(peaks1)    
                 rightP1=max(wantedP1);    
              else
                 rightP1=max(peaks1);                      
              end
              [pms,~] = find(wantedP1==rightP1);   
              [pms1,pms2] = find(wantedP1==rightP1);    
              rightf1 = wantedf1(pms);                    
          end
%                 figure(15);
%                 plot(wantedf1,wantedP1);
%                 hold on;
shuchu1 = wantedf1;
shuchu2 = wantedP1;
end
end
    
    