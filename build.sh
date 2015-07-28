docker='docker --tlsverify=false'
container='baseimage-elixir'
image="$container"

if [[ "$($docker images)" == *$image* ]]; then
  $docker rmi $image
fi

$docker build -t $image --rm .
