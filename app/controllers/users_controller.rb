class UsersController < ApplicationController

    def index
     @user = User    
    end

    def show 
     @user = User.find(params[:id])
    end
end
