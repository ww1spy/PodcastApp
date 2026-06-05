/**
 * Other JS files can hook into the onLoad method by adding their onLoad
 * functions to this array.
 */
var onLoadHandlers = [];

/**
 * The previous screen target we adjusted the layout for.
 */
var lastTarget = null;

/**
 * Adjusts the layout of some elements (e.g. img) to the screen dimensions.
 * @param {string} screenTarget One of 'mdpi', 'hdpi' or 'large'. If not
 *     given, will be derived from the query parameter 'screen'. If there is no
 *     query parameter, the value given in the previous invocation will be used.
 */
function adjustLayout(screenTarget) {
  if (!screenTarget) {
    screenTarget = lastTarget;
    var query = window.location.search;
    var match = query.match(/screen=([^&]+)/i);
    if (match && match.length) {
      screenTarget = match[1];
    }
  }
  lastTarget = screenTarget;
  adjustForScreen(screenTarget);
}

/**
 * Changes the image sources to match the screen target, and set dimensions.
 * @param {string} target One of 'mdpi', 'hdpi' or 'large'.
 * @private
 */
function adjustForScreen(target) {
  if (!target) {
    target = "mdpi";
  }

  target = target.toLowerCase();
  var imageWidth = (target == 'large') ? 519 : window.innerWidth - 20;
  var imageHeight = (target == 'large') ? 308 : imageWidth;
  var imgTags = document.getElementsByTagName('img');
  for (var img, i = 0; img = imgTags[i]; i++) {
    var src = img.src;
    // replace the img placeholders, e.g. page1-x.jpg into page1-hdpi.jpg
    img.src = src.replace(/(-[^-]*)?\.(?!.*[/])/g, '-' + target + '.');
    if (img.className == 'main_image') {
      img.style.width = img.style.maxWidth = imageWidth + 'px';
      img.style.height = img.style.maxHeight = imageHeight + 'px';
    }
  }
}

/** Standard onload hook: i18ize and adjust layout based on query parameters */
window.onload = function() {
  adjustLayout();
  i18nize();
  exportTextForTalkBack();
  for (var i = 0; i < onLoadHandlers.length; i++) {
    onLoadHandlers[i]();
  }
};

/** Standard onresize hook: adjust layout based on query parameters */
window.onresize = function() {
  adjustLayout();
};
