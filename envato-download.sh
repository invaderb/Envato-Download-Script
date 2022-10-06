# Envato Download file

envato_token=""
envato_url="https://api.envato.com/v3/market/buyer/download?purchase_code="
envato_pc=""
type=""
jq_type="."$type

echo "Getting json info"
d_url=$(curl -H "Authorization: Bearer "$envato_token $envato_url$envato_pc | jq -r $jq_type)
#echo "Setting download url"
echo "Cleaning url up"
c_url=$(echo $d_url | sed 's/(\\u0026)/&/g')
echo $c_url
echo "Downloading...."
curl $c_url -o download.zip

unzip -qq download.zip

# Add commands to move files to correct place

# Correct permissions
# move file into place
