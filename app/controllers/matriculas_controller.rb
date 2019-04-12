class MatriculasController < ApplicationController
  before_action :set_matricula, only: [:show, :edit, :update, :destroy]

  # GET /matriculas
  # GET /matriculas.json
  def index
    @matriculas = Matricula.all
  end

  # GET /matriculas/1
  # GET /matriculas/1.json
  def show
  end

  # GET /matriculas/new
  def new
    @matricula = Matricula.new
  end

  # GET /matriculas/1/edit
  def edit
  end

  # POST /matriculas
  # POST /matriculas.json
  def create
    @matricula = Matricula.new(matricula_params)

    respond_to do |format|
      if @matricula.save
        format.html { redirect_to @matricula, notice: 'Matricula was successfully created.' }
        format.json { render :show, status: :created, location: @matricula }
      else
        format.html { render :new }
        format.json { render json: @matricula.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matriculas/1
  # PATCH/PUT /matriculas/1.json
  def update
    respond_to do |format|
      if @matricula.update(matricula_params)
        format.html { redirect_to @matricula, notice: 'Matricula was successfully updated.' }
        format.json { render :show, status: :ok, location: @matricula }
      else
        format.html { render :edit }
        format.json { render json: @matricula.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matriculas/1
  # DELETE /matriculas/1.json
  def destroy
    @matricula.destroy
    respond_to do |format|
      format.html { redirect_to matriculas_url, notice: 'Matricula was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matricula
      @matricula = Matricula.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matricula_params
      params.require(:matricula).permit(:ra, :nome, :curso, :disciplina, :endereco, :cpf, :data)
    end
end
