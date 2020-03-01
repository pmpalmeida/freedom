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
    #redirect_to(root_path)
  end

  def lan_obrigado
    redirect_to(root_path)
  end

  def lan_live
    redirect_to(root_path)
    #https://pay.hotmart.com/thanks?bid=1582468627395
  end

  def lan_confirmacao
    redirect_to(root_path)
  end

  def sua_ajuda
    #redirect_to(root_path)
  end


  private

    def posts_all
      file = "config/post.yml"
      posts_all = YAML.load(open(file).read)
      posts_all = posts_all.reverse_each.to_h
    end

end
