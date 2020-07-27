

shinyServer(function(input, output) {



#########################################################################
#########################################################################
#########################################################################
###### NYS Math 2019 ####################################################
#########################################################################
#########################################################################
#########################################################################

###########
### All ###
###########
nys_math_19_all = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        select(nys_math_19) %>%
        group_by(nys_math_19) %>% 
        summarize(n_nys_math_19 = n()) %>% 
        ggplot(aes(nys_math_19, n_nys_math_19)) +
        geom_col(aes(fill=nys_math_19), position='dodge') +
        ggtitle("NYS Math 2019") +
        xlab('Proficiency') +
        ylab('Total Students') +
        standard
})
output$bar_nys_math_19_all = renderPlot(
    nys_math_19_all()
)

##############
### Female ###
##############
nys_math_19_female = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(sex == 'Female') %>% 
        select(nys_math_19) %>%
        group_by(nys_math_19) %>% 
        summarize(n_nys_math_19 = n()) %>% 
        ggplot(aes(nys_math_19, n_nys_math_19)) +
        geom_col(aes(fill=nys_math_19), position='dodge') +
        ggtitle("Female") +
        xlab('Proficiency') +
        ylab('Total Students') +
        standard
})
output$bar_nys_math_19_female = renderPlot(
    nys_math_19_female()
)

############
### Male ###
############
nys_math_19_male = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(sex == 'Male') %>% 
        select(nys_math_19) %>%
        group_by(nys_math_19) %>% 
        summarize(n_nys_math_19 = n()) %>% 
        ggplot(aes(nys_math_19, n_nys_math_19)) +
        geom_col(aes(fill=nys_math_19), position='dodge') +
        ggtitle("Male") +
        xlab('Proficiency') +
        ylab('Total Students') +
        standard
})
output$bar_nys_math_19_male = renderPlot(
    nys_math_19_male()
)

########################
### African American ###
########################
nys_math_19_aa = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(ethnicity == 'African American') %>% 
        select(nys_math_19) %>%
        group_by(nys_math_19) %>% 
        summarize(n_nys_math_19 = n()) %>% 
        ggplot(aes(nys_math_19, n_nys_math_19)) +
        geom_col(aes(fill=nys_math_19), position='dodge') +
        ggtitle("Black") +
        xlab('Proficiency') +
        ylab('Total Students') +
        standard
})
output$bar_nys_math_19_aa = renderPlot(
    nys_math_19_aa()
)

##############
### Latino ###
##############
nys_math_19_lat = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(ethnicity == 'Latino') %>% 
        select(nys_math_19) %>%
        group_by(nys_math_19) %>% 
        summarize(n_nys_math_19 = n()) %>% 
        ggplot(aes(nys_math_19, n_nys_math_19)) +
        geom_col(aes(fill=nys_math_19), position='dodge') +
        ggtitle("Latino") +
        xlab('Proficiency') +
        ylab('Total Students') +
        standard
})
output$bar_nys_math_19_lat = renderPlot(
    nys_math_19_lat()
)

#############
### White ###
#############
nys_math_19_white = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(ethnicity == 'Caucasian') %>% 
        select(nys_math_19) %>%
        group_by(nys_math_19) %>% 
        summarize(n_nys_math_19 = n()) %>% 
        ggplot(aes(nys_math_19, n_nys_math_19)) +
        geom_col(aes(fill=nys_math_19), position='dodge') +
        ggtitle("White") +
        xlab('Proficiency') +
        ylab('Total Students') +
        standard
})
output$bar_nys_math_19_white = renderPlot(
    nys_math_19_white()
)

#############
### Asian ###
#############
nys_math_19_asian = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(ethnicity == 'Asian') %>% 
        select(nys_math_19) %>%
        group_by(nys_math_19) %>% 
        summarize(n_nys_math_19 = n()) %>% 
        ggplot(aes(nys_math_19, n_nys_math_19)) +
        geom_col(aes(fill=nys_math_19), position='dodge') +
        ggtitle("Asian") +
        xlab('Proficiency') +
        ylab('Total Students') +
        standard
})
output$bar_nys_math_19_asian = renderPlot(
    nys_math_19_asian()
)

