class HomeController < ApplicationController
  def index
    @new_people = Person.order(created_at: :desc)
  end
end
