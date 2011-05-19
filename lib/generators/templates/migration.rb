class CommentemMigration < ActiveRecord::Migration
  def self.up
    create_table :comments, :force => true do |t|
      t.references :commenter,    :polymorphic => true, :null => false
      t.references :commentable,  :polymorphic => true, :null => false
      t.text  :content
      t.timestamps
    end
    
    add_index :comments, [:commenter_id, :commenter_type]
    add_index :comments, [:commentable_id, :commentable_type]
  end
  
  def self.down
    drop_table :comments
  end
end