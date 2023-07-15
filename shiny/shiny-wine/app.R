library(shiny)
library(shinyWidgets)

#################
# Fetch data ####
#################
source("db.R")
extract_data(get_db_connection())

################
# Define UI ####
################
ui <-
    fluidPage(title = "ShinyWine",
              sidebarLayout(
                  sidebarPanel(
                      width = 2,
                      conditionalPanel(
                          'input.dataset === "weine"',
                          checkboxGroupInput(
                              "show_vars_w",
                              "- auswählen -",
                              names(weine),
                              selected = c('uid', 'weingut', 'lage_uid', 'rebsorte')
                          )
                      ),
                      conditionalPanel(
                          'input.dataset === "lagen"',
                          checkboxGroupInput(
                              "show_vars_l",
                              "- auswählen -",
                              names(lagen),
                              selected = c('uid', 'anbaugebiet', 'ort', 'rebsorte')
                          )
                      ),
                      conditionalPanel(
                          'input.dataset === "inventar"',
                          checkboxGroupInput(
                              "show_vars_i",
                              "- auswählen -",
                              names(inventar),
                              selected = c(
                                  'wein_uid',
                                  'bestand',
                                  'einkaufspreis_eur',
                                  'verkaufspreis_eur'
                              )
                          )
                      )
                  ),
                  mainPanel(tabsetPanel(
                      id = 'dataset',
                      tabPanel(
                          "weine",
                          fluidRow(
                              column(
                                  3,
                                  pickerInput(
                                      "rebsorte",
                                      "Rebsorte:",
                                      choices = sort(unique(as.character(weine$rebsorte))),
                                      selected = unique(as.character(weine$rebsorte)),
                                      multiple = TRUE,
                                      options = list("actions-box" = TRUE)
                                  )
                              ),
                              column(
                                  3,
                                  pickerInput(
                                      "weingut",
                                      "Weingut:",
                                      choices = sort(unique(as.character(weine$weingut))),
                                      selected = unique(as.character(weine$weingut)),
                                      multiple = TRUE,
                                      options = list("actions-box" = TRUE)
                                  )
                              ),
                              column(
                                  4,
                                  pickerInput(
                                      "lage",
                                      "Lage:",
                                      choices = sort(unique(as.character(weine$lage))),
                                      selected = unique(as.character(weine$lage)),
                                      multiple = TRUE,
                                      options = list("actions-box" = TRUE)
                                  )
                              )
                          ),
                          DT::dataTableOutput("weine")
                      ),
                      tabPanel("lagen", DT::dataTableOutput("lagen")),
                      tabPanel("inventar", DT::dataTableOutput("inventar"))
                  ))
              ))



####################
# Define Server ####
####################
server <- function(input, output) {
    # choose columns to display
    output$weine <- DT::renderDataTable({
        weine <- weine[weine$rebsorte %in% input$rebsorte, ]
        weine <-
            weine[weine$weingut %in% input$weingut, ]
        weine <- weine[weine$lage_uid %in% input$lage, ]
        DT::datatable(weine[, input$show_vars_w, drop = FALSE],
                      options = list(
                          orderClasses = TRUE,
                          lengthMenu = list(c(25, 50, 75, 100, -1), c(25, 50, 75, 100, "all")),
                          pageLength = -1
                      ))
    })

    output$lagen <- DT::renderDataTable({
        DT::datatable(lagen[, input$show_vars_l, drop = FALSE],
                      options = list(
                          orderClasses = TRUE,
                          lengthMenu = list(c(25, 50, 75, 100, -1), c(25, 50, 75, 100, "all")),
                          pageLength = -1
                      ))
    })

    output$inventar <- DT::renderDataTable({
        DT::datatable(inventar[, input$show_vars_i, drop = FALSE],
                      options = list(
                          orderClasses = TRUE,
                          lengthMenu = list(c(25, 50, 75, 100, -1), c(25, 50, 75, 100, "all")),
                          pageLength = -1
                      ))
    })
}

#################
# Call Shiny ####
#################
shinyApp(ui, server)
