class CallbacksController < ApplicationController
  before_action :set_callback, only: [:show, :edit, :update, :destroy]

  before_filter :authenticate_user!
  load_and_authorize_resource


  # GET /callbacks
  # GET /callbacks.json
  def index
    @callbacks = Callback.all
  end

  # GET /callbacks/1
  # GET /callbacks/1.json
  def show
  end

  # GET /callbacks/new
  def new
    @callback = Callback.new
  end

  # GET /callbacks/1/edit
  def edit
  end

  # POST /callbacks
  # POST /callbacks.json
  def create
    @callback = Callback.new(callback_params)

    respond_to do |format|
      if @callback.save
        format.html { redirect_to @callback, notice: 'Callback was successfully created.' }
        format.json { render action: 'show', status: :created, location: @callback }
      else
        format.html { render action: 'new' }
        format.json { render json: @callback.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /callbacks/1
  # PATCH/PUT /callbacks/1.json
  def update
    respond_to do |format|
      if @callback.update(callback_params)
        format.html { redirect_to @callback, notice: 'Callback was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @callback.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /callbacks/1
  # DELETE /callbacks/1.json
  def destroy
    @callback.destroy
    respond_to do |format|
      format.html { redirect_to callbacks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_callback
      @callback = Callback.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def callback_params
      params[:callback]
    end
end
