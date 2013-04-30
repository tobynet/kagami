# Kagami

A tool for mirroring text and ascii art.

## Installation

Add this line to your application's Gemfile:

    gem 'kagami'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kagami

## Usage

```bash
$ kagami "Java and you >>>> Ruby <<<< The internet"
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

$ cat hoge.txt | kagami
(reversed hoge.txt every one line)
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
