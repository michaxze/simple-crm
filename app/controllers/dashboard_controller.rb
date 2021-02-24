class DashboardController < ApplicationController
  def index
    @people = Person.order(created_at: :desc)
  end
end
