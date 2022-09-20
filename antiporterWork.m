function [voltage] = antiporterWork(ion1Eq, ion2Eq, nIons1, nIons2)
%
% This function estimates the value of voltage in which the work dissipated
% by the movement though the membrane of a number of ions of one species 
% in one direction counteracts the work needed to move ions from another 
% species. ion1Eq and ion2Eq is the Nernst equilibrium value for the two
% ion species. nIons1 and nIons2 corresponds the number of ions that cross
% the antiporter in one cycle.

voltage = ( nIons1*ion1Eq - nIons2*ion2Eq)/ (nIons1 - nIons2);
