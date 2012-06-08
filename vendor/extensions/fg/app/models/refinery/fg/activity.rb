module Refinery
  module Fg
    class Activity < Refinery::Core::BaseModel

      attr_accessible :title, :main_image_id, :desc, :content, :position

      acts_as_indexed :fields => [:title, :desc, :content]

      validates :title, :presence => true 

      belongs_to :main_image, :class_name => '::Refinery::Image'
    end
  end
end
