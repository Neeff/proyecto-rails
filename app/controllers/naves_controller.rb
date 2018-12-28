class NavesController < ApplicationController
  before_action :set_nafe, only: [:show, :edit, :update, :destroy]

  # GET /naves
  # GET /naves.json
  def index
    @naves = Nave.all
  end

  # GET /naves/1
  # GET /naves/1.json
  def show
  end

  # GET /naves/new
  def new
    @nafe = Nave.new
  end

  # GET /naves/1/edit
  def edit
  end

  # POST /naves
  # POST /naves.json
  def create
    @nafe = Nave.new(nafe_params)

    respond_to do |format|
      if @nafe.save
        format.html { redirect_to @nafe, notice: 'Nave was successfully created.' }
        format.json { render :show, status: :created, location: @nafe }
      else
        format.html { render :new }
        format.json { render json: @nafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /naves/1
  # PATCH/PUT /naves/1.json
  def update
    respond_to do |format|
      if @nafe.update(nafe_params)
        format.html { redirect_to @nafe, notice: 'Nave was successfully updated.' }
        format.json { render :show, status: :ok, location: @nafe }
      else
        format.html { render :edit }
        format.json { render json: @nafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /naves/1
  # DELETE /naves/1.json
  def destroy
    @nafe.destroy
    respond_to do |format|
      format.html { redirect_to naves_url, notice: 'Nave was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nafe
      @nafe = Nave.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nafe_params
      params.require(:nafe).permit(:modelo, :fabricante)
    end
end
