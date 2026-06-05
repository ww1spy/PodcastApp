
var lastTarget = null;

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

function adjustForScreen(target) {
  if (!target) {
    return;
  }

  target = target.toLowerCase();
  var paddingH = (target == 'large') ? 30 : 10;
  var paddingV = (target == 'large') ? 30 : 20;

  document.body.style.paddingLeft = paddingH + "px";
  document.body.style.paddingTop = paddingV + "px";
  document.body.style.paddingRight = paddingH + "px";
  document.body.style.paddingBottom = paddingV + "px";

}

window.onload = function() {
  adjustLayout();
};

window.onresize = function() {
  adjustLayout();
};
