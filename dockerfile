FROM dokken/ubuntu-22.04
FROM golang:1.21.1


# Updating and Installing utils in the system 

RUN mkdir ~/Tools
RUN mkdir -p ~/Tools/Wordlists/
RUN mkdir -p ~/Tools/Resolvers/
RUN apt update -y 
RUN apt upgrade -y 
RUN apt install curl git wget -y python3 pipx python3-pip make cmake

# Installing Golang Tools

# Installing Nuclei 
RUN go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
RUN nuclei -ut 

# Installing Subfinder 
RUN go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

# Installing Katana 
RUN go install github.com/projectdiscovery/katana/cmd/katana@latest

# Installing HTTPx
RUN go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

# Installing Naabu 
RUN  apt install -y libpcap-dev
RUN go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest

# Installing httprobe
RUN go install github.com/tomnomnom/httprobe@latest

# Installing waybackurls
RUN go install github.com/tomnomnom/waybackurls@latest

# Installing Unfurl 
RUN go install github.com/tomnomnom/unfurl@latest

# Installing Assetfinder 
RUN go install github.com/tomnomnom/assetfinder@latest

# Installing fff
RUN go install github.com/tomnomnom/fff@latest

# Installing qsreplace
RUN go install github.com/tomnomnom/qsreplace@latest

# Installing Dalfox
RUN go install github.com/hahwul/dalfox/v2@latest

# Installing Robots.txt parser
RUN go install github.com/edoardottt/lit-bb-hack-tools/robotstxt@latest

# Installing eefjsf
RUN go install github.com/edoardottt/lit-bb-hack-tools/eefjsf@latest

# Installing URLwalk 
RUN go install github.com/root4loot/urlwalk@master

# Installing Hakrawler 
RUN go install github.com/hakluke/hakrawler@latest

# Installing SocialHunter
RUN go install github.com/utkusen/socialhunter@latest

# Installing Web Cache Vulnerability scanner 
RUN go install -v github.com/Hackmanit/Web-Cache-Vulnerability-Scanner@latest

# Installing ucors
RUN go install github.com/wfinn/ucors@latest

# Installing GetJS
RUN go install github.com/003random/getJS@latest

# Installing ssh-checker
RUN go install github.com/lazytools/sshchecker/cmd/sshchecker@latest

# Install PureDNS 
RUN go install github.com/d3mondev/puredns/v2@latest

# Installing python Tools

# Installing Dirsearch
RUN pipx install dirsearch

# Installing DNSgen 
RUN pipx install DNSgen

# Install MassDNS 
RUN git clone https://github.com/blechschmidt/massdns.git ~/Tools/massdns
RUN cd ~/Tools/massdns && make && make install 