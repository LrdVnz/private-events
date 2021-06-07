class EventsController < ApplicationController
   def index
    @events = Event.all
   end

   def show 
    @event = Event.find(params[:id])
   end

   def new
    @event = Event.new
   end

   def create
    @event = Event.new(event_params)
    @event.creator = @event.build_creator
 
    flash.notice = 'creating..'
        if @event.save
            flash.notice = 'saving..'
         redirect_to @event
        else
            flash.notice = 'redirecting..'
         render :new
        end
   end

   private

   def event_params
       params.require(:event).permit(:title, :event_date)
   end

end
