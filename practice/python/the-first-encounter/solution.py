def string_to_number_mapping(s: str) -> dict:
  dic={}
  for i,j in enumerate(s):
    if j not in dic:
      dic[j]=i  
  
  
  
  return dic
