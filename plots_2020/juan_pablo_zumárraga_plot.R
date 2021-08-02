```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = FALSE)
library(gapminder)
library(ggplot2)
library(tidyverse)
library(datos)
```

## Haciendo gráficos feos

```{r}
diamantes %>%
  ggplot(aes(quilate, precio)) +
  geom_point(aes(color = corte, shape = corte)) +
  geom_line(aes(color = corte))+
   labs(x= "Quilates", y = "Precio", 
        title = "Comparación de diamantes",
        subtitle = "Fuente: paquete DATOS, dataset Diamantes",
        caption = "Nota: copiar y pegar, el mejor invento")+
  theme_dark()+
     theme(plot.subtitle = element_text(colour = "blue", face = "italic", size = 8, hjust = 0.5))


```
