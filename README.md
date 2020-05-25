# VSS GraphQL Client


## Client

Enables _type-safe_ creation of the GraphQL query and output of the VSS data.  

The client can be built for any OS able to run _Swift 5.2_.  
To compile the lib for a specific platform, it can be done through either _terminal_ or _Xcode_, but requires the models to be generated beforehand (if missing).  

Additionally, the _Client_ can be used with _Swift Package Manager_ as a dependency in other projects.


#### Terminal

To compile the generator from terminal, please follow the steps:

1. navigate to the repository's directory
2. execute `swift build VSSGraphQLClient`


#### Xcode

To compile the client from Xcode, please follow the steps:

1. open `VSSGraphQL.xcodeproj`
2. choose _VSSGraphQLClient_ as the active target (from top left) with the desired target platform
3. run the project to compile the lib


#### Swift Package Manager

This is the _recommended_ way to use the Client.  

In order to use the Client as a dependency with SPM, there are 2 options:

1. navigate to the root directory of your _swift project_
2. open `Package.swift`
3. add `.package(url: "git@github.com:highmobility/vss-graphql-client-swift.git", .upToNextMinor(from: "1.0.0")),` to _dependencies_
4. add `VSSGraphQLClient` to your _target's dependencies_

or the dependency can be added in Xcode:

1. open your _Xcode project_
2. open your "master" project from the left _navigation area_
3. choose your project above the targets (to edit the project settings)
4. select _Swift Packages_ from the top-center
5. click the `+` button
6. add `git@github.com:highmobility/vss-graphql-client-swift.git` as the _package repository URL_
7. choose your _version rules_
8. add the _Client_ lib to your desired target


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
