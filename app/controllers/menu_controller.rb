class MenuController < ApplicationController
	def index
		@menu = Menu.all;
	end

	def new
	end

	def edit
		@menu = Menu.find(params[:id])
	end

	def create
		@menu = Menu.new(menu_params);
		
		if @menu.save
			redirect_to @menu
		else
			render 'new'
		end
	end

	def show
		@menu = Menu.find(params[:id]);
	end

	def update
		@menu = Menu.find(params[:id]);
		
		if @menu.update(menu_params)
			redirect_to @menu
		else
			render 'edit'
		end
	end

	def destroy
		@menu = Menu.find(params[:id]);
		@menu.destroy
		redirect_to menu_index_path
	end

	private
	def menu_params
		params.require(:menu).permit(:menu,:restaurant);
	end
end
