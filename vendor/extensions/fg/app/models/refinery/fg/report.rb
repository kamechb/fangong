module Refinery
  module Fg
    class Report < Refinery::Core::BaseModel

      attr_accessible :title, :desc, :content, :image_id, :tag_list, :position

      acts_as_indexed :fields => [:title, :desc, :content]

      validates :title, :presence => true, :uniqueness => true

      belongs_to :image, :class_name => '::Refinery::Image'

      acts_as_taggable

      def self.per_page
        10
      end

      class << self 
        def all_categories
          ActsAsTaggableOn::Tag.joins(:taggings).where("taggings.taggable_type='Refinery::Fg::Report'").uniq
        end
        alias_method :all_tags, :all_categories
      end

    end
  end
end
