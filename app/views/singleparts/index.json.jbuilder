json.array!(@singleparts) do |singlepart|
  json.extract! singlepart, :id, :experimental, :describe, :ea, :hnmr, :cnmr, :calch, :calcc, :value, :fnmr, :pnmr, :bnmr, :nnmr, :mass1, :ir, :raman, :mass2, :mass3, :uv, :givenc, :givenh, :fill1, :oka, :okb, :okc, :okd, :fulldoc_id
  json.url singlepart_url(singlepart, format: :json)
end
