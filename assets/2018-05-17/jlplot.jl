using Plots
plotly()

humid = readdlm("humidity")
temp = readdlm("temperature")

plot(humid, # temperature and humidity
     ylabel = "Relative Humidity (%)", 
     xlabel = "measurement number",
     size   = [1600, 900],
     label  = "Humidity")
gui(plot!(temp, label = "Temperature"))

try
  rssi = readdlm("rssi")
  gui(plot(rssi,  # recieved signal strength
           ylabel = "dBm", 
           xlabel = "measurement number",
           size   = [1600, 900],
           label  = "RSSI"))
catch
  # nothing
  println("RSSI data invalid")
end
