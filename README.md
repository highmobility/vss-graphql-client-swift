# VSS GraphQL Client


## Client

...


## CodeGenerator

> **_NOTE:_**  Currently works on _macOS_ only.

Code generator can be run from _terminal_ or _Xcode_.  

The program expects 2 arguments:  

- `-i, --input` -- path to the _VSS GraphQL schema file_
    - there's one included in the repo at `Sources/CodeGenerator/Schema/vehicle.ts`
- `-o, --output` -- path to the _models output folder_
    - it's recommended to set it to `Sources/Client/Models`


#### Terminal
  
To run the generator from terminal, please follow the steps:

1. navigate to the directory of the executable
    - an executable can be created beforehand with Xcode or `swift build`
2. execute `{executable_path} -i {schema_path} -o {output_path}`

or simply:  

1. navigate to repo's root directory
2. execute `swift run CodeGenerator -i Sources/CodeGenerator/Schema/vehicle.ts -o Sources/Client/Models`


#### Xcode

> **_note:_**  Xcode options might require _absolute paths_ as input.

To run the generator from Xcode, there are 2 options, either:

1. open `VSSGraphQL.xcodeproj`
2. click `Edit Scheme...` from the target-selection menu from top left
3. choose `CodeGenerator` as the target
4. navigate to `Run > Arguments`
5. add the 2 required arguments to `Arguments Passed on Launch`
    - schema file path as `-i {schema_path}`
    - output folder path as `-o {output_path}`

or:  

1. open `VSSGraphQL.xcodeproj`
2. navigate to `Sources/CodeGenerator/main.swift`
3. on _L31_ replace the `inputArg` and `outputArg` with desired values
4. comment out _L21-24_


## Demo

> **_NOTE:_**  Currently works on _macOS_ only.

Demo can be run against a _known endpoint_ or a _local server_.  
Configuration of the  _requested values (data points)_ can be done in `Sources/Demo/main.swift`.


#### Known endpoint

To run the demo against a working VSS GraphQL endpoint, please follow these steps:

1. open `VSSGraphQL.xcodeproj`
2. configure the URL at `Sources/Demo/main.swift:L14`
3. choose `Demo` as the target from top left and run it  


#### Local server

To run the demo against a local VSS GraphQL server, please follow these steps:  

1. get the VSS data server from [GENIVI/vss-graphql](https://github.com/GENIVI/vss-graphql)
2. follow a _setup_ to run the VSS data server locally
3. open `VSSGraphQL.xcodeproj`
4. choose `Demo` as the target from top left and run it

or after step 2, execute `swift run Demo` in repo's root dir in terminal.
