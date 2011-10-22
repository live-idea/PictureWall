class PuzzlesController < ApplicationController
  # GET /puzzles
  # GET /puzzles.json
  def index
    @puzzle_table = PuzzleTable.find params[:puzzle_table_id]
    @puzzles = @puzzle_table.puzzles
    
     respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @puzzles }
    end
  end

  # GET /puzzles/1
  # GET /puzzles/1.json
  def show
    @puzzle_table = PuzzleTable.find params[:puzzle_table_id]
    @puzzle = Puzzle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @puzzle }
    end
  end

  # GET /puzzles/new
  # GET /puzzles/new.json
  def new
    @puzzle_table = PuzzleTable.find params[:puzzle_table_id]
    @puzzle = @puzzle_table.puzzles.new
    @puzzle.coord_x=params[:x]
    @puzzle.coord_y=params[:y]
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @puzzle }
    end
  end

  # GET /puzzles/1/edit
  def edit
    @puzzle_table = PuzzleTable.find params[:puzzle_table_id]
    @puzzle = Puzzle.find(params[:id])
  end

  # POST /puzzles
  # POST /puzzles.json
  def create
    @puzzle_table = PuzzleTable.find params[:puzzle_table_id]
    @puzzle = @puzzle_table.puzzles.new params[:puzzle] #цей параметр передається з /views/puzzles/_form.html.erb  звідси <%= form_for([@puzzle.puzzle_table, @puzzle]) do |f| %>
    
    respond_to do |format|
      if @puzzle.save
        format.html { redirect_to  puzzle_table_puzzles_path(@puzzle_table), notice: 'Puzzle was successfully created.' }
        format.json { render json: @puzzle, status: :created, location: @puzzle }
      else
        format.html { render action: "new" }
        format.json { render json: @puzzle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /puzzles/1
  # PUT /puzzles/1.json
  def update
    @puzzle_table = PuzzleTable.find params[:puzzle_table_id]
    @puzzle = Puzzle.find(params[:id])

    respond_to do |format|
      if @puzzle.update_attributes(params[:puzzle])
        format.html { redirect_to puzzle_table_puzzles_path(@puzzle_table), notice: 'Puzzle was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @puzzle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puzzles/1
  # DELETE /puzzles/1.json
  def destroy
    @puzzle = Puzzle.find(params[:id])
    @puzzle.destroy

    respond_to do |format|
      format.html { redirect_to puzzles_url }
      format.json { head :ok }
    end
  end
  
  def like
    PuzzleLike.find_or_create_by_user_id_and_puzzle_id(current_user.id, params[:id])
    render :json => {:success => true}
    end
end
