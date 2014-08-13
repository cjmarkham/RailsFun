class PeopleController < ApplicationController
    def create
        @person = Person.new(person_params)

        @person.save
        redirect_to @person
    end

    def show
        @person = Person.find(params[:id])
    end

    private
        def person_params
            params.require(:person).permit(
                :name, :address_1, :address_2, :county, :post_code,
                :home_phone, :mobile_phone
            )
        end

end