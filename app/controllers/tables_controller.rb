class TablesController < ApplicationController
  helper_method :available_tables, :occupied_tables

  def index
    @tables = available_tables
  end

  private
    def available_tables
      Table.where(closed: false, opponent: nil )
    end

    def occupied_tables
      Table.where(closed: false).where.not( opponent: nil )
    end
end
