/**
 * Translates the page by placing values from the i18n translation file
 * into the placeholders (elements with matching @code{id}).
 * @param {string} lang The language to use. If undefined, will read it from
 *     the query parameter 'hl'.
 */
function i18nize(lang) {
  if (!i18n) {
    // The i18n.js file can't be found, we have no translations at all.
    return;
  }

  if (!lang) {
    var query = window.location.search;
    var match = query.match(/hl=([^&]+)/i);
    if (match && match.length) {
      lang = match[1];
    }
  }

  translateToLanguage(lang);
}

/**
 * Translates the page by placing values from the i18n translation file
 * into the placeholders (elements with matching @code{id}).
 * @param {string} lang The language to use. If undefined, will use 'default'.
 * @private
 */
function translateToLanguage(lang) {
  if (lang && lang.length >= 2) {
    // get strings for exact language or fallback on non-country specific.
    var strings = i18n[lang] || i18n[lang.substring(0, 2)];
  }

  if (!strings) {
    // fallback to strings for default, or empty if there isn't.
    var strings = i18n['default'] || {};
  }

  for (msgId in strings) {
    var target = document.getElementById(msgId);
    if (target) {
      target.textContent = strings[msgId];
    }
  }
}

/** Gathers and exports all the text to be read when TalkBack is on. */
function exportTextForTalkBack() {
  var texts = document.querySelectorAll('.text');
  var pageText = '';
  for (var i = 0, text; text = texts[i]; i++) {
    pageText += text.textContent + '\n';
  }

  if (window.welcomeReader) {
    window.welcomeReader.exportText(pageText);
  }
}

