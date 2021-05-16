class Manufacturer < ActiveHash::Base
  self.data = [
    { id: 1, name: 'トヨタ' },
    { id: 2, name: '日産' },
    { id: 3, name: '三菱' },
    { id: 4, name: 'マツダ' },
    { id: 5, name: 'ホンダ' },
    { id: 6, name: 'スバル' },
    { id: 7, name: 'ダイハツ' },
    { id: 8, name: 'スズキ' },
    { id: 9, name: '外国車' },
    { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations

  has_many :cars
end
