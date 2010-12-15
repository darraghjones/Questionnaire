class SurveysController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def edit
    @user = User.first
  end

  def update
    @user = User.first
    @user.update(:params)
  end

  def show
  end

end
