     program demo_norran
     use M_datapac, only : norran, label, plotxt, sort, norplt
     implicit none
     integer,parameter :: N=300
     real              :: x(N), y(N)
     real              :: mu, sigma
     integer           :: Iseed
        Iseed=1234
        sigma=1.00000
        mu=0.0
        call label('norran')
        call norran(N,Iseed,x)
        x = sigma*x
        x = x + mu
        call plotxt(x,n)
        call sort(x,n,y)
        call plotxt(y,n)
     end program demo_norran
