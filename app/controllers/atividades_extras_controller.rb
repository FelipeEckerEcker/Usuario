class AtividadesExtrasController < ApplicationController
  before_action :set_atividades_extra, only: [:show, :edit, :update, :destroy]

  # GET /atividades_extras
  # GET /atividades_extras.json
  def index
    @atividades_extras = AtividadesExtra.all
  end

  # GET /atividades_extras/1
  # GET /atividades_extras/1.json
  def show
  end

  # GET /atividades_extras/new
  def new
    @atividades_extra = AtividadesExtra.new
  end

  # GET /atividades_extras/1/edit
  def edit
  end

  # POST /atividades_extras
  # POST /atividades_extras.json
  def create
    @atividades_extra = AtividadesExtra.new(atividades_extra_params)

    respond_to do |format|
      if @atividades_extra.save
        format.html { redirect_to @atividades_extra, notice: 'Atividades extra was successfully created.' }
        format.json { render :show, status: :created, location: @atividades_extra }
      else
        format.html { render :new }
        format.json { render json: @atividades_extra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atividades_extras/1
  # PATCH/PUT /atividades_extras/1.json
  def update
    respond_to do |format|
      if @atividades_extra.update(atividades_extra_params)
        format.html { redirect_to @atividades_extra, notice: 'Atividades extra was successfully updated.' }
        format.json { render :show, status: :ok, location: @atividades_extra }
      else
        format.html { render :edit }
        format.json { render json: @atividades_extra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atividades_extras/1
  # DELETE /atividades_extras/1.json
  def destroy
    @atividades_extra.destroy
    respond_to do |format|
      format.html { redirect_to atividades_extras_url, notice: 'Atividades extra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atividades_extra
      @atividades_extra = AtividadesExtra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def atividades_extra_params
      params.require(:atividades_extra).permit(:nome, :data, :data_entrega, :curso, :disciplina)
    end
end
