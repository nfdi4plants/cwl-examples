# Create Writeable Directory
This example shows how to create a writeable directory using a [Dirent](https://www.commonwl.org/v1.2/CommandLineTool.html#Dirent) InitialWorkDirRequirement before executing the tool.

The entry expression on line 12 can be replaced by other javascript expressions to create files like config files prior to executing the tool.

The example also shows how to use the [ShellCommandRequirement](https://www.commonwl.org/v1.2/CommandLineTool.html#ShellCommandRequirement) to embed metacharacters like `>` or `|` into your shell command without wrapping them with quotes.
