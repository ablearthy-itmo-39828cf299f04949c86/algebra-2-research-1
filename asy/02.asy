import three;
import math;
import graph3;

size(14cm);

currentprojection=perspective(5,2,3);

triple f(pair t){return (sqrt(5) * cosh(t.y)*cos(t.x), 5 * cosh(t.y)*sin(t.x), 5 * sinh(t.y));}
surface s=surface(f,(0,-1) ,(2*pi,1),nu=40,nv=40,Spline);
s = rotate(-45, Z)*rotate(90, X)*s;
draw(s,paleblue+opacity(0.5),render(merge=true));

xaxis3("$x$",0,10,red, Arrow3());
yaxis3("$y$",0,10,red, Arrow3());
zaxis3("$z$",0,10,red, Arrow3());

triple newX = (8/sqrt(2), 8/sqrt(2), 0);
triple newY = (0, 0, 8);
triple newZ = (8/sqrt(2), -8/sqrt(2), 0);

draw(O -- newX, linewidth(0.8), Arrow3());
draw(O -- newY, linewidth(0.8), Arrow3());
draw(O -- newZ, linewidth(0.8), Arrow3());
label("$O$", O, align=+0.5Z+0.5Y);
label("$x'$", newX, align=+0.5Y);
label("$y'$", newY,align=-0.5X+0.5Y);
label("$z'$", newZ, align=-0.5Y);
