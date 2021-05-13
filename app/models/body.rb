class Body < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'セダン' },
    { id: 3, name: 'ミニバン' },
    { id: 4, name: 'SUV' },
    { id: 5, name: 'ハッチバック' },
    { id: 6, name: 'クーペ' },
    { id: 7, name: 'オープン' },
    { id: 8, name: '軽自動車' },
    { id: 9, name: 'その他' }
  ]

  include ActiveHash::Associations

  has_many :cars
end
