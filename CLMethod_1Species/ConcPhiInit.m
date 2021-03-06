% Initial Conditions for ions' concentration
% Update on 2015/09/03
% Change log:
%    Version 3
%      Reformat the BC
%    Version 2 
%      Due to version 1 lock of the electric neutural inside the
%      computational domain. We change the initial concentrations of both 
%      ions decrease from left boundary to the right. The electric neutural 
%      which satisfy that zp*Conc1 + zn* Conc2 = 0.
%
%    Version 1 
%      Concentration at first and last 5% of the computational domain are
%      function of tanh decay (increase) from boundary condition (nearly to 
%      zero) to nearly to zero (boundary condition). Between these regions
%      are set to be nearly to zero.
%

function [Conc] = ConcPhiInit(x, IonBc)

global e_unit DiffIon ValIon 
global N ep C_ex
  
Valence= ValIon * e_unit;

a=x(end) - x(1); %z=0.5*a*(x+1); 

R1=IonBc(2,1);   L1=IonBc(1,1);     

Conc = L1+(R1-L1)/a*(x-(x(1)));
end
