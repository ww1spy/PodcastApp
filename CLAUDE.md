# PodcastApp (BeyondPod Enhanced) — Claude Project Guide

## Project Overview

This repo contains a decompiled, modified, and re-signed version of **BeyondPod 4.2.30** (package `mobi.beyondpod.enhanced`), an Android podcast app. The goal is to modernize it for current Android versions and fix longstanding bugs.

The device under development is a **Samsung Galaxy S25 Ultra (SM-S938U)** running modern Android. The dev machine is **Windows 11**.

---

## Repository Structure

```
apktool_out/          ← Decompiled APK source (smali + resources). Must stay in sync with APK binaries.
  apktool.yml         ← Build metadata: versionCode, targetSdk, etc.
  smali/              ← Bytecode source. Edit these to make changes.
  res/                ← XML layouts, drawables, values.
  AndroidManifest.xml
jadx_out/             ← Java source decompiled by jadx (read-only reference, not used for building).
beyondpod-enhanced.apk          ← Unsigned rebuilt APK.
beyondpod-enhanced-signed.apk   ← Signed APK (what gets installed on device).
beyondpod-release.keystore      ← Signing keystore.
```

---

## Build Toolchain

### Required Tools
- **Java JDK 21** — Amazon Corretto 21 works well. Install via:
  ```
  winget install Amazon.Corretto.21.JDK
  ```
  Binary location after install: `C:\Program Files\Amazon Corretto\jdk21.0.11_10\bin\java.exe`

- **apktool** — Download `apktool_2.9.3.jar` from GitHub releases. Store at `C:\Users\nsava\Downloads\apktool.jar`.

- **ADB** — Already present at `C:\Users\nsava\Downloads\platform-tools\adb.exe`.

### Build Commands

```bash
JAVA="C:/Program Files/Amazon Corretto/jdk21.0.11_10/bin/java.exe"
APKTOOL="C:/Users/nsava/Downloads/apktool.jar"
JARSIGNER="C:/Program Files/Amazon Corretto/jdk21.0.11_10/bin/jarsigner.exe"
ADB="C:/Users/nsava/Downloads/platform-tools/adb.exe"

# 1. Edit smali files in apktool_out/smali/...

# 2. Bump versionCode in apktool_out/apktool.yml

# 3. Rebuild APK from smali
"$JAVA" -jar "$APKTOOL" b apktool_out -o beyondpod-enhanced.apk

# 4. Sign APK
"$JARSIGNER" -keystore beyondpod-release.keystore \
  -storepass beyondpod123 -keypass beyondpod123 \
  -signedjar beyondpod-enhanced-signed.apk \
  beyondpod-enhanced.apk beyondpod

# 5. Install on device
"$ADB" -s 192.168.1.115:41795 install -r beyondpod-enhanced-signed.apk
```

If you need to decompile the installed APK from device (e.g. repo smali is behind):
```bash
# Pull from device
"$ADB" -s 192.168.1.115:41795 shell pm path mobi.beyondpod.enhanced
"$ADB" -s 192.168.1.115:41795 pull <path-from-above> beyondpod-current.apk

# Decompile
"$JAVA" -jar "$APKTOOL" d -f -o apktool_out beyondpod-current.apk
```

### Keystore Details
- **File:** `beyondpod-release.keystore`
- **Store password:** `beyondpod123`
- **Key alias:** `beyondpod`
- **Key password:** `beyondpod123`
- Self-signed; not suitable for Play Store distribution.

---

## Wireless ADB Debugging

The device connects via Wi-Fi. The process each session:

1. On phone: **Settings → Developer Options → Wireless Debugging → Pair device with pairing code**
2. Pair (one-time per session):
   ```
   adb.exe pair <ip>:<pairing-port> <6-digit-code>
   ```
3. Connect using the **main port** shown on the Wireless Debugging screen (NOT the pairing port — it closes after pairing):
   ```
   adb.exe connect 192.168.1.115:<main-port>
   ```
4. The main port changes each session. The IP (`192.168.1.115`) is stable on this network.

**Common mistake:** The pairing port and connection port are different. After pairing succeeds, the pairing port closes. The main connection port is shown on the *main* Wireless Debugging screen beneath the device name, not inside the pair dialog.

If two transports appear (`adb devices -l` shows two entries for the same device), always target explicitly with `-s 192.168.1.115:<port>`.

---

## Installed Packages on Device

| Package | Purpose |
|---|---|
| `mobi.beyondpod.enhanced` | Our modified APK (active development target) |
| `mobi.beyondpod` | Original BeyondPod install (reference / may be playing audio) |
| `mobi.beyondpod.unlockkey` | Unlock key app (uid=10710, separate process) |

