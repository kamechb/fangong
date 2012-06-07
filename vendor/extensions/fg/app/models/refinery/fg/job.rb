module Refinery
  module Fg
    class Job < Refinery::Core::BaseModel

      attr_accessible :name, :desc, :company_name, :content, :position

      acts_as_indexed :fields => [:name, :company_name, :desc, :content]

      validates :name, :presence => true, :uniqueness => true
    end
  end
end
