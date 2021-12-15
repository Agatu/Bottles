class BottlesController < ApplicationController
  before_action :set_bottle, only: %i[ show edit update destroy ]
  # before_action :authenticate_user!, except: [:index, :show, :new, :create, :destroy]
  # before_action :check_logged_in, :only => [:new, :create, :destroy]

  # GET /bottles or /bottles.json
  def index
    @bottles = Bottle.all
    @basket_item = current_basket.basket_items.new
  end

  # GET /bottles/1 or /bottles/1.json
  def show
  end

  # GET /bottles/new
  def new
    @bottle = Bottle.new
  end

  # GET /bottles/1/edit
  def edit
  end

  # POST /bottles or /bottles.json
  def create
    @bottle = Bottle.new(bottle_params)

    respond_to do |format|
      if @bottle.save
        format.html { redirect_to @bottle, notice: "Bottle was successfully created." }
        format.json { render :show, status: :created, location: @bottle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bottle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bottles/1 or /bottles/1.json
  def update
    respond_to do |format|
      if @bottle.update(bottle_params)
        format.html { redirect_to @bottle, notice: "Bottle was successfully updated." }
        format.json { render :show, status: :ok, location: @bottle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bottle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bottles/1 or /bottles/1.json
  def destroy
    @bottle.destroy
    respond_to do |format|
      format.html { redirect_to bottles_url, notice: "Bottle was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  # def check_logged_in
  #   authenticate_or_request_with_http_basic("Ads") do |email, password|
  #   email == "admin@admin.pl" && password == "admins"
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bottle
      @bottle = Bottle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bottle_params
      params.require(:bottle).permit(:material, :size, :price, :id, :image)
    end

end
