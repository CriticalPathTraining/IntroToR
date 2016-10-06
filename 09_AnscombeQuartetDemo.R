
if(!('tidyr' %in% rownames(installed.packages()))){install.packages("tidyr")}

library(tidyr)


if(!('dplyr' %in% rownames(installed.packages()))){
  install.packages("dplyr")
}

library(dplyr)

library(ggplot2)

ans <- anscombe

ans$id <- as.numeric(rownames(anscombe))

ans <- ans %>% gather(key,value,-id) %>%
  
  extract (key,c("var","group"),"(.)(.)") %>%
  
  spread(var,value)

ans$group <- factor(ans$group)

ans <- ans %>% arrange(group)

g <- ggplot(ans,aes(x,y))

g + geom_point() + facet_wrap(~group) +
  
  coord_fixed(ratio = 1.3) +
  
  ggtitle("Anscombe's Quartet") + theme_bw(16)

