class NotesController < OpenReadController
  before_action :set_note, only: [:show, :update, :destroy]
  # GET /notes
  def index
    @notes = Note.all

    render json: @notes
  end

  # GET /notes/1
  def show
    render json: @note
  end

  # POST /notes
  def create
    @note = current_user.notes.build(note_params)

    if @note.save
      render json: @note, status: :created, location: @note
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /notes/1
  def update
    if @note.update(note_params)
      render json: @note
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  # DELETE /notes/1
  def destroy
    @note.destroy
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = current_user.notes.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def note_params
      params.require(:note).permit(:champion, :note)
    end

    private :set_note, :note_params
end
