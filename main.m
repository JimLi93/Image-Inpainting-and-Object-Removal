clear;
close all;

type = input("");

%%% Beach couple
if(type == 1)
    %%% Read image
    original_img = im2double(imread('img/beach3.jpg'));

    %%% Show the image
    imshow(original_img, 'InitialMagnification',1000);

    %%% Create mask. Inpainted part = 0
    [numRows, numCols, ~] = size(original_img);
    x = [307,303,333,414,422,459,421,402,328];
    y = [452.5,479.5,590.5,591.5,501.5,495.5,373.5,333.5,335.5];
    mask = double(~poly2mask(x, y, numRows, numCols));

    %%% Initailize patch size and boundary size
    patch_size = 9;
    boundary_size = 3;

%%% Blurred lake kid
elseif(type == 2)
    %%% Read image
    original_img = im2double(imread('img/4.jfif'));

    %%% Show the image
    imshow(original_img, 'InitialMagnification',1000);

    %%% Create mask. Inpainted part = 0
    [numRows, numCols, ~] = size(original_img);
    x = [183.875,182.375,183.875,188.125,201.625,205.125,205.375,214.625,208.875,202.125,202.375,192.625,184.625];
    y = [90.125,105.625,134.125,161.625,162.375,136.875,129.375,129.875,100.125,91.375,78.875,76.875,80.375];
    mask = double(~poly2mask(x, y, numRows, numCols));

    %%% Initailize patch size and boundary size
    patch_size = 5;
    boundary_size = 2;
%%% Ocean bridge
elseif(type == 3)
    %%% Read image
    original_img = im2double(imread('img/3.jpg'));

    %%% Show the image
    imshow(original_img, 'InitialMagnification',1000);

    %%% Create mask. Inpainted part = 0
    [numRows, numCols, ~] = size(original_img);
    x = [365,342,296,268,271,286,313,326,335,334,352,361,361,380,399,418,418,410,415,422,425,431,446,429,423,443,470,488,512,520,523,499,478,444,430,420,423,420,405,384,359,346,348,357];
    y = [203,205,315,332,358,353,343,325,332,365,416,516,547,547,570,566,549,531,506,455,411,372,359,309,291,314,334,346,344,329,320,311,311,273,228,206,188,157,141,135,139,151,174,193];
    mask = double(~poly2mask(x, y, numRows, numCols));

    %%% Initailize patch size and boundary size
    patch_size = 11;
    boundary_size = 5;
%%% buffalo
elseif(type == 4)
    %%% Read image
    original_img = im2double(imread('img/1.jpg'));

    %%% Show the image
    imshow(original_img, 'InitialMagnification',1000);

    %%% Create mask. Inpainted part = 0
    [numRows, numCols, ~] = size(original_img);
    x = [518,495,516,493,486,495,509,500,501,502,502,511,523,542,562,567,576,598,623,641,648,645,638,633,616,593,588,596,599,592,587,579,578,582,564,562,557,536,522,513,513,497,499];
    y = [373,395,416,426,481,499,505,523,561,617,662,694,708,711,713,713,701,691,687,677,672,661,637,617,579,526,510,496,474,452,425,422,414,394,386,379,363,359,363,371,377,390,395];
    mask = double(~poly2mask(x, y, numRows, numCols));

    %%% Initailize patch size and boundary size
    patch_size = 11;
    boundary_size = 5;

