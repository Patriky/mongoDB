class Vehicle
  include Mongoid::Document
  field :model, type: String
  field :plate, type: String

  belongs_to :company
end
