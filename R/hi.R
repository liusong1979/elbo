#' Help start conversations
#'
#' This function ...
#'
#'@param who character(1) The name of the person who you wish to start
#'      a conversation with,
#'  
#'@return character(1) A kine if text to be used when starting conversations.
#' 
#'@examples
#'  hi("Song Liu")
#'
#'@importFrom stat lm 
#'  
#'@export

hi <- function(who){
    paste("hello", shout(who), "you have", nchar(who), "letters in your name!")
}

shout <-function(who){
  toupper(who)
}
  
