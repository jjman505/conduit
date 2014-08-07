class Provider < ActiveRecord::Base
  has_many :users

  # TODO: replace with scope
  def self.all_providers(brand)
    output = self.all.where(brand_id: brand)
    output.map { |provider| "'#{provider.name}'" }.join(',')
  end
end
