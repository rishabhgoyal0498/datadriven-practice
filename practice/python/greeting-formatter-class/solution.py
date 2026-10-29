class MessageFormatter:
  def sort_by_case(self, text):
    lower=[]
    upper=[]
    other=[]
    for i in text:
      if i.islower():
        lower.append(i)
      elif i.isupper():
        upper.append(i)
      else:
        other.append(i)
    join = lower+upper+other
    return ("".join(join))  
        
  
