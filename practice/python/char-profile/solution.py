def char_freq(s):
  dic = {}
  for i in s:
    if i in dic:
      dic[i] = dic[i] + 1
    else:
      dic[i] = 1
  





  return dic
