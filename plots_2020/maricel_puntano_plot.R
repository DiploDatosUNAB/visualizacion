```{r}

nom <- datos::nombres
nom %>%
  filter(anio==2000 & sexo =="M") %>%
  select(nombre, prop)%>%
  top_n(5)%>%
  ggplot(aes(nombre, prop, color= nombre)) +
  geom_col() +
  labs(
       x = "Nombre",
       y= "Proporción",
       title = "Los 5 nombres de hombres más usados en el año 2000",
       subtitle = "Fuente: paquete DATOS, dataset nombres",
       color = "Nombre",
       caption="Los datos provienen de Estado Unidos de Ámerica"
       ) +
  theme_dark() +
  theme(plot.caption = element_text(color = "red"), plot.title = element_text(size = 18, color = "blue", face = "bold"), plot.subtitle = element_text(face = "italic"),
        plot.background = element_rect(fill= "yellow"))
        
```
