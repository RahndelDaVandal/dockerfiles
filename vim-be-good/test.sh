
img=$(docker image ls | grep "vim-be-good")

if [ -n "$img" ]; then
    # echo "not empty"
  docker run -it --rm vim-be-good
else
    # echo "empty"
  docker build -t vim-be-good .
  if [$? -ne 0]
  then
    exit 1
  fi
  docker run -it --rm vim-be-good
fi
