source("http://bit.ly/dasi_inference")

back = factor(c(rep("correct",11),rep("incorrect",1)))

back

inference(back, est="proportion",type="ht", method="simulation",success="correct",null=0.1,alternative="greater",nsim=100)

?factor

cards = factor(c(rep("correct",18),rep("incorrect",6)))
inference(cards,est="proportion",type="ht",method="simulation",success="correct", null=0.0,alternative="twosided",nsim=10000)
