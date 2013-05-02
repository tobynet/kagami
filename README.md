# Kagami

[![Gem Version](https://badge.fury.io/rb/kagami.png)](http://badge.fury.io/rb/kagami) [![Build Status](https://travis-ci.org/toooooooby/kagami.png?branch=master)](https://travis-ci.org/toooooooby/kagami) [![Coverage Status](https://coveralls.io/repos/toooooooby/kagami/badge.png?branch=master)](https://coveralls.io/r/toooooooby/kagami) [![Code Climate](https://codeclimate.com/github/toooooooby/kagami.png)](https://codeclimate.com/github/toooooooby/kagami) [![Dependency Status](https://gemnasium.com/toooooooby/kagami.png)](https://gemnasium.com/toooooooby/kagami)

Kagami is a tool for mirroring text and ascii art.

![Screencast](https://github.com/toooooooby/kagami/raw/master/_assets/screencast.gif)
(Screencast is in v0.1.4, little old version)

## Installation

Add this line to your application's Gemfile:

    gem 'kagami'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kagami

## Usage

```
$ kagami "Java and you >>>> Ruby >>> The internet"
The internet >>> Ruby >>>> Java and you

$ kagami <<END
                      Firewall
                         ||
+--------+  +-------+    || The Internet 
| server +--+ proxy +----||======☁=======
+--------+  +-------+    ||
                         ||
END
           Firewall
              ||
 The Internet ||    +-------+  +--------+
=======☁======||----+ proxy +--+ server |
              ||    +-------+  +--------+
              ||

$ apt-get moo
         (__) 
         (oo) 
   /------\/ 
  / |    ||   
 *  /\---/\ 
    ~~   ~~   
...."Have you mooed today?"...

$ apt-get moo | kagami
                 )__(         
                 )oo(         
                  /\------/   
                   ||    | /  
                   \/---\/  * 
                   ~~   ~~    
..."Have you mooed today?"....
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
