class Wine < ApplicationRecord

  has_many :assemblies, dependent: :destroy
  has_many :strains, through: :assemblies
  accepts_nested_attributes_for :assemblies


  has_many :evaluations, dependent: :destroy
  has_many :oenologists, through: :evaluations
  accepts_nested_attributes_for :evaluations

end
