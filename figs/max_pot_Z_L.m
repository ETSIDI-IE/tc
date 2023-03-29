clear all
close all
clc

%% 
e_th = 1;
R_th = 1.75;
X_th = 5;

R_L_vector = 0:0.25:10;
X_L_vector = -10:0.5:10;
% P_L = e_th^2 * 1./((R_L_vector + R_th).^2 + (X_L_vector + X_th).^2) .* R_L_vector;

[R_L,X_L] = meshgrid(R_L_vector,X_L_vector);
tri = delaunay(R_L,X_L);

%% 
P_L = @(x,y) e_th^2 * 1./((x + R_th).^2 + (y + X_th).^2) .* x; % "x" and "y" are R_L and X_L, respectively

fig=1;
figure(fig)
h=figure(fig);

P_L = e_th^2 * 1./((R_L + R_th).^2 + (X_L + X_th).^2) .* R_L;

h1 = trisurf(tri,R_L,X_L,P_L);

fig1=gcf;
set(findall(fig1,'-property','FontSize'),'FontSize',12)
set(groot, 'defaultAxesTickLabelInterpreter','latex');

x_label=xlabel('$$R_{L}$$','Interpreter','latex','Fontsize',14);
y_label = ylabel('$$X_{L}$$','Interpreter','latex','Fontsize',14);
% The next line is to adjust the position of the y-label, from https://stackoverflow.com/questions/14611259/how-to-adjust-the-distance-between-the-y-label-and-the-y-axis-in-matlab
%set(x_label, 'Units', 'Normalized', 'Position', [0.2, -0.08, 0]);
%set(y_label, 'Units', 'Normalized', 'Position', [0.99, 0.045, 0]);
zlabel('$$P_L$$','Interpreter','latex','Fontsize',15)
%title('Ejemplo')
hold on
view([-45 23])

%zlim([4 10.25])

shading interp
%h1.FaceColor= [255,100,0]/255;
%h1.FaceAlpha= .9;
%h2.FaceColor= [1,255,200]/255;
%h2.FaceAlpha= 1;

xticks([0 2.5 5 7.5 10])
%xticklabels({'1800','1600','1400'})
yticks([-10 -5 0 5 10])
zticks([4 10])

% Adjust the pdf image to the borders of the pdf:
% (from
% https://uk.mathworks.com/matlabcentral/answers/12987-how-to-save-a-matlab-graphic-in-a-right-size-pdf)
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3)+0.2, pos(4)])


axis tight
pbaspect([2 2 1])

print(h,'max_pot_Z_L','-dpdf','-r0')

% print(figure(fig),'-dpng', ['Fig' num2str(fig)])
% print(figure(fig),'-depsc', ['Fig' num2str(fig)])


view([0 0])
print(h,'max_pot_Z_L_soloRL','-dpdf','-r0')


