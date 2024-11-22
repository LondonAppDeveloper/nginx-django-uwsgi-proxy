<div align="center">
    <a href="https://londonappdeveloper.com" target="_blank">
        <img src="https://londonappdeveloper.com/wp-content/uploads/2024/11/banner.svg" alt="Banner image" />
    </a>
</div>

<div align="center">
    <p>Full-Stack Consulting and Courses.</p>
    <a href="https://londonappdeveloper.com" target="_blank">Website</a> |
    <a href="https://londonappdeveloper.teachable.com/" target="_blank">Courses</a> |
    <a href="https://londonappdeveloper.com/tutorials/" target="_blank">Tutorials</a> |
    <a href="https://londonappdeveloper.com/consulting/" target="_blank">Consulting
</div>

<br /><br >

# NGINX Django uWSGI Proxy

NGINX container designed to forward requests to a Django app running on uWSGI.

## Usage

**Environment Variables**

 - `LISTEN_PORT` (default: `8000`) - port that NGINX should listen on
 - `APP_HOST` (default: `app`) - hostname of Django uWSGI app
 - `APP_PORT` (default: `8000`) - port of Django uWSGI app

**Static File Location**

The location `/static` is mapped to `/vol/static`. Setup a volume here to serve static files.
