def word_counts(text: str) -> dict:
  out = {}
  for word in text.split():
    out[word] = out.get(word,0)+1
  return out
    
