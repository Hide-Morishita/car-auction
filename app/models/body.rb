class Body < ActiveHash::Base
  self.data = [
    { id: 1, name: 'セダン' },
    { id: 2, name: 'ミニバン' },
    { id: 3, name: 'SUV' },
    { id: 4, name: 'ハッチバック' },
    { id: 5, name: 'クーペ' },
    { id: 6, name: 'オープン' },
    { id: 7, name: '軽自動車' },
    { id: 8, name: 'その他' }
  ]

  include ActiveHash::Associations

  has_many :cars
end
