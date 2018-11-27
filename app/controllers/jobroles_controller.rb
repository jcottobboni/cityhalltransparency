class JobrolesController < ApplicationController
  before_action :set_jobrole, only: [:show, :edit, :update, :destroy]

  # GET /jobroles
  # GET /jobroles.json
  def index
    @jobroles = Jobrole.all
  end

  # GET /jobroles/1
  # GET /jobroles/1.json
  def show
  end

  # GET /jobroles/new
  def new
    @jobrole = Jobrole.new
  end

  # GET /jobroles/1/edit
  def edit
  end

  # POST /jobroles
  # POST /jobroles.json
  def create
    @jobrole = Jobrole.new(jobrole_params)

    respond_to do |format|
      if @jobrole.save
        format.html { redirect_to @jobrole, notice: 'Jobrole was successfully created.' }
        format.json { render :show, status: :created, location: @jobrole }
      else
        format.html { render :new }
        format.json { render json: @jobrole.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobroles/1
  # PATCH/PUT /jobroles/1.json
  def update
    respond_to do |format|
      if @jobrole.update(jobrole_params)
        format.html { redirect_to @jobrole, notice: 'Jobrole was successfully updated.' }
        format.json { render :show, status: :ok, location: @jobrole }
      else
        format.html { render :edit }
        format.json { render json: @jobrole.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobroles/1
  # DELETE /jobroles/1.json
  def destroy
    @jobrole.destroy
    respond_to do |format|
      format.html { redirect_to jobroles_url, notice: 'Jobrole was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobrole
      @jobrole = Jobrole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jobrole_params
      params.require(:jobrole).permit(:name)
    end
end
