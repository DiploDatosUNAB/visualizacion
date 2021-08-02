knitr::opts_chunk$set(echo = TRUE)
library(tidyverse)
library(datos)
library(here)
library(dplyr)
library(readr)
library(readxl)

estadios_caba <- read_excel("C:/Users/USER/Desktop/Dipolomatura Datos/Visualización de Datos/DataViz/datos/estadios_caba.xlsx")

estadios_caba %>% 
  ggplot (aes(capacidad, fct_reorder(club, capacidad)))+
  geom_col (aes(color = Division),
            fill = "chocolate4")+
      theme_dark()+
  theme(plot.title = element_text(size = 16, colour = "white", face = "bold"), plot.subtitle = element_text(size = 12, colour = "white", face = "italic"), plot.background = element_rect (fill = "green"))+
  theme(legend.background = element_rect(fill = "azure3"))+
      labs (
    x = "Cantidad de espectadores",
    y = "Clubes",
    title = "ESTADIOS DE CABA",
    subtitle = "Cantidad de espectadores en estadios de fútbol",
    captions = "Fuente: BAData",
    color = "Division"
    )