##############
### Gen Ed ###
##############
nys_math_19_gen_ed = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(iep == 'No') %>% 
        select(nys_math_19) %>%
        group_by(nys_math_19) %>% 
        summarize(n_nys_math_19 = n()) %>% 
        ggplot(aes(nys_math_19, n_nys_math_19)) +
        geom_col(aes(fill=nys_math_19), position='dodge') +
        ggtitle("General Education") +
        xlab('Proficiency') +
        ylab('Total Students') +
        standard
})
output$bar_nys_math_19_gen_ed = renderPlot(
    nys_math_19_gen_ed()
)

###########
### IEP ###
###########
nys_math_19_iep = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(iep == 'Yes') %>% 
        select(nys_math_19) %>%
        group_by(nys_math_19) %>% 
        summarize(n_nys_math_19 = n()) %>% 
        ggplot(aes(nys_math_19, n_nys_math_19)) +
        geom_col(aes(fill=nys_math_19), position='dodge') +
        ggtitle("IEP") +
        xlab('Proficiency') +
        ylab('Total Students') +
        standard
})
output$bar_nys_math_19_iep = renderPlot(
    nys_math_19_iep()
)





########################################################################
########################################################################
########################################################################
###### NYS iReady 1 ####################################################
########################################################################
########################################################################
########################################################################

###########
### All ###
###########
math_iready_1_all = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        select(math_iready_1) %>%
        group_by(math_iready_1) %>% 
        summarize(n_math_iready_1 = n()) %>% 
        ggplot(aes(math_iready_1, n_math_iready_1)) +
        geom_col(aes(fill=math_iready_1), position='dodge') +
        ggtitle("iReady Math #1") +
        xlab('Proficiency') +
        ylab('Total Students') +
        scale_x_discrete(limits = proficiency_order) +
        standard
})
output$bar_math_iready_1_all = renderPlot(
    math_iready_1_all()
)


##############
### Female ###
##############
math_iready_1_female = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(sex == 'Female') %>% 
        select(math_iready_1) %>%
        group_by(math_iready_1) %>% 
        summarize(n_math_iready_1 = n()) %>% 
        ggplot(aes(math_iready_1, n_math_iready_1)) +
        geom_col(aes(fill=math_iready_1), position='dodge') +
        ggtitle("Female") +
        xlab('Proficiency') +
        ylab('Total Students') +
        standard
})
output$bar_math_iready_1_female = renderPlot(
    math_iready_1_female()
)

############
### Male ###
############
math_iready_1_male = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(sex == 'Male') %>% 
        select(math_iready_1) %>%
        group_by(math_iready_1) %>% 
        summarize(n_math_iready_1 = n()) %>% 
        ggplot(aes(math_iready_1, n_math_iready_1)) +
        geom_col(aes(fill=math_iready_1), position='dodge') +
        ggtitle("Male") +
        xlab('Proficiency') +
        ylab('Total Students') +
        standard
})
output$bar_math_iready_1_male = renderPlot(
    math_iready_1_male()
)

########################
### African American ###
########################
math_iready_1_aa = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(ethnicity == 'African American') %>% 
        select(math_iready_1) %>%
        group_by(math_iready_1) %>% 
        summarize(n_math_iready_1 = n()) %>% 
        ggplot(aes(math_iready_1, n_math_iready_1)) +
        geom_col(aes(fill=math_iready_1), position='dodge') +
        ggtitle("Black") +
        xlab('Proficiency') +
        ylab('Total Students') +
        standard
})
output$bar_math_iready_1_aa = renderPlot(
    math_iready_1_aa()
)

##############
### Latino ###
##############
math_iready_1_lat = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(ethnicity == 'Latino') %>% 
        select(math_iready_1) %>%
        group_by(math_iready_1) %>% 
        summarize(n_math_iready_1 = n()) %>% 
        ggplot(aes(math_iready_1, n_math_iready_1)) +
        geom_col(aes(fill=math_iready_1), position='dodge') +
        ggtitle("Latino") +
        xlab('Proficiency') +
        ylab('Total Students') +
        standard
})
output$bar_math_iready_1_lat = renderPlot(
    math_iready_1_lat()
)

