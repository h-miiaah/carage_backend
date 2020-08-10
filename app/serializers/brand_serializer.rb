class BrandSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :origin
end
