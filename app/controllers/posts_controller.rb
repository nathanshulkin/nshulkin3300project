class PostsController < ApplicationController
    def index
        @posts = Post.all
    end
    
    def new
        @post = Post.new
    end

    def create
        @post = Post.new(params[:post].permit(:title, :text))
 
        @post.save
        redirect_to @post
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        respond_to do |format|
            format.html { redirect_to posts_url, notice: "project succesfully eliminated" }
            format.json { head :no_content }
        end
    end
 
    def show
        @post = Post.find(params[:id])
    end

    private
        def post_params
            params.require(:post).permit(:title, :text)
        end
    end
