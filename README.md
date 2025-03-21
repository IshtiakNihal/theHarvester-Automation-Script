# theHarvester Automation Script Using "Bash in Terminal"

This script automates **theHarvester**, a powerful OSINT tool used for gathering emails, subdomains, hosts, employee names, and more from different public sources.

## 🚀 Getting Started

### 1️⃣ Prerequisites

You need **Kali Linux** or any **Linux distribution** that supports `theHarvester`. Before running the script, follow these steps:

#### 📁 Step 1: Create a Folder & File

Open **Terminal** and run:

```bash
mkdir theHarvester && cd theHarvester
nano theharvester_scan.sh
```

#### ✍️ Step 2: Paste the Script

Copy and paste the following script into `nano`, then save it using `CTRL + X`, press `Y`, and hit **Enter**.

```bash
#!/bin/bash

# Check if a domain is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

DOMAIN="$1"
OUTPUT_FILE="theHarvester_results_${DOMAIN}.txt"

# Use only supported sources
SOURCES="anubis,binaryedge,bing,brave,crtsh,duckduckgo,fullhunt,github-code,hackertarget,hunter,intelx,otx,projectdiscovery,securityTrails,threatminer,urlscan,virustotal"

echo "Starting theHarvester scan for: $DOMAIN"
echo "Results will be saved in: $OUTPUT_FILE"

# Run theHarvester with the corrected sources
theHarvester -d "$DOMAIN" -l 500 -b "$SOURCES" -f "$OUTPUT_FILE"

echo "Scan completed! Check the results in: $OUTPUT_FILE"
```

### 3️⃣ Step 3: Make It Executable

Run this command to **grant execution permissions**:

```bash
chmod +x theharvester_scan.sh
```

### 4️⃣ Step 4: Ensure `theHarvester` is Installed

Run the following command to check:

```bash
theHarvester -h
```

If it's **not installed**, install it using:

```bash
sudo apt update && sudo apt install theharvester -y
```

## 🎯 Step 5: Running the Script

To execute the script, run:

```bash
./theharvester_scan.sh <domain>
```

Example:

```bash
./theharvester_scan.sh example.com
```

## 🔎 Step 6: Understanding Parameters

- `-d <domain>` → Specifies the target domain
- `-l 500` → Limits the results to 500
- `-b <sources>` → Specifies data sources (e.g., Bing, GitHub, etc.)
- `-f <filename>` → Saves output to a file

## ⏩ Step 7: Shortcuts & Tips

- **Abort Scan** → Press `CTRL + C`
- **View Results** → Run `cat theHarvester_results_<domain>.txt`
- **Run in Background** → Use `nohup ./theharvester_scan.sh <domain> &`

## 🛠 Step 8: Troubleshooting

### ❌ "Permission Denied"

If you get this error, run:

```bash
chmod +x theharvester_scan.sh
```

### ❌ "Command Not Found"

Ensure `theHarvester` is installed:

```bash
sudo apt install theharvester -y
```

### ❌ "Externally Managed Environment"

Run the script inside a **Python virtual environment**:

```bash
python3 -m venv venv
source venv/bin/activate
pip install theHarvester
```

## 🌟 Step 9: Contribute

Feel free to **fork, modify, or improve** this script on **GitHub**! 🚀

### 🔎 Step 10: Using theHarvester for OSINT

You need to specify what to search for using theHarvester. You can search for any **domain** (website) or **organization** by running:

```bash
./theharvester_scan.sh <domain>
```

For example, to search for information about Google:

```bash
./theharvester_scan.sh google.com
```

This will gather OSINT data related to Google from multiple sources.

