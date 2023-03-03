'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "9d0248970acf59fb59ef0d76c70cc96c",
"assets/assets/document/atletik.pdf": "9ee744753153453f82d4e6eed9f09e31",
"assets/assets/document/bulutangkis.pdf": "f74870102e35a6e8299716b57ee25320",
"assets/assets/document/bulutangkis_dasar.pdf": "368213fe57f97e45cb64f7404c1bd4e7",
"assets/assets/document/bulutangkis_sarana.pdf": "7606aaa881d8c275bac1182e0940941b",
"assets/assets/document/bulutangkis_servis.pdf": "2ba793f4dadcbf6b652cfec6b46382e6",
"assets/assets/icons/icon_atletik.png": "c30fa130e9df67d6fc6f71d5b891afd9",
"assets/assets/icons/icon_badminton.png": "aa74163c9d000ab95f2648b239558bd2",
"assets/assets/icons/icon_drugs.png": "54e3904388f3105092b2f0da3c29b514",
"assets/assets/icons/icon_healthy.png": "3080337c700fbc085d8d4324ff621152",
"assets/assets/icons/icon_home.png": "d7581b8bb7306a2119b24a5ea0078f6e",
"assets/assets/icons/icon_senam.png": "c864ce1757fab2857ef68309f40cfbf0",
"assets/assets/icons/icon_swimmer.png": "c54eb4a0472a9bc46ffc2b44342271fc",
"assets/assets/images/atletik.jpg": "3408ddd45afe1ba85e5515357dbd30eb",
"assets/assets/images/bulutangkis.jpg": "9d9f79ce8a2f797858dfcaea11a3b688",
"assets/assets/images/logo.png": "e3bda98521440d00a7c7094098b6d014",
"assets/assets/images/logo_ini.png": "a806454fd417d1adbaf14db6a207efa9",
"assets/assets/images/narkoba.jpg": "f921d741b7329d4f543dd70a11573db8",
"assets/assets/images/renang.jpg": "a17489c41bbebda026719037c0c3f572",
"assets/assets/images/sehat.jpg": "8254d7d2567992f8f9fef757b51a4f71",
"assets/assets/images/senam.jpg": "46f83801538d57ef75ce002b0d375988",
"assets/assets/images/toturu.png": "7fa465a59e95deb1479ee5920866f2cb",
"assets/assets/images/vector1.svg": "500eda5a7e063e6e233ca75153f469d6",
"assets/assets/images/vector2.svg": "9659707f73de95c75664f44a5e6a41a3",
"assets/FontManifest.json": "4f125d70ce3e34dc61c5383e09887c69",
"assets/fonts/HearthIcon.ttf": "c72c85970fbaa8bedf211a094a2f95d4",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/fonts/MyFlutterApp.ttf": "76e5f65dccec623fd021af8e7676e6a4",
"assets/fonts/PilIcon.ttf": "283c71cd85a17975695311d3a9692b8c",
"assets/fonts/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/fonts/Poppins-ExtraBold.ttf": "d45bdbc2d4a98c1ecb17821a1dbbd3a4",
"assets/fonts/Poppins-ExtraLight.ttf": "6f8391bbdaeaa540388796c858dfd8ca",
"assets/fonts/Poppins-Light.ttf": "fcc40ae9a542d001971e53eaed948410",
"assets/fonts/Poppins-Medium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/fonts/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/fonts/Poppins-SemiBold.ttf": "6f1520d107205975713ba09df778f93f",
"assets/fonts/Poppins-Thin.ttf": "9ec263601ee3fcd71763941207c9ad0d",
"assets/NOTICES": "7af4753dfeba70b2fca3b753a7f3eabf",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/wakelock_web/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"flutter.js": "1cfe996e845b3a8a33f57607e8b09ee4",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "12ba7d31d3467a2bb2bcec43ae45e687",
"/": "12ba7d31d3467a2bb2bcec43ae45e687",
"logo.png": "e3bda98521440d00a7c7094098b6d014",
"main.dart.js": "b33af295ddb5fd65b495e9bf91fcd4af",
"manifest.json": "eb126a566e0324370a77ca0161b46dc0",
"version.json": "ba25b5db6efb5b86fb817a63ec6a171b"
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
