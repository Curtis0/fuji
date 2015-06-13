class FoodfestivalsController < ApplicationController
  before_action :set_foodfestival, only: [:show, :edit, :update, :destroy]

  # GET /foodfestivals
  # GET /foodfestivals.json
  def index
    @foodfestivals = Foodfestival.all
  end

  # GET /foodfestivals/1
  # GET /foodfestivals/1.json
  def show
  end

  # GET /foodfestivals/new
  def new
    @foodfestival = Foodfestival.new
  end

  # GET /foodfestivals/1/edit
  def edit
  end

  # POST /foodfestivals
  # POST /foodfestivals.json
  def create
    @foodfestival = Foodfestival.new(foodfestival_params)

    respond_to do |format|
      if @foodfestival.save
        format.html { redirect_to @foodfestival, notice: 'Foodfestival was successfully created.' }
        format.json { render :show, status: :created, location: @foodfestival }
      else
        format.html { render :new }
        format.json { render json: @foodfestival.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foodfestivals/1
  # PATCH/PUT /foodfestivals/1.json
  def update
    respond_to do |format|
      if @foodfestival.update(foodfestival_params)
        format.html { redirect_to @foodfestival, notice: 'Foodfestival was successfully updated.' }
        format.json { render :show, status: :ok, location: @foodfestival }
      else
        format.html { render :edit }
        format.json { render json: @foodfestival.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foodfestivals/1
  # DELETE /foodfestivals/1.json
  def destroy
    @foodfestival.destroy
    respond_to do |format|
      format.html { redirect_to foodfestivals_url, notice: 'Foodfestival was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foodfestival
      @foodfestival = Foodfestival.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foodfestival_params
      params.require(:foodfestival).permit(:what, :where, :when_time, :when_start, :when_finish, :why)
    end
end
