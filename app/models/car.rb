class Car < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :manufacturer
  belongs_to :body
  belongs_to :vehicle_type

  with_options presence: true do
    validates :name
    validates :price
    validates :grade
    validates :displacement
    validates :color
    validates :capacity
    validates :model_year
    validates :mileage
  end

  with_options numericality: { other_than: 1 } do
    vaildates :manufacturer_id
    vaildates :body_id
    vaildates :vehicle_type_id
  end

end
