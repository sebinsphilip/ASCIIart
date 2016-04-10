RGB = imread('mother_teresa1.jpg');
GREY = rgb2gray(RGB);
imshow (GREY)
[d1,d2] = size(GREY) ;
%aspect ratio correction
% for k= 1:2:d1
%     for m= 1:d2
%        avg = (GREY(k,m)+GREY(k+1,m))/2; 
%        GREY(k,m)= avg;
%        GREY(k+1,m) = avg;
%         
%     end
%     
%     
% end
for k = 1:d1
    for m = 1:d2
       if GREY(k,m)<63
           n=k+m;
           if n%2
              GREY(k,m)= 8;
           else
               GREY(k,m)=5;
           end
       elseif GREY(k,m)<128
            n=k+m;
           if n%2
              GREY(k,m)= 0;
           else
               GREY(k,m)=3;
           end
       else
           GREY(k,m)=1;
       end 
        
    end
    
end 
print GREY 
