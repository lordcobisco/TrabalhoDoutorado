% i=1;
h=0.08;
Limf = 3 ;
rrr=1;      

subplot(3,2,1)
hold on
xlabel('c1')
ylabel('c2')
for c1=0.1:h:Limf  
    for c2=0.1:h:Limf
        if(max(abs(AvA(:,1,round(c1/h),round(c2/h),1)))<1)
            plot(c1,c2,'.')
        else
            plot(c1,c2,'r.')
        end

    end
end
% Legend('Região Estável')
axis([0 3 0 3])

subplot(3,2,2)
hold on
xlabel('L')
ylabel('w')
for L=0.1:h:Limf  
    for w=0.1:h:Limf
        if(max(abs(AvA(:,round(L/h),1,1,round(w/h))))<1)
            plot(L,w,'.')
        else
            plot(L,w,'r.')
        end

    end
end
% Legend('Região Estável')
axis([0 3 0 3])

subplot(3,2,3)
hold on
xlabel('c1')
ylabel('w')
for c1=0.1:h:Limf  
    for w=0.1:h:Limf
        if(max(abs(AvA(:,1,round(c1/h),1,round(w/h))))<1)
            plot(c1,w,'.')
        else
            plot(c1,w,'r.')
        end

    end
end
% Legend('Região Estável')
axis([0 3 0 3])

subplot(3,2,4)
hold on
xlabel('L')
ylabel('c2')
for L=0.1:h:Limf  
    for c2=0.1:h:Limf
        if(max(abs(AvA(:,round(L/h),1,round(c2/h),1)))<1)
            plot(L,c2,'.')
        else
            plot(L,c2,'r.')
        end

    end
end
% Legend('Região Estável')
axis([0 3 0 3])

subplot(3,2,5)
hold on
xlabel('L')
ylabel('c1')
for L=0.1:h:Limf  
    for c1=0.1:h:Limf
        if(max(abs(AvA(:,round(L/h),round(c1/h),1,1)))<1)
            plot(L,c1,'.')
        else
            plot(L,c1,'r.')
        end

    end
end
% Legend('Região Estável')
axis([0 3 0 3])

subplot(3,2,6)
hold on
xlabel('c2')
ylabel('w')
for c2=0.1:h:Limf  
    for w=0.1:h:Limf
        if(max(abs(AvA(:,1,1,round(c2/h),round(w/h))))<1)
            plot(c2,w,'.')
        else
            plot(c2,w,'r.')
        end

    end
end
% Legend('Região Estável')
axis([0 3 0 3])

	