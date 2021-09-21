variables={'x11','x12','x13','x14','x15','x21','x22','x23','x24','x25','x31','x32','x33','x34','x35', 'x41','x42','x43','x44','x45' };
N = length(variables) 
lb=[zeros(20,1)];
v=[inf];
ub=[repelem(v,20)]
 
Aeq=[zeros(9,20)];
Aeq(1,[1,2,3,4,5])=[1,1,1,1,1]; 
Aeq(2,[6,7,8,9,10])=[1,1,1,1,1];
Aeq(3,[11,12,13,14,15])=[1,1,1,1,1];
Aeq(4,[16,17,18,19,20])=[1,1,1,1,1];
Aeq(5,[1,6,11,16])=[1,1,1,1];
Aeq(6,[2,7,12,17])=[1,1,1,1];
Aeq(7,[3,8,13,18])=[1,1,1,1];
Aeq(8,[4,9,14,19])=[1,1,1,1];
Aeq(9,[5,10,15,20])=[1,1,1,1];
 
Aeq;
beq=[53; 103; 84; 52; 23; 104; 30; 30; 105]
 
A=[];
b=[];
 
f=[8 9 13 -7 12 17 14 61 14 11 9 -7 17 12 17 -16 2 54 31 21]
 
 
 %z= zeros(size(variables));
options = optimoptions('linprog','Algorithm','dual-simplex');
[x,fval,exitflag,output] = linprog(f,A,b,Aeq,beq,lb,ub,options)
