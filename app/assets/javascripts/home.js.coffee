# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#
#
#  http://developer.apple.com/library/safari/#documentation/AudioVideo/Conceptual/Using_HTML5_Audio_Video/ControllingMediaWithJavaScript/ControllingMediaWithJavaScript.html
#
#
#       function getPercentProg() {
#       var myVideo = document.getElementsByTagName('video')[0];
#       var endBuf = myVideo.buffered.end(0);
#       var soFar = parseInt(((endBuf / myVideo.duration) * 100));
#       document.getElementById("loadStatus").innerHTML =  soFar + '%';
#       }
# 
#       function myAutoPlay() {
#       var myVideo = document.getElementsByTagName('video')[0];
#       myVideo.play();
#       }
# 
#       function addMyListeners(){
#       var myVideo = document.getElementsByTagName('video')[0];
#       myVideo.addEventListener('progress',getPercentProg,false);
#       myVideo.addEventListener('canplaythrough',myAutoPlay,false);
#       }
# 
#Another common task for a website programmer is to create a playlist of audio or video—to put together a radio set or to follow an advertisement with a program, for example. To do this, you can provide a function that listens for the ended event. The ended event is triggered only when the media ends (plays to its complete duration), not if it is paused.
#
#When your listener function is triggered, it should change the media’s src property, then call the load method to load the new media and the play method to play it, as shown in Listing 3-4.
#
#  // listener function changes src
#        function myNewSrc() {
#        var myVideo = document.getElementsByTagName('video')[0];
#        myVideo.src="http://homepage.mac.com/qt4web/myMovie.m4v";
#        myVideo.load();
#        myVideo.play();
#        }
#        // add listener function to ended event -->
#        function myAddListener(){
#        var myVideo = document.getElementsByTagName('video')[0];
#        myVideo.addEventListener('ended',myNewSrc,false);
#        }
#
#
#If you know the dimensions of your movie in advance, you should specify them. Specifying the dimensions is especially important for delivering the best user experience on iPad. But you may not know the dimensions when writing the webpage. For example, your source movies may not be the same size, or sequential movies may have different dimensions. If you install a listener function for the loadedmetadata event, you can resize the video player to the native movie size dynamically using JavaScript as soon as the native size is known. The loadedmetadata event fires once for each movie that loads, so a listener function is called any time you change the source. Listing 3-7 shows how.
#
# // set height and width to native values
#     function naturalSize() {
#     var myVideo = document.getElementsByTagName('video')[0];
#     myVideo.height = myVideo.videoHeight;
#     myVideo.width = myVideo.videoWidth;
#     }
#     // install listener function on metadata load
#     function myAddListener(){
#     var myVideo = document.getElementsByTagName('video')[0];
#     myVideo.addEventListener('loadedmetadata',naturalSize,false);
#     }
# 
#
#
#
