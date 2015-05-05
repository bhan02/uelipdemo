class AlumnusController < ApplicationController
  before_action :set_alumnu, only: [:show, :edit, :update, :destroy]

  # GET /alumnus
  # GET /alumnus.json
  def index
    @alumnus = Alumnu.all
  end

  # GET /alumnus/1
  # GET /alumnus/1.json
  def show
  end

  # GET /alumnus/new
  def new
    @alumnu = Alumnu.new
  end

  # GET /alumnus/1/edit
  def edit
  end

  # POST /alumnus
  # POST /alumnus.json
  def create
    @alumnu = Alumnu.new(alumnu_params)

    respond_to do |format|
      if @alumnu.save
        format.html { redirect_to @alumnu, notice: 'Alumnu was successfully created.' }
        format.json { render :show, status: :created, location: @alumnu }
      else
        format.html { render :new }
        format.json { render json: @alumnu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alumnus/1
  # PATCH/PUT /alumnus/1.json
  def update
    respond_to do |format|
      if @alumnu.update(alumnu_params)
        format.html { redirect_to @alumnu, notice: 'Alumnu was successfully updated.' }
        format.json { render :show, status: :ok, location: @alumnu }
      else
        format.html { render :edit }
        format.json { render json: @alumnu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alumnus/1
  # DELETE /alumnus/1.json
  def destroy
    @alumnu.destroy
    respond_to do |format|
      format.html { redirect_to alumnus_url, notice: 'Alumnu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
    Alumnu.import(params[:file])
    redirect_to root_url, notice: "Alumni Uploaded"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alumnu
      @alumnu = Alumnu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alumnu_params
      params.require(:alumnu).permit(:first_name, :last_name, :email, :phone, :term, :school, :current_city, :state, :current_role, :current_organization, :permission_to_share_contactinfo, :do_not_contact)
    end
end
