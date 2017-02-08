
# titanic data set is avaliable in datacamp workspace

# Check out the structure of titanic
str(titanic)

# Use ggplot() with the data layer set to titanic. Map factor(Pclass) onto the x axis, factor(Sex) onto fill and draw a dodgy bar plot using geom_bar().
# Use ggplot() for the first instruction
ggplot(titanic, aes(x = factor(Pclass), fill = factor(Sex)))+
  geom_bar(position="dodge")

# Add a facet_grid() layer: ". ~ Survived". to estimate chances of survival
# Use ggplot() for the second instruction
ggplot(titanic, aes(x = factor(Pclass), fill = factor(Sex)))+
  geom_bar(position = "dodge")+
  facet_grid(.~ Survived)

# Position jitter (use below)
posn.j <- position_jitter(0.5, 0)

# Add a mapping of Age onto the y axis. Replace geom_bar() with geom_jitter() and set its attributes size to 3, alpha to 0.5 and position set to posn.j. 
# factor(Sex) is mapped onto col instead of fill this time to correctly color the scatter plots
# Use ggplot() for the last instruction
ggplot(titanic, aes(x = factor(Pclass),y = Age,  col = factor(Sex)))+
  geom_jitter(size = 3, alpha=0.5, position = posn.j)+
  facet_grid(.~ Survived)

 