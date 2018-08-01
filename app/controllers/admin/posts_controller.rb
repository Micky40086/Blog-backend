class Admin::PostsController < AdminController
  authorize_resource

  def index
    service = FireStore.new(current_admin)
    @posts = service.posts
  end

  def new
    @post = current_admin.posts.new
  end

  def create
    staticImage = StaticImage.create(:image => params[:post][:thumbnail])
    service = FireStore.new(current_admin, 
                            post_params[:title], 
                            post_params[:content],
                            staticImage.image.special.url,
                            Time.now.strftime("%F"))

    service.create_post
    redirect_to admin_posts_path
  end

  def edit
    service = FireStore.new(current_admin)
    post = service.get_post(params[:id]).get
    @post = Post.new(title: post[:title], content: post[:content], :thumbnail => post[:thumbnail])
  end

  def update
    staticImage = StaticImage.create(:image => params[:post][:thumbnail])
    service = FireStore.new(current_admin, 
      post_params[:title], 
      post_params[:content],
      staticImage.image.special.url)
    service.update_post(params[:id])
    redirect_to admin_posts_path
  end

  def destroy
    service = FireStore.new(current_admin)
    post = service.delete_post(params[:id])
    redirect_to admin_posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :thumbnail)
  end
end