x = [-5*pi:pi/100:5*pi];
f1 = sin(x) + cos(x);
f2 = (sin(x)).^2 + x.^2;
f3 = sin(x) .* x.^2;

figure('position', [10, 50, 700, 700]);

plot(x, f1, 'r', x, f2, 'g', x, f3, 'b');
title('graphs');
lgd = legend('sin(x) + cos(x)', 'sin^2(x) + x^2', 'sin(x) * x^2');
set(lgd,'Location','best');

figure('position', [720, 50, 350, 700]);

subplot(3,1,1);
plot(x,f1);
axis([-15 15 -2 2]);
title('sin(x) + cos(x)');

subplot(3,1,2);
plot(x, f2);
axis([-8 8 -5 80]);
title('sin^2(x) + x^2');

subplot(3,1,3);
plot(x, f3);
axis([-15 15 -250 250]);
title('sin(x) * x^2');

x = -20:0.01:20;
for n = 1:length(x)
if x(n) <= 0
y(n) = (1+x(n)) / (1+x(n)^2);
end
if x(n) > 0
y(n) = sqrt(1 + (cos(x(n))/(3 + x(n))));
end
end

y1 = (x <= 0) .* ((1+x) ./ (1+x.^2)) + (x > 0) .* (sqrt(1 + (cos(x)./(3 + x))));

figure('position', [1080, 50, 500, 700]);

subplot(2,1,1);
plot(x,y);
axis([-20 20 -0.5 1.3]);
title('for + if');

subplot(2,1,2);
plot(x, y1);
axis([-20 20 -0.5 1.3]);
title('expression');