json.array!(@cnmrs) do |cnmr|
  json.extract! cnmr, :id, :name, :filename, :partanalysis, :solvent1, :solvent2, :sumc, :instrument, :method, :pulseprogram, :temp, :scans, :buffera, :oka, :okb, :okc, :okd, :singlepart_id, :description_id, :fulldoc_id
  json.url cnmr_url(cnmr, format: :json)
end
