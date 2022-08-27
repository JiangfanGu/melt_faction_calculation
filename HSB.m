%%Hashin-Shtrikman Boundery
%%Hashin Z, Shtrikman S. A Variational approach to the theory of the effective magnetic permeability of multiphase materials[J]. Journal of Applied Physics, 1962, 33(10): 3125-3131. https://doi.org/10.1063/1.1728579.
%%coded by GuJiangfan@CUGB
%%meltfraction-conductivity 
meltsigma=1;%replace it with any result you find/calculate/measure
sigmarock=1000;%replace it with any result you find/calculate/measure
phi=0:0.01:1;
phip=phi*100;
sigmahsp=meltsigma+(1-phi).*(1./(1/(sigmarock-meltsigma)+phi/meltsigma/3));
semilogy(phip,sigmahsp,'m');
hold on
sigmahsm=sigmarock+phi.*(1./(1/(meltsigma-sigmarock)+(1-phi)/sigmarock/3));
semilogy(phip,sigmahsm,'c');
hold on
xlabel('melt fraction(%)');
ylabel('conductivity(S/m)');
