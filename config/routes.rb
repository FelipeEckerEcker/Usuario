Rails.application.routes.draw do
  resources :cursos
  resources :trabalhos
  resources :provas
  resources :nota_alunos
  resources :disciplinas
  resources :professores
  resources :atividades_extras
  resources :nota_prova_livros
  resources :notas_trabalhos
  resources :presenca_aulas
  resources :matriculas
  resources :aulas
  resources :alunos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
