module Refinery
  module Fg
    module Admin
      class PropagandasController < ::Refinery::AdminController

        crudify :'refinery/fg/propaganda', :xhr_paging => true

      end
    end
  end
end
