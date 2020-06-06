%author: Siddhartha Ghosal
%date : 06.06.2020
%assignment no. 5
function[] = MedianFiltering()  
%This function doesn't require any input arguments
%It loads the image which is predefined in the program
%The image is then converted into the greyscale image using matlab buitin
%function and then it uses the standard median filtering algorithm to 
%remove noise from the picture
%as it can be seen from experimental point of view that 3x3 block median
%filtering gives the best filtering of the image
%Then standard Medain Filtering procedure is used for cleaning noise

    My_Image = 'sqrln.png'; %sample image taken as input 
    %imshow(My_Image);
    Image_Array = imread(My_Image); %reading it into a X*Y*3 size array by inbuilt imread() function
    Greyscale_Image_Array = rgb2gray(Image_Array); %converting the image into a grayscale X*Y array
    imshow(Greyscale_Image_Array);
    fprintf("if the rgb2gray() is not used the the image will be saved as 3D Matrix of size X*Y*3\n");
    %imshow(Greyscale_Image_Array);   %option to view the greyscale image(COMMENTED OUT)
    fprintf("The size of the greyscale image is \n"); 
    disp(size(Greyscale_Image_Array)); %displaying the size of the image in pixels
    [Xmax,Ymax] = size(Greyscale_Image_Array); %reading the Xdim and Ydim of image into Xmax and Ymax
    prompt = 'Please, Enter the Block Size :'; %option to input the size of block e.g 3x3,5x5,7x7
    BLOCK_SIZE = input(prompt); %the size of each block will be BLOCK_SIZE x BLOCK_SIZE 
    %padding with 0's to make both sides Multiple of BLOCK_SIZE
    Padded_Array = padarray(Greyscale_Image_Array,[mod(Xmax,BLOCK_SIZE) mod(Ymax,BLOCK_SIZE)],0,'both');
    [Xnew,Ynew] = size(Padded_Array); %Xnew and Ynew corresponds to the new size of padded array
    
    for i = 1:(Xnew-BLOCK_SIZE)
        
        for j = 1:(Ynew-BLOCK_SIZE)
            
            Xcentre = i + floor(BLOCK_SIZE/2); % X Co-ordinate of the central pixel
            %for example if BLOCK_SIZE = 3 then floor(3/2) = floor(1.5) = 1
            %if the program is in the the first block then i = 1 
            % so the Xcentre = 1+1 = 2
            %by similar method Y centre will be 2 
            %so the co-ordinate of the centre will be (2,2)
            
            Ycentre = j + floor(BLOCK_SIZE/2); % Y Co-ordinate of the central pixel
            %Replacing the value of central pixel with the Median of the surroundings of that block 
            %And the MedianOfBlock() Sub-procedure is called 
            Padded_Array(Xcentre,Ycentre) = MedianOfBlock(i,j,Padded_Array,BLOCK_SIZE,Ynew);  
        end
        
    end
    imshow(Padded_Array);
    imsave();
end

function[ MEDIAN ] = MedianOfBlock(x,y,Block,BLOCK_SIZE,Ymax)
%this function is a sub procedure for the computation of average value of the sub matrix
%it takes three para meters,the position of block takes two arguments x,y
%the third argument is the size of the square matrix
k = 1;
%Block() = [];
for i = 1:BLOCK_SIZE
    for j = 1:BLOCK_SIZE    
            a(k) = Block(x+i-1,y+j-1);
            k = k+1;
        if k == ceil((BLOCK_SIZE*BLOCK_SIZE)/2)
            j = j+1; %if the value of k = index of central element then skip it 
        end
    end
end
disp(a);
b = sort(a); %sorting the temporary array 
MEDIAN = b(ceil((BLOCK_SIZE*BLOCK_SIZE)/2)); %the median is the mid element of the sorted array

end
