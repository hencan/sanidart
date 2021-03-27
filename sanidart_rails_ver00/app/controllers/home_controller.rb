class HomeController < ApplicationController
  
  def index
    
    @profiles_export = Profile.where(main: true).limit(1)

    @pages_export = Page.where(visible: true)    

    # Favorite.where(fav_user: current_user.id, fav_id: it["id"]).exists?
    @works = Post.search_with(params).paginate(page: params[:page], per_page: 20)

  end

end
