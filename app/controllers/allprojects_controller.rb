class AllprojectsController < ApplicationController

  def index
    @projects = Project.order(:name)
  end
end
