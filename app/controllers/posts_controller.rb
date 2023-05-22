class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy publish ]
  before_action :authenticate_user!

  # GET /posts or /posts.json
  def index
    @posts = current_user.posts
  end

  # GET /posts/1 or /posts/1.json
  def show
    @posts= Post.all
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
    @tags = Tag.all.map { |tags| [tags.name, tags.id] }
    @categories = Category.all.map { |category| [category.name, category.id] }
  end

  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params)
   
    respond_to do |format|
      if @post.save
        format.html { redirect_to post_url(@post), notice: "Post was successfully created."}
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH /posts/1/publish
  def publish
    @post.published = true

    respond_to do |format|
      if @post.save
        format.html { redirect_to post_url(@post), notice: "Post was successfully published." }
        format.json { render :show, status: :ok, location: @post }
        format.js { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to post_url(@post), notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end
  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:title, :content, :user_id, :photo, tag_ids: [], category_ids: [])
  end
end
