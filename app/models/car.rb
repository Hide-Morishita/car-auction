class Car < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :manufacturer
  belongs_to :body
  belongs_to :vehicle_type

end
