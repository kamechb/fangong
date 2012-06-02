module Refinery
  module Fg
    class Teacher < Refinery::Core::BaseModel

      attr_accessible :name, :desc, :content, :works, :avatar_id, :title, :position

      acts_as_indexed :fields => [:name, :title, :works, :desc, :content]

      validates :name, :presence => true, :uniqueness => true

      belongs_to :avatar, :class_name => '::Refinery::Image'
    end
  end
end
