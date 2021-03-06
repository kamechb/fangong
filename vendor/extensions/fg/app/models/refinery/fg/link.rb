module Refinery
  module Fg
    class Link < Refinery::Core::BaseModel

      attr_accessible :name, :cooperation, :logo, :logo_id, :url, :position

      acts_as_indexed :fields => [:name, :url]

      validates :name, :presence => true, :uniqueness => true

      belongs_to :logo, :class_name => '::Refinery::Image'
    end
  end
end
