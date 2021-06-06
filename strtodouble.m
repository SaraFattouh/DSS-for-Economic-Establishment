function [ Stringmatrix ] = strtodouble( doublemat )
    [n m]=size(doublemat)
    x=mat2str(doublemat(1,:));
    
        d=mat2str(doublemat(2,:));
        
     f=[x;d]
    Stringmatrix=f;

end

