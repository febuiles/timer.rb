timer.rb
=======

timer.rb is a simple command line timer written in Ruby. It uses OS X voice commands to let you know
when it's hammer time!

Requirements
------------
* Ruby

Installation
------------

You can install from Rubygems

    $ gem install timer.rb

Or you can download the source and build it manually:

    $ git clone https://febuiles@github.com/febuiles/timer.rb.git
    $ cd timer.rb
    $ gem build
    $ gem install timer.rb --local


Usage
------

    $ timer [duration]

As in:

    $ timer 2h
    $ timer 2m
    $ timer 2s
    $ timer 2h 3m
    $ timer 0.5h

Bugs/Contact
------------

Got a problem? Create an issue in the [Github Tracker](https://github.com/febuiles/timer.rb/issues).

Author
------
Federico Builes - federico@mheroin.com - @febuiles
