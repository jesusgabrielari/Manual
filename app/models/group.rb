class Group < ApplicationRecord
  enum group_type: %w[GirlGroup BoyGroup Banda Solista]
  enum style: %w[k-pop j-pop c-pop rock country jazz blues chayanne]
  enum status: %w[Activo Descansando Disuelto Inactivo]

  validates :name, presence: true
end
