class Comment < ActiveRecord::Base
  belongs_to :commenter, :polymorphic => true
  belongs_to :commentable, :polymorphic => true
  
  class << self
    def comments_by(commenter)
      where(["commenter_id = ? AND commenter_type = ?", commenter.id, commenter.class.name])
    end
    
    def comments_on(commentable)
      where(["commentable_id = ? AND commentable_type = ?", commentable.id, commentable.class.name])
    end
  end
end