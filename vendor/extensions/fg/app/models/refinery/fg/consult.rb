module Refinery
  module Fg
    class Consult < Refinery::Core::BaseModel

      attr_accessible :user_name, :user_tel, :leave_message, :position

      acts_as_indexed :fields => [:user_name, :user_tel, :leave_message]

      validates :user_name, :leave_message, :presence => true 
    end
  end
end
