%Script to load simulated voltages along the axis between the dynode and
%electron multiplier

load('Voltages_Grid_graphs_all.mat')

figure;plot(12.74-x8_g,V8_g,'r--','LineWidth',1) % 'Color',[0.8500,0.3250,0.0980]
hold on
plot(12.74-x7_g,V7_g,'r-.','LineWidth',1)
plot(12.74-x3_g,V3_g,'r','LineWidth',1)

plot(12.74-x8_im,V8_im,'--','Color',[0,0.4470,0.7410],'LineWidth',1)%[0.197,0.647,1]
plot(12.74-x7_im,V7_im,'-.','Color',[0,0.4470,0.7410],'LineWidth',1)%[0,0.259,0.431]
plot(12.74-x3_im,V3_im,'Color',[0,0.4470,0.7410],'LineWidth',1)%

plot(12.74-front_x,front_y,'k','LineWidth',1)

xlim([-5 8])
ylim([-1600 -900])


xlabel('Distance from multiplier entrance/mm')
ylabel('Voltage/V')
set(gca,'LineWidth',1,'FontSize',14)
box on
% print('..\Figures\Voltages_with_grid_no_legend3.eps','-depsc2')
% savefig('..\Figures\Voltages_with_grid_no_legend3.fig')


