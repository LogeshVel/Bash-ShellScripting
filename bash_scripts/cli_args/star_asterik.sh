echo "-----------------------"
echo "* :$*"
echo "@ :$@"

echo "-----------------------"

echo
echo '@ without quotes - cmd $@'
echo
for x in $@
do
    echo "Here is arg: '$x'"
done

echo
echo '* without quotes - cmd $*'
echo
for x in $*
do
    echo "Here is arg: '$x'"
done


echo "-----------------------"
echo
echo '@ with quotes - cmd "$@"'
echo
for x in "$@"
do
    echo "Here is arg: '$x'"
done

echo
echo '* with quotes - cmd "$*"'
echo
for x in "$*"
do
    echo "Here is arg: '$x'"
done

echo "-----------------------"
echo
echo '@ with quotes and {} - cmd "${@}"'
echo
for x in "${@}"
do
    echo "Here is arg: '$x'"
done

echo
echo '* with quotes and {} - cmd "${*}"'
echo
for x in "${*}"
do
    echo "Here is arg: '$x'"
done