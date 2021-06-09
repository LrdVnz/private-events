class RenameUsersReferenceInEvents < ActiveRecord::Migration[6.1]
  def change
    remove_reference :events, :users, foreign_key: true
    add_reference :events, :user, foreign_key: true
  end
end
