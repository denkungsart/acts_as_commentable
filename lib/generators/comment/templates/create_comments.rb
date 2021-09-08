class CreateComments < ActiveRecord::Migration[4.2]
  def self.up
    create_table :comments do |t|
      t.string :title, :limit => 50, :default => "" 
      t.text :comment
      t.references :commentable, :polymorphic => true, :index => true
      t.references :user, :index => true
      t.string :role, :default => "comments"
      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
