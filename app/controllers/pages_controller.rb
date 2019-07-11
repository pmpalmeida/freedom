class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @posts = posts_all.reverse_each.to_h
    @firstpost = @posts["post0"]
    @secondposts = @posts


  end


  private

    def posts_all
      file = "config/post.yml"
      posts_all = YAML.load(open(file).read)
    end

end
