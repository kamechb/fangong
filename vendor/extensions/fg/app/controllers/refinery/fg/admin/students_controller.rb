module Refinery
  module Fg
    module Admin
      class StudentsController < ::Refinery::AdminController

        crudify :'refinery/fg/student',
                :title_attribute => 'name', 
                :order => "created_at DESC",
                :xhr_paging => true

      end
    end
  end
end
