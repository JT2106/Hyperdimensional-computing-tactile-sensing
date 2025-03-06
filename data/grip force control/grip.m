clear; clc;
matNum = 3;
massNum = 2;
load("grip_force_data.mat");
for matIdx = 1:1:matNum
    for massIdx = 1:1:massNum
        trailNum = length(grip_force_data{matIdx, massIdx});
        for i = 1:1:trailNum
            testData = grip_force_data{matIdx, massIdx}{i, 1};
            [igf_cm(i, 1), mgf_cm(i, 1)] = getGripForce(testData);
        end
        fr1{matIdx, massIdx} = mgf_cm./igf_cm;
        s1{matIdx, massIdx} = [mean(mgf_cm./igf_cm, "omitnan"), std(mgf_cm./igf_cm, "omitnan"), median(mgf_cm./igf_cm, "omitnan")];
    end
end

fr2 = cell2mat(fr1);
s2 = [mean(fr2); std(fr2); median(fr2)];

fr3 = reshape(fr2', [], matNum);
s3 = [mean(fr3); std(fr3); median(fr3)];

fr4 = reshape(fr2, [], 1);
s4 = [mean(fr4); std(fr4); median(fr4)];
