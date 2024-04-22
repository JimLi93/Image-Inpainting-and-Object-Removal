function confidence = calculate_confidence(confidence_array, row, col, patch_size)
    data = confidence_array(row - (patch_size-1)/2:row + (patch_size-1)/2,col - (patch_size-1)/2:col + (patch_size-1)/2,:);
    confidence = sum(data(:))/patch_size/(patch_size);
end

