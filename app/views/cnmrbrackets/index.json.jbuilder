json.array!(@cnmrbrackets) do |cnmrbracket|
  json.extract! cnmrbracket, :id, :signal, :multiplet, :amountc, :coupling, :buffera, :bufferb, :countc, :adaptc, :oka, :okb, :nmrdetailc_id, :cnmr_id, :singlepart_id, :description_id, :fulldoc_id
  json.url cnmrbracket_url(cnmrbracket, format: :json)
end
