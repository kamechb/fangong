Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :fg do
    resources :professions, :only => [:index, :show]
  end

  # Admin routes
  namespace :fg, :path => '' do
    namespace :admin, :path => 'refinery/fg' do
      resources :professions, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :fg do
    resources :students, :only => [:index, :show, :new, :create]
  end

  # Admin routes
  namespace :fg, :path => '' do
    namespace :admin, :path => 'refinery/fg' do
      resources :students, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :fg do
    resources :works, :only => [:index, :show] do
      collection do
        get :research
      end
    end
  end

  # Admin routes
  namespace :fg, :path => '' do
    namespace :admin, :path => 'refinery/fg' do
      resources :works, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :fg do
    resources :reports, :only => [:index, :show]
  end

  # Admin routes
  namespace :fg, :path => '' do
    namespace :admin, :path => 'refinery/fg' do
      resources :reports, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :fg do
    resources :teachers, :only => [:index, :show]
  end

  # Admin routes
  namespace :fg, :path => '' do
    namespace :admin, :path => 'refinery/fg' do
      resources :teachers, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :fg do
    resources :consults, :only => [:index, :show, :new, :create]
  end

  # Admin routes
  namespace :fg, :path => '' do
    namespace :admin, :path => 'refinery/fg' do
      resources :consults, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :fg do
    resources :jobs, :only => [:index, :show]
  end

  # Admin routes
  namespace :fg, :path => '' do
    namespace :admin, :path => 'refinery/fg' do
      resources :jobs, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :fg do
    resources :activities, :only => [:index, :show]
  end

  # Admin routes
  namespace :fg, :path => '' do
    namespace :admin, :path => 'refinery/fg' do
      resources :activities, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :fg do
    resources :links, :only => [:index, :show]
  end

  # Admin routes
  namespace :fg, :path => '' do
    namespace :admin, :path => 'refinery/fg' do
      resources :links, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

  # Frontend routes
  namespace :fg do
    resources :cooperations, :only => [:index, :show]
  end

  # Admin routes
  namespace :fg, :path => '' do
    namespace :admin, :path => 'refinery/fg' do
      resources :cooperations, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

  # Frontend routes
  namespace :fg do
    resources :propagandas, :only => [:index, :show]
  end

  # Admin routes
  namespace :fg, :path => '' do
    namespace :admin, :path => 'refinery/fg' do
      resources :propagandas, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
