require 'net/http'
require 'json'

class CheckAsso
  def self.call(siret)
    url = "https://entreprise.data.gouv.fr/api/rna/v1/siret/#{siret}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    data = JSON.parse(response)
    !data['association'].nil?
  end
end
