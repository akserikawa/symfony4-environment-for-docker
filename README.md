# Docker environment for Symfony 4 development

## Services
Thanks to Docker Compose we run the following services, each in their own container.

Available:
- **PHP 7.2 FPM** (includes Composer, Git, XDebug, and more)
- **Nginx**

Pending (for now):
- **MySQL/MongoDB** (pending)
- **ELK** (pending)
- **Redis**


## Setup

1. Clone this repo
2. Run `make install_symfony` to install Symfony 4 skeleton (it comes with PHPUnit).

You should now see your fresh Symfony installation in the newly created **app** folder.

Open your browser and navigate to http://localhost:8888

Feel free to contribute in any way :)

### Work In Progress

- Add config for virtual hosts
- Improve performance (docker-sync?)

