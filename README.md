## What's this
[CIUnit](https://bitbucket.org/rafsoaken/ciunit) for CodeIgniter 2.x

## Installation
	cp -R CIUnit-for-CI2/application [CI2 Project Path]/
	cp -R CIUnit-for-CI2/tests [CI2 Project Path]/

## Change Database Config
	vi [CI2 Project Path]/application/config/database.php

	$active_group = 'default';
	+ if (defined('CIUnit_Version')) {
	+     $active_group .= '_test';
	+ }
	$active_record = TRUE;


## Run Tests
### AllTests
	cd [CI2 Project Path]/tests
	phpunit

### UnitTest
	cd [CI2 Project Path]/tests
	phpunit --no-configuration --bootstrap ../application/third_party/CIUnit/bootstrap_phpunit.php [Directory or PHP file path]

## Eclipse Settings
* [External Tools](http://fukata.org/2011/06/19/codeigniter2-tips-ciunit-for-ci2-on-eclipse/)

CIUnit AllTests

![CIUnit AllTests](http://farm3.static.flickr.com/2589/5847466967_be828bd800.jpg)

CIUnit UnitTest

![CIUnit UnitTest](http://farm4.static.flickr.com/3452/5848025028_d5ce7618cf.jpg)
