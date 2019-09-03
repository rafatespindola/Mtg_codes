a = 2.39*10^-3;
b = 7.49*10^-3;
c = 5.8*10^7;
d = 1.98;
u = 4*pi*10^-7;
er = 2.26;
eo = 8.854*10^-12;
f = 1*10^9;


% Resistencia
r = (1/(2*pi))*((1/a)+(1/b))*sqrt((pi*f*u)/(c))
 
% Indutancia
l = (u/(2*pi))*log(b/a)
 
% Capacitancia
c = (2*pi*(er*eo))/log(b/a)

% Condutancia
g = (2*pi*d)/log(b/a)

% Gama
gama = sqrt((r + 1j*2*pi*f*l)*(g + 1j*2*pi*f*c))

% Zo
zo = sqrt((r + 1j*2*pi*f*l)/(g + 1j*2*pi*f*c))
 
% Alfa
alfa = real(gama)

% Beta
beta = imag(gama)
 
 
 