function y1 = func01(x1) 
clc;
clear all;
f=fopen('in7.txt','r');
lin1 = fgetl(f);
fclose(f);
size0 = size(strrep(lin1, ' ', ''));
ans1 = size0(2);
disp(ans1);

V = findstr(' ', lin1);
M = strsplit(lin1, ' ');
sizem = size(M);
Mn = M;
Mn(1) = M(sizem(2));
Mn(sizem(2)) = M(1);
ans2 = '';
for n = 1:sizem(2)
    ans2 = [ans2 ' ' char(Mn(n))];
end
deblank(ans2);
disp(ans2);

str1c = '';
for tt = 1:length(lin1)
      switch lin1(tt)
          case '0'
              str1c = [str1c '  ']
          case '1'
              str1c = [str1c 'один '];
          case '2'
              str1c = [str1c 'два '];
          case '3'
              str1c = [str1c 'три '];
          case '4'
              str1c = [str1c 'четыре '];
          case '5'
              str1c = [str1c 'пять '];
          case '6'
              str1c = [str1c 'шесть '];
          case '7'
              str1c = [str1c 'семь '];
          case '8'
              str1c = [str1c 'восемь '];
          case '9'
              str1c = [str1c 'девять '];
          otherwise
              str1c = [str1c lin1(tt)];
      end
end
str1c = char(deblank(str1c));
for i0000 = 1:3 % удаление двойных пробелов
    ans3 = strrep(str1c, '  ', ' ');
end
disp(ans3);

num1c = [];


    
    c008 = 1;
for c009 = 1:sizem(2)
    if isnan(str2double(M(c009))) == 0
        ans4(c008)=str2double(M(c009));
        c008 = c008 + 1;
    end
end
disp(ans4);

fid = fopen('in7.txt', 'w');
fprintf(fid, '195256 СПб Науки 49\n4.79 2.001 9.921 3.21 0.25\n1.129 1.865 8.341 9.33 8.01\n8.136 8.401 7.133 3.12 3.44');
fclose(fid);

fid = fopen('in7.txt', 'r');
in = fgetl(fid);
M1 = strsplit(in, ' ');
while feof(fid) == 0
    in = fgetl(fid); 
    V9 = findstr(' ', in);
    M9 = strsplit(in, ' ');
    if size(M1) == size(M9)
        M1 = [M1;M9];
    else
        if exist('M2') == 0
            M2 = M9;
        else
            M2 = [M2;M9];
        end
    end
end
disp('m1');
disp(M1);
disp('m2');
disp(M2);

x = [1:0.1:5];
f1 = sin(7*x);
figure;
plot(x, f1);






