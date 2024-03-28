
# Check if the correct number of arguments are provided
if [ $# -ne 2 ]; then
    echo "Error: Incorrect number of arguments."
    echo "Usage: $0 <filesdir> <searchstr>"
    exit 1
fi

filesdir="$1"
searchstr="$2"

if [ -z "$filesdir" ] || [ -z "$searchstr" ]; then
    echo "Error: Missing arguments."
    echo "Usage: $0 <filesdir> <searchstr>"
    exit 1
fi

if [ ! -d "$filesdir" ]; then
    echo "Error: '$filesdir' is not a directory."
    exit 1
fi

num_files=$(find "$filesdir" -type f | wc -l)

num_matching_lines=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $num_files and the number of matching lines are $num_matching_lines"

