Rails.application.routes.draw do
  resources :professores
  resources :atividades_extras
  resources :nota_prova_livros
  resources :notas_trabalhos
  resources :trabalhos
  resources :presenca_aulas
  resources :provas
  resources :nota_alunos
  resources :matriculas
  resources :disciplinas
  resources :cursos
  resources :aulas
  resources :alunos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
