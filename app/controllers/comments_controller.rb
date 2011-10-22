class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comments }
    end
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @puzzle_table = PuzzleTable.find params[:puzzle_table_id]
    @comment = Comment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/new
  # GET /comments/new.json
  def new
    @puzzle_table = PuzzleTable.find params[:puzzle_table_id]
    @comment = @puzzle_table.comments.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/1/edit
  def edit
    @puzzle_table = PuzzleTable.find params[:puzzle_table_id]
    @comment = @puzzle_table.comments.find(params[:id])
  end

  # POST /comments
  # POST /comments.json
  def create
    @puzzle_table = PuzzleTable.find params[:puzzle_table_id]
    @comment = @puzzle_table.comments.new(params[:comment])
    @comment.user=current_user
    respond_to do |format|
      if @comment.save
        format.html { redirect_to puzzle_table_puzzles_path(@puzzle_table), notice: 'Comment was successfully created.' }
        format.json { render json: @comment, status: :created, location: @comment }
      else
        format.html { render action: "new" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comments/1
  # PUT /comments/1.json
  def update
    @puzzle_table = PuzzleTable.find params[:puzzle_table_id]
    @comment = Comment.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to  puzzle_table_puzzles_path(@puzzle_table), notice: 'Comment was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy if #current_user.admin?

    respond_to do |format|
      format.html { redirect_to puzzle_table_puzzles_path(@puzzle_table) }
      format.json { head :ok }
    end
  end
end
