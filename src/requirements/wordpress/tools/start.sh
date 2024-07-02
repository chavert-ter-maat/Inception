; Start a new pool named 'www'
[www]

; Unix user/group of processes
user = www-data
group = www-data

; The address on which to accept FastCGI requests
listen = 0.0.0.0:9000

; Process manager settings
pm = dynamic
pm.max_children = 25
pm.start_servers = 5
pm.min_spare_servers = 1
pm.max_spare_servers = 10

; Set permissions for unix socket
listen.owner = www-data
listen.group = www-data

; Clear environment in FPM workers
clear_env = yes

; Decorate worker output with prefix and suffix
decorate_workers_output = no

; Limits the extensions of the main script FPM will allow to parse
security.limit_extensions = .php

; Additional php.ini defines specific to this pool
php_admin_value[memory_limit] = 128M