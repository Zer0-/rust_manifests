DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

mkdir -p manifests

channel_name=""
channel_url=""
skip=true

for i in `cat urls.txt`
do
    if [ "$skip" = true ]
    then
        channel_name=$i
        skip=false
    else
        channel_url=$i
        echo $channel_url $channel_name
        curl $channel_url \
            | tee manifests/$channel_name.toml \
            | python tomltojson.py > manifests/$channel_name.json
        skip=true
    fi
done
