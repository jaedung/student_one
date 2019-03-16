class PostsController < ApplicationController

  # index method (함수)
  # index action
  # 전체 게시글을 볼 수 있다.
  def index

    # code
    # @student_name = "Student Bro"

    # 전체 게시글 가져오자.
    @posts = Post.all
  end

  # 사용자가 form에서 작성한 title, content를 저장하자.
  def create

    post = Post.new
    post.title = params[:title]
    post.content = params[:content]
    post.save

    # 전체 게시글을 볼 수 있는 페이지로 보내줘.
    redirect_to "/posts"
  end

  def new
  end

  def show

    # get "/posts/1"
    # get "/posts/2"
    # 주소로 받은 id 값을 가진 게시글을 찾자.
    @post = Post.find(params[:id])
  end

  # get "/posts/1/edit"
  # get "/posts/2/edit"
  # 하나의 게시글을 수정 할 수 있는 페이지
  def edit
    @post = Post.find(params[:id])
  end

  # post "/posts/1/update"
  # post "/posts/2/update"
  # id 값으로 게시글을 찾아서 업데이트 하자.
  def update

    post = Post.find(params[:id])
    post.title = params[:title]
    post.content = params[:content]
    post.save

    # 게시글을 수정한 후에 원래 게시글 show 페이지로 보내줘
    # /posts/1
    # /posts/2
    redirect_to "/posts/" + post.id.to_s
  end

  # post "/posts/1/destroy"
  # post "/posts/2/destroy"
  # id 값으로 받은 게시글을 찾아서 삭제하자.
  def destroy

    post = Post.find(params[:id])
    post.destroy

    # 사용자를 전체 게시글 리스트 페이지로 보내자.
    redirect_to "/posts"
  end

end
