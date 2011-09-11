class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.column :user, :string, :null => false
      t.column :pass, :string, :null => false
      t.column :active, :boolean, :default => 1
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
