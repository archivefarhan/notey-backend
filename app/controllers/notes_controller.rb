class NotesController < ApplicationController
  def index
    notes = Note.where(user_id: current_user.id)
    render json: notes.as_json
  end

  def create
    note = Note.create!(name: params[:name], body: params[:body], user_id: current_user.id)

    if note.save
      render json: note.as_json
    else
      render json: { errors: note.errors.full_messages }, status: 422
    end
  end

  def show
    id = params[:id]
    note = Note.find(id)

    render json: note.as_json
  end

  def update
    id = params[:id]
    note = Note.find(id)

    note.name = params[:name] || note.name
    note.body = params[:body] || note.body

    note.save

    render json: note.as_json
  end

  def destroy
    id = params[:id]
    note = Note.find(id)

    note.destroy

    render json: { message: "note deleted" }
  end
end
