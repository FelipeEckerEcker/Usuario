Rails.application.routes.draw do
  resources :professores
  resources :disciplinas
  resources :aulas
  resources :cursos
  resources :professors
  resources :alunos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
