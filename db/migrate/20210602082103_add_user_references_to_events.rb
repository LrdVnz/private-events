class AddUserReferencesToEvents < ActiveRecord::Migration[6.1]
  def change
    add_reference :events, :users, foreign_key: true
  end
end
