require "rails_helper"

RSpec.describe Person do

    it "should throw the name required error" do
        person = Person.create
        expect(person.errors[:name][0]).to eq("can't be blank")
    end

    it "should throw the name is too short error" do
        person = Person.create(name: 'C')
        expect(person.errors[:name][0]).to eq("is too short (minimum is 2 characters)")
    end

end
