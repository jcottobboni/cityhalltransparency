class PayrollsController < ApplicationController
  before_action :set_payroll, only: [:show, :edit, :update, :destroy]
  before_action :set_lists, only: [:index,:new, :edit, :update, :create,:import_payrolls]
  # GET /
  # GET /payrolls.json
  def index
    @q = Payroll.ransack(params[:q])
    @payrolls = @q.result(distinct: true)
  end

  def import_payrolls
  end

  # GET /payrolls/1
  # GET /payrolls/1.json
  def show
  end

  def set_lists
    @departments = Department.all
    @cities = City.all.order(name: :asc)
  end

  def import
    Payroll.import(params[:city_id],params[:department_id],params[:year],params[:month],params[:file])

    redirect_to root_url, notice: 'Payroll imported.'
  end

  # GET /payrolls/new
  def new
    @payroll = Payroll.new
  end

  # GET /payrolls/1/edit
  def edit
  end

  # POST /payrolls
  # POST /payrolls.json
  def create
    @payroll = Payroll.new(payroll_params)

    respond_to do |format|
      if @payroll.save
        format.html { redirect_to @payroll, notice: 'Payroll was successfully created.' }
        format.json { render :show, status: :created, location: @payroll }
      else
        format.html { render :new }
        format.json { render json: @payroll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payrolls/1
  # PATCH/PUT /payrolls/1.json
  def update
    respond_to do |format|
      if @payroll.update(payroll_params)
        format.html { redirect_to @payroll, notice: 'Payroll was successfully updated.' }
        format.json { render :show, status: :ok, location: @payroll }
      else
        format.html { render :edit }
        format.json { render json: @payroll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payrolls/1
  # DELETE /payrolls/1.json
  def destroy
    @payroll.destroy
    respond_to do |format|
      format.html { redirect_to payrolls_url, notice: 'Payroll was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payroll
      @payroll = Payroll.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payroll_params
      params.require(:payroll).permit(:registration, :name, :jobrole_id, :workspace_id, :admission_date, :admission_type, :status)
    end
end
