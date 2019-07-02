class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @posts = posts_all
    @firstpost = @posts[0]

  end


  private

    def posts_all
      postsYAML = YAML.load(ERB.new(File.read("config/post.yml")).result(binding))
      posts_all = postsYAML.collect { |k, v| v }
    end

end
