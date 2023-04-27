



##### [Back to Partner docs](./README.md)

## SwaggerTest Methods
Authorization configuration apis
* [testSwaggerApi](#testswaggerapi)



## Methods with example and description


#### testSwaggerApi
test swagger




```swift
partnerClient.swaggertest.testSwaggerApi(organizationId: organizationId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| organizationId | String | yes | oragnization name |  



Test swagger

*Returned Response:*




[TestResponse](#TestResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---



### Schemas

 
 
 #### [TestResponse](#TestResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  | Response Success |

---



