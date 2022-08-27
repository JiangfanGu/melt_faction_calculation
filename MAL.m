%%modified Archie¡¯s law
%%Glover P W J, Hole M J, Pous J. A modified Archie¡¯s law for two conducting phases[J]. Earth and Planetary Science Letters, 2000, 180(3-4): 369-383. https://doi.org/10.1016/S0012-821X(00)00168-0.
%%coded by GuJiangfan@CUGB
%%meltfraction-conductivity 
meltsigma=1;%replace it with any result you find/calculate/measure
sigmarock=0.001;%replace it with any result you find/calculate/measure
phi=0:0.01:1;
phip=phi*100;
for m=1:0.5:2;
    tmp=phi.^m;
    sigmaeff=sigmarock*(1-phi).^(log(1-tmp)/log(1-phi))+meltsigma.*tmp;
    if m==1
     semilogy(phip,sigmaeff,'r');
       hold on
    elseif m==1.5
       semilogy(phip,sigmaeff,'b');
       hold on
    else
       semilogy(phip,sigmaeff,'g');
       hold on
    end
end
xlabel('melt fraction(%)');
ylabel('conductivity(S/m)');