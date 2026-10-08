def group_events(events):
  groups ={}
  for name in events:
    key = name[0]
    if key not in groups:
      groups[key] = []
    groups[key].append(name)
  return groups
