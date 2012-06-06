module Refinery
  module Fg
    module Admin
      class ConsultsController < ::Refinery::AdminController

        crudify :'refinery/fg/consult',
                :title_attribute => 'user_name', :xhr_paging => true

      end
    end
  end
end
