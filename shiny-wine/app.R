library(shiny)
library(ggplot2)

source("db/extract.R")

ui <- fluidPage(titlePanel("VDP.Grosse.lagen"),
                sidebarLayout(
                    sidebarPanel(
                        checkboxGroupInput("show_vars", "",
                                           names(lagen), selected = names(lagen))
                    ),
                    mainPanel(
                        # Create a new Row in the UI for selectInputs
                        fluidRow(
                            column(4,
                                   selectInput("name",
                                               "Name:",
                                               c(
                                                   "All",
                                                   unique(as.character(lagen$name))
                                               ))),
                            column(4,
                                   selectInput(
                                       "anbaugebiet",
                                       "Anbaugebiet:",
                                       c("All",
                                         unique(as.character(lagen$anbaugebiet)))
                                   )),
                            column(4,
                                   selectInput("ort",
                                               "Ort:",
                                               c(
                                                   "All",
                                                   unique(as.character(lagen$ort))
                                               ))),
                            column(4,
                                   selectInput(
                                       "rebsorte_1",
                                       "primäre Rebsorte:",
                                       c("All",
                                         unique(as.character(lagen$rebsorte_1)))
                                   )),
                        ),
                        # Create a new row for the table.
                        DT::dataTableOutput("table")
                    )
                ))

server <- function(input, output) {
    # Filter data based on selections
    output$table <- DT::renderDataTable(DT::datatable({
        data <- lagen[, input$show_vars, drop = FALSE]
        if (input$name != "All") {
            data <- data[data$name == input$name,]
        }
        if (input$anbaugebiet != "All") {
            data <- data[data$anbaugebiet == input$anbaugebiet,]
        }
        if (input$ort != "All") {
            data <- data[data$ort == input$ort,]
        }
        if (input$rebsorte_1 != "All") {
            data <- data[data$rebsorte_1 == input$rebsorte_1,]
        }
        data
    },
    options = list(
        orderClasses = TRUE,
        paging = FALSE,
        searching = FALSE
    )))
}

shinyApp(ui, server)