---

## Diagnostic Infrastructure

Previous sessions added probe logging throughout startup. Key markers in logcat:

| Probe | Location | Meaning |
|---|---|---|
| `EVO-0`, `EVO-1` | `BeyondPodApplicationEvo.onCreate` | App process is starting |
| `BPA-0` → `BPA-11` | `BeyondPodApplication.onCreate` | Application init checkpoints |
| `MV-0`, `MV-A/B/C`, `MV-1` → `MV-DONE` | `MasterView.onCreate` | Main activity lifecycle |
| `SP-*` | Splash activity | Storage init |
| `CC-FAIL` | Chromecast init | Cast init failed (non-fatal, handled) |

Probes use `BeyondPodApplication.diagWrite()` (logcat tag `BPDiag`) and write to `bpdiag.txt` in the app's cache dir.

Useful logcat filter for startup diagnosis:
```
adb logcat | grep -E "BPDiag|BPA-|EVO-|MV-|FATAL|AndroidRuntime|VerifyError"
```

---

## Known Behaviors

### System.exit(0) from SchedulingService on ADB launch
When launching via `adb shell am start`, a pending BOOT_COMPLETED task in `SchedulingService` may run in the same process and call `System.exit(0)`, killing the app ~1 second after launch. **This does NOT happen on normal user launches from the launcher.** Always do final testing by tapping the app icon, not via `am start`.

### apktool_out smali may lag behind APK binary
The smali in `apktool_out/` may not always match the installed APK. Previous sessions sometimes built and installed APKs without committing the updated smali. When starting a session, verify sync:
```bash
# Check version code in repo vs device
grep versionCode apktool_out/apktool.yml
adb shell dumpsys package mobi.beyondpod.enhanced | grep versionCode
```
If device has a newer build, pull and decompile before making changes.

**Critical:** If you fix a smali bug and test the APK binary, you MUST also write the fix back to the smali file in `apktool_out/` and commit it. If you only fix the binary (e.g. by editing the built APK), the next `apktool b` rebuild will reintroduce the bug from the stale smali. This caused build 40322 to regress the MasterView VerifyError that was fixed in 40321.

### Package not debuggable
The current APK is a release build. `adb shell run-as mobi.beyondpod.enhanced` will fail with "package not debuggable". To enable it, add `android:debuggable="true"` to the `<application>` tag in `AndroidManifest.xml`.

---

## Current Version State

**Installed on device:** build 40327 (version 4.2.30)
**Repo smali:** aligned with 40327

---

## Bugs Fixed

### VerifyError in MasterView.onCreate (build 40321)
**Symptom:**
```
java.lang.VerifyError: register v2 has type Reference: android.widget.Toast but expected Boolean
  at MasterView.onCreate [offset 0x14C]
```
**Root cause:** A Toast diagnostic probe in `MasterView.onCreate()` used `move-result-object v2`, corrupting register `v2`. That register was expected to hold `false` (0x0) when passed to `setLoadingProgressVisibility(Z)V` shortly after.

**Fix:** Changed the Toast block to use `v5` (free at that point; `.locals 6` = v0–v5):
```smali
# Before (buggy) — v2 corrupted:
    const-string v2, "BP: about to setContentView"
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(...)
    move-result-object v2

# After (fixed) — v2 preserved as 0x0:
    const-string v5, "BP: about to setContentView"
    invoke-static {p0, v5, v3}, Landroid/widget/Toast;->makeText(...)
    move-result-object v5
```

**Lesson for future Smali edits:** Before adding diagnostic Toasts, trace all register usage in the method from the insertion point forward. Check `.locals N` to know the register budget. Never reuse a register that carries a live value. Prefer high-numbered registers (v4/v5 in a `.locals 6` method) for temporaries.

### AppCompat infinite recreation loop (build 40306)
`setDefaultNightMode(MODE_NIGHT_NO)` must be called **before** `super.onCreate()` in MasterView to prevent AppCompat from infinitely recreating the activity on Android 10+ with AppCompat 27.0.2.

### Chromecast black screen on modern Android (build 40320)
Bundled GMS Cast classes throw `Error` subtypes (not just `Exception`) on modern Android. Wrapped `ChromecastDevice` construction in `try/catch(Throwable)`. Also guard null ChromecastDevice in MasterView before calling `getRouteSelector()`.

### CrashlyticsInitProvider SIGKILL on first launch (build 40313)
Disabled `CrashlyticsInitProvider` in `AndroidManifest.xml`. It spawned background threads before `Application.onCreate()` completed, triggering a SIGKILL.

### Calligraphy reflection blocked (targetSdk ≥ 28)
Stubbed Calligraphy's restricted reflection calls.

