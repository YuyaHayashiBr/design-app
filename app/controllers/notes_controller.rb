class NotesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  before_action :get_note,           only: [:show, :edit, :update, :destroy]

  def index
    @notes = Note.where(user_id: current_user.id).order("created_at DESC")
  end

  def show
    # before_action :get_note
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to notes_path
    else
      render :new
    end
  end

  def edit
    # before_action :get_note
  end

  def update
    # before_action :get_note
    if @note.update(note_params)
      redirect_to note_path(@note)
    else
      render :edit
    end
  end

  def destroy
    # before_action :get_note

    if @note.destroy
      redirect_to notes_path
    else
      render :show
    end
  end

  private

  def note_params
    params.require(:note).permit(
      :name,
      :brewery,
      :beer_style,
      :srm,
      :ibu,
      :abv,
      :looks_clear_id,
      :looks_color_id,
      :looks_foam_id,
      :aroma_malt_id,
      :aroma_hop_id,
      :aroma_ester_id,
      :aroma_fruit_id,
      :aroma_other_id,
      :flavor_body_id,
      :flavor_carbonation_id,
      :flavor_malt_id,
      :flavor_hop_id,
      :flavor_other_id,
      :memo,
      images: []
    ).merge(user_id: current_user.id)
  end

  def get_note
    @note = Note.find(params[:id])
  end
end
