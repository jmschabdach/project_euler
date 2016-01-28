function d = ellipse_path(a, b)
% Project Euler Problem 525: https://projecteuler.net/problem=525
% 
% Pretty sure the path is off by a little bit, but it's within .822 of the
% actual answer for a case of ellipse_path(2, 4)

step = 1e-5;
theta = 0:step:2*pi;
base = (b-a)*b*2;
s = (b-a)*abs(cos(theta))+a; % arc length as a shifted absolute cosine
figure
plot(theta, s)
grid on
ylim([0, max(s)])
% distance formula
% d = sum(sqrt((s(2:end)-s(1:end-1)).^2+(theta(2:end)-theta(1:end-1)).^2));
d = trapz(theta, s);

