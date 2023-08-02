function [check, desc] = checkTexts(fileName)
    i1 = fopen(fileName);
    i2 = fopen([fileName(1:end-4) '_soln.txt']);
    file1 = [];
    file2 = [];
    
    try
        while true
            line = fgets(i1);
            if ~ischar(line)
                break;
            end
            file1 = [file1 {line}];
        end
        while true
            line = fgets(i2);
            if ~ischar(line)
                break;
            end
            file2 = [file2 {line}];
        end
        
        fclose(i1);
        fclose(i2);
        check = isequal(file1, file2);
        
        desc = [];
        for i = 1:max(length(file1), length(file2))
            if i > min(length(file1), length(file2)) || ~strcmp(file1{i}, file2{i})
                desc = [desc num2str(i) ', '];
            end
        end
        
        if isempty(desc)
            desc = 'The text file matches the solution file.';
        else
            desc = desc(1:end-2);
            desc = sprintf('The text file differs from the solution file in line(s) %s.', desc);
        end
    catch ME
        fclose(i1);
        fclose(i2);
        rethrow(ME);
    end
end