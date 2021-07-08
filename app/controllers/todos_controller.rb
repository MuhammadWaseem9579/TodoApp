class TodosController < ApplicationController
	
	before_action :set_todo, only: [:edit,:update,:destroy,:show]

	def new
		@todo = Todo.new
	end

	
	def create
		@todo = Todo.new(todo_params)
		if @todo.save
			redirect_to todo_path(@todo)
		else
			render 'new'
		end
	end


	def show

	end


	def edit
		
	end


	def update
		if @todo.update(todo_params)
			redirect_to todo_path(@todo)
		else
			render 'edit'
		end
	end


	def index
		@todos = Todo.all
	end


	def destroy
		
		if @todo.destroy
			redirect_to todos_path
		else
			render 'todos'
		end
	end

	private

		def set_todo
			@todo = Todo.find(params[:id])
		end

		def todo_params
			params.require(:todo).permit(:name,:discription)			
		end
end