%%% Zoo
elseif(type == 5)
    %%% Read image
    original_img = im2double(imread('img/11.jpg'));

    %%% Show the image
    imshow(original_img, 'InitialMagnification',1000);

    %%% Create mask. Inpainted part = 0
    [numRows, numCols, ~] = size(original_img);
    x = [338.066825775656,326.843675417661,316.368735083532,314.124105011933,321.606205250597,329.836515513127,332.081145584726,327.591885441527,335.822195704057,341.059665871122,349.289976133652,353.031026252983,374.729116945107,404.657517899761,424.110978520286,426.355608591885,419.621718377088,409.146778042959,406.153937947494,410.643198090692,409.146778042959,412.139618138425,411.391408114558,411.391408114558,410.643198090692,403.909307875895,401.664677804296,412.139618138425,413.636038186158,410.643198090692,407.650357995227,411.391408114558,409.146778042959,397.175417661098,389.693317422434,388.945107398568,388.196897374702,385.952267303103,374.729116945107,363.505966587112,353.779236276850,344.052505966587,336.570405727924];
    y = [330.834725536993,336.072195704057,358.518496420048,398.173627684964,404.907517899761,411.641408114559,427.353818615752,458.030429594272,485.714200477327,505.915871121718,576.247613365155,599.442124105012,600.190334128878,600.190334128878,600.190334128878,582.981503579952,577.744033412888,573.254773269690,563.528042959427,550.808472553699,534.347852028640,511.901551312649,501.426610978520,487.210620525060,451.296539379475,424.360978520286,413.137828162291,406.403937947494,391.439737470167,372.734486873508,361.511336515513,353.281026252983,342.806085918854,330.834725536993,327.841885441527,324.100835322196,307.640214797136,291.927804295943,284.445704057279,278.460023866348,282.949284009547,288.186754176611,306.892004773270];
    mask = double(~poly2mask(x, y, numRows, numCols));

    %%% Initailize patch size and boundary size
    patch_size = 11;
    boundary_size = 5;

%%% Beach couple
else 
    %%% Read image
    original_img = im2double(imread('img/beach3.jpg'));

    %%% Show the image
    imshow(original_img, 'InitialMagnification',1000);

    %%% Create mask. Inpainted part = 0
    [numRows, numCols, ~] = size(original_img);
    x = [307,303,333,414,422,459,421,402,328];
    y = [452.5,479.5,590.5,591.5,501.5,495.5,373.5,333.5,335.5];
    mask = double(~poly2mask(x, y, numRows, numCols));

    %%% Initailize patch size and boundary size
    patch_size = 9;
    boundary_size = 6;
 end


%%% Red wall
% original_img = im2double(imread('img/4.jpg'));
% %%% Create mask. Inpainted part = 0
% mask = create_mask(original_img, 750,1900,1700,2350);
% patch_size = 25;
% boundary_size = 16;


% %% rainbow
% original_img = im2double(imread('img/8.jpg'));
% %%% Create mask. Inpainted part = 0
% mask = create_mask(original_img, 75,465,375,515);
% patch_size = 45;
% boundary_size = 5;

% %%% rainbow
% original_img = im2double(imread('img/9.jpg'));
% %%% Create mask. Inpainted part = 0
% mask = create_mask(original_img, 625,855,915,1045);
% % mask = create_mask(original_img, 225,325,1515,1575);
% patch_size = 9;
% boundary_size = 5;

%%% Giraffe
% original_img = im2double(imread('img/7.jpg'));
% %%% Create mask. Inpainted part = 0
% imshow(original_img, 'InitialMagnification',1000);
% % mask = create_mask(original_img, 325,605,305,430);
% % mask = create_mask(original_img, 325,605,145,310);
% % mask = double(~target_region);
% % imwrite(mask, 'mask_giraffe.jpg');
% mask = im2double(imread('mask_giraffe.jpg'));
% patch_size = 9;
% boundary_size = 3;



%%% first page
% original_img = im2double(imread('img/10.JPG'));
% %%% Create mask. Inpainted part = 0
% % mask = create_mask(original_img, 625,855,915,1045);
% mask = create_mask(original_img, 190,310,285,355);
% patch_size = 5;
% boundary_size = 3;


%%% Create inpainted image. Inpainted part = 0 Others are 1
inpainted_img = original_img .* mask;
imshow(inpainted_img, 'InitialMagnification',1000);

%%% Iniatialization (START)
[numRows, numCols, numChannels] = size(inpainted_img);

%%% Iniatialization confidence array same as mask
confidence_array = mask;

%%% Iniatialization boundary array 
boundary_array = ~mask;
boundary_array = imdilate(boundary_array, strel('square', boundary_size)) - boundary_array;

%%% Iniatialization priority array 
priority_array = zeros([numRows, numCols]);

%%% Iniatialization boundary pixels 
num_of_boundary_pixels = 0;
for i=1:numRows
    for j=1:numCols
        if(boundary_array(i,j) == 1)
            num_of_boundary_pixels = num_of_boundary_pixels + 1;
        end
    end
end

boundary_pixels = zeros([num_of_boundary_pixels, 2]);
bp_index = 1;
for i=1:numRows
    for j=1:numCols
        if(boundary_array(i,j) == 1)
            boundary_pixels(bp_index,1) = i;
            boundary_pixels(bp_index,2) = j;
            bp_index = bp_index + 1;
        end
    end
