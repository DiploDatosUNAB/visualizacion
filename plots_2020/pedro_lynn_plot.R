library (datos)
library (tidyverse)
library (png)
library (ggpubr)
img.file <- "imagenes/JFK_Airport_Logo.png"
img <- png::readPNG(img.file)

clima <- datos::clima
grafico_feo <- clima  %>%
  filter(origen == "JFK" & hora == 12 & anio == max(anio) ) %>%
  mutate (fecha = as.Date(paste(anio, mes, dia, sep="-"),"%Y-%m-%d")) %>%
 
  ggplot (aes(y = temperatura, x = fecha))+
  ggpubr::background_image(img)+
  geom_rect(aes(xmin=as.Date("2013-01-01"),xmax=as.Date("2013-12-31"),ymin=0,ymax=50,fill="blue"), alpha=0.01)+
  geom_rect(aes(xmin=as.Date("2013-01-01"),xmax=as.Date("2013-12-31"),ymin=50,ymax=80,fill="green"), alpha=0.01)+
  geom_rect(aes(xmin=as.Date("2013-01-01"),xmax=as.Date("2013-12-31"),ymin=80,ymax=100,fill="red"), alpha=0.01)+
  geom_line(aes(size = 3))+
  annotate("text", x=as.Date(c("2013-01-22")), y=85, label= "CALOR", size = 10, colour = "red")+
  annotate("text", x=as.Date(c("2013-01-30")), y=55, label= "TEMPLADO", size = 10, colour = "white")+
  annotate("text", x=as.Date(c("2013-01-22")), y=25, label= "FRÍO", size = 10, colour = "blue")+
  labs(
    x = "fecha",
    y = "TEMPERATURA (°F)",
    title = "Temperatura diaria a las 12 horas",
    subtitle = "JFK Airport",
    caption = "En el JFK utilizamos Fahrenheit"
    )
 
grafico_feo
