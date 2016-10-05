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
#'
#'@export

hi <- function(who){
    stopifnot(
      is.character(who),
      length(who) == 1,
      !is.na(who)
    )
    paste("hello", shout(who), "you have", nchar(who), "letters in your name!")
}

shout <-function(who){
  toupper(who)
}

