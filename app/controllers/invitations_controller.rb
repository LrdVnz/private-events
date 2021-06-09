class InvitationsController < ApplicationController
    def new 
       @invitation = Invitation.new
    end

    def create
      @invitation = Invitation.new(invitation_params)
  
      if @invitation.save
         redirect_to @invitation 
      else 
         render :new 
      end 
    end

    def show

    end

    private

    def invitation_params

    end

end
