%Script to plot the experimental currents from the electron multiplier as
%the dynode voltage is changed when there is no shielding on the multiplier

files=[75,76,77,78,82,83,79,81,80];

N_files=length(files);
figure;
hold on
max_val_volt=zeros(N_files,1);
snr_max=zeros(N_files,1);
for n=N_files:-1:1
    load(['Sc0000' num2str(files(n)) '.mat'])
    plot(Var_values,current_avg,'LineWidth',1)
    %errorbar(Var_values,current_avg,current_std/sqrt(5),'LineWidth',1)
    [~,temp_ind]=max(current_avg);
    max_val_volt(n)=Var_values(temp_ind);
    snr_max(n)=max(current_std);
end

legend('-200V','-300V','-400V','-450V','-500V','-600V','-800V','-1000V','-1300V')
xlabel('Dynode voltage/V');
ylabel('Current/A')

set(gca,'FontSize',14,'Linewidth',1)
ylim([0 8e-10])
box on

% print('..\Figures\multiplier_no_grid_graph.eps','-depsc2')
% savefig('..\Figures\multiplier_no_grid_graph.fig')









c_front=[-1300,-1000,-800,-600,-400,-200,-300,-500,-450];


