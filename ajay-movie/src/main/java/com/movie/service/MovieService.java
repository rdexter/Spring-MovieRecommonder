package com.movie.service;

import java.util.List;

import com.movie.vo.Movie;
import com.movie.vo.MovieUserMatrix;

public interface MovieService {
	
	List<Long> getRecommondation(long userId);
	
	int addMovieRating(MovieUserMatrix matrix);
	
	List<Movie> getMovies(long userId, int pageNumber);

	int updateMovieRating(MovieUserMatrix matrix);

}
