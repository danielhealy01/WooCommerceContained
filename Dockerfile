FROM wordpress:latest

# Install WP-CLI
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp

# Install and activate WooCommerce
COPY install-woocommerce.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/install-woocommerce.sh

CMD ["apache2-foreground"]