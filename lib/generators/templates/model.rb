class Comment < ActiveRecord::Base
  scope :comments_by, lambda { |commenter| where(["commenter_id = ? AND commenter_type = ?", commenter.id, commenter.class.name]) }
  scope :comments_on, lambda { |commentable| where(["commentable_id = ? AND commentable_type = ?", commentable.id, commentable.class.name]) }
  
  belongs_to :commenter, :polymorphic => true
  belongs_to :commentable, :polymorphic => true
end