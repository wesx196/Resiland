class NewsController < ApplicationController
  before_action :set_news, only: [:show, :edit, :update, :destroy]

  # GET /news
  # GET /news.json
  def index
    @news = New.all
  end

  # GET /news/1
  # GET /news/1.json
  def show
  end

  # GET /news/new
  def new
    @news = New.new
  end

  # GET /news/1/edit
  def edit
  end

  # POST /news
  # POST /news.json
  def create
    @news = New.new(news_params)

    respond_to do |format|
      if @news.save
        format.html { redirect_to @news, notice: 'New was successfully created.' }
        format.json { render :show, status: :created, location: @news }
      else
        format.html { render :new }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news/1
  # PATCH/PUT /news/1.json
  def update
    respond_to do |format|
      if @news.update(news_params)
        format.html { redirect_to @news, notice: 'New was successfully updated.' }
        format.json { render :show, status: :ok, location: @news }
      else
        format.html { render :edit }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news/1
  # DELETE /news/1.json
  def destroy
    @news.destroy
    respond_to do |format|
      format.html { redirect_to news_url, notice: 'New was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news
      @news = New.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def news_params
      params.require(:news).permit(:title, :description, :image_url, :date)
    end
end
