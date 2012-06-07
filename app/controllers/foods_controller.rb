
class FoodsController < RocketPants::Base
  version 1

  # The list of foods is paginated for 5 minutes, the food itself is cached
  # until it's modified (using Efficient Validation)
  caches :index, :show, :caches_for => 5.minutes

  def index
    expose Food.paginate(:page => params[:page])
  end

  def show
    expose Food.find(params[:id])
  end
end
