# Create Writeable Directory
This example shows how to create a writeable directory prior to executing the tool by using [InitialWorkDirRequirement](https://www.commonwl.org/v1.2/CommandLineTool.html#InitialWorkDirRequirement) with a Directory entry.

The example also shows how to use the [ShellCommandRequirement](https://www.commonwl.org/v1.2/CommandLineTool.html#ShellCommandRequirement) to embed metacharacters like `>` or `|` into your shell commands which would otherwise be wrapped by quotes.