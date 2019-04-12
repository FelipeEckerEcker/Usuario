class NotaAlunosController < ApplicationController
  before_action :set_nota_aluno, only: [:show, :edit, :update, :destroy]

  # GET /nota_alunos
  # GET /nota_alunos.json
  def index
    @nota_alunos = NotaAluno.all
  end

  # GET /nota_alunos/1
  # GET /nota_alunos/1.json
  def show
  end

  # GET /nota_alunos/new
  def new
    @nota_aluno = NotaAluno.new
  end

  # GET /nota_alunos/1/edit
  def edit
  end

  # POST /nota_alunos
  # POST /nota_alunos.json
  def create
    @nota_aluno = NotaAluno.new(nota_aluno_params)

    respond_to do |format|
      if @nota_aluno.save
        format.html { redirect_to @nota_aluno, notice: 'Nota aluno was successfully created.' }
        format.json { render :show, status: :created, location: @nota_aluno }
      else
        format.html { render :new }
        format.json { render json: @nota_aluno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nota_alunos/1
  # PATCH/PUT /nota_alunos/1.json
  def update
    respond_to do |format|
      if @nota_aluno.update(nota_aluno_params)
        format.html { redirect_to @nota_aluno, notice: 'Nota aluno was successfully updated.' }
        format.json { render :show, status: :ok, location: @nota_aluno }
      else
        format.html { render :edit }
        format.json { render json: @nota_aluno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nota_alunos/1
  # DELETE /nota_alunos/1.json
  def destroy
    @nota_aluno.destroy
    respond_to do |format|
      format.html { redirect_to nota_alunos_url, notice: 'Nota aluno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nota_aluno
      @nota_aluno = NotaAluno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nota_aluno_params
      params.require(:nota_aluno).permit(:nome_do_aluno, :nota_g1, :nota_g2, :sub_g1, :sub_g2, :data_prova)
    end
end
