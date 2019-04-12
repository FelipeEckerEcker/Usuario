class NotasTrabalhosController < ApplicationController
  before_action :set_notas_trabalho, only: [:show, :edit, :update, :destroy]

  # GET /notas_trabalhos
  # GET /notas_trabalhos.json
  def index
    @notas_trabalhos = NotasTrabalho.all
  end

  # GET /notas_trabalhos/1
  # GET /notas_trabalhos/1.json
  def show
  end

  # GET /notas_trabalhos/new
  def new
    @notas_trabalho = NotasTrabalho.new
  end

  # GET /notas_trabalhos/1/edit
  def edit
  end

  # POST /notas_trabalhos
  # POST /notas_trabalhos.json
  def create
    @notas_trabalho = NotasTrabalho.new(notas_trabalho_params)

    respond_to do |format|
      if @notas_trabalho.save
        format.html { redirect_to @notas_trabalho, notice: 'Notas trabalho was successfully created.' }
        format.json { render :show, status: :created, location: @notas_trabalho }
      else
        format.html { render :new }
        format.json { render json: @notas_trabalho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notas_trabalhos/1
  # PATCH/PUT /notas_trabalhos/1.json
  def update
    respond_to do |format|
      if @notas_trabalho.update(notas_trabalho_params)
        format.html { redirect_to @notas_trabalho, notice: 'Notas trabalho was successfully updated.' }
        format.json { render :show, status: :ok, location: @notas_trabalho }
      else
        format.html { render :edit }
        format.json { render json: @notas_trabalho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notas_trabalhos/1
  # DELETE /notas_trabalhos/1.json
  def destroy
    @notas_trabalho.destroy
    respond_to do |format|
      format.html { redirect_to notas_trabalhos_url, notice: 'Notas trabalho was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notas_trabalho
      @notas_trabalho = NotasTrabalho.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notas_trabalho_params
      params.require(:notas_trabalho).permit(:nome, :data, :curso, :disciplina, :nota_aluno)
    end
end
