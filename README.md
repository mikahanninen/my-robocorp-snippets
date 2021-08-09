# Robocorp Snippets

My repository contains snippets of Robot Framework (RFW) code, Python code or Robocorp task structure needed to complete a specific task.

## Running the examples

Examples can be run with [rcc](https://github.com/robocorp/rcc) by pointing to `robot.yaml` file in the example directory

```console
rcc run -r directory/robot.yaml
```

And if you need to include environment variables from the `devdata` folder then

```console
rcc run -e devdata/env.json -r directory/robot.yaml
```

### [01. Simple HTTP Post request](./01.Simple_HTTP_Post_Request/example.robot)

Example of using `RPA.HTTP` library to POST message to a Discord channel.

### [02. Using variables file](./02.Using_Variables_File)

Example of using RFW variables file and accessing other variables within variables file.

### [03. Waiting for new browser window](./03.Waiting_For_New_Browser_Window)

Example of how to wait for new window to load if it is loading slowly

### [04. Excel operations](./04.Excel_Operations)

Example of reading and updating data in Excel sheet

### [05. Hiding log of specific keyword](./05.Hiding_Logging)

Example of hiding logging from a specific keyword

### [06. Workitem operation](./06.Workitem_Operations)

Example of reading and creating work item variables and files

### [07. Try catch for keyword](./07.Try_Catch_For_Keyword)

Example of executing keyword and examining the result without error
