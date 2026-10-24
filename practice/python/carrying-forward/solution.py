def running_total(deposits):
  s=[]
  j=0
  
  if deposits== []:
    return []
  else:
    for i in deposits:
      j+=i
      s.append(j)
      
      
      
      


  return s
