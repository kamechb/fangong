module Refinery
  module Fg
    class Work < Refinery::Core::BaseModel

      attr_accessible :name, :desc, :content, :research, :main_image_id, :tag_list, :position

      acts_as_indexed :fields => [:name, :desc, :content]

      validates :name, :presence => true, :uniqueness => true

      belongs_to :main_image, :class_name => '::Refinery::Image'

      acts_as_taggable

      class << self 
        def all_categories
          @all_tags ||= ActsAsTaggableOn::Tag.joins(:taggings).where("taggings.taggable_type='Refinery::Fg::Work'") 
        end
        alias_method :all_tags, :all_categories
      end
    end
  end
end
