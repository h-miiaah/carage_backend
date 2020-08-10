class CarSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :year, :color, :mileage, :image_url, :brand_id, :brand
  # belongs_to :brand
end
