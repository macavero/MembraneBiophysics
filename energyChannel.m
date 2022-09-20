function [alpha] =  energyChannel(T, gibbsFree)

%This function retrieves the alpha according to the temperature (in K) and the gibbs
%free energy that an ion needs to overcome an energetic barrier through a
%channel. If gibbsFree is not given, it plots the alpha according to gibbs
%free energy from 0 to 1000 with intervals of 0.1.

K = 1.38*(10^-23); %J/K
h = 6.63*(10^-34); %J.s
R = 8.314; %J/(mol.K)

if nargin<2
    gibbsFree = 0:0.1:10000;
    alphaVal = (K*T / h)* exp(gibbsFree/(R*T));
    alpha = plot(gibbsFree,alphaVal);
    xlabel('Gibbs Free Energy');
    ylabel('Alpha');
else
    alpha = (K*T / h)* exp(gibbsFree/(R*T));
end

