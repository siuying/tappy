= Tappy

== DESCRIPTION:

Twitter API Proxy in ruby. 

This is written to filter annoying twitter messages created by Foursquare.

This app is in alpha quality, do not try it at home unless you can figure it out yourself, thank you!

== REQUIREMENTS:

* sinatra
* typhoeus
* json

== INSTALL:

* sudo gem install tappy

== USAGE:

* If you do not know what is "Twitter API", this app cannot help you, sorry.

* To filter twitter client "foursquare", run this in command line:
	tappy 0.0.0.0 3000 "foursquare"
* Then use your entered IP and port as the twitter API proxy in your twitter client.

* To try out Tappy, use "tappy.heroku.com" as twitter API proxy in your twitter 
client. 

* For use in heroku, install the "apigee":http://docs.heroku.com/apigee addon first

== CHANGE

* 0.2 - added search api; use apigee for virtually unlimited twitter API access
* 0.1 - initial release

== DEVELOPERS:

* Francis Chong, francis at ignition dot hk

== LICENSE:

The MIT License

Copyright (c) 2010 Francis Chong

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
