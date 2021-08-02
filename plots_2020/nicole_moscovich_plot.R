# El gráfico a continuación muestra la relacion entre la variable PErsonas (x) y la variable Cantidad de Viviendas Habitadas (y). El cuadro expone la cantidad de viviendas que hay por la cantidad de personas, y si se ve, no hay demasiada relación -a simple vista- en que a mayor cantidad de personas en una comuna, mayor cantidad de viviendas (en algunos casos se da, pero en otros no) dada la dispersión. Al ver esto decidi agregar el color por Comunas para poder dar cuenta de que claro, no hay una relación significativa (a priori) porque la cantidad de viviendas depende de muchas otras cuestiones como del NSE de cada comuna para que la cantidad tenga correlación(lamentablemente el dataset no me permite trabajar en profundidad, me atajo que el tp es para dar cuenta del uso de las herramientas) 
```{r}
ggplot(data = CensoCABAPlus) + 
    geom_point(aes(x = Personas, y = PorcentajeViviendasOcupadas, color = fct_relevel(DEPTO, "Comuna 1", "Comuna 2" , "Comuna 3", "Comuna 4", "Comuna 5", "Comuna 6" , "Comuna 7", "Comuna 8" , "Comuna 9", "Comuna 10", "Comuna 11", "Comuna 12", "Comuna 13", "Comuna 14", "Comuna 15") )) +
    labs(title = "Correlación entre Personas y Cantidad de viviendas",
         subtitle = "Por comuna de CABA",
         y = "Porcentaje Viviendas Habitadas",
         color = "Comunas",
         caption = "Fuente: Censo 2010")
```
