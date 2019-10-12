
#!/bin/bash -x
# go cross compile

# $GOOS     $GOARCH
# darwin    386
# darwin    amd64
# freebsd   386
# freebsd   amd64
# freebsd   arm
# linux     386
# linux     amd64
# linux     arm
# netbsd    386
# netbsd    amd64
# netbsd    arm
# openbsd   386
# openbsd   amd64
# plan9     386
# plan9     amd64
# windows   386
# windows   amd64
# nacl      amd64
# nacl      386

if [ "${1}" = "raspbian" ]; then
  GOOS=linux GOARCH=arm go build

elif [ "${1}" = "centos" ]; then
  GOOS=linux GOARCH=386 go build
else
  echo "Invalid argument"
  exit 1 
fi

exit $?
