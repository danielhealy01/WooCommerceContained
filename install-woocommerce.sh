#!/bin/bash

# Wait for WordPress to be ready
until $(wp core is-installed --allow-root); do
    sleep 5
done

# Install and activate WooCommerce
wp plugin install woocommerce --activate --allow-root

# Update WordPress and WooCommerce
wp core update --allow-root
wp plugin update --all --allow-root