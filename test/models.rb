class Post < ActiveRecord::Base
  acts_as_commentable
end

class User < ActiveRecord::Base
end

class Wall < ActiveRecord::Base
  acts_as_commentable :public, :private
  acts_as_commentable :foo, class_name: "FooComment"
end

class FooComment < Comment
  def comment
    "Foo #{super}"
  end
end
