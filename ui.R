ui <-
  dashboardPage(
    dashboardHeader(title = "Estación de la calidad del aire 'La Oroya' (Junin - Perú)",
                    titleWidth = 550),
    dashboardSidebar(disable = T),
    dashboardBody(fluidRow(
      box(
        title = "Rosa de viento",
        status = "primary",
        solidHeader = T,
        collapsible = T,
        leafletOutput("ro_vi")
      ),
      box(
        title = HTML("Rosa de contaminante (SO<sub>2</sub>)"),
        status = "primary",
        solidHeader = T,
        collapsible = T,
        leafletOutput("ro_co")
      ),
      box(
        title = HTML("Serie de tiempo horaria (SO<sub>2</sub>)"),
        status = "primary",
        solidHeader = T,
        collapsible = T,
        plotOutput("se_ti_so2_1h")
      ),
      box(
        title = HTML("Serie de tiempo diaria (SO<sub>2</sub>)"),
        status = "primary",
        solidHeader = T,
        collapsible = T,
        plotOutput("se_ti_so2_24h")
      ),
      box(
        title = HTML("Serie de tiempo promedio móvil de 3 horas (SO<sub>2</sub>)"),
        status = "primary",
        solidHeader = T,
        collapsible = T,
        plotOutput("se_ti_so2_m3h")
      )
    ))
  )
