
// Matches YouTube embed and iframe source URLs and captures the video ID
var YOUTUBE_PATTERN = '://(?:[^\.]+\.)?youtube(?:-nocookie)?\.[^?/]+/(?:v|embed)/([^?&]*)';

function forEach(elements, f) {
  for (var i = 0; i < elements.length; i++) {
    f(elements[i]);
  }
}

function copyNodeList(input) {
  var output = new Array(input.length);
  for (var i = 0; i < input.length; i++) {
    output[i] = input[i];
  }
  return output;
}

function iframe(src) {
  var width = Math.max(240, Math.min(360, (window.innerWidth || 0) * 3 / 4));
  var height = width * 360 / 480;
  return '<iframe src="' + src + '" width="' + width + '" height="' + height + '" />';
}

function image(src) {
  return '<img style="border:1px solid #777; padding:60px 100px; border:3px ridge #777;" src="' + src + '" />';
}

function youTubeImage(videoId) {
  return '<img style=" border:1px solid #777; padding:60px 100px; border:3px ridge #777; background-image:url(\'http://img.youtube.com/vi/' + videoId + '/0.jpg\'); background-repeat:no-repeat; background-position:center;" src="file:///android_asset/video_play.png" />';
}

function nullPlugin() {
  return image('file:///android_asset/null_plugin.png');
}

function anchor(href, text) {
  return '<a href="' + href + '">' + text + '</a>';
}

function centerDiv(text) {
  return '<div align="center" style="width:100%;">' + text + '</div>';
}

function youTubeAnchor(videoId) {
	return centerDiv(anchor('http://www.youtube.com/watch?v=' + videoId,youTubeImage(videoId))); 
}

function videoAnchor(videoUrl) {
  return centerDiv(anchor(videoUrl,image('file:///android_asset/video_play.png')));
}

// Replaces video embeds with a thumbnail that either launches the YouTube app
// or launches the browser to view the video full-screen as a data URI://.
// Non-video embeds are replaced with a "missing plug-in" icon.
function replaceEmbed(embed) {
  if (embed.src) {
    var parts = embed.src.match(YOUTUBE_PATTERN);
    if (parts && parts.length == 2) {
      // Show the thumbnail for the YouTube video with a play button,
      // and link to the native YouTube application.
      var videoId = parts[1];
      embed.outerHTML = youTubeAnchor(videoId);
      return;
    }

    // If the embed wants to go fullscreen, it is probably a video.
    if (embed.getAttribute('allowfullscreen') == 'true') {
      // Show a black rectangle with a play button,
      // and link to a data URI containing the embed HTML.
      // On platforms that support Flash, the video will
      // be playable in the browser.
      embed.outerHTML = videoAnchor(encodeURI(embed.outerHTML));
      return;
    }
  }
  embed.outerHTML = anchor(encodeURI(embed.outerHTML), nullPlugin());
}

// Replaces YouTube iframes with a thumbnail that launches the YouTube app
function replaceIframe(iframeNode) {
  if (iframeNode.src) {
    var parts = iframeNode.src.match(YOUTUBE_PATTERN);
    if (parts && parts.length == 2) {
      // Show the thumbnail for the YouTube video with a play button,
      // and link to the native YouTube application.
      var videoId = parts[1];
      iframeNode.outerHTML = youTubeAnchor(videoId);
    }
  }
}


// Replace Flash videos and YouTube iframes with placeholders and link to external apps;
// make a copy to safely iterate through the NodeList while it is being modified
forEach(copyNodeList(document.getElementsByTagName('EMBED')), replaceEmbed);
forEach(copyNodeList(document.getElementsByTagName('IFRAME')), replaceIframe);

