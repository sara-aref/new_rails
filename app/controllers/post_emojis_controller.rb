class PostEmojisController < ApplicationController
  before_action :set_post_emoji, only: %i[ show edit update destroy ]

  # GET /post_emojis or /post_emojis.json
  def index
    @post_emojis = PostEmoji.all
  end

  # GET /post_emojis/1 or /post_emojis/1.json
  def show
  end

  # GET /post_emojis/new
  def new
    @post_emoji = PostEmoji.new
  end

  # GET /post_emojis/1/edit
  def edit
  end

  # POST /post_emojis or /post_emojis.json
  def create
    @post_emoji = PostEmoji.new(post_emoji_params)

    respond_to do |format|
      if @post_emoji.save
        format.html { redirect_to post_emoji_url(@post_emoji), notice: "Post emoji was successfully created." }
        format.json { render :show, status: :created, location: @post_emoji }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post_emoji.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_emojis/1 or /post_emojis/1.json
  def update
    respond_to do |format|
      if @post_emoji.update(post_emoji_params)
        format.html { redirect_to post_emoji_url(@post_emoji), notice: "Post emoji was successfully updated." }
        format.json { render :show, status: :ok, location: @post_emoji }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post_emoji.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_emojis/1 or /post_emojis/1.json
  def destroy
    @post_emoji.destroy!

    respond_to do |format|
      format.html { redirect_to post_emojis_url, notice: "Post emoji was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_emoji
      @post_emoji = PostEmoji.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_emoji_params
      params.require(:post_emoji).permit(:post_id, :emoji_id)
    end
end
