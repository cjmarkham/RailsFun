class PeopleController < ApplicationController
    def create
        person = Person.create(person_params).valid?

        if person
            person.save!
            redirect_to person
        else
            redirect_to '/', :flash => { :errors => person.errors }
        end
    end

    def show
        @person = Person.find(params[:id])
    end

    def destroy
        #@person = Person.find(params[:id])

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