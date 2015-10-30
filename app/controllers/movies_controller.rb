class MoviesController < ApplicationController
  def main_page

  end

  def directors
    @directors_list = Director.all
  end

  def actors
    @actors_list = Actor.all
  end

  def movies
    @movies_list = Movie.all
  end

  def director_form

  end

  def actor_form

  end

  def movie_form

  end

  def create_director
    d = Director.new
    d.name = params[:the_name]
    d.bio = params[:the_bio]
    d.dob = params[:the_dob]
    d.image_url = params[:the_image]
    d.save

    redirect_to("http://localhost:3000/directors")
  end

  def create_actor
    a = Actor.new
    a.name = params[:the_name]
    a.bio = params[:the_bio]
    a.dob = params[:the_dob]
    a.image_url = params[:the_image]
    a.save

    redirect_to("http://localhost:3000/actors")
  end

  def create_movie
    m = Movie.new
    m.title = params[:the_title]
    m.year = params[:the_year]
    m.duration = params[:the_duration]
    m.description = params[:the_description]
    m.image_url = params[:the_image]
    m.save

    redirect_to("http://localhost:3000/movies")
  end

  def delete_director
    d = Director.find_by({:id => params[:id]})
    d.destroy

    redirect_to("http://localhost:3000/directors")
  end

  def delete_actor
    a = Actor.find_by({:id => params[:id]})
    a.destroy

    redirect_to("http://localhost:3000/actors")
  end

  def delete_movie
    m = Movie.find_by({:id => params[:id]})
    m.destroy

    redirect_to("http://localhost:3000/movies")
  end

  def show_director
    @director = Director.find_by({:id => params[:id]})
  end

  def show_actor
    @actor = Actor.find_by({:id => params[:id]})
  end

  def show_movie
    @movie = Movie.find_by({:id => params[:id]})
  end

  def eform_director
    @director = Director.find_by({:id => params[:id]})
  end
  def eform_actor
    @actor = Actor.find_by({:id => params[:id]})
  end
  def eform_movie
    @movie = Movie.find_by({:id => params[:id]})
  end

  def edit_director
    @director = Director.find_by({:id => params[:id]})
    @director.name = params[:the_name]
    @director.bio = params[:the_bio]
    @director.dob = params[:the_dob]
    @director.image_url = params[:the_image]
    @director.save

    redirect_to("http://localhost:3000/directors")
  end

  def edit_actor
   @actor = Actor.find_by({:id => params[:id]})
    @actor.name = params[:the_name]
    @actor.bio = params[:the_bio]
    @actor.dob = params[:the_dob]
    @actor.image_url = params[:the_image]
    @actor.save

    redirect_to("http://localhost:3000/actors")
  end

  def edit_movie
    @movie = Movie.find_by({:id => params[:id]})
    @movie.title = params[:the_title]
    @movie.year = params[:the_year]
    @movie.duration = params[:the_duration]
    @movie.description = params[:the_description]
    @movie.image_url = params[:the_image]
    @movie.save

    redirect_to("http://localhost:3000/movies")
  end
end
