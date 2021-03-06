function Ctemp = diffSE(i,j,k,D,Ddiff)
global C S
Ctemp = C(i,j,k)+D.*(S(i+1,j,k).*C(i+1,j,k)+S(i-1,j,k).*C(i-1,j,k)... 
                    +Ddiff.*S(i,j+1,k).*C(i,j+1,k)+S(i,j-1,k).*C(i,j-1,k) ...
                    +S(i,j,k+1).*C(i,j,k+1)+Ddiff.*S(i,j,k-1).*C(i,j,k-1) ... 
                    -(S(i+1,j,k).*C(i,j,k)+S(i-1,j,k).*C(i,j,k)...
                    +Ddiff.*S(i,j+1,k).*C(i,j,k)+S(i,j-1,k).*C(i,j,k) ...
                    +S(i,j,k+1).*C(i,j,k)+Ddiff.*S(i,j,k-1).*C(i,j,k)));
end
