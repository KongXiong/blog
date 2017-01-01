module Authors
  class PostsController < AuthorController
  before_action :set_post, only: [:show, :update, :edit, :destroy]

    def index
      @post = Post.all
    end

    def show
    end

    def new
      @post = Post.new
    end

    def edit
      
    end

    def create
      @post = Post.new(post_params)
      if @post.save
        redirect_to posts_path
      else
        flash[:alert] = "Did not create. Something went wrong."
      end
    end

    def destroy
      @post = Post.find(params[:id])
      @post.destroy
      redirect_to authors_posts_path
    end



  private
    def set_post
      @post = Post.friendly.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :body, :description)
    end

  end




end