---

## Enhancements Made

| Area | Change | Build |
|---|---|---|
| Target SDK | Bumped from 25 → 29 | early |
| Network retries | Exponential backoff, 1 → 3 retries | early |
| Notifications | Enhanced priority and messaging | early |
| Crash reporting | Removed Crashlytics (was causing startup SIGKILL) | 40313 |
| Cleartext HTTP | Added `android:usesCleartextTraffic="true"` for HTTP podcast streams | 40324 |
| Episode images | `media:content medium="image"` now populates episode artwork | 40325 |
| YouTube feeds | Skip `<media:content type="...shockwave...">` to prevent bad enclosure | 40326 |
| UI: hardcoded colors | Replaced `#ffXXXXXX` hardcodes in playlist_empty, feed_search_result_list_item, episode_card_toolbar_publisher with proper theme attributes | 40326 |
| Status bar | Added `android:statusBarColor` to both light/dark BeyondPodBase themes | 40326 |
| Search backend | Replaced defunct Azure search with iTunes Search API (`findByQuery`, `findByPopularCategory`, `getTrendingEpisodes`, `getRecommendedFeeds`) | 40327 |
| Categories tab | `findByPopularCategory("Categories",...)` returns hardcoded iTunes genre list; genre name → iTunes search | 40327 |
| Recommended tab | `getRecommendedFeeds` → iTunes search with `term=podcast` | 40327 |

---

---

## Search Backend Architecture (build 40327)

The original BeyondPod search pointed to a dead Azure backend (`feedsearch.beyondpod.mobi`). All methods were replaced with iTunes Search API calls.

### Key Files
- `smali/mobi/beyondpod/ui/views/impexp/FeedSearchService.smali` — main service, all methods rewritten
- `smali/mobi/beyondpod/ui/views/impexp/FeedSearchService$1.smali` — inner Volley listener; unwraps iTunes `"results"` JSONArray from the JSONObject response

### iTunes Search API
- URL: `https://itunes.apple.com/search?term=ENCODED&media=podcast&entity=podcast&limit=N&offset=M`
- Response: `{"resultCount": N, "results": [{"trackName":..., "feedUrl":..., "artworkUrl600":...}, ...]}`
- **Confirmed working** (tested from dev machine, returns 200 with valid JSON)
- Response JSON field mapping in `parseJSONResults`: `trackName`→title, `feedUrl`→link/RSS URL, `artworkUrl600` (fallback `artworkUrl100`)→image, `description`→description

### `findByPopularCategory(category, filterTag, page, pageSize, listener, errorListener)`
- If `category == "Categories"`: immediately calls `listener.onResponse(hardcoded_genre_list_json)` — no network
- Otherwise: URL-encodes category name as `term`, performs iTunes search
- The hardcoded genre list JSON is a JSONArray of `{trackName, feedUrl}` objects where `feedUrl` holds the genre name (used by the fragment as the query for clicking a category)

### `getTrendingEpisodes(sortBy, filterTag, page, pageSize, listener, errorListener)`  
- Builds: `https://itunes.apple.com/search?term=podcast&media=podcast&entity=podcast&limit=pageSize&offset=page*pageSize`
- Calls `performItunesGet`

### `getRecommendedFeeds(userFeedList, filterTag, page, pageSize, listener, errorListener)`
- Same as getTrendingEpisodes (same URL)

### `performItunesGet(url, listener, errorListener)`
- Creates `JsonObjectRequest(url, null, FeedSearchService$1, errorListener)`
- Sets `DefaultRetryPolicy(10000ms, 2 retries, 2.0f backoff)`
- Adds to `mRequestQueue`

### Error Flow
The Volley error listener is `SearchResultFragmentBase$4.onErrorResponse`:
- Checks `isConnectedToNetwork()` 
- If connected: sets empty-state text to `search_error` string ("An error has occurred...")
- If not connected: shows dialog with `search_error_device_is_offline` + `search_error`
- Logs "Error performing search: Http Error: [statusCode or message]" via `CoreHelper.writeTraceEntry` (visible as `V/BeyondPod` in logcat)

---

## Media Content Parser (build 40325/40326)

**File:** `smali/mobi/beyondpod/rsscore/rss/parsers/RssFeedParser$MediaRssContentParser.smali`

The `endElement()` method handles `<media:content>` tags. After calling `parseEnclosure()` to get an `RssEnclosure` object, it branches:
1. If `type.startsWith("image/")` → add URL to `RssFeedItem.itemImageUrls()` via `ImageParser.checkAndAddImageUrl()`
2. Else if `type.contains("shockwave")` → skip (YouTube Flash embed, not audio)
3. Else → `item.setEnclosure(enclosure)`

