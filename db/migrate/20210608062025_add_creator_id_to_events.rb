class AddCreatorIdToEvents < ActiveRecord::Migration[6.1]
  def change
    remove_reference :events, :user, foreign_key: true
    add_reference :events, :creator, index: true, foreign_key: { to_table: :users }
    add_reference :events, :attendee, index: true, foreign_key: { to_table: :users }
  end
end
