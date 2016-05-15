# Small Data

See also: [smalldata.coop](https://smalldata.coop/)

## How does it work?

```
  At your place                   At Dan's place

+----------------+              +----------------+
|                |              |                |  Optimum Business
|  Raspberry Pi  |  SSH tunnel  |  A web server  |  ISP w/ static IPs
|  with your     +------------->+  that’s set    +----------+
|  data on it,   |              |  up to proxy   |          |
|  looking all   |              |  your RPi      |        __| __
|  smooth with   |              |  to the 'net,  |      _(  )(  )_
|  a custom 3D-  |              |  but only the  |     ((        ))
|  printed case  |              |  stuff you     |    (( Internet ))
|  Aww yiss.     |              |  want public.  |     ((________))
|                |              |                |          |
+----------------+              +----------------+          |
							  |
“Oh hey, there                 “I can see your            |
 is my data on                  awesome website  <--------+
 my own device”                 from here!”
     ~o/                               o
     /|                               -|/
     / \                              / \
     you                           your friend
```
