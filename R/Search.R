#' @title Search 
#'
#' @description Allows the user to search the data.frame for the qualities of a given song
#' @param file_name The name of the data.frame
#' @param song_column the column data of the song names of the given data.frame. Ex. dataset$track_name
#' @param song_name_in_quotations Song name. Ex. "Comedy"
#' @keywords Spotify playlist search qualities kaggle 
#' @export
#' @examples 
#' search

search <- function(file_name, song_column, song_name_in_quotations) {
  
  song <- grep(song_name_in_quotations, song_column)
  
  if (is.na(song[1])) {
    
      return("Song not found, please try another song") }
  
    else {
    
      value <- as.numeric(song[1])
      return(file_name[value,]) 
  
    }
  
}

