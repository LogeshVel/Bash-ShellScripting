echo "-----------------------"
echo "* :$*"
echo "@ :$@"

echo "-----------------------"

echo
echo "@ without quotes"
echo
for x in $@
do
    echo "Here is arg: '$x'"
done

echo
echo "* without quotes"
echo
for x in $*
do
    echo "Here is arg: '$x'"
done


echo "-----------------------"
echo
echo "@ with quotes"
echo
for x in "$@"
do
    echo "Here is arg: '$x'"
done

echo
echo "* with quotes"
echo
for x in "$*"
do
    echo "Here is arg: '$x'"
done

echo "-----------------------"
echo
echo "@ with quotes and {}"
echo
for x in "${@}"
do
    echo "Here is arg: '$x'"
done

echo
echo "* with quotes and {}"
echo
for x in "${*}"
do
    echo "Here is arg: '$x'"
done