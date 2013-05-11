This is a command-line tool for downloading your youtube watch history.

USAGE
=====

    ruby youtube_history.rb page

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


NOTE: The environment variable for `youtube_api_key` must be set. This can be accomplished in your bash settings with 

    export youtube_api_key=thekeyprov.idedbygoogleuponauthentication

To download the history data into a file: 

    ruby youtube_history 5 > /path/to/some/filename.json
