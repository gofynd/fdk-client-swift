# FDK Swift


FDK client for Swift language


## Getting Started
Get started with the Swift Development SDK for Fynd Platform


# Usage

1. Add `pod 'FDKClient', :git => 'https://github.com/gofynd/fdk-client-swift'`
2. Do `pod install`
3. Add `import FDKClient`
4. Start integrating

### Sample Usage:
```
  if let config = ApplicationConfig(
      applicationID: "YOUR_APPLICATION_ID",
      applicationToken: "YOUR_APPLICATION_TOKEN",
      domain: "BASE_URL"
  ) {
      let applicationClient = ApplicationClient(config: config)
      applicationClient.lead.getCustomForm(slug: "form-slug") { (form, error) in
          if let form = form {
              print(form.title)
          } else if let error = error {
              print(error.message)
          }
      }
  }
```


### Documentation

* [Application Front](documentation/APPLICATION.md)
* [Platform](documentation/PLATFORM.md)
* [Code Examples](documentation/EXAMPLES.md)