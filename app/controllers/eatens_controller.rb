class EatensController < ApplicationController
  before_action :set_eaten, only: [:show, :edit, :update, :destroy]

  # GET /eatens
  # GET /eatens.json
  def index
    @eatens = Eaten.all
  end

  # GET /eatens/1
  # GET /eatens/1.json
  def show
  end

  # GET /eatens/new
  def new
    @eaten = Eaten.new
    @foods_list = Food.all
  end

  # GET /eatens/1/edit
  def edit
    @foods_list = Food.all
  end

  # POST /eatens
  # POST /eatens.json
  def create
    @eaten = Eaten.new(eaten_params)

    respond_to do |format|
      if @eaten.save
        format.html { redirect_to @eaten, notice: 'Eaten was successfully created.' }
        format.json { render :show, status: :created, location: @eaten }
      else
        format.html { render :new }
        format.json { render json: @eaten.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eatens/1
  # PATCH/PUT /eatens/1.json
  def update
    respond_to do |format|
      if @eaten.update(eaten_params)
        format.html { redirect_to @eaten, notice: 'Eaten was successfully updated.' }
        format.json { render :show, status: :ok, location: @eaten }
      else
        format.html { render :edit }
        format.json { render json: @eaten.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eatens/1
  # DELETE /eatens/1.json
  def destroy
    @eaten.destroy
    respond_to do |format|
      format.html { redirect_to eatens_url, notice: 'Eaten was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eaten
      @eaten = Eaten.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eaten_params
      params.require(:eaten).permit(:food_id, :portion_factor, :date)
    end
end
