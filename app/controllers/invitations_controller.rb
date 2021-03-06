class InvitationsController < ApplicationController
    def new 
      @invitation = Invitation.new
    end

    def show
      @invitation = Invitation.find(params[:id])
    end

    def create
      @invitation = Invitation.new(invitation_params)
  
      if @invitation.save
         redirect_to @invitation 
      else 
         render :new 
      end 
    end

    private

    def invitation_params
     params.require(:invitation).permit(:event_id, :user_id)
    end

end
