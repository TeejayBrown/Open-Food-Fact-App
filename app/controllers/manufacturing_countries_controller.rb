class ManufacturingCountriesController < ApplicationController
  def index
    @manufacturing_countries = ManufacturingCountry.all
  end

  def show
    @manufacturing_country = ManufacturingCountry.find(params[:id])
  end
end
