

library(shiny)
library(markdown)


library(shiny)
library(shinydashboard)


shinyUI(
    dashboardPage(skin='black',
                  
                  # Application title
                  dashboardHeader(title="District 23"),#Closes Header
                  
                  dashboardSidebar(
                      sidebarMenu(
                          selectInput('pick_school', 'Select a school', choice_school),
                          br(),
                          menuItem("NYS Math 2019", tabName='nys_math_19', icon=icon('calculator')),
                          menuItem("iReady Math #1", tabName='iready_math_1', icon=icon('info')),
                          menuItem("Interim Math #1", tabName='interim_math_1', icon=icon('calendar'))
                      )#Closes Menu
                  ),#Closes Sidebar
                  #selectizeInput('id, needs to be unique', 'text that will show up', choice)
                  
                  dashboardBody(
                      tabItems(
                          
                          tabItem(
                              tabName='nys_math_19',
                              fluidRow(
                                  box(h1("NYS Math Assessment"),background = "black", width = 12)),
                              fluidRow(
                                  box(width=12, plotOutput(outputId='bar_nys_math_19_all'))),

                              br(),
                              br(),
                              fluidRow(
                                  box(h3("Gender"), background = "navy", width=12)),
                              fluidRow(
                                  box(plotOutput(outputId='bar_nys_math_19_female')),
                                  box(plotOutput(outputId='bar_nys_math_19_male'))),
                              
                              br(),
                              br(),
                              fluidRow(
                                  box(h3("Ethnicity"), background = "navy", width=12)),
                              fluidRow(
                                  box(plotOutput(outputId='bar_nys_math_19_aa')),
                                  box(plotOutput(outputId='bar_nys_math_19_lat'))),
                              fluidRow(
                                  box(plotOutput(outputId='bar_nys_math_19_white')),
                                  box(plotOutput(outputId='bar_nys_math_19_asian'))),
                              
                              br(),
                              br(),
                              fluidRow(
                                  box(h3("IEP Status"), background = "navy", width=12)),
                              fluidRow(
                                  box(plotOutput(outputId='bar_nys_math_19_gen_ed')),
                                  box(plotOutput(outputId='bar_nys_math_19_iep'))),
                          ),
                          
                          tabItem(
                              tabName='iready_math_1',
                              fluidRow(
                                  box(h1("iReady Math Assessment #1"), background = "black", width=12)),
                              fluidRow(
                                  box(width=12, plotOutput(outputId='bar_math_iready_1_all'))),
                              
                              br(),
                              br(),
                              fluidRow(
                                  box(h3("Gender"), background = "navy", width=12)),
                              fluidRow(
                                  box(plotOutput(outputId='bar_math_iready_1_female')),
                                  box(plotOutput(outputId='bar_math_iready_1_male'))),
                              
                              br(),
                              br(),
                              fluidRow(
                                  box(h3("Ethnicity"), background = "navy", width=12)),
                              fluidRow(
                                  box(plotOutput(outputId='bar_math_iready_1_aa')),
                                  box(plotOutput(outputId='bar_math_iready_1_lat'))),
                              fluidRow(
                                  box(plotOutput(outputId='bar_math_iready_1_white')),
                                  box(plotOutput(outputId='bar_math_iready_1_asian'))),
                              
                              br(),
                              br(),
                              fluidRow(
                                  box(h3("IEP Status"), background = "navy", width=12)),
                              fluidRow(
                                  box(plotOutput(outputId='bar_math_iready_1_gen_ed')),
                                  box(plotOutput(outputId='bar_math_iready_1_iep'))),
                              
                              br(),
                              br(),
                              br(),
                              br(),
                              fluidRow(
                                  box(h1("At Risk Students (1-2 on NYS Math 2019)"), background = "black", width=12)),
                              fluidRow(
                                  box(width=12, plotOutput(outputId='bar_math_iready_1_risk'))),
                              
                              fluidRow(
                                  box(h3("Gender"), background = "navy", width=12)),
                              fluidRow(
                                  box(plotOutput(outputId='bar_math_iready_1_risk_female')),
                                  box(plotOutput(outputId='bar_math_iready_1_risk_male'))),
                              
                              br(),
                              br(),
                              fluidRow(
                                  box(h3("Ethnicity"), background = "navy", width=12)),
                              fluidRow(
                                  box(plotOutput(outputId='bar_math_iready_1_risk_aa')),
                                  box(plotOutput(outputId='bar_math_iready_1_risk_lat'))),
                              fluidRow(
                                  box(plotOutput(outputId='bar_math_iready_1_risk_white')),
                                  box(plotOutput(outputId='bar_math_iready_1_risk_asian'))),
                              
                              br(),
                              br(),
                              fluidRow(
                                  box(h3("IEP Status"), background = "navy", width=12)),
                              fluidRow(
                                  box(plotOutput(outputId='bar_math_iready_1_risk_gen_ed')),
                                  box(plotOutput(outputId='bar_math_iready_1_risk_iep'))),
                          ),
                          
                          tabItem(
                              tabName='interim_math_1',
                              fluidRow(
                                  box(h1("Interim Math Assessment #1"), background = "black", width=12)),
                              fluidRow(
                                  box(width=12, plotOutput(outputId='bar_math_ia_1_all'))),
                              
                              br(),
                              br(),
                              fluidRow(
                                  box(h3("Gender"), background = "navy", width=12)),
                              fluidRow(
                                  box(plotOutput(outputId='bar_math_ia_1_female')),
                                  box(plotOutput(outputId='bar_math_ia_1_male'))),
                              
                              br(),
                              br(),
                              fluidRow(
                                  box(h3("Ethnicity"), background = "navy", width=12)),
                              fluidRow(
                                  box(plotOutput(outputId='bar_math_ia_1_aa')),
                                  box(plotOutput(outputId='bar_math_ia_1_lat'))),
                              fluidRow(
                                  box(plotOutput(outputId='bar_math_ia_1_white')),
                                  box(plotOutput(outputId='bar_math_ia_1_asian'))),
                              
                              br(),
                              br(),
                              fluidRow(
                                  box(h3("IEP Status"), background = "navy", width=12)),
                              fluidRow(
                                  box(plotOutput(outputId='bar_math_ia_1_gen_ed')),
                                  box(plotOutput(outputId='bar_math_ia_1_iep'))),
                              
                              br(),
                              br(),
                              fluidRow(
                                  box(h1("At Risk Students (1-2 on NYS Math 2019)"), background = "black", width=12)),
                              fluidRow(
                                  box(width=12, plotOutput(outputId='bar_math_ia_1_risk'))),
                              
                              fluidRow(
                                  box(h3("Gender"), background = "navy", width=12)),
                              fluidRow(
                                  box(plotOutput(outputId='bar_math_ia_1_risk_female')),
                                  box(plotOutput(outputId='bar_math_ia_1_risk_male'))),
                              
                              br(),
                              br(),
                              fluidRow(
                                  box(h3("Ethnicity"), background = "navy", width=12)),
                              fluidRow(
                                  box(plotOutput(outputId='bar_math_ia_1_risk_aa')),
                                  box(plotOutput(outputId='bar_math_ia_1_risk_lat'))),
                              fluidRow(
                                  box(plotOutput(outputId='bar_math_ia_1_risk_white')),
                                  box(plotOutput(outputId='bar_math_ia_1_risk_asian'))),
                              
                              br(),
                              br(),
                              fluidRow(
                                  box(h3("IEP Status"), background = "navy", width=12)),
                              fluidRow(
                                  box(plotOutput(outputId='bar_math_ia_1_risk_gen_ed')),
                                  box(plotOutput(outputId='bar_math_ia_1_risk_iep'))),
                          )
                          
                      )#Closes tabItems
                  )#Closes Body
    )#Closes Page
)#Closes UI