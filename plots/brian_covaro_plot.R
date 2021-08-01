library("tidyverse")
library("dplyr")
library("patchwork")
library("ggplot2")
library("gapminder")
library("scales")

cuatro_cuatro = mutate(gapminder, gdpPercap_disc = ntile(gapminder$gdpPercap,5))

ggplot(data = cuatro_cuatro, aes(x= gdpPercap_disc,  group=continent)) + 
    geom_bar(aes(y = ..prop.., fill = factor(..x..)), stat="count") +
  geom_line(aes(y = ..prop.., fill = factor(..x..)), stat="count") +
  geom_text(aes( label = scales::percent(..prop..),
                 y= ..prop.. ), stat= "count", vjust = -.5) +
  labs(x= "PBI per Cap", y = "Porcentaje", fill="QUINTILES") +
  facet_grid(~continent) +
  ggtitle("Más Feo no se consigue") +
   scale_y_continuous(labels = scales::percent)
