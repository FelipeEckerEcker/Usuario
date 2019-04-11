Rails.application.routes.draw do
  resources :disciplinas
  resources :cursos
  resources :aulas
  resources :professores
  resources :alunos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
