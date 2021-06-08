class AddEventAndAttendeeIdToInvitations < ActiveRecord::Migration[6.1]
  def change
    add_reference :invitations, :events, index: true, foreign_key: true
    add_reference :invitations, :attendee, index: true, foreign_key: { to_table: :users }
  end
end
