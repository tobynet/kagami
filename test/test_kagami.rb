#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require 'coveralls'
Coveralls.wear!

$VERBOSE = true
require 'minitest/autorun'
begin
  require 'minitest/pride'
rescue LoadError
  # ignore error for old ruby
end
require 'kagami'

describe "Kagami" do
  ONE_LINE_DATA = "The internet >>> Ruby >>>> Java and you"
  MULTI_LINE_DATA = <<-EOD
                      Firewall
                         ||
+--------+  +-------+    || The Internet 
| server +--+ proxy +----||======☁=======
+--------+  +-------+    ||
                         ||
  EOD

  it ".max_width" do
    Kagami.max_width(ONE_LINE_DATA).must_equal 39
    Kagami.max_width(MULTI_LINE_DATA).must_equal 41
  end

  it ".ljust" do
    Kagami.ljust(ONE_LINE_DATA).must_equal ONE_LINE_DATA
    Kagami.ljust(MULTI_LINE_DATA).must_equal <<-EOD.chomp
                      Firewall           
                         ||              
+--------+  +-------+    || The Internet 
| server +--+ proxy +----||======☁=======
+--------+  +-------+    ||              
                         ||              
    EOD
  end

  it ".reversed" do
    Kagami.reversed(ONE_LINE_DATA).must_equal "uoy dna avaJ >>>> ybuR >>> tenretni ehT"
    Kagami.reversed(MULTI_LINE_DATA).must_equal <<-EOD.chomp
llaweriF                      
||                         
 tenretnI ehT ||    +-------+  +--------+
=======☁======||----+ yxorp +--+ revres |
||    +-------+  +--------+
||                         
    EOD
  end

  it ".readable_after_reverse" do
    Kagami.readable(ONE_LINE_DATA).must_equal "tenretni ehT >>> ybuR >>>> uoy dna avaJ"
    Kagami.readable(MULTI_LINE_DATA).must_equal <<-EOD
                      llaweriF
                         ||
+--------+  +-------+    || tenretnI ehT 
| revres +--+ yxorp +----||======☁=======
+--------+  +-------+    ||
                         ||
    EOD
  end

  it ".convert" do
    Kagami.convert(ONE_LINE_DATA).must_equal "Java and you >>>> Ruby >>> The internet"
    Kagami.convert(MULTI_LINE_DATA).must_equal <<-EOD.chomp
           Firewall                      
              ||                         
 The Internet ||    +-------+  +--------+
=======☁======||----+ proxy +--+ server |
              ||    +-------+  +--------+
              ||                         
    EOD
  end
end
