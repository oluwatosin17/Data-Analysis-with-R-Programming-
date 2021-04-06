install.packages('palmerpenguins')
library(palmerpenguins)
library(ggplot2)

#color -species
ggplot(data = penguins, aes( x = flipper_length_mm, y = body_mass_g)) + geom_point(aes(color = species))

#color - shapes
ggplot(data = penguins, aes( x = flipper_length_mm, y = body_mass_g)) + geom_point(aes(shape = species))
ggplot(data = penguins, aes( x = flipper_length_mm, y = body_mass_g)) + 
  geom_point(aes(color = species, color = species))+ facet_wrap(~species) +labs(title = "Palmer Penguins: Body Mass vs Flipper Length")

summary(penguins)

View(penguins)
