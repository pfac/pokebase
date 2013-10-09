require 'spec_helper'

describe Pokemon do
  it "is valid with a name" do
    pokemon = Pokemon.new(name: 'Bulbasaur')
    expect(pokemon).to be_valid  
  end

  it "is invalid without a name" do
    expect(Pokemon.new).to have(1).errors_on(:name)
  end

  it "is invalid with duplicate name" do
    Pokemon.create(name: 'Bulbasaur')
    pokemon = Pokemon.new(name: 'Bulbasaur')
    expect(pokemon).to have(1).errors_on(:name)
  end
end
