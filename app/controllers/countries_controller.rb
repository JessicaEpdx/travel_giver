class CountriesController < ApplicationController

  def index
    @countries = Country.order(:name)
    @asiaCountries = Country.where(:continent => "Asia")
    @africaCountries = Country.where(:continent => "Africa")
    @northAmericaCountries = Country.where(:continent => "North-America")
    @southAmericaCountries = Country.where(:continent => "South-America")
    @australiaCountries = Country.where(:continent => "australia")
    @europeCountries = Country.where(:continent => "Europe")
    @antarcticaCountries = Country.where(:continent => "Antartica")
  end

  def new
    if current_user && current_user.admin
      @country = Country.new
    else
      redirect_to new_user_session_path
    end
  end

  def create
    @country = Country.new(country_params)
    if @country.save
      flash[:notice] = "Country saved."
      redirect_to countries_path
    else
      flash[:notice] = "Please try again."
      render :new
    end
  end

  def show
    @country = Country.find(params[:id])
    @countries = Country.order(:name)
  end

  def edit
    if current_user && current_user.admin
      @country = Country.find(params[:id])
    else
      redirect_to new_user_session_path
    end
  end

  def update
    @country = Country.find(params[:id])
    if @country.update(country_params)
      flash[:notice] = "Your edits have been saved."
      redirect_to root_path
    else
      flash[:notice] = "Please try again."
      render :edit
    end
  end

  def destroy
    @country = Country.find(params[:id])
    @country.destroy
    redirect_to countries_path
  end

  private
  def country_params
    params.require(:country).permit(:name, :continent, :description, :attached_image)
  end
end
