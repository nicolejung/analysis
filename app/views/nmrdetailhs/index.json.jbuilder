json.array!(@nmrdetailhs) do |nmrdetailh|
  json.extract! nmrdetailh, :id, :signal, :area, :shift, :first, :last, :hamount, :fill1, :fill2, :oka, :okb, :okc, :okd, :fulldoc_id, :singlepart_id, :description_id, :hnmr_id
  json.url nmrdetailh_url(nmrdetailh, format: :json)
end
