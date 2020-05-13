# VSS GraphQL Client


## Client

...


## CodeGenerator

> **_NOTE:_**  Currently works on _macOS_ only.

Code generator can be run from the _terminal_ or straight from _Xcode_.  

Both approaches require 2 arguments as input  
1. path to VSS GraphQL _schema file_, there's one included in `Sources/CodeGenerator/Schema/vehicle.ts`  
2. path to the _output folder_, It's recommended to set it to `Sources/Client/Models`

#### Terminal

To run the generator from terminal, please follow the steps:

1. navigate to the directory of the executable
2. execute `{executable_path}` with 2 arguments
    - schema file path as `-i {vss_schema_file_path}`  
    - output folder path as `-o {models_output_folder_path}`


#### Xcode

To run the generator from Xcode, there are 2 options, either:

1. open `VSSGraphQL.xcodeproj`
2. click `Edit Scheme...` from the target-selection menu from top left
3. choose `CodeGenerator` as the target
4. navigate to `Run > Arguments`
5. add the 2 required arguments
    - schema file path as `-i {vss_schema_file_path}`
    - output folder path as `-o {models_output_folder_path}`

Or:  

1. open `VSSGraphQL.xcodeproj`
2. navigate to `Sources/CodeGenerator/main.swift`
3. on _L:31_ replace the `inputPath:` and `outputPath:` arguments
4. comment out _L:21-24_


## Demo

> **_NOTE:_**  Currently works on _macOS_ only.

Demo can be run against a _known endpoint_ or a _local server_.


#### Known endpoint

To run the demo against a working GraphQL endpoint, please follow these steps:

1. open `VSSGraphQL.xcodeproj`
2. choose `Demo` as the target from top left and run it

Configuration of the _endpoint's URL_ and _requested values_ can be done in `Sources/Demo/main.swift`.  


#### Local server

To run the demo against a local VSS GraphQL server, please follow these steps:  

1. get the VSS data server from [GENIVI/vss-graphql](https://github.com/GENIVI/vss-graphql)
2. follow a _setup_ to run the VSS data server locally
3. open `VSSGraphQL.xcodeproj` 
4. choose `Demo` as the target from top left and run it

Configuration of the demo's _requested values_ can be done in `Sources/Demo/main.swift`.
