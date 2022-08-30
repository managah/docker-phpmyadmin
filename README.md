# docker-phpmyadmin

Docker image based on the official phpmyadmin image with customizable PHP ini options.

# Image

`managah/phpmyadmin`

# Supported environment variables

* **PHP**
  * `NUPHP_UPLOAD_MAX_FILESIZE` (default: 512M)
  * `NUPHP_POST_MAX_FILESIZE` (default: 512M)
  * `NUPHP_MEMORY_LIMIT` (default: 512M)
  * `NUPHP_EXPOSE_VERSION` (default: Off)
  * `NUPHP_SESSION_COOKIE_HTTPONLY` (default: On)
  * `NUPHP_SESSION_COOKIE_SECURE` (default: Off)
  * `NUPHP_SESSION_NAME` (default: PHPSESSID)
  * `NUPHP_SESSION_SAVE_HANDLER` (default: files)
  * `NUPHP_SESSION_SAVE_PATH` (default: empty)
* **Apache Prefork**
  * `PREFORK_START_SERVERS` (default: 1)
  * `PREFORK_MIN_SPARE_SERVERS` (default: 1)
  * `PREFORK_MAX_SPARE_SERVERS` (default: 3)
  * `PREFORK_MAX_REQUEST_WORKERS` (default: 150)

See all available variables at https://github.com/managah/docker-phpmyadmin/blob/master/nuphp-entrypoint.sh
