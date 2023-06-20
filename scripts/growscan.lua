function growscan()
  local objects = getObjects()
  local counts = {}
  
  -- Count objects
  for _, obj in ipairs(objects) do
    local id = obj.id
    counts[id] = (counts[id] or 0) + obj.count
  end

  -- Create a list of counts
  local countList = {}
  for id, count in pairs(counts) do
    table.insert(countList, {id = id, count = count})
  end

  -- Sort the list by count in descending order
  table.sort(countList, function(a, b)
    return a.count > b.count
  end)

  -- Print the sorted list
  for _, obj in ipairs(countList) do
    print(obj.id .. ": " .. obj.count)
  end
end

growscan()
