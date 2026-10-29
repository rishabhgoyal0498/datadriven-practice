def most_frequent(items: list) -> list:
  if not items:
    return []
  counts = {}
  for i in items:
    counts[i] = counts.get(i, 0) + 1
  max_counts = max(counts.values())
  result = []
  for k,v in counts.items():
    if v == max_counts:
      result.append(k)
  result.sort()
  return result
