module Commentem
  module Commentable
    def self.included(base)
      base.extend ClassMethods
    end
    
    module ClassMethods
      def acts_as_commentable
        has_many :comments, :as => :commentable, :dependent => :destroy
        include Commentem::Commentable::InstanceMethods
      end
    end
    
    module InstanceMethods
      def comments_by(commenter)
        self.comments.comments_by(commenter)
      end
    end
  end
end