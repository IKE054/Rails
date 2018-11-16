class PostsController < ApplicationController

 	  def new
  		# からのモデルをビューに渡す
  		@post = Post.new
  	end

  	#投稿機能
  	def create
  		#ストロングパラメータを使用
  		post = Post.new(post_params)
  		#DBへ保存する
  		post.save
  		#詳細画面へリダイレクト
  		redirect_to post_path(post.id)
  	end

  	#一覧表示機能
  	def index
  		@posts = Post.all
  	end

  	#閲覧機能
  	def show
  		@post = Post.find(params[:id])
  	end

  	#編集機能
  	def edit
  		@post = Post.find(params[:id])
  	end

  	#更新機能
  	def update
  		post = Post.find(params[:id])
  		post.update(post_params)
  		redirect_to post_path(post.id)
  	end

    #削除機能
    def destroy
      post = Post.find(params[:id])
      post.destroy
      redirect_to posts_path
    end

  	private

  	def post_params
  		params.require(:post).permit(:title, :body, :image)
  	end
end
