module Refinery
  module Fg
    class Propaganda < Refinery::Core::BaseModel

      attr_accessible :title, :position

      acts_as_indexed :fields => [:title, :desc, :content]

      validates :title, :presence => true, :uniqueness => true

      belongs_to :image, :class_name => '::Refinery::Image'
    end
  end
end
