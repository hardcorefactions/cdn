**Inside crontab**
0 * * * * /etc/cron.hourly/blocklist.sh >> /var/log/blocklist.log 2>&1

**blocklist.sh script**
```bash
#!/bin/bash

# Ensure ipset exists
if [[ `/usr/sbin/ipset list | grep "blacklist"` == "" ]]; then
    /usr/sbin/ipset create blacklist hash:ip
fi

# Ensure iptables rule exists
if [[ `/usr/sbin/iptables -w 2 -n -L INPUT | grep "blacklist"` == "" ]]; then
    /usr/sbin/iptables -I INPUT -m set --match-set blacklist src -j DROP
fi

# Fetch the list of blocked IPs
blocked_ips=$(curl -s "https://raw.githubusercontent.com/pebblehost/hunter/master/ips.txt")

# Get current rules
ipsetrules=$(/usr/sbin/ipset list blacklist | grep -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}')

# Add new IPs
for ip in $blocked_ips; do
    if [[ `echo "$ipsetrules" | grep "$ip"` == "" ]]; then
        echo "Applying block to $ip"
        /usr/sbin/ipset add blacklist $ip/32
    fi
done

# Remove IPs not in the list anymore
for ip in $ipsetrules; do
    if [[ `echo "$blocked_ips" | grep "$ip"` == "" ]]; then
        echo "Removing block from $ip"
        /usr/sbin/ipset del blacklist $ip
    fi
done

unset IFS
```

this will block mc scanners using [hunter](https://github.com/pebblehost/hunter)
