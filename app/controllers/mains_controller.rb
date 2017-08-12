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

  def results

  end

end
