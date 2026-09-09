# Log-Analyser

A lightweight Bash script to parse standard Web Server (Nginx / Apache) log files and extract key access metrics.

## Features

- **Top 5 IP Addresses**: Displays the client IPs generating the most traffic.
- **Top 5 Requested Paths**: Identifies the most popular endpoints/URLs.
- **Top 5 Response Status Codes**: Summarizes HTTP response codes (200, 404, 500, etc.).
- **Top 5 User Agents**: Lists the top browsers/bots making requests.

## Prerequisites

- A Unix-like environment (Linux, macOS, WSL)
- Standard command-line utilities: `awk`, `sort`, `uniq`, `head`

## Installation & Setup

1. **Clone or download the repository:**
   ```bash
   
   cd log-analyser

```

2. **Make the script executable:**
```bash
chmod +x log_analyser.sh

```



## Usage

Pass your log file path as the first argument:

```bash
./log_analyser.sh /path/to/access.log

```

### Example Output

```text
Top 5 IP addresses with the most requests:
192.168.1.10 - 450 requests
10.0.0.5 - 230 requests

Top 5 most requested paths:
/index.html - 300 requests
/api/v1/health - 150 requests

Top 5 response status codes:
200 - 800 requests
404 - 45 requests

Top 5 user agents:
   520 Mozilla/5.0 (Windows NT 10.0; Win64; x64)
    90 curl/7.68.0

```

## License

[MIT](https://www.google.com/search?q=LICENSE)

```

```
