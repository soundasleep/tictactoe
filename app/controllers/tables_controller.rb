class TablesController < ApplicationController
  helper_method :available_tables, :occupied_tables

  def index
    @tables = available_tables
  end

  def new
    @table = Table.new( created_by: current_user! )
  end

  def create
    @table = Table.new( created_by: current_user! )
    @table.update_attributes table_params
    @table.save

    redirect_to table_path(@table)
  end

  def show
    @table = Table.find( params[:id] )
  end

  private
    def available_tables
      Table.where(closed: false, opponent: nil )
    end

    def occupied_tables
      Table.where(closed: false).where.not( opponent: nil )
    end

    def table_params
      params.require(:table).permit(:name)
    end
end
