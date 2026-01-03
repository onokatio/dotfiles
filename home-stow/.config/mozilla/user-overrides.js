//override arkenfox

  // browser & app
//user_pref("app.update.auto", true);
//user_pref("app.update.background.scheduling.enabled", true);
user_pref("browser.startup.page", 3); // 0102
//user_pref("browser.cache.disk.max_entry_size",128);
user_pref("browser.search.suggest.enabled", true); // 0803
user_pref("browser.urlbar.suggest.searches", true); // 0803
//user_pref("browser.contentblocking.category", "custom");
//user_pref("browser.cache.disk.enable", true);

  // rendering & ui
user_pref("media.eme.enabled", true); // 5508
user_pref("media.autoplay.default", 0); // 5508

  // network
user_pref("network.dns.disablePrefetch", false); // 0602
user_pref("network.dns.disablePrefetchFromHTTPS", false); // 0602
user_pref("network.predictor.enabled", true); // 0603
user_pref("network.predictor.enable-prefetch", true); // 0603
user_pref("network.prefetch-next", true); // 0601

user_pref("_user.js.parrot", "OVERRIDE: success override arkenfox");

  //browser
//user_pref("toolkit.legacyUserProfileCustomizations", true);
//user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
user_pref("extensions.pocket.enabled",false);

  //rendering & ui

//user_pref("image.avif.enabled", true);
//user_pref("layout.css.grid-template-masonry-value.enabled", true);
//user_pref("fission.autostart", true); //avaliable on nightly only
//user_pref("media.ffvpx.enabled", false);
// now firefox beta use software even wayland/vaapi is enabled.
//user_pref("svg.context-properties.content.enabled",true);

user_pref("_user.js.parrot", "OVERRIDE: success original section");
