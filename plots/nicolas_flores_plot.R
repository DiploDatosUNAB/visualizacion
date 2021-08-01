install.packages("png")#para leer imagenes png
install.packages("patchwork")#para insertar la imagen
install.packages("ggthemr")#mas colores para los temas

library(dplyr)
library(ggplot2)
library(datos)
library(png)
library(patchwork)
library(ggthemr)

img <- readPNG("data/image.png",native = TRUE) #la imagen fue descargada y guardada previamente

ggthemr('dust') #primero seteamos el theme

ggplot(pinguinos, aes(sexo, fill= especie))+
   geom_bar(alpha= 0.8)+
   geom_text(aes(label = ..count..),stat = "count",position = position_stack(0.5), colour = "white")+
   labs(x= "Sexo", y = "Cantidad", 
        title = "Cantidad de pinguinos por especie",
        subtitle = "Fuente: paquete DATOS, dataset Pingüinos",
        fill= "Especie",
        caption = "Nota: el diseño gráfico es mi pasión")+
   theme_dark()+
   theme(plot.title = element_text(colour = "blue", face = "bold", size = 25, hjust = 0.5))+
   theme(plot.subtitle = element_text(colour = "red", face = "bold.italic", size = 15, hjust = 0.5))+
   theme(panel.grid.major = element_line(color = "yellow", size = 1, linetype = "dashed"))+
   theme(panel.grid.minor = element_line(colour = "yellow",linetype= "longdash"))+
   theme(axis.title = element_text(colour = "blue", face = "bold"))+
   theme(axis.text.x = element_text(colour= "red",face = "bold", angle = 45, hjust = 1))+
   theme(axis.text.y = element_text(colour= "red",face = "bold", angle = 45, hjust = 1))+
   theme(legend.position = c(0.9, 0.8), legend.text = element_text(colour = "red", face = "bold.italic"))+
   theme(legend.title = element_text(colour = "red", face = "bold.italic"))+
   theme(plot.caption = element_text(colour = "brown", size = 11, face = "bold.italic", hjust = 0.01))+
   inset_element (p= img, left = 0.92,
                  bottom = 0.15,
                  right = 0.7,
                  top = 0.50)
