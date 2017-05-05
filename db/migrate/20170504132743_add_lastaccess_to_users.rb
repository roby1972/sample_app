class AddLastaccessToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_access_at, :datetime, default: DateTime.new(2001,1,1)
  end
end
