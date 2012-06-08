module Refinery
  module Fg
    module Admin
      class ProfessionsController < ::Refinery::AdminController

        crudify :'refinery/fg/profession',
                :title_attribute => 'name', 
                :order => "created_at DESC",
                :xhr_paging => true

      end
    end
  end
end
