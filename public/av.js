$( document ).ready(function() {
	var pauseButton = document.getElementById('pause');
	var vid = $('.inside-video');
	var totalTime = 0;

	vid.on("pause", function (e) {
		console.log("hey")
		console.log("Video paused. Current time of videoplay: " + e.target.currentTime );
		totalTime = totalTime + e.target.currentTime;
		$(".video-time").text(totalTime);
	});
	    
});

