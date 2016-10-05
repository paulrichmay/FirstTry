#' Helps start conversations
#' 
#' This function generates a string with name, numchars ldladnflanflanfnal
#' ladkflfamlaklallafmkaaflmlamalfk
#' 
#' @param who character(1) The name of the person you wish to talk to start a
#'   conversation with
#'   
#' @return character(1) A line of hello world with num of chars
#' 
#' @examples  
#' hi("Paul")
#' 
#'
#' @export
#' 
hi = function(who) {
     paste("hello", shout(who),"you have", nchar(who), "letters in your name!")
}

shout = function(who){
     toupper(who)
}