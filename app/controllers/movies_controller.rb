class MoviesController < ApplicationController

  def movies_index

    @list_of_movies = Movie.all

    render({ :template => "movie_templates/movie_index.html.erb"} )
  end

  def movie_details
    # params = {"an_id"=>"2"}

    @movie_id = params.fetch("an_id")
    @movie = Movie.where({ :id => @movie_id }).at(0)

    render({ :template => "movie_templates/movie_detail.html.erb"})
  end

end
