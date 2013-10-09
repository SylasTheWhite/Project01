class KwasniesController < ApplicationController
  before_action :set_kwasny, only: [:show, :edit, :update, :destroy]

  # GET /kwasnies
  # GET /kwasnies.json
  def index
    @kwasnies = Kwasny.all
  end

  # GET /kwasnies/1
  # GET /kwasnies/1.json
  def show
  end

  # GET /kwasnies/new
  def new
    @kwasny = Kwasny.new
  end

  # GET /kwasnies/1/edit
  def edit
  end

  # POST /kwasnies
  # POST /kwasnies.json
  def create
    @kwasny = Kwasny.new(kwasny_params)

    respond_to do |format|
      if @kwasny.save
        format.html { redirect_to @kwasny, notice: 'Kwasny was successfully created.' }
        format.json { render action: 'show', status: :created, location: @kwasny }
      else
        format.html { render action: 'new' }
        format.json { render json: @kwasny.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kwasnies/1
  # PATCH/PUT /kwasnies/1.json
  def update
    respond_to do |format|
      if @kwasny.update(kwasny_params)
        format.html { redirect_to @kwasny, notice: 'Kwasny was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @kwasny.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kwasnies/1
  # DELETE /kwasnies/1.json
  def destroy
    @kwasny.destroy
    respond_to do |format|
      format.html { redirect_to kwasnies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kwasny
      @kwasny = Kwasny.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kwasny_params
      params.require(:kwasny).permit(:imie, :ilewypil, :czyjesttakbardzochorynajakiegowyglada)
    end
end
