%%%%%%geometry and geometry paramters%%%%%%
sigma=[-15:1:15]
h=0.5;
x=h*(sind(sigma));%%displacement
plot(sigma,x)
ylabel('x')
xlabel('sigma')
v=[180:5:330]%%range of velocity with an interval of 5
density=1.225;
a=0.214;
R=0.9;
b=0.411;
e=0.7;
AR=7.5;
%%%%Matrix formation of Force in for loop%%%%
m=size(sigma,2);
n=size(v,2);
F=zeros(m,n);
for i= 1:m
    for j= 1:n
        F(i,j)=(((0.5*density*(v(j)*v(j))/R)*((((5.5*sigma(i))+0.29)*b)-((((30.25*(sigma(i)*sigma(i)))+(3.19*sigma(i))+0.0841)*a)/(pi*AR*e)))));
        end
end
plot(sigma,F)
ylabel('F')
xlabel('sigma')
%%%%actuator and it's paramters%%%%
mass=12.3;
A1=0.00292;
A2=0.000633;
p0=2.0684*(10^7);
deltaP=1.724*(10^6);
mesh(F)
