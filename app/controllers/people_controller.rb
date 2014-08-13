class PeopleController < ApplicationController
    def create
        person = Person.create(person_params)

        if person.save
            redirect_to person
        else
            redirect_to '/', flash: { errors: person.errors.full_messages }
        end
    end

    def show
        @person = Person.find(params[:id])
    end

    def edit
        @person = Person.find(params[:id])
    end

    def update
        person = Person.find(params[:id])

        person.update(person_params)
        
        if person.save
            redirect_to person
        else
            redirect_to edit_person_path, flash: { errors: person.errors.full_messages }
        end
    end

    def destroy
        Person.destroy(params[:id])
        redirect_to '/'
    end

    private
        def person_params
            params.require(:person).permit(
                :name, :address_1, :address_2, :county, :post_code,
                :home_phone, :mobile_phone
            )
        end

end