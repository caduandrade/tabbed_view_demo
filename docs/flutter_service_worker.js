'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "main.dart.js": "8b67e3a15f4654c2cb8a4405e420e803",
"version.json": "37fd061da5843dfc7398d6d5fe0ab3a8",
"assets/lib/get_started/content_builder.dart": "dc875f00f7fd874233573a7d5164ce2b",
"assets/lib/get_started/close_button_tooltip.dart": "129253b5d1b6af5860f85b7efceb955b",
"assets/lib/get_started/get_started.dart": "37382dafacb44c53ebf0319f47ab0028",
"assets/lib/tab/adding_button/icon_data.dart": "de815d03339bcc7bcaf791b49576a3ab",
"assets/lib/tab/adding_button/icon_path.dart": "e1039d571c621e519f998445812dd581",
"assets/lib/tab/adding_button/override_theme_color.dart": "d17c3550f38b8dbfbae60fba4b33e217",
"assets/lib/tab/adding_button/menu_button.dart": "b637da06cba94e92cabc600922745084",
"assets/lib/tab/non_closable_tab.dart": "63d5e586f367e482b89f1b592e8a4054",
"assets/lib/tab/keep_alive.dart": "c9e5ead548573a64e11f5f8015829f57",
"assets/lib/tab/tab_programmatically.dart": "7d81280e735ab761e32062891abb0739",
"assets/lib/tab/tab_selection_listener.dart": "c1e1ee651ae679a41c6600b31000d39b",
"assets/lib/tab/tab_close_interceptor.dart": "5a71ecd75c8f6d7c2f14bdfd81c3b905",
"assets/lib/tab/tab_close_listener.dart": "0e6167e850ff8a970875ea12be22d604",
"assets/lib/tab/draggable_tab.dart": "02e278d0ce15450574279d308b1ed0ac",
"assets/lib/tabs_area/tabs_area_buttons.dart": "135774bdae1d531dd701d05529fd154c",
"assets/lib/themes/tab/tab_alignment.dart": "96e455c1043cc359e19a868e9ac60480",
"assets/lib/themes/tab/tab_text_style.dart": "583c2c4fcb568488b24dc3b76da963ca",
"assets/lib/themes/tabs_area/buttons_area/hidden_tabs_menu_button_icon.dart": "1cabedc6de317b61d5e00bb221b8eae6",
"assets/lib/themes/tabs_area/tabs_area_color.dart": "3a7ab9ba5813a1209646b4ebd225cd84",
"assets/lib/themes/tabs_area/tabs_area_gaps.dart": "5ef016a1ce3c6295f49d2da9cc217475",
"assets/lib/themes/menu/menu_max_width.dart": "8ed4e51a47e8c3e609dbd65c095b3295",
"assets/lib/themes/menu/menu_ellipsis.dart": "acaf9be8f6c5f52e4f34cc9b3c4d069c",
"assets/lib/themes/default_themes/classic_theme.dart": "d55f175009f428509622c6742ede80ac",
"assets/lib/themes/default_themes/classic_theme_color_set.dart": "1f475faf680df5c43318f2434fb2a678",
"assets/lib/themes/default_themes/dark_theme.dart": "9e25b2a405a91fd1cf04e01323fee5ec",
"assets/lib/themes/default_themes/dark_theme_color_set.dart": "5fc0d3625e3d184e78b8047e3eb91df0",
"assets/lib/themes/default_themes/mobile_theme.dart": "0ea47702eb8355f2911cdaf22844f14b",
"assets/lib/themes/default_themes/mobile_theme_color_set.dart": "52f73eabba9e5b4a286698e18f53df05",
"assets/lib/themes/default_themes/mobile_theme_highlight_color.dart": "10c975db7d94d93d525387409a0aaf24",
"assets/lib/themes/default_themes/minimalist_theme.dart": "29bd1ade9592ed1ac1335a569ff39d93",
"assets/lib/themes/default_themes/minimalist_theme_color_set.dart": "2048f55b1a735de45b2b6256a3454690",
"assets/lib/themes/theme_from_scratch.dart": "e1cf49ab23d4322f180d8bcf93ebecc5",
"assets/packages/flex_color_picker/assets/opacity.png": "49c4f3bcb1b25364bb4c255edcaaf5b2",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/AssetManifest.json": "b5ad7fbb708c5d16aebc612eed895b18",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/NOTICES": "8e044337207ad96ac79688b98d1df92d",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "b60a6e21df4ab50c92b5f4016c2ebed8",
"/": "b60a6e21df4ab50c92b5f4016c2ebed8",
"manifest.json": "b3b4999ffcf5c4e0855e1b26263d3524"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
