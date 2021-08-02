library(dplyr)
library(ggplot2)
library(gapminder)
data("gapminder")

gapminder%>%filter(gdpPercap<70000 ) %>% 
  ggplot(aes( log(gdpPercap),lifeExp )) +
  geom_point(alpha = 0.5,color="red")+
  geom_smooth(method = loess)+
  facet_wrap(~continent) + 
  #theme(strip.background = element_rect(fill="#228b22"),
  theme(strip.background = element_rect(fill = "#228b22", colour = "#6D9EC1",
  size = 2, linetype = "solid"),
        strip.text = element_text(size=27, colour="purple")) +
  theme(plot.background = element_rect(fill = "yellow"),
        panel.grid.major = element_line(colour = "grey50" 
                                  )
        ) + 
  ggtitle("Advertencia: Mirar directamente el gráfico puede producir dolor de cabeza")
 
