class TodosController < ApplicationController
	
<<<<<<< HEAD
	before_action :set_todo, only: [:edit,:update,:destroy,:show]

=======
>>>>>>> 1a36d2a1673677fdbaf1f78e582d3a81e5f80170
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
<<<<<<< HEAD
		
=======
		@todo = Todo.find(params[:id])
>>>>>>> 1a36d2a1673677fdbaf1f78e582d3a81e5f80170
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