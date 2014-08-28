json.array!(@couplingcs) do |couplingc|
  json.extract! couplingc, :id, :signal, :multiplet, :amountc, :coupling, :buffera, :bufferb, :bufferc, :bufferd, :oka, :okb, :cnmrbracket_id, :nmrdetailc_id, :cnmr_id, :singlepart_id, :description_id, :fulldoc_id
  json.url couplingc_url(couplingc, format: :json)
end
