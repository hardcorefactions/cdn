echo "[+] Blocking pfcloud... (AS51396)"
whois -h whois.radb.net -- "-i origin AS51396" | awk '/^route:/ {print $2}' | while read -r ip_address; do
    ufw deny from "$ip_address" comment "Common scanner"
done

echo "[+] Blocking contabo... (AS51167 & AS141995)"
whois -h whois.radb.net -- "-i origin AS51167" | awk '/^route:/ {print $2}' | while read -r ip_address; do
    ufw deny from "$ip_address" comment "Common scanner"
done
whois -h whois.radb.net -- "-i origin AS141995" | awk '/^route:/ {print $2}' | while read -r ip_address; do
    ufw deny from "$ip_address" comment "Common scanner"
done

echo "[+] Blocking digital ocean... (AS14061)"
whois -h whois.radb.net -- "-i origin AS14061" | awk '/^route:/ {print $2}' | while read -r ip_address; do
    ufw deny from "$ip_address" comment "Common scanner"
done

echo "[+] Blocking linode (AS34164, AS35994, AS32787, AS21342, AS33905, AS36183, AS12222, AS63949, AS24319, AS16625, AS18717, AS31984, AS18680, AS26008, AS20940)"
whois -h whois.radb.net -- "-i origin AS34164" | awk '/^route:/ {print $2}' | while read -r ip_address; do
    ufw deny from "$ip_address" comment "Common scanner"
done
whois -h whois.radb.net -- "-i origin AS35994" | awk '/^route:/ {print $2}' | while read -r ip_address; do
    ufw deny from "$ip_address" comment "Common scanner"
done
whois -h whois.radb.net -- "-i origin AS32787" | awk '/^route:/ {print $2}' | while read -r ip_address; do
    ufw deny from "$ip_address" comment "Common scanner"
done
whois -h whois.radb.net -- "-i origin AS21342" | awk '/^route:/ {print $2}' | while read -r ip_address; do
    ufw deny from "$ip_address" comment "Common scanner"
done
whois -h whois.radb.net -- "-i origin AS33905" | awk '/^route:/ {print $2}' | while read -r ip_address; do
    ufw deny from "$ip_address" comment "Common scanner"
done
whois -h whois.radb.net -- "-i origin AS36183" | awk '/^route:/ {print $2}' | while read -r ip_address; do
    ufw deny from "$ip_address" comment "Common scanner"
done
whois -h whois.radb.net -- "-i origin AS12222" | awk '/^route:/ {print $2}' | while read -r ip_address; do
    ufw deny from "$ip_address" comment "Common scanner"
done
whois -h whois.radb.net -- "-i origin AS63949" | awk '/^route:/ {print $2}' | while read -r ip_address; do
    ufw deny from "$ip_address" comment "Common scanner"
done
whois -h whois.radb.net -- "-i origin AS24319" | awk '/^route:/ {print $2}' | while read -r ip_address; do
    ufw deny from "$ip_address" comment "Common scanner"
done
whois -h whois.radb.net -- "-i origin AS16625" | awk '/^route:/ {print $2}' | while read -r ip_address; do
    ufw deny from "$ip_address" comment "Common scanner"
done
whois -h whois.radb.net -- "-i origin AS18717" | awk '/^route:/ {print $2}' | while read -r ip_address; do
    ufw deny from "$ip_address" comment "Common scanner"
done
whois -h whois.radb.net -- "-i origin AS31984" | awk '/^route:/ {print $2}' | while read -r ip_address; do
    ufw deny from "$ip_address" comment "Common scanner"
done
whois -h whois.radb.net -- "-i origin AS18680" | awk '/^route:/ {print $2}' | while read -r ip_address; do
    ufw deny from "$ip_address" comment "Common scanner"
done
whois -h whois.radb.net -- "-i origin AS26008" | awk '/^route:/ {print $2}' | while read -r ip_address; do
    ufw deny from "$ip_address" comment "Common scanner"
done
whois -h whois.radb.net -- "-i origin AS20940" | awk '/^route:/ {print $2}' | while read -r ip_address; do
    ufw deny from "$ip_address" comment "Common scanner"
done

echo "[+] Blocking azure... (AS8075)"
whois -h whois.radb.net -- "-i origin AS8075" | awk '/^route:/ {print $2}' | while read -r ip_address; do
    ufw deny from "$ip_address" comment "Common scanner"
done
