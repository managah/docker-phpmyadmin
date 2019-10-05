#!/bin/sh

cat > /etc/apache2/mods-available/mpm_prefork.conf <<EOF
<IfModule mpm_prefork_module>
    StartServers              ${PREFORK_START_SERVERS:-1}
    MinSpareServers           ${PREFORK_MIN_SPARE_SERVERS:-1}
    MaxSpareServers           ${PREFORK_MAX_SPARE_SERVERS:-3}
    MaxRequestWorkers         ${PREFORK_MAX_REQUEST_WORKERS:-150}
    MaxConnectionsPerChild    ${PREFORK_MAX_CONNECTIONS_PER_CHILD:-0}
</IfModule>
EOF

cat > /usr/local/etc/php/conf.d/zzz-nuphp.ini <<EOF
upload_max_filesize=${NUPHP_UPLOAD_MAX_FILESIZE:-512M}
post_max_size=${NUPHP_POST_MAX_FILESIZE:-512M}
memory_limit=${NUPHP_MEMORY_LIMIT:-512M}
expose_php=${NUPHP_EXPOSE_VERSION:-Off}
session.cookie_httponly=${NUPHP_SESSION_COOKIE_HTTPONLY:-On}
session.cookie_secure=${NUPHP_SESSION_COOKIE_SECURE:-Off}
session.name=${NUPHP_SESSION_NAME:-PHPSESSID}
session.save_handler=${NUPHP_SESSION_SAVE_HANDLER:-files}
session.save_path=${NUPHP_SESSION_SAVE_PATH:-}
EOF

/docker-entrypoint.sh "$@"
