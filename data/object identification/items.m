clear; clc;
itemNum = 7;
load("itemHVs.mat");

class1_HVs = itemHVs{1, 1};
class2_HVs = itemHVs{2, 1};
class3_HVs = itemHVs{3, 1};
class4_HVs = itemHVs{4, 1};
class5_HVs = itemHVs{5, 1};
class6_HVs = itemHVs{6, 1};
class7_HVs = itemHVs{7, 1};

data = [class1_HVs; 
        class2_HVs; 
        class3_HVs;
        class4_HVs;
        class5_HVs;
        class6_HVs;
        class7_HVs;];
ls = [1*ones(size(class1_HVs, 1), 1); 
      2*ones(size(class2_HVs, 1), 1); 
      3*ones(size(class3_HVs, 1), 1);
      4*ones(size(class4_HVs, 1), 1);
      5*ones(size(class5_HVs, 1), 1);
      6*ones(size(class6_HVs, 1), 1);
      7*ones(size(class7_HVs, 1), 1);];
data = zscore(data);

samples = cell2mat(itemHVs);
testSamples = samples([11:30,41:60,71:90,101:120,131:150,161:180,191:210], :);
labelledSamples = samples([1,31,61,91], :);
unlablledSamples = samples([2:10,32:40,62:70,92:100,121:130,151:160,181:190], :);
testlabels = [ones(20,1); 2*ones(20,1); 3*ones(20,1); 4*ones(20,1); 5*ones(20,1); 6*ones(20,1); 7*ones(20,1)];
initLabels = 1:4;
activeLabels = [ones(9,1); 2*ones(9,1); 3*ones(9,1); 4*ones(9,1); 5*ones(10,1); 6*ones(10,1); 7*ones(10,1)];

% initial test
itemAM = labelledSamples;
predictLabel = zeros(2, 1);
for testNum = 1:1:length(testlabels)
    predictLabel(testNum, 1) = -1;

    maxDis = 1;
    for i = unique(initLabels)
        hamDis = hammingdis(testSamples(testNum, :), itemAM(i, :));
        if (hamDis < maxDis)
            maxDis = hamDis;
            predictLabel(testNum, 1) = i;
        end
    end
end
ls = [testlabels, predictLabel];
labels{1, 1} = ls;
numTest = length(predictLabel);
correct = sum(predictLabel == testlabels);
acc(1, 1) = correct / numTest;
numTest_c = length(predictLabel) / itemNum * length(initLabels);
correct_c = sum(predictLabel(1:numTest_c) == testlabels(1:numTest_c));
acc(1, 2) = correct_c / numTest_c;
numTest_o = length(predictLabel) / itemNum * (itemNum - length(initLabels));
correct_o = sum(predictLabel(numTest_c+1:end) == testlabels(numTest_c+1:end));
acc(1, 3) = correct_o / numTest_o;

confidThres =  0.275*ones(7, 1); 
activeSampleNum = 13;
unlabelledPoolSize = size(unlablledSamples, 1);
classPool = initLabels;
ClassCnt = [ones(4, 1); zeros(3, 1)];

rng(7);
for lp = 1:1:15
    rp = randperm(unlabelledPoolSize, activeSampleNum);
    predictLabel = zeros(2, 1);

    for activeNum = 1:1:activeSampleNum
        predictLabel(activeNum, 1) = -1;

        maxDis = 1;
        dst = -1*ones(itemNum, 1);
        for i = classPool
            hamDis = hammingdis(unlablledSamples(rp(activeNum), :), itemAM(i, :));
            if (hamDis < maxDis)
                maxDis = hamDis;
                predictLabel(activeNum, 1) = i;
            end
            dst(i, 1) = hamDis;
        end
        dst(dst < 0) = NaN;
        d2c = min(dst, [], "omitnan");
        realLabel = activeLabels(rp(activeNum), 1);
        if d2c >= confidThres(realLabel)    
            if isempty(find(classPool == realLabel, 1))
                itemAM(realLabel, :) = unlablledSamples(rp(activeNum), :);
                classPool = sort([classPool, realLabel]);
            else
                iAM_temp = ClassCnt(realLabel) .* itemAM(realLabel, :) + unlablledSamples(rp(activeNum), :) + (itemAM(realLabel, :) .* unlablledSamples(rp(activeNum), :));
                iAM_temp(iAM_temp < 0) = -1;
                iAM_temp(iAM_temp >= 0) = 1;
                itemAM(realLabel, :) = iAM_temp;
                confidThres(realLabel) = confidThres(realLabel) + 0.005;
            end
            ClassCnt(realLabel) = ClassCnt(realLabel) + 1;
        end
    end

    % test after each loop
    predictLabel = zeros(2, 1);
    for testNum = 1:1:length(testlabels)
        predictLabel(testNum, 1) = -1;

        maxDis = 1;
        for i = classPool
            hamDis = hammingdis(testSamples(testNum, :), itemAM(i, :));
            if (hamDis < maxDis)
                maxDis = hamDis;
                predictLabel(testNum, 1) = i;
            end
        end
    end
    ls = [testlabels, predictLabel];
    labels{lp+1, 1} = ls;
    numTest = length(predictLabel);
    correct = sum(predictLabel == testlabels);
    acc(lp+1, 1) = correct / numTest; 
    numTest_c = length(predictLabel) / itemNum * length(initLabels);
    correct_c = sum(predictLabel(1:numTest_c) == testlabels(1:numTest_c));
    acc(lp+1, 2) = correct_c / numTest_c;
    numTest_o = length(predictLabel) / itemNum * (itemNum - length(initLabels));
    correct_o = sum(predictLabel(numTest_c+1:end) == testlabels(numTest_c+1:end));
    acc(lp+1, 3) = correct_o / numTest_o;
end

function hamDis = hammingdis(v, AMC)
hamDis = sum(AMC ~= v) / length(v);
end