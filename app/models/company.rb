class Company
  include Mongoid::Document
  field :name, type: String
  field :city, type: String

  #add after
  field :is_active, type: :boolean

  has_many :vehicles
end
