require "rails_helper"

RSpec.describe Person do

    it "should throw the name required error" do
        person = Person.create
        expect(person.errors[:name]).to eq(["Name can't be blank"])
    end

end