#############
### White ###
#############
math_iready_1_white = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(ethnicity == 'Caucasian') %>% 
        select(math_iready_1) %>%
        group_by(math_iready_1) %>% 
        summarize(n_math_iready_1 = n()) %>% 
        ggplot(aes(math_iready_1, n_math_iready_1)) +
        geom_col(aes(fill=math_iready_1), position='dodge') +
        ggtitle("White") +
        xlab('Proficiency') +
        ylab('Total Students') +
        standard
})
output$bar_math_iready_1_white = renderPlot(
    math_iready_1_white()
)

#############
### Asian ###
#############
math_iready_1_asian = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(ethnicity == 'Asian') %>% 
        select(math_iready_1) %>%
        group_by(math_iready_1) %>% 
        summarize(n_math_iready_1 = n()) %>% 
        ggplot(aes(math_iready_1, n_math_iready_1)) +
        geom_col(aes(fill=math_iready_1), position='dodge') +
        ggtitle("Asian") +
        xlab('Proficiency') +
        ylab('Total Students') +
        standard
})
output$bar_math_iready_1_asian = renderPlot(
    math_iready_1_asian()
)

##############
### Gen Ed ###
##############
math_iready_1_gen_ed = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(iep == 'No') %>% 
        select(math_iready_1) %>%
        group_by(math_iready_1) %>% 
        summarize(n_math_iready_1 = n()) %>% 
        ggplot(aes(math_iready_1, n_math_iready_1)) +
        geom_col(aes(fill=math_iready_1), position='dodge') +
        ggtitle("General Education") +
        xlab('Proficiency') +
        ylab('Total Students') +
        standard
})
output$bar_math_iready_1_gen_ed = renderPlot(
    math_iready_1_gen_ed()
)

###########
### IEP ###
###########
math_iready_1_iep = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(iep == 'Yes') %>% 
        select(math_iready_1) %>%
        group_by(math_iready_1) %>% 
        summarize(n_math_iready_1 = n()) %>% 
        ggplot(aes(math_iready_1, n_math_iready_1)) +
        geom_col(aes(fill=math_iready_1), position='dodge') +
        ggtitle("IEP") +
        xlab('Proficiency') +
        ylab('Total Students') +
        standard
})
output$bar_math_iready_1_iep = renderPlot(
    math_iready_1_iep()
)


######################################
######################################
###### NYS iReady 1 AT RISK ##########
######################################
######################################

###########
### All ###
###########
math_iready_1_risk = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(nys_math_19 == 1 | nys_math_19 ==2) %>% 
        select(math_iready_1) %>%
        group_by(math_iready_1) %>% 
        summarize(n_math_iready_1 = n()) %>% 
        ggplot(aes(math_iready_1, n_math_iready_1)) +
        geom_col(aes(fill=math_iready_1), position='dodge') +
        ggtitle("iReady Math #1") +
        xlab('Proficiency') +
        ylab('Total Students') +
        scale_x_discrete(limits = proficiency_order) +
        standard
})
output$bar_math_iready_1_risk = renderPlot(
    math_iready_1_all()
)


##############
### Female ###
##############
math_iready_1_risk_female = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(nys_math_19 == 1 | nys_math_19 ==2) %>% 
        filter(sex == 'Female') %>% 
        select(math_iready_1) %>%
        group_by(math_iready_1) %>% 
        summarize(n_math_iready_1 = n()) %>% 
        ggplot(aes(math_iready_1, n_math_iready_1)) +
        geom_col(aes(fill=math_iready_1), position='dodge') +
        ggtitle("Female") +
        xlab('Proficiency') +
        ylab('Total Students') +
        standard
})
output$bar_math_iready_1_risk_female = renderPlot(
    math_iready_1_risk_female()
)

