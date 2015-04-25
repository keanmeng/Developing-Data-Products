library(shiny) 
shinyUI(
    pageWithSidebar(
        headerPanel("Body Mass Index (BMI) Calculator"),
        
        sidebarPanel(
            numericInput('weight', 'Enter weight in kilograms (eg. 50)',0) ,
            numericInput('height', 'Enter height in metres (eg. 1.72)',0, min = 0.2, max = 3, step = 0.01),
            submitButton('Submit')
        ), 
        mainPanel(
            p('Body Mass Index (BMI) is simple index of weight-for-height that is commonly used to provide an indicator of body fatness.'),
            p('The International Classification according to BMI:'),
            tags$div(
                tags$ul(
                    tags$li('BMI <18.5       : Underweight'),
                    tags$li('BMI [18.5-24.9] : Normal range'),
                    tags$li('BMI [25-29.9]   : Overweight'),
                    tags$li('BMI >=30        : Obese')
                )
            ),
            
            h4('According to the BMI formula:'), 
            p('Weight:'), verbatimTextOutput("inputweightvalue"),
            p('Height:'), verbatimTextOutput("inputheightvalue"),
            h4('Your BMI is:'),
            verbatimTextOutput("estimation"),
            strong(verbatimTextOutput("diagnostic"))
            
            
        )
        
    )   
)