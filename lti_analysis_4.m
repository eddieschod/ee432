% Program for analysis of LTI-Systems
% Comparison of 4 systems
close all
%%
% Bode plots of the frequency response
% for given angular frequencies in 1/s
figure(1) % new window for the diagram
bode(G1,'-b',G2,'-g',G3,'-r',G4,'-k',w)
grid % draws the grid
title('CSS – Bode Diagrams','FontSize',12,'FontWeight','bold')
%%
% Bode plots of the frequency response
% for given frequencies in Hz
figure(2) % new window for the diagram
h = bodeplot(G1,'-b',G2,'-g',G3,'-r',G4,'-k',w);
grid % draws the grid
title('CSS - Bode Diagrams','FontSize',12,'FontWeight','bold')
setoptions(h,'FreqUnits','Hz') % use Hz instead of rad/s
%%
% plot of the frequency response locus
figure(3) % new window for the diagram
nyquist(G1,'-b',G2,'-g',G3,'-r',G4,'-k',w)
title('CSS - Frequency Response . . . Locus','FontSize',12,'FontWeight','bold')
%%
% plot of poles and zeros in the complex plane
figure(4) % new window for the diagram
pzmap(G1,G2,G3,G4)
title('CSS - Poles and Zeros','FontSize',12,'FontWeight','bold')
%%
% plot of unit impulse response
figure(5) % new window for the diagram
impulse(G1,'-b',G2,'-g',G3,'-r',G4,'-k',t_dia)
grid % draws the grid
title('CSS – Unit Impulse Response')
%%
% plot of unit step response
figure(6) % new window for the diagram
step(G1,'-b',G2,'-g',G3,'-r',G4,'-k',t_dia)
grid % draws the grid
title('CSS – Unit Step Response','FontSize',12,'FontWeight','bold')
% end of main program