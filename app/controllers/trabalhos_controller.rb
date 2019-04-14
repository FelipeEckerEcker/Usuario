class TrabalhosController < ApplicationController
  before_action :set_trabalho, only: [:show, :edit, :update, :destroy]

  # GET /trabalhos
  # GET /trabalhos.json
  def index
    @trabalhos = Trabalho.all
  end

  # GET /trabalhos/1
  # GET /trabalhos/1.json
  def show
  end

  # GET /trabalhos/new
  def new
    @trabalho = Trabalho.new
  end

  # GET /trabalhos/1/edit
  def edit
  end

  # POST /trabalhos
  # POST /trabalhos.json
  def create
    @trabalho = Trabalho.new(trabalho_params)

    respond_to do |format|
      if @trabalho.save
        format.html { redirect_to @trabalho, notice: 'Trabalho was successfully created.' }
        format.json { render :show, status: :created, location: @trabalho }
      else
        format.html { render :new }
        format.json { render json: @trabalho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trabalhos/1
  # PATCH/PUT /trabalhos/1.json
  def update
    respond_to do |format|
      if @trabalho.update(trabalho_params)
        format.html { redirect_to @trabalho, notice: 'Trabalho was successfully updated.' }
        format.json { render :show, status: :ok, location: @trabalho }
      else
        format.html { render :edit }
        format.json { render json: @trabalho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trabalhos/1
  # DELETE /trabalhos/1.json
  def destroy
    @trabalho.destroy
    respond_to do |format|
      format.html { redirect_to trabalhos_url, notice: 'Trabalho was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trabalho
      @trabalho = Trabalho.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trabalho_params
      params.require(:trabalho).permit(:nome, :disciplina, :curso, :data_de_entrega, :descricao)
    end
end
