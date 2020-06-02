%author: Siddhartha Ghosal
%date : 03.06.2020
%assignment no. 5
function[] = MedianFiltering()  
%This function doesn't require any input arguments
%It loads the image which is predefined in the program as train.jpg
%The image is then converted into the greyscale image
%Then standard Medain Filtering procedure is used for cleaning noise

    My_Image = 'sqrl.jpg'; %sample image taken as input  
    Image_Array = imread(My_Image); %reading it into a X*Y*3 size array by inbuilt imread() function 
    Greyscale_Image_Array = rgb2gray(Image_Array); %converting the image into a grayscale X*Y array
    %imshow(Greyscale_Image_Array);   %option to view the greyscale image(COMMENTED OUT)
    fprintf("The size of the image is \n"); 
    disp(size(Greyscale_Image_Array)); %displaying the size of the image in pixels
    [Xmax,Ymax] = size(Greyscale_Image_Array); %reading the Xdim and Ydim of image into Xmax and Ymax
    prompt = 'Please, Enter the Block Size :'; %option to input the size of block e.g 3x3,5x5,7x7
    BLOCK_SIZE = input(prompt); %the size of each block will be BLOCK_SIZE x BLOCK_SIZE 
    
    for i = 1:(+BLOCK_SIZE):(Xmax-BLOCK_SIZE)
        
        for j = 1:(+BLOCK_SIZE):(Ymax-BLOCK_SIZE)
            
            Xcentre = i + floor(BLOCK_SIZE/2); % X Co-ordinate of the central pixel
            %for example if BLOCK_SIZE = 3 then floor(3/2) = floor(1.5) = 1
            %if the program is in the the first block then i = 1 
            % so the Xcentre = 1+1 = 2
            %by similar method Y centre will be 2 
            %so the co-ordinate of the centre will be (2,2)
            
            Ycentre = j + floor(BLOCK_SIZE/2); % Y Co-ordinate of the central pixel
            %Replacing the value of central pixel with the Median of the surroundings of that block 
            %And the MedianOfBlock() Sub-procedure is called 
            Greyscale_Image_Array(Xcentre,Ycentre) = MedianOfBlock(i,j,Greyscale_Image_Array,BLOCK_SIZE);  
        end
        
    end
    imshow(Greyscale_Image_Array);
end

function[ Avg ] = MedianOfBlock(x,y,Block,BLOCK_SIZE)
%this function is a sub procedure for the computation of average value of the sub matrix
%it takes three parameters,the position of block takes two arguments x,y
%the third argument is the size of the square matrix
    Sum = 0;
    for i= x:(x+BLOCK_SIZE)
        
        for j = y:(y+BLOCK_SIZE)
            
            %its the sum with the central element%
            
            Sum  = Sum + Block(i,j); 
        end
    end
    %substracting the value of the central element from the sum
    %now the sum is S1+S2+...+SN + C - C = S1 + ...SN
    Sum = Sum - Block( x+floor(BLOCK_SIZE/2),y+floor(BLOCK_SIZE/2) );
    Avg = ceil(Sum/((BLOCK_SIZE*BLOCK_SIZE)-1)); %to make the median to a integer inbuilt Ceil function is called 
end