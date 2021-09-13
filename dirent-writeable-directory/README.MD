# Create Writeable Directory
This example shows how to create a writeable directory prior to executing the tool by using a [Dirent](https://www.commonwl.org/v1.2/CommandLineTool.html#Dirent) InitialWorkDirRequirement.

The entry expression on line 12 can be replaced by other javascript expressions to create files like config files.

The example also shows how to use the [ShellCommandRequirement](https://www.commonwl.org/v1.2/CommandLineTool.html#ShellCommandRequirement) to embed metacharacters like `>` or `|` into your shell commands which would otherwise be wrapped by quotes.
