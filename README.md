Bill
====

Bill is a small web application that takes data from a JSON feed and displays 
that data on a web page.

Below are a list of commands that are used to install, run and test this 
application. Each must be run at the application root

Installation
------------
This is a Ruby app, and both ruby (2.1.4) and the bundler gem need to be 
installed in the current environment.

Clone this app and then run the following command to install the required gems

    bundle install

The server
----------
To start the server, use the following command at the application root:

    rackup

The server will then start. To view the page served, browse to
http://localhost:9292/

Test
----
To run the tests, use the following command at the application root:

    rake test
