class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @posts = posts_all.to_h
    @firstpost = @posts["ultimo"]
    @secondposts = @posts

  end

  def sobre
  end

  def obrigado
  end

  def curriculocampeao
  end

  def termosdeuso
  end

  def politicadeprivacidade
  end

  def lan_inscricao
  end

  def lan_obrigado
  end



  private

    def posts_all
      file = "config/post.yml"
      posts_all = YAML.load(open(file).read)
      posts_all = posts_all.reverse_each.to_h
    end

end
