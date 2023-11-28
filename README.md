# bash-bulk-whoapi
A bash script to call the whoapi.com availability api from a list of domains.

# Requirements
- jq installed. `sudo apt install jq` on Ubuntu to install. (this is to parse the JSON of the api response.)
- bash.
This script has been tested to work on Ubuntu 20.04.6 LTS.

# Usage
`git clone https://github.com/LucienV1/bash-bulk-whoapi.git`
`cd bash-bulk-whoapi`
`nano whoapi.sh`
Edit the input variable to the path to your input file. (A text document where each line is a domain you would like to check.
Edit the output_file variable to the path to your output file, that domains that are checked and available will be appended to.
Edit the apikey variable to your whoapi.com api key. (Replace the <API_KEY>)
Exit nano.
Run the script.
`bash whoapi.sh`

# Optional changes
- you can remove the `line=$(echo "$line" | tr -d '\r')` line if your text document is in the unix format.
