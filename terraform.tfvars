dashboard_name = "module-dashboard"
permissions    = "public_read_only"
dashboard = {
  page_name = "module-dashboard-page1"

  title1  = "Requests per minute"
  row1    = 1
  column1 = 1
  width1  = 4
  height1 = 6
  query1  = "FROM Transaction SELECT rate(count(*), 1 minute)"

  title2  = "Disk Usage"
  row2    = 1
  column2 = 5
  width2  = 4
  height2 = 3
  query2  = "SELECT latest(diskUsedPercent) AS `Used %` FROM StorageSample WHERE (entityGuid = 'NDM2NDEzM3xJTkZSQXxOQXwyNDk3MTY5OTg0OTMxNjk2NjU3') FACET device LIMIT MAX"


  title3  = "Memory Usage (%)"
  row3    = 1
  column3 = 9
  width3  = 4
  height3 = 3
  query3  = "SELECT average(memoryUsedPercent) AS `Memory used %` FROM SystemSample WHERE (entityGuid = 'NDM2NDEzM3xJTkZSQXxOQXwyNDk3MTY5OTg0OTMxNjk2NjU3') TIMESERIES AUTO"

  title4  = "Network Traffic"
  row4    = 7
  column4 = 1
  width4  = 4
  height4 = 3
  query4  = "SELECT average(transmitBytesPerSecond) AS `Transmit bytes per second`, average(receiveBytesPerSecond) AS `Receive bytes per second` FROM NetworkSample WHERE (entityGuid = 'NDM2NDEzM3xJTkZSQXxOQXwyNDk3MTY5OTg0OTMxNjk2NjU3') TIMESERIES AUTO"

  title5  = "Processes Running"
  row5    = 4
  column5 = 5
  width5  = 4
  height5 = 6
  query5  = "SELECT latest(cpuPercent) AS `CPU %`, latest(threadCount) AS `Threads` FROM ProcessSample WHERE (entityGuid = 'NDM2NDEzM3xJTkZSQXxOQXwyNDk3MTY5OTg0OTMxNjk2NjU3') FACET processId, processDisplayName ORDER BY cpuPercent asc LIMIT 100"

  title6  = "Storage Usage (%)"
  row6    = 4
  column6 = 9
  width6  = 4
  height6 = 3
  query6  = "SELECT average(diskUsedPercent) AS `Storage used %` FROM StorageSample WHERE (entityGuid = 'NDM2NDEzM3xJTkZSQXxOQXwyNDk3MTY5OTg0OTMxNjk2NjU3') TIMESERIES AUTO"

  title7  = "CPU USage (%)"
  row7    = 7
  column7 = 9
  width7  = 4
  height7 = 3
  query7  = "SELECT average(cpuPercent) AS `CPU used %` FROM SystemSample WHERE (entityGuid = 'NDM2NDEzM3xJTkZSQXxOQXwyNDk3MTY5OTg0OTMxNjk2NjU3') TIMESERIES AUTO"

}
