class AuthorsController < ApplicationController
  def create
  end

  def show
  end

  def edit
  end

  def index
    @authors = Author.all
  end
end
