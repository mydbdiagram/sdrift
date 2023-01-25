class AuthorsController < ApplicationController
  def index
    @authors = Author.where("name like ?", "%#{params[:q]}%")
    render layout: false
  end
end