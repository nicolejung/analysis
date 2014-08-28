json.array!(@additionals) do |additional|
  json.extract! additional, :id, :raman, :hrms, :uv, :fnmr, :pnmr, :bnmr, :nnmr, :mass1, :mass3, :buffer1, :buffer2, :buffer3, :oka, :okb, :singlepart_id, :description_id, :fulldoc_id
  json.url additional_url(additional, format: :json)
end
