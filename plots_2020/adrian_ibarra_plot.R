# base usada (emisiones_gei.csv)

gei %>%
  ggplot(aes(x = anio, y = emisiones)) +
  geom_ribbon(aes(ymin = emisiones - 1, ymax = emisiones + 1), fill = "grey10") +
  geom_line(aes(y = emisiones)) +
  geom_point(aes(color = sector, shape = sector)) +
  labs(x= "Año", y = "Megatoneladas de dióxido de carbono equivalente",
       title = "Grafico Feo",
       subtitle = "Elaborado por AdrianIbarra",
       caption = "parece un peine fino para piojos")
