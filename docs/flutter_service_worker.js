'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"flutter_bootstrap.js": "7ec2ad2cd3ae0ea49c53d0287a5283be",
"index.html": "bcbd7e2ac4b4a372e0ee4dbd916e28b1",
"/": "bcbd7e2ac4b4a372e0ee4dbd916e28b1",
"main.dart.js": "32ad197ed40165c4ef279b21b106c7d8",
"version.json": "3e9dc2537afb37fadcf9be1e1cecb6c0",
"assets/lib/pages/mixin_reload_example.dart": "c160484b08ffe51faeea7d42bddb8135",
"assets/lib/pages/get_started/get_started_example.dart": "10b990cfd7205c0a5c25d19c508818a2",
"assets/lib/pages/get_started/get_started_page.dart": "c6fe8366721736787c0828b1152a5a34",
"assets/lib/pages/content_builder/content_builder_example.dart": "39f38dea30b84213c7705e22dea777fd",
"assets/lib/pages/content_builder/content_builder_page.dart": "4da1829cff0209b569d66b1f3817cb2b",
"assets/lib/pages/close_button_tooltip/close_button_tooltip_example.dart": "d4e614046a210b45816c82083ca8a0b0",
"assets/lib/pages/close_button_tooltip/close_button_tooltip_page.dart": "3bb387b203a12519acc9392ec53a36ce",
"assets/lib/pages/tab/button/icon_data/icon_data_example.dart": "5daaf0fc4c0a69c13e6195162039e48d",
"assets/lib/pages/tab/button/icon_data/icon_data_page.dart": "313027b47b2c6e67e30b29752657ee54",
"assets/lib/pages/tab/button/icon_path/icon_path_example.dart": "d8dc36190a6e9ef1a6eaf263517f01f0",
"assets/lib/pages/tab/button/icon_path/icon_path_page.dart": "8698c9d542affc34aed58089c7fb7373",
"assets/lib/pages/tab/button/menu/menu_example.dart": "ac975869bf8195d58cdbfe37ca424802",
"assets/lib/pages/tab/button/menu/menu_page.dart": "6bdfeb6d8f55bdf9841a11a75448667a",
"assets/lib/pages/tab/draggable/draggable_example.dart": "550d32ac952d70a1b1bbbb4190e3b6a1",
"assets/lib/pages/tab/draggable/draggable_page.dart": "67067527a5f9df97b90a27c102182114",
"assets/lib/pages/tab/draggable/tab_drag_target.dart": "78e83fa20842f21544d66d9cd1c82a37",
"assets/lib/pages/tab/non_closable/non_closable_example.dart": "a34707f8d4ea01b5301d68a41cfb2f13",
"assets/lib/pages/tab/non_closable/non_closable_page.dart": "f55187a199a0508cf4717d0a8ac47cd9",
"assets/lib/pages/tab/keep_alive/keep_alive_example.dart": "64575d4754b2b24bf1f0bb653461c282",
"assets/lib/pages/tab/keep_alive/keep_alive_page.dart": "67712a38cb925e352df8ead6e445e2eb",
"assets/lib/pages/tab/tab_leading/tab_leading_example.dart": "0827e45b017af885e6b96d846e11b70d",
"assets/lib/pages/tab/tab_leading/tab_leading_page.dart": "8e5319e3aaf10cd83d7d4f2b5274e8fb",
"assets/lib/pages/tab/tab_remove_interceptor/tab_remove_interceptor_example.dart": "caff1a636db84a972b3ad81fd2051caf",
"assets/lib/pages/tab/tab_remove_interceptor/tab_remove_interceptor_page.dart": "bd03d4f5fb3f2fa2557f6b29f4261cd0",
"assets/lib/pages/tab/tab_remove_listener/tab_remove_listener_example.dart": "fc111eca7e1c967080a81bf1401b1fa0",
"assets/lib/pages/tab/tab_remove_listener/tab_remove_listener_page.dart": "6e4432e2686a560c65c1482ea64a7a4e",
"assets/lib/pages/tab/tab_selection_listener/tab_selection_listener_example.dart": "27c3709cc9513ceb51e4b1bf9d4a16cf",
"assets/lib/pages/tab/tab_selection_listener/tab_selection_listener_page.dart": "2634f60a11dda0c82e817c09c4e83e08",
"assets/lib/pages/tab/tab_programmatically/tab_programmatically_example.dart": "f822f0322e256e57f786745544215843",
"assets/lib/pages/tab/tab_programmatically/tab_programmatically_page.dart": "c20663368b626ac180f400b20431859d",
"assets/lib/pages/tabs_area/tabs_area_buttons/tabs_area_buttons_example.dart": "1f23c87795b2b566e17427f202e15fe4",
"assets/lib/pages/tabs_area/tabs_area_buttons/tabs_area_buttons_page.dart": "91d390e38659920e5fca3767d4f1b55e",
"assets/lib/pages/theme/brightness_chooser.dart": "6393dcb1466d5dfa7ba44cb3bb1f853b",
"assets/lib/pages/theme/color_chooser.dart": "196fd45f4372507a70241ddd8154f614",
"assets/lib/pages/theme/color_set_chooser.dart": "895f93913182363c449b8dd0dcee5859",
"assets/lib/pages/theme/double_chooser.dart": "5b95dc1f9ce138665aa59705731fa9ec",
"assets/lib/pages/theme/position_chooser.dart": "44b34b8e94e45a0bb77e5a5a867fa094",
"assets/lib/pages/theme/side_tabs_layout_chooser.dart": "d1feb8b3eb86cb5c7d10b38dd985e8cd",
"assets/lib/pages/theme/default_themes/classic_theme/classic_theme_example.dart": "0f86eef121f74bdbc377d818499ba636",
"assets/lib/pages/theme/default_themes/classic_theme/classic_theme_page.dart": "a9a5571462f6c5ff4b7167af045ce45d",
"assets/lib/pages/theme/default_themes/minimalist_theme/minimalist_theme_example.dart": "d631652f966615b7a0add1445bf0f66f",
"assets/lib/pages/theme/default_themes/minimalist_theme/minimalist_theme_page.dart": "b79fddda98eae06b60284e5799d97242",
"assets/lib/pages/theme/default_themes/underline_theme/underline_theme_example.dart": "297da09ed3baeea7093ea9d4eb25b648",
"assets/lib/pages/theme/default_themes/underline_theme/underline_theme_page.dart": "6804e6824d47f04773e02f051252fa84",
"assets/packages/syntax_highlight/grammars/sql.json": "957a963dfa0e8d634766e08c80e00723",
"assets/packages/syntax_highlight/grammars/dart.json": "b533a238112e4038ed399e53ca050e33",
"assets/packages/syntax_highlight/grammars/yaml.json": "7c2dfa28161c688d8e09478a461f17bf",
"assets/packages/syntax_highlight/grammars/json.json": "e608a2cc8f3ec86a5b4af4d7025ae43f",
"assets/packages/syntax_highlight/grammars/serverpod_protocol.json": "cc9b878a8ae5032ca4073881e5889fd5",
"assets/packages/syntax_highlight/themes/dark_vs.json": "2839d5be4f19e6b315582a36a6dcd1c3",
"assets/packages/syntax_highlight/themes/light_vs.json": "8025deae1ca1a4d1cb803c7b9f8528a1",
"assets/packages/syntax_highlight/themes/light_plus.json": "2a29ad892e1f54e93062fee13b3688c6",
"assets/packages/syntax_highlight/themes/dark_plus.json": "b212b7b630779cb4955e27a1c228bf71",
"assets/packages/flex_color_picker/assets/opacity.png": "49c4f3bcb1b25364bb4c255edcaaf5b2",
"assets/fonts/MaterialIcons-Regular.otf": "90be2e3e3aa83f076513510374f608d6",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.json": "bc18aa7a50bd6b0a4ab80cf84ce70731",
"assets/AssetManifest.bin": "cad57a27e9b9522e04f23af378364e2f",
"assets/AssetManifest.bin.json": "2c4dc7c4e325f3631f3b6e41f01c7d24",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/NOTICES": "bbf4ddec242be7a39c1a38c597564b6f",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"manifest.json": "677d87da457ab09c1f4cf499b9554891"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
