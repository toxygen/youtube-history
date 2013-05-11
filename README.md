This is a command-line tool for downloading your youtube watch history.

USAGE
=====

    ruby youtube_history.rb page

NOTE: The environment variable for `youtube_api_key` must be set. This can be accomplished in your bash settings with 

    export youtube_api_key=thekeyprov.idedbygoogleuponauthentication

will return an array of objects representing your history. They will come in batches of twenty five begginning with the 
most recently viewed video.

  	[
  	  	{ 
  	  		title: "The title of the video"
  	  	},
  	  	{ 
  	  		title: "Another great video title"
  	  	}
  	]