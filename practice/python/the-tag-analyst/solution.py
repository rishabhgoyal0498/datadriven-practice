def compare_tags(tags_a, tags_b):
  set_a = set(tags_a)
  set_b = set(tags_b)

  result = {}
  result['both'] = sorted(set_a & set_b)
  result['only_a'] = sorted(set_a - set_b)
  result['only_b'] = sorted(set_b - set_a)
  return result
