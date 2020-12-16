get-ciminstance win32_networkadapterconfiguration |
  Where-Object ipenabled -eq True |
  Select-Object Discription, index, IPAddress, subnetmask, dnsdomain, dnsserver |
  ft