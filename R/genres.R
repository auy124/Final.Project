#' @title Genres
#'
#' @description Identifies the cross-listed genres of a given song within the dataset. 
#' @param file_name The name of the data.frame
#' @param song_column the column data of the song names of the given data.frame. Ex. dataset$track_name
#' @param song_name_in_quotations Song name. Ex. "Comedy"
#' @keywords Spotify genre search kaggle 
#' @export
#' @examples 
#' genres

genres <- function(file_name, song_column, song_name_in_quotations) {
  
  genre <- grep(song_name_in_quotations, song_column)
  
  if (is.na(genre[1])) {
    return("Song not found, please try another song") 
  
    } else {
    
    return(dataset$track_genre[genre]) 
    
  }
 
}
