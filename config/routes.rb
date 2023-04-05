Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })

  get("/directors/eldest", { :controller => "directors", :action => "wisest" })

  get("/directors/youngest", { :controller => "directors", :action => "young" })

  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })

  # movies
  get("/movies", { :controller => "movies", :action => "movies_index" })
end
