class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :update, :destroy]

  include Swagger::Blocks

  swagger_path '/todos/{id}' do
    operation :get do
      key :summary, 'Get a To-Do by ID'
      key :description, 'Returns a single To-Do'
      key :operationId, 'getTodoById'
      key :tags, ['todo']

      parameter do
        key :name, :id
        key :in, :path
        key :description, 'ID of Todo to fetch'
        key :required, true
        key :type, :integer
        key :format, :int64
      end

      response 200 do
        key :description, 'Todo response'
        schema do
          key :'$ref', :Todo
        end
      end

      response :default do
        key :description, 'Unexpected error'
        schema do
          key :'$ref', :ErrorModel
        end
      end
    end
  end

  # GET /todos
  def index
    @todos = current_user.todos
    json_response(@todos)
  end

  # POST /todos
  def create
    @todo = current_user.todos.create!(todo_params)
    json_response(@todo, :created)
  end

  # GET /todos/:id
  def show
    json_response(@todo)
  end

  # PUT /todos/:id
  def update
    @todo.update(todo_params)
    head :no_content
  end

  # DELETE /todos/:id
  def destroy
    @todo.destroy
    head :no_content
  end

  private

  def todo_params
    # whitelist params
    params.permit(:title)
  end

  def set_todo
    @todo = Todo.find(params[:id])
  end
end
