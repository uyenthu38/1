x0=0;y0=0;xA=10;yA=10;
l1=3,l2=3,pi=3.1416;xA=10;yA=10;xB=30;yB=30;
axis([-15 15 -15 15]);
for t=0:0.01:2*pi
    r=2.718^sin(t)-2*cos(4*t)
    x=r*cos(t)
    y=r*sin(t)
    c=(x^2+y^2-l1^2-l2^2)/(2*l1*l2);
    s=sqrt(abs(1-c^2));
    d=atan2(s,c);
    C2=x*(l1*cos(d)+l2)+y*(l1*sin(d));
    S2=y*(l2+l1*cos(d))-x*(l1*sin(d));
    t2=atan2(S2,C2);
    C1=(x-l2*cos(t2))/l1
    S1=(y-l2*sin(t2))/l1
    t1=atan2(S1,C1);
    plot(x,y,'*');
    xM=l1*cos(t1);
    yM=l1*sin(t1);
    a=line([x0 xM],[y0 yM],'color','red');
    b=line([xM x],[yM y],'color','blue');
    pause(0.01);
    delete(a)
    delete(b)
    hold on
end