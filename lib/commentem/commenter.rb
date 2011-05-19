module Commentem
  module Commenter
    def self.included(base)
      base.extend ClassMethods
    end
    
    module ClassMethods
      def acts_as_commenter
        has_many :commentings, :as => :commenter, :dependent => :destroy, :class_name => "Comment"
        include Commentem::Commenter::InstanceMethods
      end
    end
    
    module InstanceMethods
      def comments_on(commentable)
        self.commentings.comments_on(commentable)
      end
      
      def comment(commentable, content)
        self.commentings.create(:commentable => commentable, :content => content)
      end
    end
  end
end