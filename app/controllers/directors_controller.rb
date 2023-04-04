class DirectorsController < ApplicationController

  def index

    @list_of_directors = Director.all

    render({ :template => "director_templates/index.html.erb"})
  end

  def wisest
    @oldest = Director.where.not({ :dob => nil }).order({ :dob => :asc }).first

    render({ :template => "director_templates/eldest.html.erb"})
  end

  def young
    @youngest = Director.where.not({ :dob => nil }).order({ :dob => :desc }).first

    render({ :template => "director_templates/youngest.html.erb"})
  end
end
