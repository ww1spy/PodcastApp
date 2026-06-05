# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a **decompiled and modified Android podcast application** — specifically BeyondPod 4.2.30. The source was extracted from the original APK using JADX (Java source) and APKTool (resources/manifest/smali), then modified and rebuilt. There is no Gradle/Maven/Android Studio project — the build chain is entirely APKTool-based.

- **Package:** `mobi.beyondpod`
- **Min SDK:** 21 (Android 5.0+) | **Target SDK:** 34 (Android 14)
- **Signed APK:** `beyondpod-enhanced-signed.apk`
- **Keystore:** `beyondpod-release.keystore`

## Build Commands

```bash
# Rebuild APK from modified sources in apktool_out/
apktool b apktool_out -o beyondpod-enhanced.apk

# Sign the rebuilt APK
apksigner sign --ks beyondpod-release.keystore beyondpod-enhanced.apk

# Re-decompile APK (if starting from scratch)
apktool d beyondpod-enhanced-signed.apk -o apktool_out
jadx beyondpod-enhanced-signed.apk -d jadx_out
```

There are no automated tests or linters configured.

## Repository Layout

| Path | Purpose |
|------|---------|
| `jadx_out/sources/mobi/beyondpod/` | Decompiled Java source (read/edit here) |
| `apktool_out/smali/` | Disassembled Dalvik bytecode (what actually gets rebuilt) |
| `apktool_out/res/` | Android resources (strings, layouts, drawables) |
| `apktool_out/AndroidManifest.xml` | Permissions, activities, receivers, intent filters |
| `apktool_out/assets/` | Fonts, splash screens, `normalize_videos.js` |
| `apktool_out/lib/` | Native `.so` libraries (ARM, x86) |

**Important:** Java source in `jadx_out/` is for reading and understanding. Actual changes that will be compiled into the APK must be made in the corresponding **smali** files under `apktool_out/smali/`.

## Architecture

The app follows a layered MVC pattern across five main packages:

### `mobi.beyondpod.ui`
Activities, fragments, dialogs. `MasterView` is the main UI controller. `Splash` is the launcher. Feed search UI calls into `FeedSearchService`.

### `mobi.beyondpod.services`
Background services: audio playback (with `MediaAppWidgetProvider` variants for standard/XLarge/lockscreen widgets), episode download, cron-like scheduling (`CommandReceiver`, `ScheduledEventReceiver`), and Android Auto (`MediaBrowserService`). Smart playlist generation is also here.

### `mobi.beyondpod.downloadengine`
Core feed/download orchestration:
- `RssFeedUpdateManager` — central coordinator, processes a `m_UpdateQueue` sequentially, drives `shouldRetry()` with **3 retries and exponential backoff** (15s → 30s → 60s, computed as `15 << (3 - retryCount)`)
- `RssFeedCatcher` — fetches individual feeds via `HttpClientOkhttp` (OkHttp wrapper)
- `EnclosureDownloadManager` — manages episode file downloads
- `VersionCheckManager` — app update checks

### `mobi.beyondpod.rsscore`
Data layer: `Feed` and `Track` (episode) models, `FeedRepository` (SQLite access), `Configuration` (preferences), and helpers (`NotificationHelper`, `SimpleMessageBus`, `DateTime`, `GenericQueue`). RSS entities live in `rsscore/rss/entities/`.

### `mobi.beyondpod.aggregators`
Integrations with external feed sources (Feedburner, YouTube, etc.).

## Key Data Flows

**Feed Search:**
`FeedSearchService.findByQuery()` → iTunes Search API (`https://itunes.apple.com/search?term=…&media=podcast`) via Volley `JsonObjectRequest` → `parseJSONResults()` → `FeedSearchResult` objects. All legacy BeyondPod backend methods (`findByPopularCategory`, etc.) are no-ops.

**Feed Update Cycle:**
Scheduler → `RssFeedUpdateManager.updateFeeds()` → queue → `RssFeedCatcher.update()` → HTTP fetch + RSS parse → `FeedRepository` store → `NotificationHelper` update → listener callbacks via `_FeedBatchUpdateListeners`.

**Playback:**
User selects `Track` → `CommandManager.cmdPlayMovie()` → player service → Presto audio library (`com.aocate.presto`) → widget/notification update.

**App Startup:**
`Splash` → `BeyondPodApplicationEvo.onCreate()` (initializes Calligraphy fonts, Crashlytics no-op) → `MasterView`.

## Notable Modifications (vs. Original BeyondPod 4.2.30)

1. **Search backend:** Replaced defunct BeyondPod Azure backend with iTunes Search API.
2. **Retry logic:** Increased from 1 retry (flat 10s) to 3 retries with exponential backoff (15/30/60s).
3. **Error notifications:** Elevated to `PRIORITY_HIGH` with vibration; channel importance raised to `DEFAULT`.
4. **Crashlytics:** `Fabric.with()` calls are no-ops (service defunct).
5. **SDK bump:** minSdk 19→21, targetSdk 25→34.
6. **Resource naming:** Drawable files renamed to valid patterns; `public.xml` references updated.

## Intent Filters / URL Schemes

The app handles podcast feed URLs: `itpc://`, `pcast://`, `feed://`, `rss://`, `beyondpod://`. These are registered in `AndroidManifest.xml`.
