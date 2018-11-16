Rails.application.routes.draw do
	# コントローラ名＃アクション名
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	get 'posts/new'
	get '/top' => 'root#top'
	post '/posts' => 'posts#create' #新規投稿
	get '/posts' => 'posts#index' #一覧表示
	get '/posts/:id' => 'posts#show', as: 'post' #詳細表示
	get '/posts/:id/edit' => 'posts#edit', as: 'edit_post' #編集
	patch '/posts/:id' => 'posts#update', as: 'update_post'
	delete '/posts/:id' => 'posts#destroy', as: 'destroy_post'
end
