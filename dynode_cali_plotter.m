%Script to plot experimental data for how the current from the electron
%multiplier varies with dynode voltage when the front is shielded with a
%grid

load('dynode_cali12.mat')

t=0.2;
figure

hold on

N=length(chan_front);

legend_text=[];



counter=1;
for n=1:2:N
    plot(dynode(2:end),current(n,2:end),'LineWidth',1)
    %errorbar(dynode,current(n,:),current_std(n,:),'LineWidth',1)
    legend_text{counter}=strcat('-',num2str(chan_front(n)),'V');
    counter=counter+1;
end

xlabel('Dynode voltage/V')
ylabel('Current/A')
legend(legend_text,'Location','southeast','NumColumns',3)
box on
set(gca,'LineWidth',1,'FontSize',14)


% print('..\Figures\dynode_cali12.eps','-depsc2')
% savefig('..\Figures\dynode_cali12.fig')
