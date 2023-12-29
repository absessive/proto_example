# Ruby Protobuf Example

## Pre-Requisites
- Ensure `protoc` executable is available. On macOS this can be done by using brew
`brew install protobuf`

## Steps
### REST
1. `bundle install`
2. Create a `.proto` file. E.g. in `proto` directory
3. Run the `protoc` compiler to generate Ruby classes
   ```
   protoc --ruby_out=. proto/user.proto
   ```
4. Create a Sinatra Server, e.g. `app.rb`
5. Create a client (http in this case), e.g.
6. Run it on port 4321
  ```
  ruby app.rb -p 4321
  ```
7. Use the client `client.rb` to call the restful app
  ```
  ruby client.rb
  ```

### GRPC
Work in Progress