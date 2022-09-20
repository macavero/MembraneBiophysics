function [leak,changeConc, percentage_leak,nernstEq] = leak_ions(diameter,externalConc,internalConc,valence)
%
%Take into account the input units
%   Diameter: microns
%   External Concentration and Internal Concentration: mM
%
%Output units
%   nernstEq: mV
%   leak: number of ions
%
%el problema de hallar el procentaje con el numero de iones es que 
%se esta asumiendo que el volumen externo es el de la celula, lo cual no
%es correcto. Ergo, es preferible hallar la concentracion que representa
%el numero de iones que salieron, respecto al interior celular, lo cual
%indica el cambio de concentracion. Esto se divide despues sobre el la
%concentracion total que suele ser 300mM, y que es mayor para organismos de
%agua dulce.

radius = (diameter/2)/(10^4); %cm
volumeCm3 = (4*pi*(radius^3))/3;%cm^3
volumeL = volumeCm3*0.001; %L
area = (4*pi*(radius^2)); %cm^2
specificCapacitance = 10^-6; %faradays/cm^2
capacitance = specificCapacitance*area; %faradays

F = 96500; %coulombs/mol faraday constant
na = 6.023*(10^23); %ions/mol avogadro number
nernstEq = 58*log10((externalConc/internalConc)^valence); %Nernst eq mV
Q = (nernstEq/1000) * capacitance; %coulombs
nMoles = abs(Q/F);


leak = nMoles*na; % # leak ions
changeConcM = nMoles/volumeL; %molar
changeConc = changeConcM/10^-3; %miliMolar
percentage_leak = changeConc*100/(300); %300mM is the total concentration of ions in land animal cells.


