module Refinery
  module Fg
    module Admin
      class ConsultsController < ::Refinery::AdminController

        crudify :'refinery/fg/consult',
                :order => "created_at DESC",
                :xhr_paging => true

      end
    end
  end
end
