class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @posts = posts_all.to_h
    @firstpost = @posts["ultimo"]
    @secondposts = @posts

  end

  def sobre
  end

  def termosdeuso
  end

  def politicadeprivacidade
  end


  private

    def posts_all
      file = "config/post.yml"
      posts_all = YAML.load(open(file).read)
      posts_all = posts_all.reverse_each.to_h
    end

end
