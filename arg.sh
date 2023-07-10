#!/bin/bash

echo "The script has received $# arguments."
#!/bin/bash

echo "The script name is: $0"
echo "The first argument is: $1"
echo "The second argument is: $2"
echo "All arguments are: $@"

if [ $# -eq 0 ]; then
    echo "No arguments were provided."
else
    echo "The arguments provided are:"
    for arg in "$@"; do
        echo "- $arg"
    done
fi

