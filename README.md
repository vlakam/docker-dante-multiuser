# Dante on Docker

Dante is a free SOCKS server and a SOCKS client, implementing RFC 1928 and
related standards. 
## Usage

Set credentials for default user in .env

Set the following parameters:

* *SOCKS_PORT*: the port to listen to
* *SOCKS_USER*: the username to use by clients
* *SOCKS_PASS*: the password

For example:

    $ cat .env
    SOCKS_PORT=1080
    SOCKS_USER=username
    SOCKS_PASS=password

Start a new container:

    $ docker-compose up -d

The SOCKS server should be up and ready to serve.  An example command to test
the proxy service you have just set up:

    $ curl -x socks5h://username:password@127.0.0.1:1080 http://example.com
## Add additional users

You can also add users in addition to default one by running addclient.sh script:

    $ docker-compose exec dante ./addclient.sh client password