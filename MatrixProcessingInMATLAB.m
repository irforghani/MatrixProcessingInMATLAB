%project 1 of Engineering Mathematics 
%Matrix Operations
%Sadjad University of Technology
%Ali Forghani 93412130
%............................................................

A = input('Please Enter Matrix A: ');
B = input('Please Enter Matrix B: ');
[n,m] = size(A);
[p,q] = size(B);

if((n ~= p)| (m ~= q))  
    error('The Matrix Size is not Supported for Addition!');
else
    C = A + B;
    G = A - B;
    disp('sum');
    disp(C);
    disp('sub');
    disp(G);
end

if(m ~= q)
    error('The Matrix Size is not Supported for Multiply!');
else
    D = A * B;
    disp('mul');
    disp(D);
end
if((n ~= p)| (m ~= q))  
    error('The Matrix Size is not Supported for Point Multiply!');
else
    E = A .* B;
    disp('point mul');
    disp(E);
end
j = det(A);
disp('determinant A');
disp(j);
k = det(B);
disp('determinant B');
disp(k);
if( j == 0)
    error('A inverse not supported!');
else
    o = inv(A);
    disp('inverse A');
    disp(o);
end
if(k == 0)
    error('B inverse not supported!');
else
    u = inv(B);
    disp('inverse B');
    disp(u);
end
if(m == n)
   t = sum(diag(A));
   v = sum(diag(B));
   disp('sum of main diameter A by diag');
   disp(t);
   disp('sum of main diameter B by diag');
   disp(v); 
   tp1 = int32(0);
    for i=1:m
        for j=1:n
            if(i == j)
                tp1 = tp1 + A(i,j);
            end
        end
    end
    disp('sum of main diameter A by for loop'); 
    disp(tp1);
    tp2 = int32(0);
    for i=1:p
        for j=1:q
            if(i == j)
                tp2 = tp2 + B(i,j);
            end
        end
    end
    disp('sum of main diameter B by for loop');
    disp(tp2); 
end







