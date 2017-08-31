class MainsController < ApplicationController

  def index
  end

  def commands
    @commands = Command.all
  end

  def about_command
    @about_command = Command.find(params[:id])
    @all_command_participants = User.where(command: Command.find_by_name(@about_command.name))
  end

  def about_user
    @user = User.find(params[:id])
  end

  def movies
  end

  def participants
  end

  def contacts
  end

  def help_project
  end


  #Экшены поиска участников

  def in_commands
  end

  def no_commands
  end

  def in_commands_actors
    @in_commands_actors = User.where(role: Role.find_by_name('Актёрский_состав'), command_id: !nil, status: 'active')
  end

  def no_commands_actors
    @no_commands_actors = User.where(role: Role.find_by_name('Актёрский_состав'), command_id: nil, status: 'active')
  end

  def in_commands_film_crew
    @in_commands_film_crew = User.where(role: Role.find_by_name('Съёмочная_группа'), command_id: !nil, status: 'active')
  end

  def no_commands_film_crew
    @no_commands_film_crew = User.where(role: Role.find_by_name('Съёмочная_группа'), command_id: nil, status: 'active')
  end
end
