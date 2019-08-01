FROM custom_php:1.0

RUN pecl install xdebug-2.6.0alpha1
RUN echo 'zend_extension = /usr/local/lib/php/extensions/no-debug-non-zts-20170718/xdebug.so' >> /usr/local/etc/php/php.ini; \
    touch /usr/local/etc/php/conf.d/xdebug.ini &&\
    echo xdebug.remote_enable=1 >> /usr/local/etc/php/conf.d/xdebug.ini &&\
    echo xdebug.remote_autostart=0 >> /usr/local/etc/php/conf.d/xdebug.ini &&\
    echo xdebug.remote_connect_back=1 >> /usr/local/etc/php/conf.d/xdebug.ini &&\
    echo xdebug.remote_port=9000 >> /usr/local/etc/php/conf.d/xdebug.ini &&\
    echo xdebug.remote_handler = dbgp >> /usr/local/etc/php/conf.d/xdebug.ini &&\
    echo xdebug.remote_mode = req >> /usr/local/etc/php/conf.d/xdebug.ini &&\
    echo xdebug.remote_log=/tmp/php5-xdebug.log >> /usr/local/etc/php/conf.d/xdebug.ini;
