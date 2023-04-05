class ActorsController < ApplicationController

  def actors_index

    @list_of_actors = Actor.all
    
    render({ :template => "actor_templates/actor_index.html.erb"})
  end

  def actor_details
    # params = {"an_id"=>"3"}

    @actor_id = params.fetch("an_id")
    @actor = Actor.where({ :id => @actor_id }).at(0)

    @character = Character.where({ :actor_id => @actor_id }).at(0)

    @movie = Movie.where({ :id => @character.movie_id }).at(0)
    @director = Director.where({ :id => @movie.director_id }).at(0)

    render({ :template => "actor_templates/actor_details.html.erb"})
  end
end
