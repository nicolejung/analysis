json.array!(@sumhs) do |sumh|
  json.extract! sumh, :id, :all, :value, :fill1, :fill2, :oka, :okb, :okc, :okd, :fulldoc_id, :singlepart_id, :description_id, :hnmr_id, :nmrdetailh_id, :coupling_id
  json.url sumh_url(sumh, format: :json)
end
