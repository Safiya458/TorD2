class DaresController < ApplicationController
  before_action :set_dare, only: %i[ show edit update destroy ]

  # GET /dares or /dares.json
  def index
    @dares = Dare.all
  end

  # GET /dares/1 or /dares/1.json
  def show
  end

  # GET /dares/new
  def new
    @dare = Dare.new
  end

  # GET /dares/1/edit
  def edit
  end

  # POST /dares or /dares.json
  def create
    @dare = Dare.new(dare_params)

    respond_to do |format|
      if @dare.save
        format.html { redirect_to dare_url(@dare), notice: "Dare was successfully created." }
        format.json { render :show, status: :created, location: @dare }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dares/1 or /dares/1.json
  def update
    respond_to do |format|
      if @dare.update(dare_params)
        format.html { redirect_to dare_url(@dare), notice: "Dare was successfully updated." }
        format.json { render :show, status: :ok, location: @dare }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dares/1 or /dares/1.json
  def destroy
    @dare.destroy

    respond_to do |format|
      format.html { redirect_to dares_url, notice: "Dare was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dare
      @dare = Dare.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dare_params
      params.require(:dare).permit(:text)
    end
end
