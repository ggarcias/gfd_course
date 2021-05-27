 FUNCTION locate(xx,x)
    implicit none
    REAL(KIND=16), DIMENSION(:), INTENT(IN) :: xx
    REAL(KIND=16), INTENT(IN) :: x
    INTEGER(SELECTED_INT_KIND(9)) :: locate
    !Given an array xx(1: N ) , and given a value x , returns a value j such
    !that x is between xx( j ) and xx( j + 1 ) . xx must be monotonic, either increasing or decreasing.
    !j = 0 or j = N is returned to indicate that x is out of range.
    INTEGER(SELECTED_INT_KIND(9)) :: n,jl,jm,ju
    LOGICAL :: ascnd
    n=size(xx)
    ascnd = (xx(n) >= xx(1))
    jl=0
    ju=n+1
    do
       if (ju-jl <= 1) exit
       jm=(ju+jl)/2
       if (ascnd .eqv. (x >= xx(jm))) then
          jl=jm
       else
          ju=jm
       end if
    end do
    if (x == xx(1)) then
       locate=1
    else if (x == xx(n)) then
       locate=n-1
    else
       locate=jl
    end if
  END FUNCTION locate