############
### Male ###
############
math_iready_1_risk_male = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(nys_math_19 == 1 | nys_math_19 ==2) %>% 
        filter(sex == 'Male') %>% 
        select(math_iready_1) %>%
        group_by(math_iready_1) %>% 
        summarize(n_math_iready_1 = n()) %>% 
        ggplot(aes(math_iready_1, n_math_iready_1)) +
        geom_col(aes(fill=math_iready_1), position='dodge') +
        ggtitle("Male") +
        xlab('Proficiency') +
        ylab('Total Students') +
        standard
})
output$bar_math_iready_1_risk_male = renderPlot(
    math_iready_1_risk_male()
)

########################
### African American ###
########################
math_iready_1_risk_aa = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(nys_math_19 == 1 | nys_math_19 ==2) %>% 
        filter(ethnicity == 'African American') %>% 
        select(math_iready_1) %>%
        group_by(math_iready_1) %>% 
        summarize(n_math_iready_1 = n()) %>% 
        ggplot(aes(math_iready_1, n_math_iready_1)) +
        geom_col(aes(fill=math_iready_1), position='dodge') +
        ggtitle("Black") +
        xlab('Proficiency') +
        ylab('Total Students') +
        standard
})
output$bar_math_iready_1_risk_aa = renderPlot(
    math_iready_1_risk_aa()
)

##############
### Latino ###
##############
math_iready_1_risk_lat = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(nys_math_19 == 1 | nys_math_19 ==2) %>% 
        filter(ethnicity == 'Latino') %>% 
        select(math_iready_1) %>%
        group_by(math_iready_1) %>% 
        summarize(n_math_iready_1 = n()) %>% 
        ggplot(aes(math_iready_1, n_math_iready_1)) +
        geom_col(aes(fill=math_iready_1), position='dodge') +
        ggtitle("Latino") +
        xlab('Proficiency') +
        ylab('Total Students') +
        standard
})
output$bar_math_iready_1_risk_lat = renderPlot(
    math_iready_1_risk_lat()
)

#############
### White ###
#############
math_iready_1_risk_white = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(nys_math_19 == 1 | nys_math_19 ==2) %>% 
        filter(ethnicity == 'Caucasian') %>% 
        select(math_iready_1) %>%
        group_by(math_iready_1) %>% 
        summarize(n_math_iready_1 = n()) %>% 
        ggplot(aes(math_iready_1, n_math_iready_1)) +
        geom_col(aes(fill=math_iready_1), position='dodge') +
        ggtitle("White") +
        xlab('Proficiency') +
        ylab('Total Students') +
        standard
})
output$bar_math_iready_1_risk_white = renderPlot(
    math_iready_1_risk_white()
)

#############
### Asian ###
#############
math_iready_1_risk_asian = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(nys_math_19 == 1 | nys_math_19 ==2) %>% 
        filter(ethnicity == 'Asian') %>% 
        select(math_iready_1) %>%
        group_by(math_iready_1) %>% 
        summarize(n_math_iready_1 = n()) %>% 
        ggplot(aes(math_iready_1, n_math_iready_1)) +
        geom_col(aes(fill=math_iready_1), position='dodge') +
        ggtitle("Asian") +
        xlab('Proficiency') +
        ylab('Total Students') +
        standard
})
output$bar_math_iready_1_risk_asian = renderPlot(
    math_iready_1_risk_asian()
)

##############
### Gen Ed ###
##############
math_iready_1_risk_gen_ed = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(nys_math_19 == 1 | nys_math_19 ==2) %>% 
        filter(iep == 'No') %>% 
        select(math_iready_1) %>%
        group_by(math_iready_1) %>% 
        summarize(n_math_iready_1 = n()) %>% 
        ggplot(aes(math_iready_1, n_math_iready_1)) +
        geom_col(aes(fill=math_iready_1), position='dodge') +
        ggtitle("General Education") +
        xlab('Proficiency') +
        ylab('Total Students') +
        standard
})
output$bar_math_iready_1_risk_gen_ed = renderPlot(
    math_iready_1_risk_gen_ed()
)

