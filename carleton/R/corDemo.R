corDemo <-
function(r = 0)
{
    #choose different "r" values by clicking on the vertical strip on the
    #right-hand side. Press ESC to exit
    require(MASS)
    cat("Input r. To quit, type r = 9\n")
     while(abs(r) <= 1)
       {
        sigma <- cbind(c(1,r), c(r, 1))
       
        temp <- mvrnorm(100, mu = c(0,0),Sigma = sigma)
          
         plot(temp, xlab = "x", ylab = "y", main = paste(
            "Correlation =", round(r, 2)), xlim = c(-3, 3), ylim = c(-3, 3))
               
        r <- readline("r = ")
        r <- eval(parse(text=r))     
        
        
        }     
    
    detach(package:MASS)      
    invisible()
}
