! elemental exp

program arrays
  double precision, dimension(2) :: x,y
  x(1)=.2D0
  x(2)=.3D0
  y=exp(x(:))
  print *,y

end program
