function F=fitness(X) 
Index=[2,6,9,13,18,22,26,28,31,34,38,42,45,47,50,55,58,61,66,68,72,77,80,84,89,91,95,99,103];
D=[0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0;...
   0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0;0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0;...
   0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,1,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1];
time=[6,5,9,9,4,7,4,6,5,8,5,6,8,5,10,3,8,5,5,7,6,0.000100000000000000,1,2,8,6,8,11,8,2,4,7,3,11,10,9,6,0.000100000000000000,...
      2,4,6,8,6,2,4,4,0.000100000000000000,3,5,5,9,9,6,6,9,10,8,9,10,1,10,4,6,9,8,2,8,2,5,9,5,7,8,9,9,1,5,6,2,6,7,9,10,2,3,...
      8,2,3,7,3,9,10,1,6,9,11,4,3,10,10,3,5,8,0];
cost=[86;25;70;83;59;25;13;35;83;14;11;43;16;23;12;57;73;48;22;40;63;0;99;32;11;85;93;51;79;88;65;89;12;34;35;21;92;0;71;...
      16;42;48;26;57;58;39;0;24;27;42;44;29;93;85;20;43;31;51;35;55;93;44;69;64;78;16;77;95;64;36;71;74;69;23;98;96;48;...
      63;14;99;84;67;78;27;38;32;64;18;91;52;50;19;72;84;67;32;81;23;84;62;36;56;67;0];
Performance=[1.29294749296323;4.23453280229987;2.10626854299637;4.46168728627616;4.17734280573767;0.496737570798153;...
             3.23127054724396;1.55247283247871;3.77026598491587;2.71315828723866;2.28799437325859;4.47683392268531;...
             0.286267799000838;2.78658812933990;1.63955549648338;0.176366681567314;3.76759259351459;2.80870328034438;...
             4.47072668478108;2.99130613785915;1.68517139715134;0;0.578570253046527;0.263008712893943;3.66310954726040;...
             1.85437449644742;1.80732539314268;4.38266078244786;1.63646823257693;4.44494298442055;3.21993989615811;...
             1.64524771943381;0.297663272062335;1.22554676320279;4.84206600608425;2.02633820116978;0.800167307226639;...
             0;4.49787889430662;0.824883577542511;3.88930033283641;0.674323156984484;4.80696856718962;2.65102693045781;...
             0.215849677987607;4.65477338870100;0;3.65710639450053;2.61854007399874;0.462909015724786;0.530296090102793;...
             0.746124753455434;0.806000046084235;0.263778965622516;0.235065825164501;4.74214148029359;0.456458949948071;...
             2.54175837944195;0.593149101867881;1.07393925604355;3.81536036390542;4.69067410514175;2.34856347361609;...
             0.0282097695949896;4.99604150698663;0.238866063429679;1.94723952015268;2.69528350340818;4.45866718777110;...
             4.11556055830271;3.04693320522312;1.99301145487933;4.17239359581133;4.34529193152835;4.35952453672993;...
             3.58818217706674;0.488936719889587;1.49289714067199;2.42961027993736;2.52526683600671;4.16436706368757;...
             1.18918386851461;3.32295377774429;1.87099948730797;3.87741276613178;0.978871646612271;2.38313646696514;...
             0.517792901817034;1.05995087066489;4.67587343172135;1.58023555253914;4.46488502044999;2.62151543742811;...
             0.195165757376127;3.96490841166928;0.259784475662448;4.13471764181995;0.0439955535013975;3.37055663673337;...
             0.828569623730587;1.71437619063040;4.76375697397674;2.43116736565427;0];
m=Index(end);
for i = 1:size(X,1)
    idx = floor(X(i,:));
