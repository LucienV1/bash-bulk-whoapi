#!/bin/bash

# Path to the file containing domain names
input="/path/to/domain_list"

# Output file to store the results
output_file="/path/to/output"

# whoapi.com api key
apikey="<API_KEY>"

# API endpoint URL
api_url="https://api.whoapi.com/?apikey=${apikey}&r=taken&domain="

# Function to check if a domain is available
check_domain() {
    local domain=$1
    local taken=$(curl -s "${api_url}${domain}" | jq '.taken')

    if [[ $taken -eq 0 ]]; then
      echo "$domain" >> "$output_file"
      echo "$domain is available!"
    else 
      echo "$domain is taken!"
    fi
    sleep 1
}

# Read each domain from the test file and check its availability
while IFS= read -r line; do
    line=$(echo "$line" | tr -d '\r')
    check_domain "$line"
done < "$input"