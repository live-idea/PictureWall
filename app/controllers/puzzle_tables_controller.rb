class PuzzleTablesController < ApplicationController
  # GET /puzzle_tables
  # GET /puzzle_tables.json
  def index
    @puzzle_tables = PuzzleTable.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @puzzle_tables }
    end
  end

  # GET /puzzle_tables/1
  # GET /puzzle_tables/1.json
  def show
    @puzzle_table = PuzzleTable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @puzzle_table }
    end
  end

  # GET /puzzle_tables/new
  # GET /puzzle_tables/new.json
  def new
    @puzzle_table = PuzzleTable.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @puzzle_table }
    end
  end

  # GET /puzzle_tables/1/edit
  def edit
    @puzzle_table = PuzzleTable.find(params[:id])
  end

  # POST /puzzle_tables
  # POST /puzzle_tables.json
  def create
    @puzzle_table = PuzzleTable.new(params[:puzzle_table])

    respond_to do |format|
      if @puzzle_table.save
        format.html { redirect_to @puzzle_table, notice: 'Puzzle table was successfully created.' }
        format.json { render json: @puzzle_table, status: :created, location: @puzzle_table }
      else
        format.html { render action: "new" }
        format.json { render json: @puzzle_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /puzzle_tables/1
  # PUT /puzzle_tables/1.json
  def update
    @puzzle_table = PuzzleTable.find(params[:id])

    respond_to do |format|
      if @puzzle_table.update_attributes(params[:puzzle_table])
        format.html { redirect_to @puzzle_table, notice: 'Puzzle table was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @puzzle_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puzzle_tables/1
  # DELETE /puzzle_tables/1.json
  def destroy
    @puzzle_table = PuzzleTable.find(params[:id])
    @puzzle_table.destroy

    respond_to do |format|
      format.html { redirect_to puzzle_tables_url }
      format.json { head :ok }
    end
  end
end
