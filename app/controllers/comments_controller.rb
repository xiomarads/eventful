class CommentsController < ApplicationController

  def create
       @event = Event.find(params[:event_id])
       @a_comment = @event.comments.new(comment_params)
       if @a_comment.save
           redirect_to "/events/#{params[:event_id]}"
       else
           render "show"
       end
   end

   private

   def comment_params
       params.require(:comment).permit(:email, :feedback, :id)
   end
end
