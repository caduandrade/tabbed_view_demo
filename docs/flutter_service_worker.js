'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"main.dart.js": "3a78874edb69f3b78bd5d2eda422c614",
"version.json": "b01c8c5e61dfd9f9e9117e61aef7182c",
"assets/lib/get_started/content_builder.dart": "3f027e69f01a4c5a46160e509b74aa2d",
"assets/lib/get_started/close_button_tooltip.dart": "272a45fe3d3b298f312b8ced15d3a897",
"assets/lib/get_started/get_started.dart": "bd0062fad19ceb77a9c227b7bbd5287d",
"assets/lib/tab/adding_button/icon_data.dart": "3663ce87404ba974c293c5f4572022e0",
"assets/lib/tab/adding_button/icon_path.dart": "4c3b0f704b76b87ab8217f0d696f372c",
"assets/lib/tab/adding_button/override_theme_color.dart": "21bea07ab5dd91546927bfcf01a0ccd6",
"assets/lib/tab/adding_button/menu_button.dart": "fa16f7ddd37df8f61f71cd9128d10d24",
"assets/lib/tab/non_closable_tab.dart": "bc6ca97cdd3dc29e9643acd66d2a4f50",
"assets/lib/tab/keep_alive.dart": "3d93192f81cc9be46966ea27feca6a10",
"assets/lib/tab/tab_programmatically.dart": "4724c9ad2174399ca83117d5dec8e21f",
"assets/lib/tab/tab_selection_listener.dart": "dec3961977dfe86f7a45093b7372b9d5",
"assets/lib/tab/tab_close_interceptor.dart": "c7a920dff7e90fac79b3e32d55d121eb",
"assets/lib/tab/tab_close_listener.dart": "f74d8a0ce5049e3edfb4410e75d004e3",
"assets/lib/tab/tab_leading.dart": "0ae23e5be8d1b62019b9ebb7817c9bbd",
"assets/lib/tab/draggable_tab.dart": "236669e5668ee6c473a664c4905fe35c",
"assets/lib/tabs_area/tabs_area_buttons.dart": "37c5daa7cd00676014ede6fbf76b66ab",
"assets/lib/themes/tab/tab_alignment.dart": "75b7973acbf94c49c37d365473314ada",
"assets/lib/themes/tab/tab_text_style.dart": "7bd838dc4491a210d14aff79abe920aa",
"assets/lib/themes/tabs_area/tabs_area_color.dart": "6073e1b4a23e515791bf8edda14ea959",
"assets/lib/themes/tabs_area/tabs_area_gaps.dart": "1c609df3a967cbe8d2e6d389e752d717",
"assets/lib/themes/tabs_area/buttons_area/hidden_tabs_menu_button_icon.dart": "f1ee67f46011b9e0f574a4bc0e3f9006",
"assets/lib/themes/menu/menu_max_width.dart": "207330e17b73e9ea98b7d72001319e88",
"assets/lib/themes/menu/menu_ellipsis.dart": "b6e5d462e149127b0173d9032d372407",
"assets/lib/themes/default_themes/classic_theme.dart": "55889462a0f716e3560fbc019c43378c",
"assets/lib/themes/default_themes/classic_theme_color_set.dart": "51bd917d12b82f9d85e19f742bb2fd82",
"assets/lib/themes/default_themes/dark_theme.dart": "110e7a5b1ced2f1653ea785e3822ac81",
"assets/lib/themes/default_themes/dark_theme_color_set.dart": "2f76a0c5304f44664ef28f2f93bf5997",
"assets/lib/themes/default_themes/mobile_theme.dart": "24841d756a0c041a152c911aa916d13b",
"assets/lib/themes/default_themes/mobile_theme_color_set.dart": "341ceee4e4424e2e429fc2719b905981",
"assets/lib/themes/default_themes/mobile_theme_highlight_color.dart": "2e7c1353adda17539317adf5afc793b2",
"assets/lib/themes/default_themes/minimalist_theme.dart": "561b34f282edf321b87459a2c3a8eaf5",
"assets/lib/themes/default_themes/minimalist_theme_color_set.dart": "8f74a30f9138cfbbeebc5041599e1bc3",
"assets/lib/themes/theme_from_scratch.dart": "67405ebb134763563516b60a2c3e036f",
"assets/packages/flex_color_picker/assets/opacity.png": "49c4f3bcb1b25364bb4c255edcaaf5b2",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/shaders/ink_sparkle.frag": "997815677e6351a3bb18f3c6da702e4c",
"assets/AssetManifest.json": "9d36361d4d47c5a1217b70abe6f0ae65",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/NOTICES": "59fd97d322fe5a43013683e74988a149",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "c1093969fbdc0d316d7d6e9d0f157731",
"/": "c1093969fbdc0d316d7d6e9d0f157731",
"manifest.json": "b3b4999ffcf5c4e0855e1b26263d3524"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
