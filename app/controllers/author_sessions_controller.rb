class AuthorSessionsController < ApplicationController
  def new
  end

  def create
    if login(params[:email], params[:password])
      redirect_back_or_to(activities_path, notice: 'Logged in successfully.')
    else
      redirect_back_or_to(login_path, notice: 'Logged failed.')
    end
  end

  def destroy
    logout
    redirect_to(:authors, notice: 'Logged out!')
  end

end
