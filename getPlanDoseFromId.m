function [doseNum,dose] = getPlanDoseFromId(id,planC)
%getPlanDoseFromId Get dose with id and its doseNum from planC
%
%Usage: [doseNum, dose] = getPlanDoseFromId(id, planC);

indexS = planC{end};
doses = planC{indexS.dose};

for i = 1:size(doses,2)
    if strcmp('PLAN', doses(i).doseSummationType) && strcmp(id, doses(i).fractionGroupID)
        doseNum = i;
        dose = doses(i);
        break
    end
end
end

