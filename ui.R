library(shiny)
library(shinydashboard)

#Crear Carpetas en el Working Directory
#shiny_blutaba

header <- dashboardHeader(title = span(img(src = "Logo.jpg", width = 190)))

sidebar <- dashboardSidebar( sidebarMenu(  #crear enlaces del menu lateral
  menuItem("Registro", tabName = "Registro", icon = icon("user")),
  menuItem("Login", tabName = "Login", icon = icon("home")),
  menuItem("Cartelera", tabName = "Cartelera", icon = icon("film")),
  menuItem("Puntuar", tabName = "Puntuar", icon = icon("eye")),
  menuItem("Mis Recomendaciones", tabName = "Mis_Recomendaciones", icon = icon("star"))
)
)

body <- dashboardBody(
  tabItems(
    tabItem("Mis_Recomendaciones",
            selectInput("RecomPel", "Escoger Pelicula",
                        choices = search_cinemovie("UVK - PLATINO BASADRE", "LA MUJER MARAVILLA")[[1]], multiple=FALSE, selectize=TRUE,width = '50%'),
            tableOutput("Recomendacion")
    ),
    tabItem("Puntuar",
            selectInput("Puntuar2", "Escoger Pelicula",
                        choices = c("a", "b", "c", "d","e"), multiple=FALSE, selectize=TRUE,width = '98%')
    )
  )
)

ui = dashboardPage(header, sidebar, body)
