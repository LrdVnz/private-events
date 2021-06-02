class AddTitleColumnToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :title, :string, limit: 25, default: 'nil', null: false
  end
end
