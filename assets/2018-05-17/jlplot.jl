using Plots
plotly()

humid = readdlm("bathroom_humidity")
gui(plot(humid, 
        ylabel = "Relative Humidity (%)", 
        xlabel = "measurement number",
        leg = false))

temp = readdlm("bathroom_temperature")
gui(plot(temp, 
        ylabel = "Temperature (deg C)", 
        xlabel = "measurement number",
        leg = false))
