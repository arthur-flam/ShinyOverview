# Code adapted from Ramnath Vaidyanathan's examples.
# He created rCharts, all credits to him !
require(shiny)
require(rCharts)


shinyServer(function(input, output) {  
  output$nvd3 <- renderChart({
  	hair_eye_male <- subset(as.data.frame(HairEyeColor), Sex == "Male")
		n <- nPlot(Freq ~ Hair, group = "Eye", data = hair_eye_male, type = "multiBarChart")
		n$print("nvd3")
	  n
  })
	output$rickshaw <- renderChart({
		usp = reshape2::melt(USPersonalExpenditure)
		# get the decades into a date Rickshaw likes
		usp$Var2 <- as.numeric(as.POSIXct(paste0(usp$Var2, "-01-01")))
		r <- Rickshaw$new()
		r$layer(value ~ Var2, group = "Var1", data = usp, type = "area", width = 560)
		# add a helpful slider this easily; other features TRUE as a default
		r$set(slider = TRUE)
		r$print("nvd3")
		r
	})
})