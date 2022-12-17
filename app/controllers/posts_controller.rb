class PostsController < ApplicationController
  def index
    @posts = Post.order(id: "DESC")
  end

  def create
    Post.create(content: params[:content])
    render json:{post: post }
    #7行目で定義した変数postの値をpostというキーとセットでJSに送信している。JSでは受け取った変数postを使用しメモをブラウザに反映させる。
  end
end
