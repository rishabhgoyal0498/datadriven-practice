def word_counts(text: str) -> dict:
  out = {}
  for word in text.split():
    if word in out:
      out[word] +=1
    else:
      out[word] = 1
  return out
    
