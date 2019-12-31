obj1 = imread('DIP\Lab2\obj1.png');
info = imfinfo('DIP\Lab2\obj1.png');
w = info.Width
h = info.Height

% 1
im = zeros(800, 'uint8');
% 2
im = imnoise(im,'gaussian');
im1 = im;
% 3
H = figure;
imhist(im);
mkdir('DIP\Lab2');
saveas(H,'DIP\Lab2\1_HIST.bmp');
% 4
obj1 = uint8 (255 * mat2gray (obj1));
for i = 1:h
    for j = 1:w
        if(obj1(i,j) ~= 0)
            im1(i+362,j+347) = obj1(i,j);
        end
    end
end
uint8Image = uint8 (255 * mat2gray (im1));
imwrite (uint8Image, 'DIP\Lab2\2_im_obj1.bmp');
% 5
im1 = im;
obj1res = imresize(obj1, 2, 'nearest');
for i = 1:2*h
    for j = 1:2*w
        if(obj1res(i,j) ~= 0)
            im1(i+324,j+294) = obj1res(i,j);
        end
    end
end
uint8Image = uint8 (255 * mat2gray (im1));
imwrite (uint8Image, 'DIP\Lab2\3_im_obj1_resize2_nearest.bmp');
% 6

im1 = im;
obj1res = imresize(obj1, 2, 'bicubic');
for i = 1:2*h
    for j = 1:2*w
        if(obj1res(i,j) ~= 0)
            im1(i+324,j+294) = obj1res(i,j);
        end
    end
end
uint8Image = uint8 (255 * mat2gray (im1));
imwrite (uint8Image, 'DIP\Lab2\4_im_obj1_resize2_bicubic.bmp');

im1 = im;
obj1res = imresize(obj1, 0.5, 'nearest');
for i = 1:h/2
    for j = 1:w/2
        if(obj1res(i,j) ~= 0)
            im1(i+374,j+381) = obj1res(i,j);
        end
    end
end
uint8Image = uint8 (255 * mat2gray (im1));
imwrite (uint8Image, 'DIP\Lab2\5_im_obj1_resize05_nearest.bmp');

im1 = im;
obj1res = imresize(obj1, 0.5, 'bilinear');
for i = 1:h/2
    for j = 1:w/2
        if(obj1res(i,j) ~= 0)
            im1(i+374,j+381) = obj1res(i,j);
        end
    end
end
uint8Image = uint8 (255 * mat2gray (im1));
imwrite (uint8Image, 'DIP\Lab2\6_im_obj1_resize05_bilinear.bmp');

im = zeros(800, 'uint8');
im = imnoise(im,'gaussian');

obj2 = imread('DIP\Lab2\obj2.png');
info = imfinfo('DIP\Lab2\obj2.png');
w = info.Width
h = info.Height
obj2 = uint8 (255 * mat2gray (obj2));
for i = 1:h
    for j = 1:w
        if(obj2(i,j) ~= 0)
            im(i,j) = obj2(i,j);
        end
    end
end

obj3 = imread('DIP\Lab2\obj3.png');
info = imfinfo('DIP\Lab2\obj3.png');
w = info.Width
h = info.Height
obj3 = uint8 (255 * mat2gray (obj3));
for i = 1:h
    for j = 1:w
        if(obj3(i,j) ~= 0)
            im(i+717,j+717) = obj3(i,j);
        end
    end
end

uint8Image = uint8 (255 * mat2gray (im));
imwrite (uint8Image, 'DIP\Lab2\7_im_obj2.bmp');
% 7
imflip = flipdim(im,2);

uint8Image = uint8 (255 * mat2gray (imflip));
imwrite (uint8Image, 'DIP\Lab2\8_im_fliph.bmp');
% 8
imflip = flipdim(im,1);

uint8Image = uint8 (255 * mat2gray (imflip));
imwrite (uint8Image, 'DIP\Lab2\9_im_flipv.bmp');
% 9
imrot = imrotate(im,-45,'bicubic');

uint8Image = uint8 (255 * mat2gray (imrot));
imwrite (uint8Image, 'DIP\Lab2\10_im_rot45.bmp');
% 10
imrot = imrotate(im,45,'bicubic');

uint8Image = uint8 (255 * mat2gray (imrot));
imwrite (uint8Image, 'DIP\Lab2\11_im_rot-45.bmp');
% 11
fon = imread('DIP\Lab2\fon.jpg');
fon_gr = uint8(rgb2gray(fon));
% 12
fon_crop = imcrop(fon_gr,[973 411 799 799]);
% 13
fon_crop = fon_crop ./ 4;
fon = fon_crop;
% 14
obj2 = imread('DIP\Lab2\obj2.png');
info = imfinfo('DIP\Lab2\obj2.png');
w = info.Width
h = info.Height
obj2 = uint8 (255 * mat2gray (obj2));
for i = 1:h
    for j = 1:w
        if(obj2(i,j) ~= 0)
            fon(i,j) = obj2(i,j);
        end
    end
end

obj3 = imread('DIP\Lab2\obj3.png');
info = imfinfo('DIP\Lab2\obj3.png');
w = info.Width
h = info.Height
obj3 = uint8 (255 * mat2gray (obj3));
for i = 1:h
    for j = 1:w
        if(obj3(i,j) ~= 0)
            fon(i+717,j+717) = obj3(i,j);
        end
    end
end

im = zeros(800, 'uint8');
im = imnoise(im,'gaussian');

fon = fon + im;

uint8Image = uint8 (255 * mat2gray (fon));
imwrite (uint8Image, 'DIP\Lab2\12_fon_obj23.bmp');
% 15
fon_negative = 255 - fon;

uint8Image = uint8 (255 * mat2gray (fon_negative));
imwrite (uint8Image, 'DIP\Lab2\13_fon_negative.bmp');
% 16
obj1 = imread('DIP\Lab2\obj1.png');
info = imfinfo('DIP\Lab2\obj1.png');
w = info.Width
h = info.Height
obj1 = uint8 (255 * mat2gray (obj1));
for i = 1:h
    for j = 1:w
        if(obj1(i,j) ~= 0)
            fon_crop(i+362,j+347) = obj1(i,j);
        end
    end
end

im = zeros(800, 'uint8');
im = imnoise(im,'gaussian');
fon_crop = fon_crop + im;

uint8Image = uint8 (255 * mat2gray (fon_crop));
imwrite (uint8Image, 'DIP\Lab2\14_fon_obj1.bmp');
% 17
subst = fon - fon_crop;
uint8Image = uint8 (255 * mat2gray (subst));
imwrite (uint8Image, 'DIP\Lab2\15_subst.bmp');
