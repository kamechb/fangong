module Refinery
  module Fg
    module Admin
      class TeachersController < ::Refinery::AdminController

        crudify :'refinery/fg/teacher',
                :title_attribute => 'name', :xhr_paging => true

      end
    end
  end
end
