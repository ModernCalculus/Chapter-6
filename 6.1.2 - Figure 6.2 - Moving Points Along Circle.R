# 6.1.2
# Figure 6.1 R Code

setEPS()

postscript("fig0602.eps",
           height = 5.4,
           width = 10)

# footprints of a point on a circle path

par(mfrow<-c(1,2))
par(mar<-c(4,4,2,0.2)) 
R <- 3
n <- 41
ome <- 2
t <- seq(0, 3, len=n)
x <- R*cos(ome*t)
y <- R*sin(ome*t)

plot(x, y, 
     pch = 16, 
     cex = 0.7,
     main = 'Footprints of a point moving along a circle')

arrows(0, 0, x[5], y[5], 
       col = 'blue',
       length = 0.2, 
       angle = 10)

segments(0, 0, x[1], y[1], col='blue') 
segments(0, 0, 0, 3, col='blue') 
segments(x[5], 0, x[5], y[5], col='blue') 
segments(0, y[5], x[5], y[5], col='blue') 

points(x[5], y[5], col='blue', pch = 16) 

text(x[5], -0.3, 'x', cex = 1.1, col='blue') 
text( -0.3, y[5], 'y', cex = 1.1, col='blue') 
text(x[5]/2, 0.3+y[5]/2, 'R', cex = 1.1, col='blue')
text(x[5]+0.3, y[5], 'P', cex = 1.1, col='blue')
text(-0.2, -0.2, '0', cex = 1.1, col='blue')
text(1.5, 0.35, bquote(theta == omega*t), cex = 1.3, col='blue')
text(1.5, 0.35, bquote(theta == omega*t), cex = 1.3, col='blue')
text(0, -1, bquote(x == R*cos(omega*t)), cex = 1.1, col='blue') 
text(0, -1.7, bquote(y == R*sin(omega*t)), cex = 1.1, col='blue')

# directions of a moving point on a circle

plot(x, y, pch = 16, cex = 0.7,
     main = 'Directions of a moving point on a circle')

s <- seq(length(x)-20)

arrows(x[s], y[s], x[s+1], y[s+1],
       col = 1:(length(s)-1),
       angle = 30, length = 0.1)

text(0, 1, 'Angular velocity = 2 radians/sec') 
text(0, 0, 'Time goes from 0 to 1.5 sec')
text(0, -1, 'Angle goes from 0 to 3 radians') 
text(0, -2, 'Point goes through a semi-circle') 

dev.off()

