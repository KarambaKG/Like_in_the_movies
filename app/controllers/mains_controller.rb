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
    @in_commands = User.where(command_id: !nil)
  end

  def no_commands
    @no_commands = User.where(command_id: nil)
  end

  def in_commands_operators
    @in_commands_operators = User.where(role: Role.find_by_name('оператор'), command_id: !nil)
  end

  def no_commands_operators
    @no_commands_operators = User.where(role: Role.find_by_name('оператор'), command_id: nil)
  end

  def in_commands_producers
    @in_commands_producers = User.where(role: Role.find_by_name('продюсер'), command_id: !nil)
  end

  def no_commands_producers
    @no_commands_producers = User.where(role: Role.find_by_name('продюсер'), command_id: nil)
  end

  def in_commands_sound_directors
    @in_commands_sound_directors = User.where(role: Role.find_by_name('звукорежиссёр'), command_id: !nil)
  end

  def no_commands_sound_directors
    @no_commands_sound_directors = User.where(role: Role.find_by_name('звукорежиссёр'), command_id: nil)
  end

  def in_commands_lighters
    @in_commands_lighters = User.where(role: Role.find_by_name('осветитель'), command_id: !nil)
  end

  def no_commands_lighters
    @no_commands_lighters = User.where(role: Role.find_by_name('осветитель'), command_id: nil)
  end

  def in_commands_editors
    @in_commands_editors = User.where(role: Role.find_by_name('редактор'), command_id: !nil)
  end

  def no_commands_editors
    @no_commands_editors = User.where(role: Role.find_by_name('редактор'), command_id: nil)
  end

  def in_commands_actors
    @in_commands_actors = User.where(role: Role.find_by_name('актёр'), command_id: !nil)
  end

  def no_commands_actors
    @no_commands_actors = User.where(role: Role.find_by_name('актёр'), command_id: nil)
  end

  def in_commands_pr_managers
    @in_commands_pr_managers = User.where(role: Role.find_by_name('pr-менеджер'), command_id: !nil)
  end

  def no_commands_pr_managers
    @no_commands_pr_managers = User.where(role: Role.find_by_name('pr-менеджер'), command_id: nil)
  end

  def in_commands_makeups
    @in_commands_makeups = User.where(role: Role.find_by_name('гримёр'), command_id: !nil)
  end

  def no_commands_makeups
    @no_commands_makeups = User.where(role: Role.find_by_name('гримёр'), command_id: nil)
  end

  def in_commands_composers
    @in_commands_composers = User.where(role: Role.find_by_name('композитор'), command_id: !nil)
  end

  def no_commands_composers
    @no_commands_composers = User.where(role: Role.find_by_name('композитор'), command_id: nil)
  end

  def in_commands_writers
    @in_commands_writers = User.where(role: Role.find_by_name('сценарист'), command_id: !nil)
  end

  def no_commands_writers
    @no_commands_writers = User.where(role: Role.find_by_name('сценарист'), command_id: nil)
  end

  def in_commands_photographers
    @in_commands_photographers = User.where(role: Role.find_by_name('фотограф'), command_id: !nil)
  end

  def no_commands_photographers
    @no_commands_photographers = User.where(role: Role.find_by_name('фотограф'), command_id: nil)
  end

  def in_commands_sponsors
    @in_commands_sponsors = User.where(role: Role.find_by_name('спонсор'), command_id: !nil)
  end

  def no_commands_sponsors
    @no_commands_sponsors = User.where(role: Role.find_by_name('спонсор'), command_id: nil)
  end

end
