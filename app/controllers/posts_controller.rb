class PostsController < ApplicationController
	 def index
	 	@posts = Post.all
	 end

	 def show
	    @post = Post.find(params[:id])
	 end

	 def edit
        @post = Post.find(params[:id])
	 end

	 def new
        @post = Post.new	 
	 end	

     def create
     	@post = Post.new(params[:post])
     	@post.save

     	if @post.save 
     		redirect_to posts_path, :notice => "Your post is saved"
     	else
     		render "new"
     	end
     end

	 def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path, :notice => "Your post has been deleted successfully."
	 end

     def update

        @post = Post.find(params[:id])
        if @post.update_attributes(params[:post])
           redirect_to posts_path, :notice => "Your update is saved" 	
        else
           render "edit" 	
        end
     end

end
