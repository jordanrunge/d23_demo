
#####################
### Load Packages ###
#####################
library(shiny)
library(shinydashboard)
library(dplyr)
library(ggplot2)
library(markdown)

#################
### Load Data ###
#################
df=read.csv('d23_playground.csv')

df = df %>%
  mutate(math_ia_1_score = if_else(0.90 <= math_ia_1, "90-100",
                           if_else(0.80 <= math_ia_1 & math_ia_1 < 90, "80-89",
                           if_else(0.70 <= math_ia_1 & math_ia_1< 0.80, "70-79",
                           if_else(0.60 <= math_ia_1 & math_ia_1< 0.70, "60-69",
                           if_else(0.50 <= math_ia_1 & math_ia_1< 0.60, "50-60", "<50")
                           )))))

proficiency_order = c("3+ Yrs Behind",
                      "2-3 Yrs Behind",
                      "1 Yr Behind",
                      "On Grade Level",
                      "Above Grade Level")

standard = theme(axis.ticks = element_blank(),
                 axis.text.x = element_text(color="grey10", size=12),
                 axis.text.y = element_text(color="grey10", size=12),
                 title = element_text(color="gray10", size=18, face="bold"),
                 axis.title.x = element_text(color="grey10", size=14, face="bold"),
                 axis.title.y = element_text(color="grey10", size=14, face="bold"),
                 legend.position = 'none')

###########################
### Load School Choices ###
###########################
choice_school = c("Brooklyn Collegiate",
                  "Brooklyn Democracy Academy",
                  "Brooklyn Environmental Exploration",
                  "Brooklyn Landmark Elementary School",
                  "Brownsville Collaborative Middle School",
                  "Christopher Avenue Community School",
                  "Eagle Academy for Young Men II",
                  "Frederick Douglass Academy VII",
                  "Gregory Jocko Jackson School of Sports, Art, and Technology",
                  "IS 392",
                  "Kappa V",
                  "Metropolitan Diploma Plus High School",
                  "Mott Hall Bridges Academy",
                  "Mott Hall IV",
                  "PS 150 Christopher",
                  "PS 156 Waverly",
                  "PS 165 Ida Posner",
                  "PS 178 Saint Clair McKelway",
                  "PS 184 Newport",
                  "PS 298 Dr Betty Shabazz",
                  "PS 327 Dr Rose B English",
                  "PS 41 Francis White",
                  "PS/IS 137 Rachael Jean Mitchell",
                  "PS/IS 323",
                  "PS/IS Nicholas Herkimer",
                  "Riverdale Avenue Community School",
                  "Riverdale Avenue Middle School",
                  "Teachers Preparatory High School")

