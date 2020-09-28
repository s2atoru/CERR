function [structNum, structure] = getStructureFromName(name, planC)
%getStructureFromName Get structure with name and its structNum from planC
%
%Usage: [stuctNum, structure] = getStructureFromName(name, planC);

indexS = planC{end};
structures = planC{indexS.structures};

for i = 1:size(structures,2)
    if strcmp(name, structures(i).structureName)
        structNum = i;
        structure = structures(i);
        break
    end
end
end

