# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( mobile.css videojs/video-js.min.css videojs/videojs.js )
# Precompile font assets
Rails.application.config.assets.precompile += %w( little_days.eot little_days.svg little_days.ttf little_days.woff little_days.woff2 )
Rails.application.config.assets.precompile += %w( neord.eot neord.svg neord.ttf neord.woff neord.woff2 )
