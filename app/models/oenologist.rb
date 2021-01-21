class Oenologist < ApplicationRecord
  
  has_and_belongs_to_many :jobs

  has_many :evaluations, dependent: :destroy
  has_many :wines, through: :evaluations

end
