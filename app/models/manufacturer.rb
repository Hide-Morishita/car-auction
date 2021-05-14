class Manufacturer < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'トヨタ' },
    { id: 3, name: '日産' },
    { id: 4, name: '三菱' },
    { id: 5, name: 'マツダ' },
    { id: 6, name: 'ホンダ' },
    { id: 7, name: 'スバル' },
    { id: 8, name: 'ダイハツ' },
    { id: 9, name: 'スズキ' },
    { id: 10, name: '外国車' },
    { id: 11, name: 'その他' }
  ]

  include ActiveHash::Associations

  has_many :cars
end
