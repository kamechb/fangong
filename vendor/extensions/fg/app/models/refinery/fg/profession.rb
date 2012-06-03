module Refinery
  module Fg
    class Profession < Refinery::Core::BaseModel

      attr_accessible :name, :open_at, :content, :recommend, :opened, :position

      acts_as_indexed :fields => [:name, :content, :open_at]

      validates :name, :presence => true, :uniqueness => true
    end
  end
end
