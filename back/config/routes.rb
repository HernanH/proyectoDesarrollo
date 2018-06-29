Rails.application.routes.draw do
#resources :videos



 resources :teachers do
   resources :courses do
     resources :students do
       resources :c_students do
         resources :homeworks
       end    
     end
   end
 end

 resources :teachers do
   resources :courses do
     resources :students do
       resources :c_students do
         resources :tests
       end    
     end
  end
 end

resources :students do
   resources :calendar
 end

resources :teachers do
   resources :courses do
    resources :classrooms do
       resources :audios
     end
   end
 end

 #
 resources :teachers do
    resources :courses do
     resources :classrooms do
        resources :videos
      end
    end
  end
#
 #post 'video', to: 'videos#postVideo'
 #get 'video', to: 'videos#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