The original code had only case 3. Case 1 was added in 40325, case 2 in 40326.

**Important:** `RssFeedItem.itemImageUrls()` uses a lazy-init pattern — it only allocates the list on first call if `_ItemImageUrls == null`. Our parse-time writes survive because the UI reads `itemImageUrls()` after parsing is complete.

---

## Open Issues

### 1. Trending/Recommended Tab Error (build 40327, unresolved)

**Symptom:** Opening Add Feed → Trending tab shows "An error has occurred while searching. Please try again later."

**What's known:**
- The iTunes Search API endpoint `https://itunes.apple.com/search?term=podcast&media=podcast&entity=podcast&limit=20&offset=0` returns HTTP 200 + valid JSON (confirmed from dev machine)
- The error comes from Volley's error listener path, meaning the request either fails at the network layer or gets a non-2xx response on the device
- The `FeedSearchResultFragment.callSearch` for "Trending" calls `getTrendingEpisodes("", filterTag, page, pageSize, ...)`
- Logcat from the device shows `V/BeyondPod(27470)` traces for BeyondPod activity but logcat capture windows haven't been long enough to catch the search error

**What to try next:**
1. Capture logcat while the Trending tab is open:
   ```
   adb -s 192.168.1.115:41795 logcat -v brief | grep "BeyondPod\|Volley\|itunes\|search"
   ```
   Look for the line: "Error performing search: Http Error: [statusCode or message]"
2. If it shows a status code: Apple may be rate-limiting or blocking the User-Agent
3. If `networkResponse` is null (so it logs `getMessage()`): it's a connection-level error (SSL, DNS, timeout)
4. Alternative API: `https://rss.applemarketingtools.com/api/v2/us/podcasts/top/25/podcasts.json` for trending — returns a different JSON structure, would need `FeedSearchService$1` + `parseJSONResults` adapted
5. Alternative: use podcast index API (https://podcastindex.org) — requires API key but has full podcast directory

**Possible root cause:**
Apple's `itunes.apple.com` CDN may require TLS 1.3 or specific cipher suites not supported by the old Volley/OkHttp bundled in the APK (targeting SDK 29), or the old `HttpURLConnection` implementation on Samsung's Android. Check if `findByQuery` (the search box) works — if the text search box works but Trending doesn't, they use the same code path which would rule out SSL/TLS issues.

### 2. Notification Odd Behavior (unresolved)

**Symptom:** Notification behaves oddly when transitioning between playing and not-playing states.

**Not yet investigated.** The user offered to perform the transition while logcat is monitored. To investigate:
1. Run: `adb -s 192.168.1.115:41795 logcat | grep -iE "notification|beyondpod|service|playback"`
2. User plays → pauses → plays
3. Look for notification update logic in `smali/mobi/beyondpod/service/` or `smali/mobi/beyondpod/ui/`

**Relevant files to look at:**
- `smali/mobi/beyondpod/service/MediaPlayerService.smali` (if exists)
- Any `*Notification*.smali` files
- `RemoteViews` usage (notification layout files: look for `notification_*.xml` in `res/layout/`)

---

## Things Considered But Not Implemented

- **Scrobbling**: Works via broadcast intents to an external scrobbler app — no code needed in BeyondPod
- **Sonic audio plugin**: Already present (`libsonic.so`), enabled via app settings — no code change needed
- **Presto audio plugin**: Requires a separate APK (`com.aocate.presto`), not installable without the separate app
- **HTTP audio streams**: Already handled by `android:usesCleartextTraffic="true"` added in build 40324
- **Notification layout text colors** (`#ffdddddd`, `#ffaaaaaa`, `#90ffffff`): Deliberately deferred — RemoteViews on Android 12+ use the system's own theming for notifications, so hardcoded colors may look wrong on some themes; replacing them risks making things worse

---

## Workflow for New Sessions

1. Connect ADB wirelessly (pair + connect as described above).
2. Check version sync between repo and device:
   ```bash
   grep versionCode apktool_out/apktool.yml
   ./adb.exe -s 192.168.1.115:<port> shell dumpsys package mobi.beyondpod.enhanced | grep versionCode
   ```
3. If device is ahead of repo, pull and decompile the device APK first.
4. Edit `apktool_out/smali/` as needed.
5. Bump `versionCode` in `apktool_out/apktool.yml`.
6. Build → sign → install → **tap icon to test** (not `am start`).
7. Commit smali + APK binaries together in the same commit.
8. Push to main.

## Permissions

The user works with `--dangerously-skip-permissions` — proceed without confirmation prompts on tool use.
