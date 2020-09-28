function [planC,indexS] = getPlanCandIndexS(fileFullPath)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
planC = loadPlanC(fileFullPath, tempdir);
planC = updatePlanFields(planC);
planC = quality_assure_planC(fileFullPath, planC);
indexS = planC{end};
end

