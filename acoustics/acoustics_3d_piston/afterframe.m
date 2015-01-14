rybcolormap
axis([0 2 0 1 0 1])
daspect([1 1 1]);

hideslices;
%showslices('x',1);
%showslices('x',3);
showslices('y',3);
%showslices('z',3);


showpatchborders;
setpatchbordercolor('k');
% setpatchborderprops(1,'linewidth',2,'color','k');  % new version only
% setpatchborderprops(2,'linewidth',2,'color','k');  % new version only
% setpatchborderprops(3,'linewidth',2,'color','k');  % new version only

showcubes;
setcubecolor('r',1);
setcubecolor('b',2);
setcubecolor('k',3);
hidecubes(1:2);

%showgridlines(1:2);

cv = linspace(0.2,2,10);
cv([1 end]) = [];
drawcontourlines(cv);

caxis([-2,2])

h = surflight;

axis on;

shg;

clear afterframe;
