json.array!(@fulldocs) do |fulldoc|
  json.extract! fulldoc, :id, :chemist, :source, :name, :fulltext, :format, :sumexp, :fill1, :fill2, :fill3, :oka, :okb, :okc, :okd
  json.url fulldoc_url(fulldoc, format: :json)
end
