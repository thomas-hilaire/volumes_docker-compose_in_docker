
## The goal
I need to share local folders as volumes into some containers of a _docker-compose_.

I don't want _docker-compose_ to be a dependency of my project, but _docker_ only. So I want to use _docker-compose in docker_.

## The problem

Using the `volumes` instruction into my `docker-compose.yml` file work only when I run it with _docker-compose_ directly, but not with _docker-compose in docker_.

The output with _docker-compose_ is :

    $ ./runDockerCompose
    Starting want-config-container
    Attaching to want-config-container
    want-config-container | /config-absolute
    want-config-container | /config-relative
    want-config-container | /config-relative/two
    want-config-container | /config-relative/two/file
    want-config-container | /config-relative/one
    want-config-container | /config-relative/one/file

The output with _docker-compose in docker_ is :

    $ ./runDockerComposeInDocker.sh
    Recreating want-config-container
    Attaching to want-config-container
    want-config-container | /config-absolute
    want-config-container | /config-relative

So, how can I get my _shared-config_ folder mounted into my _want-config-container_ ?

## Note

 I have try to make a container dedicated to hold my config.

 I run it with my local config folder as a volume, then make my _docker-compose_ containers linked to it. But it's impossible as I can't use `volumes_from` against a `external_links` container.
