require "rails_helper"

RSpec.describe Person do

    it "should throw the name required error" do
        person = Person.create

        expect { raise StandardError, person.errors.full_messages[0]}
            .to raise_error(StandardError, "Name can't be blank")
    end

    it "should not create person" do
        person = Person.create

        expect(person.save).to be false
    end

end