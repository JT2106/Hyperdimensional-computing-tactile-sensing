clear; clc;
matNum = 3;
massNum = 2;

for matIdx = 1:1:matNum
    for massIdx = 1:1:massNum
        switch massIdx
            case 1
                mass = 'H';
            case 2
                mass = 'L';
            otherwise
                error("No such mass index!!!");
        end
        f = ['\', 'M', num2str(matIdx), '_', mass, '\'];   
        path = [pwd, f];
        fn = '*M*.trc';
        files = dir([path, fn]);
        trailNum = length(files);

        for i = 1:1:trailNum
            [slipz{matIdx, massIdx}(i, 1), spin{matIdx, massIdx}(i, 1)] = getSlides([path, files(i).name]);
        end
        s1_slipz{matIdx, massIdx} = [mean(slipz{matIdx, massIdx}(:, 1)), std(slipz{matIdx, massIdx}(:, 1)), median(slipz{matIdx, massIdx}(:, 1))];
        s1_spin{matIdx, massIdx} = [mean(spin{matIdx, massIdx}(:, 1)), std(spin{matIdx, massIdx}(:, 1)), median(spin{matIdx, massIdx}(:, 1))];
    end
end

sld2_slipz = cell2mat(slipz);
s2_slipz = [mean(sld2_slipz); std(sld2_slipz); median(sld2_slipz)];

sld3_slipz = reshape(sld2_slipz', [], matNum);
s3_slipz = [mean(sld3_slipz); std(sld3_slipz); median(sld3_slipz)];

sld4_slipz = reshape(sld2_slipz, [], 1);
s4_slipz = [mean(sld4_slipz); std(sld4_slipz); median(sld4_slipz)];

sld2_spin = cell2mat(spin);
s2_spin = [mean(sld2_spin); std(sld2_spin); median(sld2_spin)];

sld3_spin = reshape(sld2_spin', [], matNum);
s3_spin = [mean(sld3_spin); std(sld3_spin); median(sld3_spin)];

sld4_spin = reshape(sld2_spin, [], 1);
s4_spin = [mean(sld4_spin); std(sld4_spin); median(sld4_spin)];


