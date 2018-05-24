function y = TDMA(N,A,z)

    w = A(1,2);
    v = zeros(N,1);
    y = v;
    y(1) = z(1)/w;
    
    for k = 2:N
        v(k) = A(k-1,3)/w;
        w = A(k,2) - A(k,1)*v(k);
        y(k) = (z(k) - A(k,1)*y(k-1))/w;        
    end

    for k = N-1:-1:1
        y(k) = y(k) - v(k + 1)*y(k + 1);
    end
        
end