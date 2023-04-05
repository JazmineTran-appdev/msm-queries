class MoviesController < ApplicationController

  def movies_index

    @list_of_movies = Movie.all

    render({ :template => "movie_templates/movie_index.html.erb"} )
  end

end
