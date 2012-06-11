module Refinery
  module Fg
    module Admin
      class LinksController < ::Refinery::AdminController

        crudify :'refinery/fg/link',
                :title_attribute => 'name', :xhr_paging => true

      end
    end
  end
end
