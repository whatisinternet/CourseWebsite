class AdminController < ApplicationController
  def index
    @courses = Course.includes(:lectures).all
  end
end