###########
### IEP ###
###########
math_iready_1_risk_iep = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(nys_math_19 == 1 | nys_math_19 ==2) %>% 
        filter(iep == 'Yes') %>% 
        select(math_iready_1) %>%
        group_by(math_iready_1) %>% 
        summarize(n_math_iready_1 = n()) %>% 
        ggplot(aes(math_iready_1, n_math_iready_1)) +
        geom_col(aes(fill=math_iready_1), position='dodge') +
        ggtitle("IEP") +
        xlab('Proficiency') +
        ylab('Total Students') +
        standard
})
output$bar_math_iready_1_risk_iep = renderPlot(
    math_iready_1_risk_iep()
)

########################################################################
########################################################################
########################################################################
###### Math Interim 1 ##################################################
########################################################################
########################################################################
########################################################################


###########
### All ###
###########
math_ia_1_all = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        select(math_ia_1_score) %>%
        group_by(math_ia_1_score) %>% 
        summarize(n_math_ia_1_score = n()) %>% 
        ggplot(aes(math_ia_1_score, n_math_ia_1_score)) +
        geom_col(aes(fill=math_ia_1_score), position='dodge') +
        ggtitle("Interim Math #1") +
        xlab('Score') +
        ylab('Total Students') +
        standard
})
output$bar_math_ia_1_all = renderPlot(
    math_ia_1_all()
)


##############
### Female ###
##############
math_ia_1_female = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(sex == 'Female') %>% 
        select(math_ia_1_score) %>%
        group_by(math_ia_1_score) %>% 
        summarize(n_math_ia_1_score = n()) %>% 
        ggplot(aes(math_ia_1_score, n_math_ia_1_score)) +
        geom_col(aes(fill=math_ia_1_score), position='dodge') +
        ggtitle("Female") +
        xlab('Score') +
        ylab('Total Students') +
        standard
})
output$bar_math_ia_1_female = renderPlot(
    math_ia_1_female()
)

############
### Male ###
############
math_ia_1_male = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(sex == 'Male') %>% 
        select(math_ia_1_score) %>%
        group_by(math_ia_1_score) %>% 
        summarize(n_math_ia_1_score = n()) %>% 
        ggplot(aes(math_ia_1_score, n_math_ia_1_score)) +
        geom_col(aes(fill=math_ia_1_score), position='dodge') +
        ggtitle("Male") +
        xlab('Score') +
        ylab('Total Students') +
        standard
})
output$bar_math_ia_1_male = renderPlot(
    math_ia_1_male()
)

########################
### African American ###
########################
math_ia_1_aa = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(ethnicity == 'African American') %>% 
        select(math_ia_1_score) %>%
        group_by(math_ia_1_score) %>% 
        summarize(n_math_ia_1_score = n()) %>% 
        ggplot(aes(math_ia_1_score, n_math_ia_1_score)) +
        geom_col(aes(fill=math_ia_1_score), position='dodge') +
        ggtitle("Black") +
        xlab('Score') +
        ylab('Total Students') +
        standard
})
output$bar_math_ia_1_aa = renderPlot(
    math_ia_1_aa()
)

##############
### Latino ###
##############
math_ia_1_lat = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(ethnicity == 'Latino') %>% 
        select(math_ia_1_score) %>%
        group_by(math_ia_1_score) %>% 
        summarize(n_math_ia_1_score = n()) %>% 
        ggplot(aes(math_ia_1_score, n_math_ia_1_score)) +
        geom_col(aes(fill=math_ia_1_score), position='dodge') +
        ggtitle("Latino") +
        xlab('Score') +
        ylab('Total Students') +
        standard
})
output$bar_math_ia_1_lat = renderPlot(
    math_ia_1_lat()
)

#############
### White ###
#############
math_ia_1_white = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(ethnicity == 'Caucasian') %>% 
        select(math_ia_1_score) %>%
        group_by(math_ia_1_score) %>% 
        summarize(n_math_ia_1_score = n()) %>% 
        ggplot(aes(math_ia_1_score, n_math_ia_1_score)) +
        geom_col(aes(fill=math_ia_1_score), position='dodge') +
        ggtitle("White") +
        xlab('Score') +
        ylab('Total Students') +
        standard
})
output$bar_math_ia_1_white = renderPlot(
    math_ia_1_white()
)

