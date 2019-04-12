class NotaProvaLivrosController < ApplicationController
  before_action :set_nota_prova_livro, only: [:show, :edit, :update, :destroy]

  # GET /nota_prova_livros
  # GET /nota_prova_livros.json
  def index
    @nota_prova_livros = NotaProvaLivro.all
  end

  # GET /nota_prova_livros/1
  # GET /nota_prova_livros/1.json
  def show
  end

  # GET /nota_prova_livros/new
  def new
    @nota_prova_livro = NotaProvaLivro.new
  end

  # GET /nota_prova_livros/1/edit
  def edit
  end

  # POST /nota_prova_livros
  # POST /nota_prova_livros.json
  def create
    @nota_prova_livro = NotaProvaLivro.new(nota_prova_livro_params)

    respond_to do |format|
      if @nota_prova_livro.save
        format.html { redirect_to @nota_prova_livro, notice: 'Nota prova livro was successfully created.' }
        format.json { render :show, status: :created, location: @nota_prova_livro }
      else
        format.html { render :new }
        format.json { render json: @nota_prova_livro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nota_prova_livros/1
  # PATCH/PUT /nota_prova_livros/1.json
  def update
    respond_to do |format|
      if @nota_prova_livro.update(nota_prova_livro_params)
        format.html { redirect_to @nota_prova_livro, notice: 'Nota prova livro was successfully updated.' }
        format.json { render :show, status: :ok, location: @nota_prova_livro }
      else
        format.html { render :edit }
        format.json { render json: @nota_prova_livro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nota_prova_livros/1
  # DELETE /nota_prova_livros/1.json
  def destroy
    @nota_prova_livro.destroy
    respond_to do |format|
      format.html { redirect_to nota_prova_livros_url, notice: 'Nota prova livro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nota_prova_livro
      @nota_prova_livro = NotaProvaLivro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nota_prova_livro_params
      params.require(:nota_prova_livro).permit(:nome, :data, :curso, :nota_aluno)
    end
end
