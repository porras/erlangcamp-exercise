# ErlangCamp Exercise

This is my take on the proposed exercise in ErlangCamp, in order to not forget all the (many) things we learnt in so little time. While there, and with the help from the instructors, everything *seemed* easy, but it wouldn't be the first time we work by ourselves. That was the purpose of this exercise --and it was true indeed! I think thanks to it I remember more, if not all, of the things we learnt.

## The exercise

This repo contains an Erlang release with one application. That application is a bit oversimplistic but it's a good start point to build more complicated things upon it.

* A supervisor
* Two simple generic servers linked to that supervisor
  * One of them (exercise) just prints the calls it receives
  * The other one (proxy) prints the calls it receives and proxies them to the other one
  * Both offer a very simple and self-explanatory API: `exercise:call/1` and `proxy:call/1`
  
![appmon:start().](http://f.cl.ly/items/410D0E2P3x3m0u1z2q1E/appmon2.png)

## Trying it

It contains a `Makefile` so counting you have everything setup (requirements: Erlang/OTP R15B01 and rebar), you just run `make start` and you get a shell in which you can try the described API.

    (exercise@reykjavik)1> exercise:call(hello).
    Receiving call: hello
    ok
    (exercise@reykjavik)2> proxy:call(hello).   
    Proxying call: hello
    Receiving call: hello
    ok
    
-- Sergio Gil @porras
