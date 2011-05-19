require File.dirname(__FILE__) + "/commentem/commenter"
require File.dirname(__FILE__) + "/commentem/commentable"

ActiveRecord::Base.send(:include, Commentem::Commenter)
ActiveRecord::Base.send(:include, Commentem::Commentable)