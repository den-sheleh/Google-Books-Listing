# Google Books Application
Application based on Google Books API and provides paginated list of 'Ruby on Rails' books.

## List of technologies:

* Ruby 1.9.3
* Sinatra framework
* HAML
* SASS
* Google Books API
* Memcache

## Demo

[http://mighty-brushlands-7369.herokuapp.com/] (http://mighty-brushlands-7369.herokuapp.com/)

## Perfomance

### Results of running local perfomance test

``` sh

ॐ ab -n 500 -c 10 http://127.0.0.1:4567/                                                                                                                 ~/projects/google_books (master)

This is ApacheBench, Version 2.3 <$Revision: 655654 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking 127.0.0.1 (be patient)
Completed 100 requests
Completed 200 requests
Completed 300 requests
Completed 400 requests
Completed 500 requests
Finished 500 requests


Server Software:        thin
Server Hostname:        127.0.0.1
Server Port:            4567

Document Path:          /
Document Length:        7010 bytes

Concurrency Level:      10
Time taken for tests:   0.542 seconds
Complete requests:      500
Failed requests:        0
Write errors:           0
Total transferred:      3624000 bytes
HTML transferred:       3505000 bytes
Requests per second:    923.05 [#/sec] (mean)
Time per request:       10.834 [ms] (mean)
Time per request:       1.083 [ms] (mean, across all concurrent requests)
Transfer rate:          6533.43 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:     3   11   5.9      9      40
Waiting:        3   11   5.9      9      40
Total:          4   11   5.9      9      40

Percentage of the requests served within a certain time (ms)
  50%      9
  66%     11
  75%     13
  80%     14
  90%     20
  95%     23
  98%     28
  99%     30
 100%     40 (longest request)


```
