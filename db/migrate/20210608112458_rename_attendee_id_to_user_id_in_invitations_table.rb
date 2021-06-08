class RenameAttendeeIdToUserIdInInvitationsTable < ActiveRecord::Migration[6.1]
  def change
    remove_reference :invitations, :attendee, index: true, foreign_key: { to_table: :users }
    add_reference :invitations, :user, index: true, foreign_key: true
  end
end
