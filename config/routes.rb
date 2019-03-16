Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # 전체 게시글을 볼 수 있는 페이지
  get "/posts", to: "posts#index"

  # 새로운 게시글을 저장하는 주소
  post "/posts/create", to: "posts#create"

  # 새로운 게시글을 만드는 주소 (페이지)
  get "/posts/new", to: "posts#new"

  # 하나의 게시글을 볼 수 있는 주소
  # :id 주소값에는 아무거나 들어 올 수 있습니다. (e.g. 1, 2, 3, 4....)
  get "/posts/:id", to: "posts#show"

  # 하나의 게시글을 수정 할 수 있는 주소
  get "/posts/:id/edit", to: "posts#edit"

  # 수정된 게시글을 업데이트 하는 주소
  post "/posts/:id/update", to: "posts#update"

  # 게시글을 삭제하는 주소
  get "/posts/:id/destroy", to: "posts#destroy"

end
