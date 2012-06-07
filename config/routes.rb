SampleRocketPants::Application.routes.draw do
  api :version => 1 do
    resources :foods, :only => [:index, :show]
  end
end
