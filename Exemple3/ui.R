# Code adapted from Ramnath Vaidyanathan's examples.
# He created rCharts, all credits to him !
require(shiny)

shinyUI(bootstrapPage(
		tabsetPanel(
			tabPanel('NVD3',
				showOutput("nvd3", "nvd3")
 	 		)#,
 			#tabPanel("Rickshaw",
			#	showOutput("rickshaw", "rickshaw")
  		)#)	
))
