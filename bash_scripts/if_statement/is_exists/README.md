### CONDITIONAL EXPRESSIONS

Conditional  expressions  are  used by the [[ compound command

Available Flags related to the files and directories

-a file - True if file exists.

-d file - True if file exists and is a directory.

-e file - True if file exists.

-f file - True if file exists and is a regular file.

-r file - True if file exists and is readable.

-w file - True if file exists and is writable.

-x file - True if file exists and is executable.

Example:

```bash
if [[ -d $1 ]]
then
    echo "The dir '$1' exists"
else
    echo "The dir '$1' doesnot exists"
fi

# working with not condition

if [[ ! -f $1 ]]
then
    echo "The file '$1' not eixts"
else
    echo "The file '$1' exists"
fi
```

To know more about the Conditional Expression see the man page of the bash and search for 'CONDITIONAL EXPRESSIONS'

```man bash```
