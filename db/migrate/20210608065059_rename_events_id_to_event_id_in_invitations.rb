class RenameEventsIdToEventIdInInvitations < ActiveRecord::Migration[6.1]
  def change
    remove_reference :invitations, :events, index: true, foreign_key: true
    add_reference :invitations, :event, index: true, foreign_key: true
  end
end
