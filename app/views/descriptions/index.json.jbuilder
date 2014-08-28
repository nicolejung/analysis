json.array!(@descriptions) do |description|
  json.extract! description, :id, :samplename, :fulldescribe, :purification, :rfvalue, :yield, :fill1, :fill2, :oka, :okb, :okc, :okd, :fulldoc_id, :singlepart_id
  json.url description_url(description, format: :json)
end
