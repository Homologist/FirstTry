class CommentsController < ApplicationController
  def create
    @output = Output.find(params[:output_id])
    @comment = @output.comments.create(comment_params)
    redirect_to output_path(@output)
  end
  
    def destroy
    @output = Output.find(params[:output_id])
    @comment = @output.comments.find(params[:id])
    @comment.destroy
    redirect_to output_path(@output)
  end
  
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
