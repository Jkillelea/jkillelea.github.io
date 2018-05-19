using Plots
plotly()

humid = readdlm("humidity")
temp = readdlm("temperature")
rssi = readdlm("rssi")

plot(humid, # temperature and humidity
     ylabel = "Relative Humidity (%)", 
     xlabel = "measurement number",
     size   = [1600, 900],
     label  = "Humidity")
gui(plot!(temp, label = "Temperature"))

gui(plot(rssi,  # recieved signal strength
         ylabel = "dBm", 
         xlabel = "measurement number",
         size   = [1600, 900],
         label  = "RSSI"))
