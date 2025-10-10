I understand the MITM thing now

When I turned on mitmweb, it started intercepting traffic and offering up its own copy of the certificate that I'm requesting. That custom certificate was still presented to me and I did not have the root CA in my trust store so it failed.

That is what is happening to our customers with pip problems. Their traffic is quite literally being intercepted and looked at by the same mechanism. Some device in their corporate network is serving up their own version of the certificates for the hostname and then things like pip fail when they try to do https in docker images that dont have their CA installed

The corporate network is probably using a forward proxy. Apps and operating systems are expected to be aware of it. That proxy is the same thing as mitmproxy except mitmproxy has features that make it easy to install the CA as well as view and manipulate the HTTP requests you capture

MITM

Proxies
What they do
What MITM stands for
What it is
What are some MITM proxies
What do they call it
What is the customer scenario
