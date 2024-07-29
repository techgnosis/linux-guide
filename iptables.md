iptables is the core packet filtering technology. There is a newer alternative called `nftables` but it is not ubiquitous yet

# iptables
-t is table  
-A is append a rule to a chain  
-i is input interface  
-j is jump (target)  
-s is source  
-o is output interface  
-p is protocol  

There are a handful of built-in tables, but `filter` and `nat` are the most important

`filter` is the default table. If you don't provide the `-t` flag, you will use the `filter` table

Tables have rule `chains`, and chains contains rules

filter table has INPUT, FORWARD, and OUTPUT chains  
nat table has PREROUTING, INPUT, OUTPUT, and POSTROUTING chains


Rules have targets. Targets are generally ACCEPT, DROP, or RETURN

To see the rules correctly, do `iptables -L -n -v` (list, numeric, verbose)
