json.array!(@addhs) do |addh|
  json.extract! addh, :id, :all, :value, :fill1, :fill2, :oka, :okb, :okc, :okd, :fulldoc_id, :singlepart_id, :description_id, :hnmr_id, :nmrdetailh_id, :relation_id
  json.url addh_url(addh, format: :json)
end