#############
### Asian ###
#############
math_ia_1_asian = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(ethnicity == 'Asian') %>% 
        select(math_ia_1_score) %>%
        group_by(math_ia_1_score) %>% 
        summarize(n_math_ia_1_score = n()) %>% 
        ggplot(aes(math_ia_1_score, n_math_ia_1_score)) +
        geom_col(aes(fill=math_ia_1_score), position='dodge') +
        ggtitle("Asian") +
        xlab('Score') +
        ylab('Total Students') +
        standard
})
output$bar_math_ia_1_asian = renderPlot(
    math_ia_1_asian()
)

##############
### Gen Ed ###
##############
math_ia_1_gen_ed = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(iep == 'No') %>% 
        select(math_ia_1_score) %>%
        group_by(math_ia_1_score) %>% 
        summarize(n_math_ia_1_score = n()) %>% 
        ggplot(aes(math_ia_1_score, n_math_ia_1_score)) +
        geom_col(aes(fill=math_ia_1_score), position='dodge') +
        ggtitle("General Education") +
        xlab('Score') +
        ylab('Total Students') +
        standard
})
output$bar_math_ia_1_gen_ed = renderPlot(
    math_ia_1_gen_ed()
)

###########
### IEP ###
###########
math_ia_1_iep = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(iep == 'Yes') %>% 
        select(math_ia_1_score) %>%
        group_by(math_ia_1_score) %>% 
        summarize(n_math_ia_1_score = n()) %>% 
        ggplot(aes(math_ia_1_score, n_math_ia_1_score)) +
        geom_col(aes(fill=math_ia_1_score), position='dodge') +
        ggtitle("IEP") +
        xlab('Score') +
        ylab('Total Students') +
        standard
})
output$bar_math_ia_1_iep = renderPlot(
    math_ia_1_iep()
)






######################################
######################################
###### Math Interim 1 AT RISK ########
######################################
######################################

###########
### All ###
###########
math_ia_1_risk = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(nys_math_19 == 1 | nys_math_19 ==2) %>%
        select(math_ia_1_score) %>%
        group_by(math_ia_1_score) %>% 
        summarize(n_math_ia_1_score = n()) %>% 
        ggplot(aes(math_ia_1_score, n_math_ia_1_score)) +
        geom_col(aes(fill=math_ia_1_score), position='dodge') +
        ggtitle("iReady Math #1") +
        xlab('Score') +
        ylab('Total Students') +
        standard
})
output$bar_math_ia_1_risk = renderPlot(
    math_ia_1_risk()
)


##############
### Female ###
##############
math_ia_1_risk_female = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(nys_math_19 == 1 | nys_math_19 ==2) %>%
        filter(sex == 'Female') %>% 
        select(math_ia_1_score) %>%
        group_by(math_ia_1_score) %>% 
        summarize(n_math_ia_1_score = n()) %>% 
        ggplot(aes(math_ia_1_score, n_math_ia_1_score)) +
        geom_col(aes(fill=math_ia_1_score), position='dodge') +
        ggtitle("Female") +
        xlab('Score') +
        ylab('Total Students') +
        standard
})
output$bar_math_ia_1_risk_female = renderPlot(
    math_ia_1_risk_female()
)

############
### Male ###
############
math_ia_1_risk_male = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(nys_math_19 == 1 | nys_math_19 ==2) %>%
        filter(sex == 'Male') %>% 
        select(math_ia_1_score) %>%
        group_by(math_ia_1_score) %>% 
        summarize(n_math_ia_1_score = n()) %>% 
        ggplot(aes(math_ia_1_score, n_math_ia_1_score)) +
        geom_col(aes(fill=math_ia_1_score), position='dodge') +
        ggtitle("Male") +
        xlab('Score') +
        ylab('Total Students') +
        standard
})
output$bar_math_ia_1_risk_male = renderPlot(
    math_ia_1_risk_male()
)

