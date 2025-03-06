function [idealGripForce, maxGripForce] = getGripForce(testData)
isNaNCell = cellfun(@(x) any(isnan(x)), testData(:, 2));
testData(isNaNCell(:), :) = [];
fs = testData(:, 1);
slipLabels = cell2mat(testData(:, 3));

for i = 1:1:length(fs)
    fs_t(i, :) = fs{i}(end, :);
end
Fz_t = sum(fs_t(:, 1:3:end), 2);
Fy_t = sum(fs_t(:, 2:3:end), 2);
Fx_t = sum(fs_t(:, 3:3:end), 2);
Ftan_t = sqrt(Fy_t .^2 + Fx_t .^ 2);

Fz_t = Fz_t(Fz_t <= 10);
maxGripForce = max(Fz_t);

win1 = 4;  % slip event identification window length: find real slips events
realSlip = 3;
iSlipInx = [];
i = 1;
while i < length(slipLabels)-win1+1
    sw = slipLabels(i:i+win1-1, 1);
    if any(sw == 2) && sum((sw ==2)|(sw==3)) >= realSlip
        iSlipInx = [iSlipInx; i+find(sw==2)-1];
        i = i + win1;
    else
        i = i + 1;
    end
end

if isempty(iSlipInx)
    idealGripForce = NaN;
    %maxGripForce = NaN;
else
    fz_slip = fs_t(iSlipInx, 1:3:end);
    fy_slip = fs_t(iSlipInx, 2:3:end);
    fx_slip = fs_t(iSlipInx, 3:3:end);
    fz_slip(fz_slip == 0) = NaN;
    ftan_slip = sqrt(fy_slip .^2 + fx_slip .^2);
    ftan_slip(ftan_slip == 0) = NaN;

    mu_all = (ftan_slip ./ fz_slip);
    mu_all(mu_all >= 1) = NaN;

    mu = mean(mu_all, 2, "omitnan");

    Ftan_slip = sum(ftan_slip, 2, "omitnan");
    [idealGripForce, ~] = min(Ftan_slip ./ mu);
end
end