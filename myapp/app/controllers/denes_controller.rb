class DenesController < ApplicationController
  before_action :set_dene, only: [:show, :edit, :update, :destroy]

  # GET /denes
  # GET /denes.json
  def index
    @denes = Dene.all
  end

  # GET /denes/1
  # GET /denes/1.json
  def show
  end

  # GET /denes/new
  def new
    @dene = Dene.new
  end

  # GET /denes/1/edit
  def edit
  end

  # POST /denes
  # POST /denes.json
  def create
    @dene = Dene.new(dene_params)

    respond_to do |format|
      if @dene.save
        format.html { redirect_to @dene, notice: 'Dene was successfully created.' }
        format.json { render :show, status: :created, location: @dene }
      else
        format.html { render :new }
        format.json { render json: @dene.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /denes/1
  # PATCH/PUT /denes/1.json
  def update
    respond_to do |format|
      if @dene.update(dene_params)
        format.html { redirect_to @dene, notice: 'Dene was successfully updated.' }
        format.json { render :show, status: :ok, location: @dene }
      else
        format.html { render :edit }
        format.json { render json: @dene.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /denes/1
  # DELETE /denes/1.json
  def destroy
    @dene.destroy
    respond_to do |format|
      format.html { redirect_to denes_url, notice: 'Dene was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dene
      @dene = Dene.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dene_params
      params.require(:dene).permit(:isim, :soyad, :yas, :düşünceler)
    end
end
