# NGINX Django uWSGI Proxy

NGINX container designed to forward requests to a Django app running on uWSGI.

## Usage

**Environment Variables**

 - `LISTEN_PORT` (default: `8000`) - port that NGINX should listen on
 - `APP_HOST` (default: `app`) - hostname of Django uWSGI app
 - `APP_PORT` (default: `8000`) - port of Django uWSGI app

**Static File Location**

The location `/static` is mapped to `/vol/static`. Setup a volume here to serve static files.
