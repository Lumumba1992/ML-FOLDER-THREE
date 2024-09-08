data <- read.csv("data20244.csv")
head(data)
View(data)

library(leaflet)
leaflet(data) %>%
  addTiles() %>%
  addCircleMarkers(
    ~Longitude, ~Latitude,
    radius = ~Final_Malaria_Test_Results*3,
    color = "red",
    stroke = FALSE,
    fillOpacity = 0.5,
    label = ~paste0(County, ": ", Final_Malaria_Test_Results)) %>%
  addLegend("bottomright", 
            colors = "red", 
            labels = "Malaria Results",
            title = "Malaria Positive Test Results")

