class BlogPostController < ApplicationController
  
    def index
        @posts = BlogPost.all
    end

    def show
        @post = BlogPost.find(params[:id]) 
    end

    def new
        @post = BlogPost.new
    end

    def create
        @post = BlogPost.create(post_params)
        if @post.valid?
          redirect_to posts_path
        end
    end

      private
      # strong params:
    def post_params
        params.require(:blog_post).permit(:name, :status)
    end
end
