% i=1;
h=0.05;
Limf = 3;
rrr=1;         
% A=zeros(4,4,1562500);
AvA = zeros(4,(Limf/h)-1,(Limf/h)-1,(Limf/h)-1)+ 1j;
L = 1;
% for L=0.1:h:Limf
    for c1=0.1:h:Limf
        for c2=0.1:h:Limf  
            for w=0.1:h:Limf
%                 if(i==1562501)
%                     i=1;
%                     save(['Parte' num2str(rrr)],'A','AvA')
%                     clear A AvA
%                     A=zeros(4,4,1562500);
%                     AvA = zeros(4,1562500)+zeros(4,1562500)*1j;
%                     rrr=rrr+1;
%                 end
               A=[L-(c1+c2) w c1 c2; -(c1+c2) w c1 c2; 1/2 0 1/2 0; 0 0 1/2 1/2];
%                 (L/h)
%                (c1/h)
%                (c2/h)
%                (w/h)
               AvA(:,round(c1/h),round(c2/h),round(w/h)) = eig(A);
              
%                i=i+1;
            end
        end
    end

% end
%%
hold on
for c1=0.1:h:Limf
    for c2=0.1:h:Limf  
        for w=0.1:h:Limf
            if(max(abs(AvA(:,round(c1/h),round(c2/h),round(w/h)))) < 1)
                plot3(c1,c2,w,'.')
            end
        end
    end
end


	