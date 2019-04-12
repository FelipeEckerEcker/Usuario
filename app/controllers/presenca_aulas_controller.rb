class PresencaAulasController < ApplicationController
  before_action :set_presenca_aula, only: [:show, :edit, :update, :destroy]

  # GET /presenca_aulas
  # GET /presenca_aulas.json
  def index
    @presenca_aulas = PresencaAula.all
  end

  # GET /presenca_aulas/1
  # GET /presenca_aulas/1.json
  def show
  end

  # GET /presenca_aulas/new
  def new
    @presenca_aula = PresencaAula.new
  end

  # GET /presenca_aulas/1/edit
  def edit
  end

  # POST /presenca_aulas
  # POST /presenca_aulas.json
  def create
    @presenca_aula = PresencaAula.new(presenca_aula_params)

    respond_to do |format|
      if @presenca_aula.save
        format.html { redirect_to @presenca_aula, notice: 'Presenca aula was successfully created.' }
        format.json { render :show, status: :created, location: @presenca_aula }
      else
        format.html { render :new }
        format.json { render json: @presenca_aula.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presenca_aulas/1
  # PATCH/PUT /presenca_aulas/1.json
  def update
    respond_to do |format|
      if @presenca_aula.update(presenca_aula_params)
        format.html { redirect_to @presenca_aula, notice: 'Presenca aula was successfully updated.' }
        format.json { render :show, status: :ok, location: @presenca_aula }
      else
        format.html { render :edit }
        format.json { render json: @presenca_aula.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presenca_aulas/1
  # DELETE /presenca_aulas/1.json
  def destroy
    @presenca_aula.destroy
    respond_to do |format|
      format.html { redirect_to presenca_aulas_url, notice: 'Presenca aula was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_presenca_aula
      @presenca_aula = PresencaAula.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def presenca_aula_params
      params.require(:presenca_aula).permit(:nome, :data, :numero_faltas)
    end
end
