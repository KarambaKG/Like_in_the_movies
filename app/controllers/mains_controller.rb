class MainsController < ApplicationController

  def index
  end

  def commands
    @commands = Command.all
  end

  def movies
  end

  def participants
  end

  def contacts
  end

  def help_project
  end

end

