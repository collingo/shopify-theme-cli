# shopify-theme-docker

A Docker wrapper for the Shopify Theme Gem

Theme development is made so much easier with the help of the Shopify Theme cli. This is a repackaging of Shopify's own Ruby Gem ([`shopify_theme`](https://github.com/Shopify/shopify_theme)) as a [Docker image](https://hub.docker.com/r/collingo/shopify_theme/) so as to encapsulate the ruby environment and not pollute the host machine.

To set this up...

1. `cd` into theme directory (or new dir if you have do not have the theme locally yet)
1. Install cli - `docker run --rm -v $(pwd):/usr/src/app collingo/shopify_theme`. Most of the `shopify_theme` [commands](https://github.com/collingo/shopify_theme#commands) should work now. Just prepend with `make`, e.g. `$ theme download` => `$ make theme download`
1. Setup Shopify config - `make theme configure` passing options as described [here](https://github.com/collingo/shopify_theme#setting-up-shopify-theme)
1. Code!

## Commands

See the [`shopify_theme`](https://github.com/Shopify/shopify_theme) docs for more info. Remember to always prepend commands with `make` when using the cli as described above

## A note on compatibility

This has only been tested with the `configure`, `download` and `upload` commands so far. Your mileage may vary when it comes to the more complicated commands such as `watch` and `open`. Please send bugs/PRs to the Github repo below.