x = zeros(1,m+1);
temp =[0,2,6,9,13,18,22,26,28,31,34,38,42,45,47,50,55,58,61,66,68,72,77,80,84,89,91,95,99];
    x(idx(idx>0)+temp) = 1;
    if (x(21)~=x(100))&&(x(21)==1)
        x(100)=1;
        x(101)=0;
        x(102)=0;
        x(103)=0;
    elseif (x(21)~=x(100))&&(x(100)==1)
        x(19)=1;
        x(20)=0;
        x(21)=0;
        x(22)=0;
    end
    if (x(7)~=x(86))&&(x(7)==1)
        x(86)=1;
        x(85)=0;
        x(87)=0;
        x(88)=0;
        x(89)=0;
    elseif (x(7)~=x(86))&&(x(86)==1)
        x(7)=1;
        x(8)=0;
        x(9)=0;
    end
     if (x(53)~=x(66))&&(x(53)==1)
        x(66)=1;
        x(62)=0;
        x(63)=0;
        x(64)=0;
        x(65)=0;
    elseif (x(53)~=x(66))&&(x(66)==1)
        x(53)=1;
        x(51)=0;
        x(52)=0;
        x(54)=0;
        x(55)=0;
     end
    if (x(71)~=x(78))&&(x(71)==1)
        x(78)=1;
        x(79)=0;
        x(80)=0;
    elseif (x(71)~=x(78))&&(x(78)==1)
        x(71)=1;
        x(69)=0;
        x(70)=0;
        x(72)=0;
    end
     if (x(46)~=x(98))&&(x(46)==1)
        x(98)=1;
        x(96)=0;
        x(97)=0;
        x(99)=0;
    elseif (x(46)~=x(98))&&(x(98)==1)
        x(46)=1;
        x(47)=0;
    end
    if (x(38)==x(57))&&(x(38)==1)
        x(57)=0;
        x(56)=round(rand(1));
        x(58)=1-x(56);
    elseif (x(38)==x(57))&&(x(38)==0)
        x(57)=1;
        x(56)=0;
        x(58)=0;
    end
    if (x(48)==x(77))&&(x(48)==1)
        x(77)=0;
        x(73)=1;
        x(74)=0;
        x(75)=0;
        x(76)=0;
    elseif (x(48)==x(77))&&(x(48)==0)
        x(77)=1;
        x(73)=0;
        x(74)=0;
        x(75)=0;
        x(76)=0;
    end
    if (x(90)==x(92))&&(x(90)==1)
        x(92)=0;
        x(93)=1;
        x(94)=0;
        x(95)=0;
    elseif (x(90)==x(92))&&(x(90)==0)
        x(92)=1;
        x(93)=0;
        x(94)=0;
        x(95)=0;
    end
    if (x(6)==x(15))&&(x(6)==1)
        x(15)=0;
        x(14)=round(rand(1));
        x(16)=1-x(14);
        x(17)=0;
        x(18)=0;
    elseif (x(6)==x(15))&&(x(6)==0)
        x(15)=1;
        x(14)=0;
        x(16)=0;
        x(17)=0;
        x(18)=0;
    end
    x(end)=1;
%cost=[20;60;90;12;6;50;46;60;120;25;12;5;88;74;160;9.7;32;68;91.5;82;192;120;457;330;10;32;95;0;34;22;9.3;13;6;8;0;70;96;82;94;12;63;60;190;120;250;0;10;60;0];
%time=[4,5,7,2,3,5,4,5,8,2,1,1,4,5,8,2,3,3,5,6,8,9,2,3,4,0.0001,1,1,2,2,2,2,0.0001,22,17,18,5,2,3,1,3,2,1,0.0001,2,7,0];
%The first function 
F(i,1)=x*cost;
%The second function
nu=size(D,2);
rr=x.*time;
CC=rr(rr~=0)';
pp=repmat(CC,1,nu);
C=pp.*D;
%C=timehandle(x,A,m);
n1=size(C,2);
ST=zeros(1,n1);
  for k=2:n1
      tt=0;
      for l=1:(k-1)
          if (C(l,k)>0)&&(C(l,k))~=0.0001
              tt=[tt,C(l,k)+ST(l)];
          elseif C(l,k)==0.0001
              C(l,k)=0;
              tt=[tt,C(l,k)+ST(l)];
          end
      end
      ST(k)=max(tt);
  end
  F(i,2)=ST(n1);
%The third function
%F(i,3)=-(x*Performance-26.5234)/(56.6129-26.5234);
F(i,3)=-x*Performance;
%F(i,3)=-(x*Performance);
end
