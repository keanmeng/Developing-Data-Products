library(shiny) 

BMI<-function(weight,height) {weight/(height^2)}

BMI_Calculate<-function(weight,height){
    BMI_value<-weight/(height^2)
    ifelse(BMI_value<18.5,"Underweight",ifelse(BMI_value<25,"Normal range",ifelse(BMI_value<30,"Overweight","Obese")))
}

shinyServer(
    function(input, output) {
        
        output$inputweightvalue <- renderPrint({input$weight})
        output$inputheightvalue <- renderPrint({input$height})
        output$estimation <- renderPrint({BMI(input$weight,input$height)})
        output$diagnostic <- renderPrint({BMI_Calculate(input$weight,input$height)})
    } 
)