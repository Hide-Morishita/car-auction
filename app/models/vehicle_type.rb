class VehicleType < ActiveHash::Base
  self.data = [
    { id: 1, name: '新車' },
    { id: 2, name: '未使用車' },
    { id: 3, name: '中古車' }
  ]

  include ActiveHash::Associations

  has_many :cars
end
