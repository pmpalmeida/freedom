class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @post = params[:postID]

  end
end
