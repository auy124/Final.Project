#'@title Random_songs
#'
#'@description Provides the user with a list of random songs given user genre preference 
#' @param file_name The name of the data.frame
#' @param how_many how many songs the user would like output Ex. 15
#' @param genre_in_quotations what genre from the given data.frame would the user like to output songs from Ex. "acoustic"
#' @keywords Spotify genre playlist new random kaggle 
#' @export
#' @examples 
#' random_songs

random_songs <- function(file_name, how_many, genre_in_quotations) {
  
  df <- data.frame(file_name)
  
    df_filtered <- df[df$track_genre %in% genre_in_quotations, ]
    
    if (nrow(df_filtered) < how_many) {
      
      print("Number of songs requested is greater than number of songs in specificed genre, output capped at max")
      how_many <- ncol(df_filtered) 
      x <- 1:nrow(df_filtered)
      songs <- sample(x, how_many, replace = FALSE)
      return(df_filtered$track_name[songs])
      
    } else {
      
      x <- 1:nrow(df_filtered)
      songs <- sample(x, how_many, replace = FALSE)
      return(df_filtered$track_name[songs])
      
    }
  
} 


  
  