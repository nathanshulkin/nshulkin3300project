class PostsController < ApplicationController
    def index
        @posts = Post.all
    end
    
    def new
    end

    def create
        @post = Post.new(params[:post].permit(:title, :text))
 
        if @post.save
            redirect_to @post
        else
            render "edit"
        end
    end

    def edit
        @post = Post.find(params[:id])
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_url, notice: "post succesfully eliminated"
    end

    def show
        @post = Post.find(params[:id])
    end

    private
        def post_params
            params.require(:post).permit(:title, :text)
        end
    end
