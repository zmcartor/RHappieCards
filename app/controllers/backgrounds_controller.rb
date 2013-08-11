class BackgroundsController < ApplicationController
  before_action :set_background, only: [:show, :edit, :update, :destroy]

  # GET /backgrounds
  # GET /backgrounds.json
  def index
    @backgrounds = Background.all
  end

  # GET /backgrounds/1
  # GET /backgrounds/1.json
  def show
  end

  # GET /backgrounds/new
  def new
    @background = Background.new
  end

  # GET /backgrounds/1/edit
  def edit
  end

  # POST /backgrounds
  # POST /backgrounds.json
  def create
    @background = Background.new(background_params)

    respond_to do |format|
      if @background.save
        format.html { redirect_to @background, notice: 'Background was successfully created.' }
        format.json { render action: 'show', status: :created, location: @background }
      else
        format.html { render action: 'new' }
        format.json { render json: @background.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /backgrounds/1
  # PATCH/PUT /backgrounds/1.json
  def update
    respond_to do |format|
      if @background.update(background_params)
        format.html { redirect_to @background, notice: 'Background was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @background.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /backgrounds/1
  # DELETE /backgrounds/1.json
  def destroy
    @background.destroy
    respond_to do |format|
      format.html { redirect_to backgrounds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_background
      @background = Background.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def background_params
      params[:background]
    end
end
