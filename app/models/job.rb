class Job < ApplicationRecord
  has_and_belongs_to_many :oenologists
  enum position: [:editor, :writer, :reviewer]
end
