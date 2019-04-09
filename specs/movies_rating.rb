require('minitest/autorun')
require('minitest/rg')
require_relative('../movie_rating')

class TestMovieRanking < Minitest::Test

 def setup

   @movies =[
     {movie_name: "Star Wars",
      movie_rating:{
        rating_out_of_10: 8,
        movie_comment: "Good film but was a bit too much the same as old ones",
        reviewer:"Bob"
        }
      },
      {movie_name: "Titanic",
       movie_rating:{
         rating_out_of_10: 9,
         movie_comment: "Great movies but when I saw the Iceberg I got a sinking feeling",
         reviewer:"Helen"
         }
       },
       {movie_name: "2012",
        movie_rating:{
          rating_out_of_10: 4,
          movie_comment: "ehhh what is this movie about, totally not real",
          reviewer:"Mark"
          }
        },
        {movie_name: "Snowden",
         movie_rating:{
           rating_out_of_10: 10,
           movie_comment: "Good film as I like to code!",
           reviewer:"John"
           }
         }
   ]

 end

 # Testing that the review is correct
 def test_find_movie_title_already_exists
   movies = Movies.new(@movies)
   result = movies.find_movie('Titanic')
   assert_equal(true, result)
 end

 def test_to_find_movie_doesnt_exist
   movies = Movies.new(@movies)
   result = movies.find_movie('Thor')
   assert_equal(false,result)
 end


 # Testing to Access the comment



end
