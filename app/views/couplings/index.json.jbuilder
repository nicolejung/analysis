json.array!(@couplings) do |coupling|
  json.extract! coupling, :id, :multiplet, :givej, :distance, :hz, :detail, :fill1, :oka, :okb, :fulldoc_id, :singlepart_id, :description_id, :hnmr_id, :nmrdetailh_id
  json.url coupling_url(coupling, format: :json)
end
