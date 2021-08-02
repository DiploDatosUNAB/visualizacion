# Cargamos la libreria ggplot2 para trabajar

library(ggplot2)

# Se utilizó datos de mpg.
# Se presenta una comparación de los datos obtenidos en mpg, de la cilindrada del motor y el modelo de auto.

ggplot( data = mpg, aes(displ, color=model) ) +
  geom_density()+
  labs(title = "Grafico feo", subtitle = "inentendible",
       x = "Cilindrada del motor", y ="Densidad" )
