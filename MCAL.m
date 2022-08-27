%%Modified archie's law
%%Ten Grotenhuis S M, Drury M R, Spiers C J, et al. Melt distribution in olivine rocks based on electrical conductivity measurements[J]. Journal of Geophysical Research: Solid Earth, 2005, 110(12): 1-11. https://doi.org/10.1029/2004JB003462.
%%Watanabe T, Kurita K. The relationship between electrical conductivity and melt fraction in a partially molten simple system: Archie¡¯s law behavior[J]. Physics of the Earth and Planetary Interiors, 1993, 78(1-2): 9-17. https://doi.org/10.1016/0031-9201(93)90079-O.
%%coded by GuJiangfan@CUGB
%%meltfraction-conductivity 
meltsigma=1;%replace it with any result you find/calculate/measure
phi=0:0.01:1;
phip=phi*100;
C=1.3;
m=1.47;
sigmaachie=meltsigma*C*power(phi,m);
semilogy(phi,sigmaachie,'y');
hold on
xlabel('melt fraction(%)');
ylabel('conductivity(S/m)');