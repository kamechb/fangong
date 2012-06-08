module Refinery
  module Fg
    module Admin
      class TeachersController < ::Refinery::AdminController

        crudify :'refinery/fg/teacher',
                :title_attribute => 'name', 
                :order => "created_at DESC",
                :xhr_paging => true

      end
    end
  end
end