end

%%% Iniatialization empty value 1 for empty 0 for
empty = ~any(boundary_array(:));

%%% Iniatialization unit vector (orthogonal)
[ux, uy] = gradient(~mask);
ux = ux ./ (sqrt(ux.^2 + uy.^2));
uy = uy ./ (sqrt(ux.^2 + uy.^2));
ux(~isfinite(ux))=0;
uy(~isfinite(uy))=0;

%%% Iniatialization whole patch is known
known_patch_array = (conv2(mask, ones(patch_size, patch_size), 'valid') == patch_size^2);
%%% Iniatialization (END)


%%% Inpainting (START)
%%% If empty is 0 means there are still missing part in the image
while ~empty

    %%% Find target patch center (START)
    num_of_boundary_pixels = size(boundary_pixels,1);
    max_priority = -inf;

    %%% Go through every boundary pixels
    for i=1:num_of_boundary_pixels
        %%% Get row and col of boundary pixels
        row = boundary_pixels(i,1);
        col = boundary_pixels(i,2);
        
        %%% Calculate confidence value C(p)
        confidence = calculate_confidence(confidence_array, row, col, patch_size);

        %%% Calculate Gradient of boundary pixels (START)
        if(mask(row+1,col) == 1)
            gx = inpainted_img(row+1,col,:) - inpainted_img(row,col,:);
            gx = gx(1) * mask(row,col) + gx(2) * mask(row,col) + gx(3) * mask(row,col);
            gx = gx/3;
        elseif(mask(row-1,col) == 1)
            gx = inpainted_img(row-1,col,:) - inpainted_img(row,col,:);
            gx = gx(1) * mask(row,col) + gx(2) * mask(row,col) + gx(3) * mask(row,col);
            gx = gx/3;
        else 
            gx = 0;
        end

        if(mask(row,col+1) == 1)
            gy = inpainted_img(row,col+1,:) - inpainted_img(row,col,:);
            
            gy = gy(1) * mask(row,col) + gy(2) * mask(row,col) + gy(3) * mask(row,col);
            gy = gy/3;
        elseif(mask(row,col-1) == 1)
            gy = inpainted_img(row,col-1,:) - inpainted_img(row,col,:);
            gy = gy(1) * mask(row,col) + gy(2) * mask(row,col) + gy(3) * mask(row,col);
            gy = gy/3;
        else 
            gy = 0;
        end
        
        %%% Calculate Gradient of boundary pixels (END)

        %%% Update priority array in each boundary array
        priority_array(row, col) = confidence * abs((gx * uy(row,col) - gy*ux(row,col) )/255 + 0.001);

    end

    %%% Find the greatest priority value
    [value, index] = max(priority_array(:));
    if value == 0
        [row, col] = find(boundary_array==1, 1, 'first');
        coordinate = [row, col];
    else
        [row, col] = ind2sub(size(priority_array), index);
        coordinate = [row, col];
    end

    %%% Find target patch center (END)

    %%% Find similiar patch (START)
    target_patch_mask = mask(coordinate(1) - (patch_size-1)/2:coordinate(1) + (patch_size-1)/2,coordinate(2) - (patch_size-1)/2:coordinate(2) + (patch_size-1)/2);
    target_patch = inpainted_img(coordinate(1) - (patch_size-1)/2:coordinate(1) + (patch_size-1)/2,coordinate(2) - (patch_size-1)/2:coordinate(2) + (patch_size-1)/2,:);

    %%% Calculate the sum of the differences in 3 dimension
    dif_1 = filter2(target_patch_mask, inpainted_img(:,:,1).^2, 'valid') + sum(sum((target_patch(:,:,1) .* target_patch_mask).^2)) - 2*filter2((target_patch(:,:,1) .* target_patch_mask), inpainted_img(:,:,1), 'valid');
    dif_2 = filter2(target_patch_mask, inpainted_img(:,:,2).^2, 'valid') + sum(sum((target_patch(:,:,2) .* target_patch_mask).^2)) - 2*filter2((target_patch(:,:,2) .* target_patch_mask), inpainted_img(:,:,2), 'valid');
    dif_3 = filter2(target_patch_mask, inpainted_img(:,:,3).^2, 'valid') + sum(sum((target_patch(:,:,3) .* target_patch_mask).^2)) - 2*filter2((target_patch(:,:,3) .* target_patch_mask), inpainted_img(:,:,3), 'valid');
    dif_array = dif_1 + dif_2 + dif_3;
    
    %%% Choose the smallest of the sum to be the similiar patch
    dif_array(known_patch_array==0)=inf;
    [~, id] = min(dif_array(:));
    [row, col] = ind2sub(size(dif_array), id);
    similiar_patch = inpainted_img(row:row+patch_size-1, col:col+patch_size-1, :);


    %%% Inpaint the target patch using the similiar patch
    for i=coordinate(1) - (patch_size-1)/2:coordinate(1) + (patch_size-1)/2
        for j=coordinate(2) - (patch_size-1)/2:coordinate(2) + (patch_size-1)/2
            if(mask(i,j) == 0)
                inpainted_img(i,j,1) = similiar_patch(i-(coordinate(1) - (patch_size-1)/2)+1,j-(coordinate(2) - (patch_size-1)/2)+1,1);
                inpainted_img(i,j,2) = similiar_patch(i-(coordinate(1) - (patch_size-1)/2)+1,j-(coordinate(2) - (patch_size-1)/2)+1,2);
                inpainted_img(i,j,3) = similiar_patch(i-(coordinate(1) - (patch_size-1)/2)+1,j-(coordinate(2) - (patch_size-1)/2)+1,3);
            end
        end
    end
    
    %%% Find similiar patch (END)
    
    %%% Show the inpainted image after each patch inpaint
    imshow(inpainted_img, 'InitialMagnification',1000);

    %%% Update (START)

    %%% Update the mask
    old_mask = mask;

    for i=coordinate(1) - (patch_size-1)/2:coordinate(1) + (patch_size-1)/2
        for j=coordinate(2) - (patch_size-1)/2:coordinate(2) + (patch_size-1)/2
            mask(i,j) = 1;
        end
    end
    
    %%% Update boundary array
    boundary_array = ~mask;
    boundary_array = imdilate(boundary_array, strel('square', boundary_size)) - boundary_array;
    
    %%% Update boundary pixels (START)
    num_of_boundary_pixels = 0;
    for i=1:numRows
        for j=1:numCols
            if(boundary_array(i,j) == 1)
                num_of_boundary_pixels = num_of_boundary_pixels + 1;
            end
        end
    end

    boundary_pixels = zeros([num_of_boundary_pixels, 2]);
    bp_index = 1;
    for i=1:numRows
        for j=1:numCols
            if(boundary_array(i,j) == 1)
                boundary_pixels(bp_index,1) = i;
                boundary_pixels(bp_index,2) = j;
                bp_index = bp_index + 1;
            end
        end
    end

    %%% Update boundary pixels (END)
    
    %%% Update empty value
    empty = ~any(boundary_array(:));

    %%% Update unit vector (orthogonal)
    [ux, uy] = gradient(~mask);
    ux = ux ./ (sqrt(ux.^2 + uy.^2));
    uy = uy ./ (sqrt(ux.^2 + uy.^2));
    ux(~isfinite(ux))=0;
    uy(~isfinite(uy))=0;
    
    %%% Update confidence array (START)
    half_patch = (patch_size-1)/2;
    temp_con = 0;
    for i=coordinate(1)-half_patch:coordinate(1)+half_patch
        for j=coordinate(2)-half_patch:coordinate(2)+half_patch
            temp_con = temp_con + confidence_array(i,j);
        end
    end
    temp_con  = temp_con / patch_size / patch_size;

    for i=coordinate(1)-half_patch:coordinate(1)+half_patch
        for j=coordinate(2)-half_patch:coordinate(2)+half_patch
            if(old_mask(i,j) == 0 && mask(i,j) == 1)
                confidence_array(i,j) = confidence_array(i,j) + temp_con;
            end
        end
    end
    %%% Update confidence array (END)
    
    %%% Update priority array
    priority_array = zeros(numRows, numCols);

    %%% Update whole patch is known
    known_patch_array = (conv2(mask, ones(patch_size, patch_size), 'valid') == patch_size^2);
end
%%% Inpainting (END)

%%% Show the inpainted image after the whole inpainting
imshow(inpainted_img, 'InitialMagnification',1000);
