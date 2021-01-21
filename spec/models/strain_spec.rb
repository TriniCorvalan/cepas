require 'rails_helper'

RSpec.describe Strain, type: :model do
  it "validates uniqueness name" do
    strain1 = Strain.create(name: "cepa")
    strain2 = Strain.create(name: "cepa")
    expect(strain2).to_not be_valid
  end

  it "validates presence name not nil" do
    strain = Strain.create(name: nil)
    expect(strain).to_not be_valid
  end

  it "validates presence name not empty" do
    strain = Strain.create(name: "")
    expect(strain).to_not be_valid
  end

  it "validate presence name" do
    strain = Strain.create(name: "Carmenere")
    expect(strain).to be_valid
  end
end
