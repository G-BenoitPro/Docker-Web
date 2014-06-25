; ----------------
; Generated makefile from http://drushmake.me
; Permanent URL: http://drushmake.me/file.php?token=3f283d5936f7
; ----------------
;
; This is a working makefile - try it! Any line starting with a `;` is a comment.
  
; Core version
; ------------
; Each makefile should begin by declaring the core version of Drupal that all
; projects should be compatible with.
  
core = 7.x
  
; API version
; ------------
; Every makefile needs to declare its Drush Make API version. This version of
; drush make uses API version `2`.
  
api = 2
  
; Core project
; ------------
; In order for your makefile to generate a full Drupal site, you must include
; a core project. This is usually Drupal core, but you can also specify
; alternative core projects like Pressflow. Note that makefiles included with
; install profiles *should not* include a core project.
  
; Drupal 7.x. Requires the `core` property to be set to 7.x.
projects[drupal][version] = 7.x

  
  
; Modules
; --------
projects[content_access][version] = 1.2-beta2
projects[content_access][type] = "module"
projects[admin][version] = 2.0-beta3
projects[admin][type] = "module"
projects[admin_menu][version] = 3.0-rc4
projects[admin_menu][type] = "module"
projects[module_filter][version] = 2.0-alpha2
projects[module_filter][type] = "module"
projects[contemplate][version] = 1.0-rc3
projects[contemplate][type] = "module"
projects[ctools][version] = 1.4
projects[ctools][type] = "module"
projects[context][version] = 3.2
projects[context][type] = "module"
projects[calendar][version] = 3.4
projects[calendar][type] = "module"
projects[date][version] = 2.7
projects[date][type] = "module"
projects[devel][version] = 1.5
projects[devel][type] = "module"
projects[features][version] = 2.0
projects[features][type] = "module"
projects[content_taxonomy][version] = 1.0-beta2
projects[content_taxonomy][type] = "module"
projects[email][version] = 1.3
projects[email][type] = "module"
projects[filefield_paths][version] = 1.0-beta4
projects[filefield_paths][type] = "module"
projects[link][version] = 1.2
projects[link][type] = "module"
projects[flag][version] = 3.5
projects[flag][type] = "module"
projects[invite][version] = 4.0-beta2
projects[invite][type] = "module"
projects[mimemail][version] = 1.0-beta3
projects[mimemail][type] = "module"
projects[privatemsg][version] = 1.4
projects[privatemsg][type] = "module"
projects[simplenews][version] = 1.1
projects[simplenews][type] = "module"
projects[imce][version] = 1.9
projects[imce][type] = "module"
projects[i18n][version] = 1.11
projects[i18n][type] = "module"
projects[og][version] = 2.7
projects[og][type] = "module"
projects[acl][version] = 1.0
projects[acl][type] = "module"
projects[acquia_marina][version] = 2.0-beta1
projects[acquia_marina][type] = "module"
projects[adaptivetheme][version] = 3.2
projects[adaptivetheme][type] = "module"
projects[addtoany][version] = 4.5
projects[addtoany][type] = "module"
projects[advanced_forum][version] = 2.4
projects[advanced_forum][type] = "module"
projects[advanced_help][version] = 1.1
projects[advanced_help][type] = "module"
projects[analytic][version] = 1.x-dev
projects[analytic][type] = "module"
projects[author_pane][version] = 2.0
projects[author_pane][type] = "module"
projects[auto_nodetitle][version] = 1.0
projects[auto_nodetitle][type] = "module"
projects[backup_migrate][version] = 3.0
projects[backup_migrate][type] = "module"
projects[basic][version] = 4.0-beta2
projects[basic][type] = "module"
projects[better_formats][version] = 1.0-beta1
projects[better_formats][type] = "module"
projects[boxes][version] = 1.1
projects[boxes][type] = "module"
projects[captcha][version] = 1.0
projects[captcha][type] = "module"
projects[cck][version] = 3.0-alpha3
projects[cck][type] = "module"
projects[comment_notify][version] = 1.2
projects[comment_notify][type] = "module"
projects[computed_field][version] = 1.0
projects[computed_field][type] = "module"
projects[context_admin][version] = 1.2
projects[context_admin][type] = "module"
projects[custom_breadcrumbs][version] = 2.0-alpha3
projects[custom_breadcrumbs][type] = "module"
projects[dhtml_menu][version] = 1.0-beta1
projects[dhtml_menu][type] = "module"
projects[diff][version] = 3.2
projects[diff][type] = "module"
projects[ds][version] = 2.6
projects[ds][type] = "module"
projects[elements][version] = 1.4
projects[elements][type] = "module"
projects[entity][version] = 1.5
projects[entity][type] = "module"
projects[entityreference][version] = 1.1
projects[entityreference][type] = "module"
projects[faq][version] = 1.0-rc2
projects[faq][type] = "module"
projects[feeds][version] = 2.0-alpha8
projects[feeds][type] = "module"
projects[field_group][version] = 1.4
projects[field_group][type] = "module"
projects[framework][version] = 3.6
projects[framework][type] = "module"
projects[front][version] = 2.4
projects[front][type] = "module"
projects[fusion][version] = 2.0-beta2
projects[fusion][type] = "module"
projects[genesis][version] = 1.1
projects[genesis][type] = "module"
projects[getid3][version] = 1.0
projects[getid3][type] = "module"
projects[globalredirect][version] = 1.5
projects[globalredirect][type] = "module"
projects[gmap][version] = 2.9
projects[gmap][type] = "module"
projects[google_analytics][version] = 1.4
projects[google_analytics][type] = "module"
projects[html5_tools][version] = 1.2
projects[html5_tools][type] = "module"
projects[imageapi][version] = 1.x-dev
projects[imageapi][type] = "module"
projects[imagecache_actions][version] = 1.4
projects[imagecache_actions][type] = "module"
projects[imagecache_profiles][version] = 1.1
projects[imagecache_profiles][type] = "module"
projects[insert][version] = 1.3
projects[insert][type] = "module"
projects[jquery_ui][version] = 1.x-dev
projects[jquery_ui][type] = "module"
projects[libraries][version] = 2.2
projects[libraries][type] = "module"
projects[location][version] = 3.2
projects[location][type] = "module"
projects[logintoboggan][version] = 1.3
projects[logintoboggan][type] = "module"
projects[login_destination][version] = 1.1
projects[login_destination][type] = "module"
projects[marinelli][version] = 3.0-beta11
projects[marinelli][type] = "module"
projects[menu_breadcrumb][version] = 1.5
projects[menu_breadcrumb][type] = "module"
projects[menu_minipanels][version] = 1.1
projects[menu_minipanels][type] = "module"
projects[mix_and_match][version] = 2.1
projects[mix_and_match][type] = "module"
projects[modernizr][version] = 3.2
projects[modernizr][type] = "module"
projects[module_builder][version] = 2.x-dev
projects[module_builder][type] = "module"
projects[mollom][version] = 2.10
projects[mollom][type] = "module"
projects[mothership][version] = 2.10
projects[mothership][type] = "module"
projects[nice_menus][version] = 2.5
projects[nice_menus][type] = "module"
projects[ninesixty][version] = 1.0
projects[ninesixty][type] = "module"
projects[nitobe][version] = 2.0-beta1
projects[nitobe][type] = "module"
projects[nodequeue][version] = 2.0-beta1
projects[nodequeue][type] = "module"
projects[nodereference_url][version] = 1.12
projects[nodereference_url][type] = "module"
projects[node_clone][version] = 1.0-rc2
projects[node_clone][type] = "module"
projects[omega][version] = 4.2
projects[omega][type] = "module"
projects[panelizer][version] = 3.1
projects[panelizer][type] = "module"
projects[pathauto][version] = 1.2
projects[pathauto][type] = "module"
projects[references][version] = 2.1
projects[references][type] = "module"
projects[relation][version] = 1.0-rc5
projects[relation][type] = "module"
projects[responder][version] = 1.0
projects[responder][type] = "module"
projects[rootcandy][version] = 1.0-alpha1
projects[rootcandy][type] = "module"
projects[rubik][version] = 4.1
projects[rubik][type] = "module"
projects[scheduler][version] = 1.2
projects[scheduler][type] = "module"
projects[search404][version] = 1.3
projects[search404][type] = "module"
projects[securepages][version] = 1.0-beta2
projects[securepages][type] = "module"
projects[service_links][version] = 2.2
projects[service_links][type] = "module"
projects[site_map][version] = 1.2
projects[site_map][type] = "module"
projects[site_verify][version] = 1.1
projects[site_verify][type] = "module"
projects[sky][version] = 3.0
projects[sky][type] = "module"
projects[smtp][version] = 1.0
projects[smtp][type] = "module"
projects[stringoverrides][version] = 1.8
projects[stringoverrides][type] = "module"
projects[strongarm][version] = 2.0
projects[strongarm][type] = "module"
projects[tao][version] = 3.1
projects[tao][type] = "module"
projects[token][version] = 1.5
projects[token][type] = "module"
projects[transliteration][version] = 3.2
projects[transliteration][type] = "module"
projects[zen][version] = 5.5
projects[zen][type] = "module"
projects[panels][version] = 3.4
projects[panels][type] = "module"
projects[print][version] = 2.0
projects[print][type] = "module"
projects[rules][version] = 2.7
projects[rules][type] = "module"
projects[page_title][version] = 2.7
projects[page_title][type] = "module"
projects[skinr][version] = 2.0-beta1
projects[skinr][type] = "module"
projects[recaptcha][version] = 1.11
projects[recaptcha][type] = "module"
projects[taxonomy_manager][version] = 1.0
projects[taxonomy_manager][type] = "module"
projects[taxonomy_menu][version] = 1.5
projects[taxonomy_menu][type] = "module"
projects[ckeditor][version] = 1.14
projects[ckeditor][type] = "module"
projects[extlink][version] = 1.17
projects[extlink][type] = "module"
projects[imce_wysiwyg][version] = 1.0
projects[imce_wysiwyg][type] = "module"
projects[jquery_plugin][version] = 1.0
projects[jquery_plugin][type] = "module"
projects[jquery_update][version] = 2.4
projects[jquery_update][type] = "module"
projects[wysiwyg][version] = 2.2
projects[wysiwyg][type] = "module"
projects[views][version] = 3.8
projects[views][type] = "module"
projects[views_bulk_operations][version] = 3.2
projects[views_bulk_operations][type] = "module"
projects[views_slideshow][version] = 3.1
projects[views_slideshow][type] = "module"
projects[fivestar][version] = 2.1
projects[fivestar][type] = "module"
projects[votingapi][version] = 2.11
projects[votingapi][type] = "module"
projects[webform][version] = 3.20
projects[webform][type] = "module"
projects[xmlsitemap][version] = 2.0
projects[xmlsitemap][type] = "module"

  

; Themes
; --------

  
  
; Libraries
; ---------
libraries[html5bp][download][type] = "file"
libraries[html5bp][download][url] = "http://github.com/h5bp/html5-boilerplate/zipball/v3.0.2stripped"
libraries[jquery][download][type] = "file"
libraries[jquery][download][url] = "https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"
libraries[jqueryui][download][type] = "file"
libraries[jqueryui][download][url] = "https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.18/jquery-ui.min.js"


