result=$( sudo docker ps -q myapp )

if [[ -n "$result" ]]; then
  docker kill $result
  docker run -d -p 9090:8080 --name myapp vannalmanju/my-app:latest
else
  docker run -d -p 9090:8080 --name myapp vannalmanju/my-app:latest
fi