########################
### African American ###
########################
math_ia_1_risk_aa = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(nys_math_19 == 1 | nys_math_19 ==2) %>%
        filter(ethnicity == 'African American') %>% 
        select(math_ia_1_score) %>%
        group_by(math_ia_1_score) %>% 
        summarize(n_math_ia_1_score = n()) %>% 
        ggplot(aes(math_ia_1_score, n_math_ia_1_score)) +
        geom_col(aes(fill=math_ia_1_score), position='dodge') +
        ggtitle("Black") +
        xlab('Score') +
        ylab('Total Students') +
        standard
})
output$bar_math_ia_1_risk_aa = renderPlot(
    math_ia_1_risk_aa()
)

##############
### Latino ###
##############
math_ia_1_risk_lat = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(nys_math_19 == 1 | nys_math_19 ==2) %>%
        filter(ethnicity == 'Latino') %>% 
        select(math_ia_1_score) %>%
        group_by(math_ia_1_score) %>% 
        summarize(n_math_ia_1_score = n()) %>% 
        ggplot(aes(math_ia_1_score, n_math_ia_1_score)) +
        geom_col(aes(fill=math_ia_1_score), position='dodge') +
        ggtitle("Latino") +
        xlab('Score') +
        ylab('Total Students') +
        standard
})
output$bar_math_ia_1_risk_lat = renderPlot(
    math_ia_1_risk_lat()
)

#############
### White ###
#############
math_ia_1_risk_white = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(nys_math_19 == 1 | nys_math_19 ==2) %>%
        filter(ethnicity == 'Caucasian') %>% 
        select(math_ia_1_score) %>%
        group_by(math_ia_1_score) %>% 
        summarize(n_math_ia_1_score = n()) %>% 
        ggplot(aes(math_ia_1_score, n_math_ia_1_score)) +
        geom_col(aes(fill=math_ia_1_score), position='dodge') +
        ggtitle("White") +
        xlab('Score') +
        ylab('Total Students') +
        standard
})
output$bar_math_ia_1_risk_white = renderPlot(
    math_ia_1_risk_white()
)

#############
### Asian ###
#############
math_ia_1_risk_asian = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(nys_math_19 == 1 | nys_math_19 ==2) %>%
        filter(ethnicity == 'Asian') %>% 
        select(math_ia_1_score) %>%
        group_by(math_ia_1_score) %>% 
        summarize(n_math_ia_1_score = n()) %>% 
        ggplot(aes(math_ia_1_score, n_math_ia_1_score)) +
        geom_col(aes(fill=math_ia_1_score), position='dodge') +
        ggtitle("Asian") +
        xlab('Score') +
        ylab('Total Students') +
        standard
})
output$bar_math_ia_1_risk_asian = renderPlot(
    math_ia_1_risk_asian()
)

##############
### Gen Ed ###
##############
math_ia_1_risk_gen_ed = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(nys_math_19 == 1 | nys_math_19 ==2) %>%
        filter(iep == 'No') %>% 
        select(math_ia_1_score) %>%
        group_by(math_ia_1_score) %>% 
        summarize(n_math_ia_1_score = n()) %>% 
        ggplot(aes(math_ia_1_score, n_math_ia_1_score)) +
        geom_col(aes(fill=math_ia_1_score), position='dodge') +
        ggtitle("General Education") +
        xlab('Score') +
        ylab('Total Students') +
        standard
})
output$bar_math_ia_1_risk_gen_ed = renderPlot(
    math_ia_1_risk_gen_ed()
)

###########
### IEP ###
###########
math_ia_1_risk_iep = reactive({
    df %>%
        filter(school == input$pick_school) %>%
        filter(nys_math_19 == 1 | nys_math_19 ==2) %>%
        filter(iep == 'Yes') %>% 
        select(math_ia_1_score) %>%
        group_by(math_ia_1_score) %>% 
        summarize(n_math_ia_1_score = n()) %>% 
        ggplot(aes(math_ia_1_score, n_math_ia_1_score)) +
        geom_col(aes(fill=math_ia_1_score), position='dodge') +
        ggtitle("IEP") +
        xlab('Score') +
        ylab('Total Students') +
        standard
})
output$bar_math_ia_1_risk_iep = renderPlot(
    math_ia_1_risk_iep()
)



}) #Close Server
