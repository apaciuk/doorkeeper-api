namespace :api do
    namespace :v1 do
        resources :books, only: [:index, :show, :create, :update, :destroy]
    end
end 

scope :api do
    scope :v1 do
        use_doorkeeper do 
            skip_controllers :authorizations, :applications, :authorized_applications
        end
    end
end