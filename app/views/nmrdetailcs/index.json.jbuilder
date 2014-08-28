json.array!(@nmrdetailcs) do |nmrdetailc|
  json.extract! nmrdetailc, :id, :signal, :buffer1, :buffer2, :buffer3, :oka, :okb, :cnmr_id, :singlepart_id, :description_id, :fulldoc_id
  json.url nmrdetailc_url(nmrdetailc, format: :json)
end
