# VSS GraphQL Client


## Client

...


## CodeGenerator

...


## Demo

> **_NOTE:_**  Currently works on _macOS_ only.

Demo can be run against a _known endpoint_ or a _local server_.


#### Known endpoint

To run the demo, please follow these steps:

1. open `VSSGraphQL.xcodeproj` 
2. choose `Demo` as the target from top left and run it

Configuration of the _endpoint's URL_ and _requested values_ can be done in `Sources/Demo/main.swift`.  


#### Local server

To run the demo, please follow these steps:  

1. get the VSS data server from [GENIVI/vss-graphql](https://github.com/GENIVI/vss-graphql)
2. follow a _setup_ to run the VSS data server locally
3. open `VSSGraphQL.xcodeproj` 
4. choose `Demo` as the target from top left and run it

Configuration of the demo's _requested values_ can be done in `Sources/Demo/main.swift`.
