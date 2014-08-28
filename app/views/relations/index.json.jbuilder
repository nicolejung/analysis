json.array!(@relations) do |relation|
  json.extract! relation, :id, :multiplet, :givej, :distance, :detail, :fill1, :hz, :oka, :okb, :fulldoc_id, :singlepart_id, :description_id, :hnmr_id, :nmrdetailh_id
  json.url relation_url(relation, format: :json)
end
