Rails.application.routes.draw do
  resources :presenca_aulas
  resources :provas
  resources :trabalhos
  resources :cursos
  resources :aulas
  resources :disciplinas
  resources :professores
  resources :alunos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
