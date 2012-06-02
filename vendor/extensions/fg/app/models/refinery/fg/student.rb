#encoding: utf-8
module Refinery
  module Fg
    class Student < Refinery::Core::BaseModel

      attr_accessible :name, :address, :email, :qq, :msn, :know_from, :leave_message, :tel, :profession_id, 
                      :staying, :grade, :study_class, :interest, :job, :avatar, :avatar_id, :feedback, :position

      acts_as_indexed :fields => [:name]

      validates :name, :presence => true, :uniqueness => true
      validates :know_from, :numericality => true

      belongs_to :avatar, :class_name => '::Refinery::Image'
      belongs_to :profession

      KNOW_FROMS = [
        "谷歌",
        "百度",
        "朋友推荐",
        "宣传广告",
        "其他",
      ] 

      def know_from_desc
        KNOW_FROMS[know_from]
      end
    end
  end
end
