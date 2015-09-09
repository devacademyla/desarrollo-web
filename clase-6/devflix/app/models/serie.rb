class Serie < ActiveRecord::Base
  validates :nombre, presence: true, uniqueness: true
  validates :descripcion, presence: true
end
