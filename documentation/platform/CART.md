



##### [Back to Platform docs](./README.md)

## Cart Methods
Cart APIs
* [getCoupons](#getcoupons)
* [createCoupon](#createcoupon)
* [getCouponById](#getcouponbyid)
* [updateCoupon](#updatecoupon)
* [updateCouponPartially](#updatecouponpartially)
* [getPromotions](#getpromotions)
* [createPromotion](#createpromotion)
* [getPromotionById](#getpromotionbyid)
* [updatePromotion](#updatepromotion)
* [updatePromotionPartially](#updatepromotionpartially)
* [fetchAndvalidateCartItems](#fetchandvalidatecartitems)
* [checkCartServiceability](#checkcartserviceability)
* [checkoutCart](#checkoutcart)
* [overrideCart](#overridecart)



## Methods with example and description


#### getCoupons
Get with single coupon details or coupon list




```swift
client.application("<APPLICATION_ID>").cart.getCoupons(pageNo: pageNo, pageSize: pageSize, isArchived: isArchived, title: title, isPublic: isPublic, isDisplay: isDisplay, typeSlug: typeSlug, code: code) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |   
| isArchived | Bool? | no |  |   
| title | String? | no |  |   
| isPublic | Bool? | no |  |   
| isDisplay | Bool? | no |  |   
| typeSlug | String? | no |  |   
| code | String? | no |  |  



Get coupon list with pagination

*Returned Response:*




[CouponsResponse](#CouponsResponse)

Coupon List for sent page_size and page_no




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Coupon list for sent filter and page size</i></summary>

```json
{
  "value": {
    "items": [
      {
        "_id": "5e1d9bec6d6b7e000146c840",
        "display_meta": {
          "title": "percent50 title"
        },
        "_schedule": {
          "next_schedule": [
            {
              "start": "2020-01-14T10:45:03.600000+00:00",
              "end": "2020-01-16T10:45:03+00:00"
            }
          ],
          "duration": null,
          "start": "2020-01-14T10:45:03.600000+00:00",
          "end": "2020-01-16T10:45:03+00:00",
          "cron": ""
        },
        "state": {
          "is_public": true,
          "is_display": true,
          "is_archived": false
        },
        "ownership": {
          "payable_category": "seller",
          "payable_by": ""
        },
        "code": "percent50",
        "rule_definition": {
          "type": "percentage",
          "scope": [
            "category_id"
          ],
          "applicable_on": "quantity"
        }
      }
    ],
    "page": {
      "has_next": true,
      "size": 10,
      "current": 1,
      "item_total": 30
    }
  }
}
```
</details>

</details>









---


#### createCoupon
Create new coupon




```swift
client.application("<APPLICATION_ID>").cart.createCoupon(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CouponAdd | yes | Request body |


Create new coupon

*Returned Response:*




[SuccessMessage](#SuccessMessage)

Coupon Created successfully




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "Coupon Created"
}
```
</details>









---


#### getCouponById
Get with single coupon details or coupon list




```swift
client.application("<APPLICATION_ID>").cart.getCouponById(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes |  |  



Get single coupon details with `id` in path param

*Returned Response:*




[CouponUpdate](#CouponUpdate)

Coupon object for sent `id`




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "_id": "5e1d9bec6d6b7e000146c840",
  "validation": {
    "anonymous": true,
    "app_id": [
      "5cd3db5e9d692cfe5302a7ba"
    ],
    "user_registered_after": null
  },
  "rule": [
    {
      "key": 1,
      "max": 1500,
      "min": 3000,
      "value": 50
    }
  ],
  "display_meta": {
    "title": "percent50 title",
    "description": "percent50 description",
    "auto": {
      "title": "",
      "subtitle": ""
    },
    "subtitle": "percent50 subtitle",
    "remove": {
      "title": "",
      "subtitle": ""
    },
    "apply": {
      "title": "percen50 mt",
      "subtitle": "percen50 ms"
    }
  },
  "date_meta": {
    "modified_on": "2020-02-04T14:27:00.577000+00:00",
    "created_on": "2020-01-14T10:46:04.474000+00:00"
  },
  "action": {
    "action_date": null,
    "txn_mode": "coupon"
  },
  "identifiers": {
    "category_id": [
      465,
      192,
      133,
      134,
      150,
      151,
      155,
      193,
      157,
      191,
      154,
      152,
      417,
      168,
      416,
      167,
      166,
      162,
      161,
      163,
      165,
      160
    ],
    "user_id": [],
    "store_id": [],
    "company_id": []
  },
  "author": {
    "modified_by": "23109086",
    "created_by": "23206328"
  },
  "_schedule": {
    "next_schedule": [
      {
        "start": "2020-01-14T10:45:03.600000+00:00",
        "end": "2020-01-16T10:45:03+00:00"
      }
    ],
    "duration": null,
    "start": "2020-01-14T10:45:03.600000+00:00",
    "end": "2020-01-16T10:45:03+00:00",
    "cron": ""
  },
  "state": {
    "is_public": true,
    "is_display": true,
    "is_archived": false
  },
  "ownership": {
    "payable_category": "seller",
    "payable_by": ""
  },
  "validity": {
    "priority": 0
  },
  "code": "percent50",
  "rule_definition": {
    "calculate_on": "esp",
    "value_type": "percentage",
    "is_exact": false,
    "type": "percentage",
    "scope": [
      "category_id"
    ],
    "auto_apply": false,
    "applicable_on": "quantity",
    "currency_code": "INR"
  },
  "restrictions": {
    "price_range": {
      "max": -1,
      "min": -1
    },
    "uses": {
      "remaining": {
        "app": -1,
        "user": -1,
        "total": -1
      },
      "maximum": {
        "app": -1,
        "user": -1,
        "total": -1
      }
    },
    "post_order": {
      "cancellation_allowed": true,
      "return_allowed": true
    },
    "platforms": [
      "web",
      "android",
      "ios"
    ]
  },
  "type_slug": "percentage_quantity_percentage"
}
```
</details>









---


#### updateCoupon
Update existing coupon configuration




```swift
client.application("<APPLICATION_ID>").cart.updateCoupon(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes |  |  
| body | CouponUpdate | yes | Request body |


Update coupon with id sent in `id`

*Returned Response:*




[SuccessMessage](#SuccessMessage)

Coupon updated successfully




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "Coupon Updated"
}
```
</details>









---


#### updateCouponPartially
Update coupon archive state and schedule




```swift
client.application("<APPLICATION_ID>").cart.updateCouponPartially(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes |  |  
| body | CouponPartialUpdate | yes | Request body |


Update archive/unarchive and change schedule for coupon

*Returned Response:*




[SuccessMessage](#SuccessMessage)

Coupon updated successfully




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Archive or Unarchive coupon</i></summary>

```json
{
  "value": {
    "success": true,
    "message": "Coupon Updated"
  }
}
```
</details>

<details>
<summary><i>&nbsp; Coupon schedule updated successfully</i></summary>

```json
{
  "value": {
    "success": true,
    "message": "Coupon schedule updated"
  }
}
```
</details>

</details>









---


#### getPromotions
Get promotion list




```swift
client.application("<APPLICATION_ID>").cart.getPromotions(pageNo: pageNo, pageSize: pageSize, q: q, isActive: isActive, promoGroup: promoGroup, promotionType: promotionType, fpPanel: fpPanel, promotionId: promotionId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |   
| q | String? | no |  |   
| isActive | Bool? | no |  |   
| promoGroup | String? | no |  |   
| promotionType | String? | no |  |   
| fpPanel | String? | no |  |   
| promotionId | String? | no |  |  



Get promotion list with pagination

*Returned Response:*




[PromotionsResponse](#PromotionsResponse)

Promotion List for sent page_size and page_no




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Promotion list for sent filter and page size</i></summary>

```json
{
  "value": {
    "items": [
      {
        "_id": "61dc8dc9adf45b2273a70a6e",
        "promo_group": "product",
        "date_meta": {
          "modified_on": "2022-01-11T05:47:11.503000+00:00",
          "created_on": "2022-01-10T19:49:29.917000+00:00"
        },
        "display_meta": {
          "name": "Test BOGO promo"
        },
        "author": {
          "created_by": "5",
          "modified_by": "5"
        },
        "_schedule": {
          "start": "2022-01-10T18:45:36.311000+00:00",
          "end": null,
          "published": true,
          "next_schedule": [
            {
              "start": "2022-01-10T18:45:36.311000+00:00",
              "end": null
            }
          ],
          "cron": "",
          "duration": 0
        }
      }
    ],
    "page": {
      "has_next": true,
      "size": 10,
      "current": 1,
      "item_total": 30
    }
  }
}
```
</details>

</details>









---


#### createPromotion
Create new promotion




```swift
client.application("<APPLICATION_ID>").cart.createPromotion(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PromotionAdd | yes | Request body |


Create new promotion

*Returned Response:*




[PromotionAdd](#PromotionAdd)

Promotion Created successfully




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "_id": "61dc8dc9adf45b2273a70a6e",
  "application_id": "000000000000000000000001",
  "promo_group": "product",
  "promotion_type": "bogo",
  "date_meta": {
    "modified_on": "2022-01-11T05:47:11.503000+00:00",
    "created_on": "2022-01-10T19:49:29.917000+00:00"
  },
  "discount_rules": [
    {
      "buy_condition": "( rule#1 )",
      "offer": {
        "max_offer_quantity": 2
      },
      "discount_type": "bogo",
      "item_criteria": {
        "item_brand": [
          2,
          14,
          65
        ]
      }
    }
  ],
  "buy_rules": {
    "rule#1": {
      "cart_quantity": {
        "greater_than_equals": 5
      },
      "item_brand": [
        1,
        2,
        14,
        16,
        29,
        39,
        43,
        65,
        73
      ]
    }
  },
  "display_meta": {
    "offer_text": "Test",
    "name": "Test BOGO promo",
    "description": "<p>Test</p>"
  },
  "apply_all_discount": false,
  "apply_exclusive": null,
  "stackable": true,
  "restrictions": {
    "user_id": [],
    "anonymous_users": true,
    "platforms": [
      "web",
      "android",
      "ios"
    ],
    "post_order": {
      "cancellation_allowed": true,
      "return_allowed": true
    },
    "uses": {
      "remaining": {
        "user": 0,
        "total": 0
      },
      "maximum": {
        "user": 0,
        "total": 0
      }
    },
    "payments": []
  },
  "_custom_json": {},
  "author": {
    "created_by": "5",
    "modified_by": "5"
  },
  "_schedule": {
    "start": "2022-01-10T18:45:36.311Z",
    "end": null,
    "published": true,
    "next_schedule": [
      {
        "start": "2022-01-10T18:45:36.311Z",
        "end": null
      }
    ],
    "cron": "",
    "duration": 0
  },
  "apply_priority": 1,
  "visiblility": {
    "pdp": true,
    "coupon_list": false
  },
  "ownership": {
    "payable_by": "",
    "payable_category": "seller"
  },
  "currency": "INR",
  "mode": "promotion",
  "post_order_action": {
    "action_date": null,
    "action_type": ""
  },
  "indexed_criteria": {
    "item_brand": [
      1,
      2
    ]
  }
}
```
</details>









---


#### getPromotionById
Get with single promotion details or promotion list




```swift
client.application("<APPLICATION_ID>").cart.getPromotionById(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes |  |  



Get single promotion details with `id` in path param

*Returned Response:*




[PromotionUpdate](#PromotionUpdate)

Promotion object for sent `id`




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "_id": "61dc8dc9adf45b2273a70a6e",
  "application_id": "000000000000000000000001",
  "promo_group": "product",
  "promotion_type": "bogo",
  "date_meta": {
    "modified_on": "2022-01-11T05:47:11.503000+00:00",
    "created_on": "2022-01-10T19:49:29.917000+00:00"
  },
  "discount_rules": [
    {
      "buy_condition": "( rule#1 )",
      "offer": {
        "max_offer_quantity": 2
      },
      "discount_type": "bogo",
      "item_criteria": {
        "item_brand": [
          2,
          14,
          65
        ]
      }
    }
  ],
  "buy_rules": {
    "rule#1": {
      "cart_quantity": {
        "greater_than_equals": 5
      },
      "item_brand": [
        1,
        2,
        14,
        16,
        29,
        39,
        43,
        65,
        73
      ]
    }
  },
  "display_meta": {
    "offer_text": "Test",
    "name": "Test BOGO promo",
    "description": "<p>Test</p>"
  },
  "apply_all_discount": false,
  "apply_exclusive": null,
  "stackable": true,
  "restrictions": {
    "user_id": [],
    "anonymous_users": true,
    "platforms": [
      "web",
      "android",
      "ios"
    ],
    "post_order": {
      "cancellation_allowed": true,
      "return_allowed": true
    },
    "uses": {
      "remaining": {
        "user": 0,
        "total": 0
      },
      "maximum": {
        "user": 0,
        "total": 0
      }
    },
    "payments": []
  },
  "_custom_json": {},
  "author": {
    "created_by": "5",
    "modified_by": "5"
  },
  "_schedule": {
    "start": "2022-01-10T18:45:36.311Z",
    "end": null,
    "published": true,
    "next_schedule": [
      {
        "start": "2022-01-10T18:45:36.311Z",
        "end": null
      }
    ],
    "cron": "",
    "duration": 0
  },
  "apply_priority": 1,
  "visiblility": {
    "pdp": true,
    "coupon_list": false
  },
  "ownership": {
    "payable_by": "",
    "payable_category": "seller"
  },
  "currency": "INR",
  "mode": "promotion",
  "post_order_action": {
    "action_date": null,
    "action_type": ""
  },
  "indexed_criteria": {
    "item_brand": [
      1,
      2
    ]
  }
}
```
</details>









---


#### updatePromotion
Update existing promotion configuration




```swift
client.application("<APPLICATION_ID>").cart.updatePromotion(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes |  |  
| body | PromotionUpdate | yes | Request body |


Update promotion with id sent in `id`

*Returned Response:*




[PromotionUpdate](#PromotionUpdate)

Promotion updated successfully




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "_id": "61dc8dc9adf45b2273a70a6e",
  "application_id": "000000000000000000000001",
  "promo_group": "product",
  "promotion_type": "bogo",
  "date_meta": {
    "modified_on": "2022-01-11T05:47:11.503000+00:00",
    "created_on": "2022-01-10T19:49:29.917000+00:00"
  },
  "discount_rules": [
    {
      "buy_condition": "( rule#1 )",
      "offer": {
        "max_offer_quantity": 2
      },
      "discount_type": "bogo",
      "item_criteria": {
        "item_brand": [
          2,
          14,
          65
        ]
      }
    }
  ],
  "buy_rules": {
    "rule#1": {
      "cart_quantity": {
        "greater_than_equals": 5
      },
      "item_brand": [
        1,
        2,
        14,
        16,
        29,
        39,
        43,
        65,
        73
      ]
    }
  },
  "display_meta": {
    "offer_text": "Test",
    "name": "Test BOGO promo",
    "description": "<p>Test</p>"
  },
  "apply_all_discount": false,
  "apply_exclusive": null,
  "stackable": true,
  "restrictions": {
    "user_id": [],
    "anonymous_users": true,
    "platforms": [
      "web",
      "android",
      "ios"
    ],
    "post_order": {
      "cancellation_allowed": true,
      "return_allowed": true
    },
    "uses": {
      "remaining": {
        "user": 0,
        "total": 0
      },
      "maximum": {
        "user": 0,
        "total": 0
      }
    },
    "payments": []
  },
  "_custom_json": {},
  "author": {
    "created_by": "5",
    "modified_by": "5"
  },
  "_schedule": {
    "start": "2022-01-10T18:45:36.311Z",
    "end": null,
    "published": true,
    "next_schedule": [
      {
        "start": "2022-01-10T18:45:36.311Z",
        "end": null
      }
    ],
    "cron": "",
    "duration": 0
  },
  "apply_priority": 1,
  "visiblility": {
    "pdp": true,
    "coupon_list": false
  },
  "ownership": {
    "payable_by": "",
    "payable_category": "seller"
  },
  "currency": "INR",
  "mode": "promotion",
  "post_order_action": {
    "action_date": null,
    "action_type": ""
  },
  "indexed_criteria": {
    "item_brand": [
      1,
      2
    ]
  }
}
```
</details>









---


#### updatePromotionPartially
Update promotion publish state and schedule




```swift
client.application("<APPLICATION_ID>").cart.updatePromotionPartially(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes |  |  
| body | PromotionPartialUpdate | yes | Request body |


Update publish/unpublish and change schedule for promotion

*Returned Response:*




[SuccessMessage](#SuccessMessage)

Promotion updated successfully




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Publish or Unpublish promotion</i></summary>

```json
{
  "value": {
    "success": true,
    "message": "Promotion Updated"
  }
}
```
</details>

<details>
<summary><i>&nbsp; Promotion schedule updated successfully</i></summary>

```json
{
  "value": {
    "success": true,
    "message": "Promotion schedule updated"
  }
}
```
</details>

</details>









---


#### fetchAndvalidateCartItems
Fetch Cart Details




```swift
client.application("<APPLICATION_ID>").cart.fetchAndvalidateCartItems(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | OpenapiCartDetailsRequest | yes | Request body |


Get all the details of cart for a list of provided `cart_items`

*Returned Response:*




[OpenapiCartDetailsResponse](#OpenapiCartDetailsResponse)

Cart details with breakup




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "quantity": 1,
      "message": "",
      "coupon_message": "",
      "product": {
        "type": "product",
        "uid": 803140,
        "name": "Green Solid T-Shirt",
        "slug": "celio-green-solid-t-shirt-803140-dd9e2c",
        "brand": {
          "uid": 44,
          "name": "celio"
        },
        "categories": [
          {
            "uid": 192,
            "name": "T-Shirts"
          }
        ],
        "images": [
          {
            "aspect_ratio": "16:25",
            "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/44_NEMIEL@GREENBRITISH/1_1548161273344.jpg",
            "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/44_NEMIEL@GREENBRITISH/1_1548161273344.jpg"
          }
        ],
        "action": {
          "type": "product",
          "url": "https://api.addsale.com/platform/content/v1/products/celio-green-solid-t-shirt-803140-dd9e2c/",
          "query": {
            "product_slug": [
              "celio-green-solid-t-shirt-803140-dd9e2c"
            ]
          }
        }
      },
      "article": {
        "type": "article",
        "uid": "25_44_A7050_NEMIEL@GREENBRITISH_S",
        "size": "S",
        "seller": {
          "uid": 25,
          "name": "CELIO FUTURE FASHION PRIVATE LIMITED"
        },
        "store": {
          "uid": 1486,
          "name": "Forum Mall"
        },
        "quantity": 1,
        "price": {
          "base": {
            "marked": 1299,
            "effective": 649.5,
            "currency_code": "INR"
          },
          "converted": {
            "marked": 1299,
            "effective": 649.5,
            "currency_code": "INR"
          }
        }
      },
      "key": "803140_S",
      "discount": "50% OFF",
      "price": {
        "base": {
          "add_on": 0,
          "marked": 1299,
          "effective": 649.5,
          "selling": 649.5,
          "currency_code": "INR"
        },
        "converted": {
          "add_on": 0,
          "marked": 1299,
          "effective": 649.5,
          "selling": 649.5,
          "currency_code": "INR"
        }
      },
      "availability": {
        "sizes": [
          "L",
          "XL",
          "M",
          "S"
        ],
        "other_store_quantity": 0,
        "out_of_stock": false,
        "deliverable": true,
        "is_valid": true,
        "available_sizes": [
          {
            "is_available": true,
            "display": "L",
            "value": "L"
          },
          {
            "is_available": true,
            "display": "XXL",
            "value": "XXL"
          },
          {
            "is_available": true,
            "display": "XL",
            "value": "XL"
          },
          {
            "is_available": true,
            "display": "M",
            "value": "M"
          },
          {
            "is_available": true,
            "display": "S",
            "value": "S"
          },
          {
            "is_available": false,
            "display": "30",
            "value": "30"
          }
        ]
      },
      "bulk_offer": {}
    },
    {
      "quantity": 1,
      "message": "Out of stock. Please remove item",
      "coupon_message": "",
      "product": {
        "type": "product",
        "uid": 803140,
        "name": "Green Solid T-Shirt",
        "slug": "celio-green-solid-t-shirt-803140-dd9e2c",
        "brand": {
          "uid": 44,
          "name": "celio"
        },
        "categories": [
          {
            "uid": 192,
            "name": "T-Shirts"
          }
        ],
        "images": [
          {
            "aspect_ratio": "16:25",
            "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/44_NEMIEL@GREENBRITISH/1_1548161273344.jpg",
            "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/44_NEMIEL@GREENBRITISH/1_1548161273344.jpg"
          }
        ],
        "action": {
          "type": "product",
          "url": "https://api.addsale.com/platform/content/v1/products/celio-green-solid-t-shirt-803140-dd9e2c/",
          "query": {
            "product_slug": [
              "celio-green-solid-t-shirt-803140-dd9e2c"
            ]
          }
        }
      },
      "article": {},
      "key": "803140_S",
      "discount": "",
      "price": {
        "base": {
          "add_on": 0,
          "marked": 1299,
          "effective": 1299,
          "selling": 1299,
          "currency_code": "INR"
        },
        "converted": {
          "add_on": 0,
          "marked": 1299,
          "effective": 1299,
          "selling": 1299,
          "currency_code": "INR"
        }
      },
      "availability": {
        "sizes": [
          "L",
          "XXL",
          "XL",
          "M",
          "S"
        ],
        "other_store_quantity": 0,
        "out_of_stock": true,
        "deliverable": false,
        "is_valid": false,
        "available_sizes": [
          {
            "is_available": true,
            "display": "L",
            "value": "L"
          },
          {
            "is_available": true,
            "display": "XXL",
            "value": "XXL"
          },
          {
            "is_available": true,
            "display": "XL",
            "value": "XL"
          },
          {
            "is_available": true,
            "display": "M",
            "value": "M"
          },
          {
            "is_available": true,
            "display": "S",
            "value": "S"
          },
          {
            "is_available": false,
            "display": "30",
            "value": "30"
          }
        ]
      },
      "bulk_offer": {}
    }
  ],
  "is_valid": false,
  "breakup_values": {
    "display": [
      {
        "display": "MRP Total",
        "key": "mrp_total",
        "value": 2598,
        "currency_code": "INR"
      },
      {
        "display": "Discount",
        "key": "discount",
        "value": -649,
        "currency_code": "INR"
      },
      {
        "display": "Subtotal",
        "key": "subtotal",
        "value": 1949,
        "currency_code": "INR"
      },
      {
        "display": "Total",
        "key": "total",
        "value": 1949,
        "currency_code": "INR"
      }
    ],
    "raw": {
      "cod_charge": 0,
      "convenience_fee": 0,
      "coupon": 0,
      "delivery_charge": 0,
      "discount": -649.5,
      "fynd_cash": 0,
      "gst_charges": 170.11,
      "mrp_total": 2598,
      "subtotal": 1948.5,
      "total": 1948.5,
      "vog": 1778.39,
      "you_saved": 0
    }
  }
}
```
</details>









---


#### checkCartServiceability
Check Pincode Serviceability




```swift
client.application("<APPLICATION_ID>").cart.checkCartServiceability(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | OpenApiCartServiceabilityRequest | yes | Request body |


Check Pincode serviceability for cart items provided in `cart_items` and address pincode in `shipping_address`

*Returned Response:*




[OpenApiCartServiceabilityResponse](#OpenApiCartServiceabilityResponse)

Cart details with pincode validity information at item level




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Valid pincode</i></summary>

```json
{
  "value": {
    "items": [
      {
        "quantity": 1,
        "message": "",
        "coupon_message": "",
        "product": {
          "type": "product",
          "uid": 803140,
          "name": "Green Solid T-Shirt",
          "slug": "celio-green-solid-t-shirt-803140-dd9e2c",
          "brand": {
            "uid": 44,
            "name": "celio"
          },
          "categories": [
            {
              "uid": 192,
              "name": "T-Shirts"
            }
          ],
          "images": [
            {
              "aspect_ratio": "16:25",
              "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/44_NEMIEL@GREENBRITISH/1_1548161273344.jpg",
              "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/44_NEMIEL@GREENBRITISH/1_1548161273344.jpg"
            }
          ],
          "action": {
            "type": "product",
            "url": "https://api.addsale.com/platform/content/v1/products/celio-green-solid-t-shirt-803140-dd9e2c/",
            "query": {
              "product_slug": [
                "celio-green-solid-t-shirt-803140-dd9e2c"
              ]
            }
          }
        },
        "article": {
          "type": "article",
          "uid": "25_44_A7050_NEMIEL@GREENBRITISH_S",
          "size": "S",
          "seller": {
            "uid": 25,
            "name": "CELIO FUTURE FASHION PRIVATE LIMITED"
          },
          "store": {
            "uid": 1486,
            "name": "Forum Mall"
          },
          "quantity": 1,
          "price": {
            "base": {
              "marked": 1299,
              "effective": 649.5,
              "currency_code": "INR"
            },
            "converted": {
              "marked": 1299,
              "effective": 649.5,
              "currency_code": "INR"
            }
          }
        },
        "key": "803140_S",
        "discount": "50% OFF",
        "price": {
          "base": {
            "add_on": 0,
            "marked": 1299,
            "effective": 649.5,
            "selling": 649.5,
            "currency_code": "INR"
          },
          "converted": {
            "add_on": 0,
            "marked": 1299,
            "effective": 649.5,
            "selling": 649.5,
            "currency_code": "INR"
          }
        },
        "availability": {
          "sizes": [
            "L",
            "XL",
            "M",
            "S"
          ],
          "other_store_quantity": 0,
          "out_of_stock": false,
          "deliverable": true,
          "is_valid": true,
          "delivery_promise": {
            "timestamp": {
              "min": 1605306343,
              "max": 1605468343
            },
            "formatted": {
              "min": "Sat, 14 Nov",
              "max": "Mon, 16 Nov"
            }
          },
          "available_sizes": [
            {
              "is_available": true,
              "display": "L",
              "value": "L"
            },
            {
              "is_available": true,
              "display": "XXL",
              "value": "XXL"
            },
            {
              "is_available": true,
              "display": "XL",
              "value": "XL"
            },
            {
              "is_available": true,
              "display": "M",
              "value": "M"
            },
            {
              "is_available": true,
              "display": "S",
              "value": "S"
            },
            {
              "is_available": false,
              "display": "30",
              "value": "30"
            }
          ]
        },
        "bulk_offer": {}
      },
      {
        "quantity": 1,
        "message": "Out of stock. Please remove item",
        "coupon_message": "",
        "product": {
          "type": "product",
          "uid": 803140,
          "name": "Green Solid T-Shirt",
          "slug": "celio-green-solid-t-shirt-803140-dd9e2c",
          "brand": {
            "uid": 44,
            "name": "celio"
          },
          "categories": [
            {
              "uid": 192,
              "name": "T-Shirts"
            }
          ],
          "images": [
            {
              "aspect_ratio": "16:25",
              "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/44_NEMIEL@GREENBRITISH/1_1548161273344.jpg",
              "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/44_NEMIEL@GREENBRITISH/1_1548161273344.jpg"
            }
          ],
          "action": {
            "type": "product",
            "url": "https://api.addsale.com/platform/content/v1/products/celio-green-solid-t-shirt-803140-dd9e2c/",
            "query": {
              "product_slug": [
                "celio-green-solid-t-shirt-803140-dd9e2c"
              ]
            }
          }
        },
        "article": {},
        "key": "803140_S",
        "discount": "",
        "price": {
          "base": {
            "add_on": 0,
            "marked": 1299,
            "effective": 1299,
            "selling": 1299,
            "currency_code": "INR"
          },
          "converted": {
            "add_on": 0,
            "marked": 1299,
            "effective": 1299,
            "selling": 1299,
            "currency_code": "INR"
          }
        },
        "availability": {
          "sizes": [
            "L",
            "XXL",
            "XL",
            "M",
            "S"
          ],
          "other_store_quantity": 0,
          "out_of_stock": true,
          "deliverable": false,
          "is_valid": false,
          "delivery_promise": {
            "timestamp": {
              "min": 1605306343,
              "max": 1605468343
            },
            "formatted": {
              "min": "Sat, 14 Nov",
              "max": "Mon, 16 Nov"
            }
          },
          "available_sizes": [
            {
              "is_available": true,
              "display": "L",
              "value": "L"
            },
            {
              "is_available": true,
              "display": "XXL",
              "value": "XXL"
            },
            {
              "is_available": true,
              "display": "XL",
              "value": "XL"
            },
            {
              "is_available": true,
              "display": "M",
              "value": "M"
            },
            {
              "is_available": true,
              "display": "S",
              "value": "S"
            },
            {
              "is_available": false,
              "display": "30",
              "value": "30"
            }
          ]
        },
        "bulk_offer": {}
      }
    ],
    "delivery_promise": {
      "timestamp": {
        "min": 1605306343,
        "max": 1605468343
      },
      "formatted": {
        "min": "Sat, 14 Nov",
        "max": "Mon, 16 Nov"
      }
    },
    "is_valid": true
  }
}
```
</details>

<details>
<summary><i>&nbsp; Invalid pincode</i></summary>

```json
{
  "value": {
    "message": "All of the items in your cart are not deliverable to 800108",
    "is_valid": false,
    "items": [
      {
        "discount": "15% OFF",
        "price": {
          "base": {
            "add_on": 0,
            "marked": 2195,
            "effective": 1866,
            "selling": 1866,
            "currency_code": "INR"
          },
          "converted": {
            "add_on": 0,
            "marked": 2195,
            "effective": 1866,
            "selling": 1866,
            "currency_code": "INR"
          }
        },
        "product": {
          "type": "product",
          "uid": 876245,
          "name": "Brown Sandals",
          "slug": "red-chief-brown-sandals-876245-c92507",
          "brand": {
            "uid": 433,
            "name": ""
          },
          "categories": [
            {
              "uid": 176,
              "name": ""
            }
          ],
          "images": [
            {
              "aspect_ratio": "16:25",
              "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/433_RC330004/1_1564147181287.jpg",
              "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/433_RC330004/1_1564147181287.jpg"
            }
          ],
          "action": {
            "type": "product",
            "url": "https://api.addsale.com/platform/content/v1/products/red-chief-brown-sandals-876245-c92507/",
            "query": {
              "product_slug": [
                "red-chief-brown-sandals-876245-c92507"
              ]
            }
          },
          "item_code": "RC330004"
        },
        "bulk_offer": {},
        "key": "876245_6",
        "message": "We are not delivering to 800108",
        "delivery_promise": null,
        "coupon_message": "",
        "availability": {
          "sizes": [
            "7",
            "6",
            "10",
            "8"
          ],
          "other_store_quantity": 21,
          "out_of_stock": false,
          "deliverable": false,
          "is_valid": true,
          "available_sizes": [
            {
              "is_available": false,
              "display": "9",
              "value": "9"
            },
            {
              "is_available": true,
              "display": "10",
              "value": "10"
            },
            {
              "is_available": true,
              "display": "6",
              "value": "6"
            },
            {
              "is_available": true,
              "display": "7",
              "value": "7"
            },
            {
              "is_available": true,
              "display": "8",
              "value": "8"
            }
          ]
        },
        "quantity": 1,
        "article": {
          "type": "article",
          "uid": "304_433_LGPL30402_RC330004_6",
          "size": "6",
          "seller": {
            "uid": 304,
            "name": "LEAYAN GLOBAL PVT. LTD."
          },
          "store": {
            "uid": 9767,
            "name": "Udyog Kunj, Kanpur"
          },
          "quantity": 3,
          "price": {
            "base": {
              "marked": 2195,
              "effective": 1866,
              "currency_code": "INR"
            },
            "converted": {
              "marked": 2195,
              "effective": 1866,
              "currency_code": "INR"
            }
          }
        }
      },
      {
        "discount": "15% OFF",
        "price": {
          "base": {
            "add_on": 0,
            "marked": 2195,
            "effective": 1866,
            "selling": 1866,
            "currency_code": "INR"
          },
          "converted": {
            "add_on": 0,
            "marked": 2195,
            "effective": 1866,
            "selling": 1866,
            "currency_code": "INR"
          }
        },
        "product": {
          "type": "product",
          "uid": 876245,
          "name": "Brown Sandals",
          "slug": "red-chief-brown-sandals-876245-c92507",
          "brand": {
            "uid": 433,
            "name": ""
          },
          "categories": [
            {
              "uid": 176,
              "name": ""
            }
          ],
          "images": [
            {
              "aspect_ratio": "16:25",
              "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/433_RC330004/1_1564147181287.jpg",
              "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/433_RC330004/1_1564147181287.jpg"
            }
          ],
          "action": {
            "type": "product",
            "url": "https://api.addsale.com/platform/content/v1/products/red-chief-brown-sandals-876245-c92507/",
            "query": {
              "product_slug": [
                "red-chief-brown-sandals-876245-c92507"
              ]
            }
          },
          "item_code": "RC330004"
        },
        "bulk_offer": {},
        "key": "876245_6",
        "message": "We are not delivering to 800108",
        "coupon_message": "",
        "availability": {
          "sizes": [
            "7",
            "6",
            "10",
            "8"
          ],
          "other_store_quantity": 21,
          "out_of_stock": false,
          "deliverable": false,
          "is_valid": true,
          "available_sizes": [
            {
              "is_available": false,
              "display": "9",
              "value": "9"
            },
            {
              "is_available": true,
              "display": "10",
              "value": "10"
            },
            {
              "is_available": true,
              "display": "6",
              "value": "6"
            },
            {
              "is_available": true,
              "display": "7",
              "value": "7"
            },
            {
              "is_available": true,
              "display": "8",
              "value": "8"
            }
          ]
        },
        "quantity": 1,
        "article": {
          "type": "article",
          "uid": "304_433_LGPL30402_RC330004_6",
          "size": "6",
          "seller": {
            "uid": 304,
            "name": "LEAYAN GLOBAL PVT. LTD."
          },
          "store": {
            "uid": 9767,
            "name": "Udyog Kunj, Kanpur"
          },
          "quantity": 3,
          "price": {
            "base": {
              "marked": 2195,
              "effective": 1866,
              "currency_code": "INR"
            },
            "converted": {
              "marked": 2195,
              "effective": 1866,
              "currency_code": "INR"
            }
          }
        }
      }
    ]
  }
}
```
</details>

</details>









---


#### checkoutCart
Create Fynd order with cart details




```swift
client.application("<APPLICATION_ID>").cart.checkoutCart(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | OpenApiPlatformCheckoutReq | yes | Request body |


Generate Fynd order for cart details send with provided `cart_items`

*Returned Response:*




[OpenApiCheckoutResponse](#OpenApiCheckoutResponse)

Checkout cart and create Fynd order id




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "order_id": "FY5E182A9D0A5E405446",
  "message": "Order initiation completed",
  "order_ref_id": null
}
```
</details>









---


#### overrideCart
Create Fynd order with overriding cart details




```swift
client.application("<APPLICATION_ID>").cart.overrideCart(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | OverrideCheckoutReq | yes | Request body |


Generate Fynd order while overriding cart details sent with provided `cart_items`

*Returned Response:*




[OverrideCheckoutResponse](#OverrideCheckoutResponse)

Checkout cart and create Fynd order id




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "cart": {
    "success": true,
    "delivery_charges": 0,
    "store_code": "",
    "order_id": "FY630DDF8601EF037743",
    "cod_message": "COD available",
    "delivery_slots": [
      {
        "date": "Fri, 09 Nov",
        "delivery_slot": [
          {
            "delivery_slot_timing": "By 9:00 PM",
            "default": true,
            "delivery_slot_id": 1
          }
        ]
      }
    ],
    "user_type": "FYND Store user",
    "cod_available": true,
    "cod_charges": 0,
    "store_emp_list": [],
    "delivery_charge_order_value": 1500,
    "breakup_values": {
      "loyalty_points": {
        "total": 0,
        "applicable": 0,
        "is_applied": false,
        "description": "Your cashback, reward points, and refund amount get credited to Fynd Cash which can be redeemed while placing an order.",
        "message": "No Fynd Cash Applied"
      },
      "coupon": {
        "type": "cash",
        "code": "",
        "uid": null,
        "value": 0,
        "is_applied": false,
        "message": "Coupon not applicable with Reward point"
      },
      "display": [
        {
          "display": "MRP Total",
          "key": "mrp_total",
          "original": 400,
          "attr": "mrp_total",
          "value": 400,
          "currency_code": "INR",
          "currency_symbol": "₹",
          "message": []
        },
        {
          "display": "Discount",
          "key": "discount",
          "original": -200,
          "attr": "discount",
          "value": -200,
          "currency_code": "INR",
          "currency_symbol": "₹",
          "message": []
        },
        {
          "display": "Subtotal",
          "key": "subtotal",
          "original": 200,
          "attr": "subtotal",
          "value": 200,
          "currency_code": "INR",
          "currency_symbol": "₹",
          "message": []
        },
        {
          "display": "Total",
          "key": "total",
          "original": 200,
          "attr": "total",
          "value": 200,
          "currency_code": "INR",
          "currency_symbol": "₹",
          "message": []
        }
      ],
      "raw": {
        "sub_total": 200,
        "subtotal": 200,
        "coupon": 0,
        "promotion": 0,
        "delivery_charge": 0,
        "you_saved": 0,
        "fynd_cash": 0,
        "cod_charge": 0,
        "total": 200,
        "gst_charges": 9.52,
        "vog": 190.48,
        "convenience_fee": 0,
        "mrp_total": 400,
        "discount": -200
      }
    },
    "items": [
      {
        "message": "",
        "quantity": 1,
        "is_set": false,
        "delivery_promise": {
          "timestamp": {
            "min": 1646257339,
            "max": 1646689339
          },
          "formatted": {
            "min": "03 Mar, Thursday",
            "max": "08 Mar, Tuesday"
          }
        },
        "identifiers": {
          "identifier": "5mPyy88URXuh3Lo35uaTg"
        },
        "moq": {
          "maximum": 4,
          "minimum": 1
        },
        "coupon_message": "",
        "product": {
          "type": "product",
          "uid": 7502730,
          "name": "SLIM FIT JEANS",
          "slug": "slim-fit-jeans1",
          "brand": {
            "uid": 29,
            "name": "lacoste"
          },
          "categories": [
            {
              "uid": 3602,
              "name": "Dresses"
            }
          ],
          "attributes": {
            "net-quantity": "17",
            "occasion": "Beach Wear",
            "gender": "Men",
            "pattern": "Animal",
            "brand-size": "UK46",
            "style-type": "A-line Dresses",
            "season-year": "2018",
            "secondary-color": "Black",
            "jiomart-allowed-size": "Free Size",
            "fabric": "Chambray",
            "wash-care": "Hand Wash Cold Separately",
            "size-group": "Regular",
            "brand-color": "Black",
            "color-shade": "Bright",
            "multi-brick": "Ethnic Bottoms",
            "product-name": "Bodycon Dress",
            "multi-segment": "Men",
            "primary-color": "Navy",
            "multi-vertical": "Western Wear",
            "component-count": "100",
            "manufactured-by": "RIL",
            "year-of-packaging": "2017",
            "product-code-x-catalog-option-color": "1",
            "technique": "Sanganeri",
            "waist-in-inches": "30",
            "chest-size-in-inches": "12",
            "shoulder-size-in-inches": "12",
            "sleeve-length": "Half",
            "neckline": "Collar",
            "brand_name": "lacoste"
          },
          "images": [
            {
              "aspect_ratio": "16:25",
              "url": "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/original/LYa1_YA3_-console.png",
              "secure_url": "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/original/LYa1_YA3_-console.png"
            }
          ],
          "action": {
            "type": "product",
            "url": "https://api.fyndx0.de/platform/content/v1/products/slim-fit-jeans1/",
            "query": {
              "product_slug": [
                "slim-fit-jeans1"
              ]
            }
          },
          "item_code": "JEANS1232",
          "_custom_json": {}
        },
        "key": "7502730_OS",
        "price": {
          "base": {
            "add_on": 100,
            "marked": 400,
            "effective": 200,
            "selling": 200,
            "currency_code": "INR",
            "currency_symbol": "₹"
          },
          "converted": {
            "add_on": 100,
            "marked": 400,
            "effective": 200,
            "selling": 200,
            "currency_code": "INR",
            "currency_symbol": "₹"
          }
        },
        "price_per_unit": {
          "base": {
            "marked": 400,
            "effective": 200,
            "selling_price": 200,
            "currency_code": "INR",
            "currency_symbol": "₹"
          },
          "converted": {
            "marked": 400,
            "effective": 200,
            "selling_price": 200,
            "currency_code": "INR",
            "currency_symbol": "₹"
          }
        },
        "article": {
          "type": "article",
          "uid": "62e3ca42a2348dd4cb4cd693",
          "size": "OS",
          "seller": {
            "uid": 1527,
            "name": "SPEED-A-WAY PVT. LTD."
          },
          "store": {
            "uid": 3484,
            "name": "Location 1"
          },
          "quantity": 19,
          "price": {
            "base": {
              "marked": 400,
              "effective": 200,
              "selling": 200,
              "currency_code": "INR",
              "currency_symbol": "₹"
            },
            "converted": {
              "marked": 400,
              "effective": 200,
              "selling": 200,
              "currency_code": "INR",
              "currency_symbol": "INR"
            }
          },
          "extra_meta": {}
        },
        "bulk_offer": {},
        "discount": "50% OFF",
        "promotions_applied": [],
        "availability": {
          "sizes": [
            "OS"
          ],
          "other_store_quantity": 1,
          "out_of_stock": false,
          "deliverable": true,
          "is_valid": true,
          "available_sizes": [
            {
              "is_available": true,
              "display": "OS",
              "value": "OS"
            }
          ]
        },
        "promo_meta": {}
      }
    ],
    "delivery_charge_info": "",
    "notification": {},
    "message": "",
    "delivery_promise": {
      "timestamp": {
        "min": 1646257339,
        "max": 1646689339
      },
      "formatted": {
        "min": "03 Mar, Thursday",
        "max": "08 Mar, Tuesday"
      }
    },
    "coupon_text": "View all offers",
    "cart_id": 21755,
    "id": "63007e85f7df71d5a89758cf",
    "uid": "21755",
    "gstin": null,
    "comment": "",
    "checkout_mode": "self",
    "payment_selection_lock": {
      "enabled": true,
      "default_options": "JIOPP",
      "payment_identifier": "JIOPP"
    },
    "restrict_checkout": false,
    "is_valid": true,
    "currency": {
      "code": "INR",
      "symbol": "₹"
    },
    "last_modified": "Tue, 30 Aug 2022 09:59:34 GMT"
  },
  "message": "",
  "data": {
    "transactionRefNumber": "FY630DDF8601EF037743",
    "base64_html": "PGh0bWw+PGhlYWQ+PG1ldGEgbmFtZT0ndmlld3BvcnQnIGNvbnRlbnQ9J3dpZHRoPWRldmljZS13aWR0aCwgaW5pdGlhbC1zY2FsZT0xICwgbWF4aW11bS1zY2FsZT0xLCB1c2VyLXNjYWxhYmxlPW5vJz48c2NyaXB0IHR5cGU9J3RleHQvamF2YXNjcmlwdCc+ZnVuY3Rpb24gZm9ybVN1Ym1pdCgpe2RvY3VtZW50LmdldEVsZW1lbnRCeUlkKCdwYXltZW50Jykuc3VibWl0KCk7fTwvc2NyaXB0PjwvaGVhZD48Ym9keSBvbmxvYWQ9J2phdmFzY3JpcHQ6Zm9ybVN1Ym1pdCgpOyc+PGZvcm0gbmFtZT0ncGF5bWVudCcgaWQ9J3BheW1lbnQnIG1ldGhvZD0nUE9TVCcgYWN0aW9uPSdodHRwczovL3J0c3Mtc2l0Lmppb2Nvbm5lY3QuY29tL2ppb3BheXBnL3YxL3BheW1lbnQtb3B0aW9ucyc+PGltZyBzcmM9J2h0dHBzOi8vcnRzcy1zaXQuamlvY29ubmVjdC5jb20vdXBsb2FkL215amlvY29yZXN0YXRpY2ZpbGVzL2ltYWdlcy9sb2FkZXIuZ2lmJyB3aWR0aD0nMjUlJyBoZWlnaHQ9J2F1dG8nIHN0eWxlPSdkaXNwbGF5OiBibG9jazsgbWFyZ2luLXRvcDogMTIwcHg7bWFyZ2luLWxlZnQ6IGF1dG87IG1hcmdpbi1yaWdodDogYXV0bzsgbWFyZ2luLWJvdHRvbToxMHB4OycvPjxkaXYgc3R5bGU9J3RleHQtYWxpZ246IGNlbnRlcic+PHAgc3R5bGU9J2Rpc3BsYXk6IGlubGluZS1ibG9jazt2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO2ZvbnQtc2l6ZToxNnB4Jz5SZWRpcmVjdGluZyB0byBwYXltZW50IGdhdGV3YXkuIFBsZWFzZSBkbyBub3QgY2xpY2sgb24gcmVmcmVzaCBvciBiYWNrIGJ1dHRvbi4gPC9wPjwvZGl2PjxpbnB1dCB0eXBlPSdoaWRkZW4nIG5hbWU9J3BhcmFtMScgdmFsdWU9J2Q5OTBlYWFlZDI3ODRmNWNiMDVmMjI0M2Y2Y2IzNDNjJy8+PGlucHV0IHR5cGU9J3N1Ym1pdCcgdmFsdWU9Jycgc3R5bGU9J2Rpc3BsYXk6IG5vbmU7Jy8+PC9mb3JtPjwvYm9keT48L2h0bWw+",
    "render_url": "https://api.xxxx0.de/platform/payment/v2/external/payments/html/render",
    "payment_confirm": "https://api.xxxx0.de/service/application/payment/v1.0/payment/confirm/"
  },
  "callback_url": "https://jio.xxxx0.de/cart/order-status",
  "payment_confirm_url": "https://api.xxxx0.de/service/application/payment/v1.0/payment/confirm/",
  "order_id": "FY630DDF8601EF037743",
  "app_intercept_url": "https://jio.xxxx0.de/cart/order-status"
}
```
</details>









---



### Schemas

 
 
 #### [RuleDefinition](#RuleDefinition)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | calculateOn | String |  no  |  |
 | applicableOn | String |  no  |  |
 | isExact | Bool? |  yes  |  |
 | type | String |  no  |  |
 | scope | [String]? |  yes  |  |
 | autoApply | Bool? |  yes  |  |
 | currencyCode | String? |  yes  |  |
 | valueType | String |  no  |  |

---


 
 
 #### [CouponDateMeta](#CouponDateMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | modifiedOn | String? |  yes  |  |
 | createdOn | String? |  yes  |  |

---


 
 
 #### [DisplayMetaDict](#DisplayMetaDict)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subtitle | String? |  yes  |  |
 | title | String? |  yes  |  |

---


 
 
 #### [DisplayMeta](#DisplayMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | subtitle | String? |  yes  |  |
 | apply | [DisplayMetaDict](#DisplayMetaDict)? |  yes  |  |
 | auto | [DisplayMetaDict](#DisplayMetaDict)? |  yes  |  |
 | description | String? |  yes  |  |
 | remove | [DisplayMetaDict](#DisplayMetaDict)? |  yes  |  |

---


 
 
 #### [CouponSchedule](#CouponSchedule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cron | String? |  yes  |  |
 | start | String? |  yes  |  |
 | duration | Int? |  yes  |  |
 | nextSchedule | [[String: Any]]? |  yes  |  |
 | end | String? |  yes  |  |

---


 
 
 #### [PostOrder](#PostOrder)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cancellationAllowed | Bool? |  yes  |  |
 | returnAllowed | Bool? |  yes  |  |

---


 
 
 #### [PaymentAllowValue](#PaymentAllowValue)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | max | Int? |  yes  |  |

---


 
 
 #### [PaymentModes](#PaymentModes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | codes | [String]? |  yes  |  |
 | types | [String]? |  yes  |  |
 | uses | [PaymentAllowValue](#PaymentAllowValue)? |  yes  |  |
 | networks | [String]? |  yes  |  |

---


 
 
 #### [UsesRemaining](#UsesRemaining)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app | Int? |  yes  |  |
 | total | Int? |  yes  |  |
 | user | Int? |  yes  |  |

---


 
 
 #### [UsesRestriction](#UsesRestriction)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | maximum | [UsesRemaining](#UsesRemaining)? |  yes  |  |
 | remaining | [UsesRemaining](#UsesRemaining)? |  yes  |  |

---


 
 
 #### [PriceRange](#PriceRange)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | max | Int? |  yes  |  |
 | min | Int? |  yes  |  |

---


 
 
 #### [BulkBundleRestriction](#BulkBundleRestriction)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | multiStoreAllowed | Bool |  no  |  |

---


 
 
 #### [Restrictions](#Restrictions)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | postOrder | [PostOrder](#PostOrder)? |  yes  |  |
 | platforms | [String]? |  yes  |  |
 | payments | [String: [PaymentModes](#PaymentModes)]? |  yes  |  |
 | userGroups | [Int]? |  yes  |  |
 | uses | [UsesRestriction](#UsesRestriction)? |  yes  |  |
 | priceRange | [PriceRange](#PriceRange)? |  yes  |  |
 | bulkBundle | [BulkBundleRestriction](#BulkBundleRestriction)? |  yes  |  |
 | couponAllowed | Bool? |  yes  |  |
 | orderingStores | [Int]? |  yes  |  |

---


 
 
 #### [CouponAction](#CouponAction)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | txnMode | String? |  yes  |  |
 | actionDate | String? |  yes  |  |

---


 
 
 #### [Ownership](#Ownership)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | payableCategory | String |  no  |  |
 | payableBy | String |  no  |  |

---


 
 
 #### [Validity](#Validity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | priority | Int? |  yes  |  |

---


 
 
 #### [State](#State)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isDisplay | Bool? |  yes  |  |
 | isArchived | Bool? |  yes  |  |
 | isPublic | Bool? |  yes  |  |

---


 
 
 #### [Rule](#Rule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | discountQty | Double? |  yes  |  |
 | key | Double? |  yes  |  |
 | min | Double? |  yes  |  |
 | max | Double? |  yes  |  |
 | value | Double? |  yes  |  |

---


 
 
 #### [Validation](#Validation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | anonymous | Bool? |  yes  |  |
 | userRegisteredAfter | String? |  yes  |  |
 | appId | [String]? |  yes  |  |

---


 
 
 #### [Identifier](#Identifier)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemId | [Int]? |  yes  |  |
 | articleId | [String]? |  yes  |  |
 | brandId | [Int]? |  yes  |  |
 | collectionId | [String]? |  yes  |  |
 | categoryId | [Int]? |  yes  |  |
 | companyId | [Int]? |  yes  |  |
 | userId | [String]? |  yes  |  |
 | storeId | [Int]? |  yes  |  |

---


 
 
 #### [CouponAuthor](#CouponAuthor)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdBy | String? |  yes  |  |
 | modifiedBy | String? |  yes  |  |

---


 
 
 #### [CouponAdd](#CouponAdd)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String |  no  |  |
 | ruleDefinition | [RuleDefinition](#RuleDefinition) |  no  |  |
 | dateMeta | [CouponDateMeta](#CouponDateMeta)? |  yes  |  |
 | displayMeta | [DisplayMeta](#DisplayMeta) |  no  |  |
 | schedule | [CouponSchedule](#CouponSchedule)? |  yes  |  |
 | restrictions | [Restrictions](#Restrictions)? |  yes  |  |
 | action | [CouponAction](#CouponAction)? |  yes  |  |
 | ownership | [Ownership](#Ownership) |  no  |  |
 | validity | [Validity](#Validity) |  no  |  |
 | state | [State](#State)? |  yes  |  |
 | rule | [[Rule](#Rule)] |  no  |  |
 | validation | [Validation](#Validation)? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | typeSlug | String |  no  |  |
 | identifiers | [Identifier](#Identifier) |  no  |  |
 | author | [CouponAuthor](#CouponAuthor)? |  yes  |  |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | Int? |  yes  | Current request page size |
 | nextId | String? |  yes  | Cursor id for next set of records. |
 | current | Int? |  yes  | Current page no |
 | type | String |  no  |  |
 | itemTotal | Int? |  yes  | Total coupon count in system |
 | hasNext | Bool? |  yes  | True if more records are present for next pages |
 | hasPrevious | Bool? |  yes  | True if more records are present for previous pages. Sent for cursor pagination |

---


 
 
 #### [CouponsResponse](#CouponsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [CouponAdd](#CouponAdd)? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [SuccessMessage](#SuccessMessage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [OperationErrorResponse](#OperationErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [CouponUpdate](#CouponUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String |  no  |  |
 | ruleDefinition | [RuleDefinition](#RuleDefinition) |  no  |  |
 | dateMeta | [CouponDateMeta](#CouponDateMeta)? |  yes  |  |
 | displayMeta | [DisplayMeta](#DisplayMeta) |  no  |  |
 | schedule | [CouponSchedule](#CouponSchedule)? |  yes  |  |
 | restrictions | [Restrictions](#Restrictions)? |  yes  |  |
 | action | [CouponAction](#CouponAction)? |  yes  |  |
 | ownership | [Ownership](#Ownership) |  no  |  |
 | validity | [Validity](#Validity) |  no  |  |
 | state | [State](#State)? |  yes  |  |
 | rule | [[Rule](#Rule)] |  no  |  |
 | validation | [Validation](#Validation)? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | typeSlug | String |  no  |  |
 | identifiers | [Identifier](#Identifier) |  no  |  |
 | author | [CouponAuthor](#CouponAuthor)? |  yes  |  |

---


 
 
 #### [CouponPartialUpdate](#CouponPartialUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | archive | Bool? |  yes  | Send true to unpublish coupon |
 | schedule | [CouponSchedule](#CouponSchedule)? |  yes  |  |

---


 
 
 #### [PromotionDateMeta](#PromotionDateMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | modifiedOn | String? |  yes  |  |
 | createdOn | String? |  yes  |  |

---


 
 
 #### [PromotionSchedule](#PromotionSchedule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cron | String? |  yes  |  |
 | start | String |  no  |  |
 | published | Bool |  no  |  |
 | duration | Int? |  yes  |  |
 | nextSchedule | [[String: Any]]? |  yes  |  |
 | end | String? |  yes  |  |

---


 
 
 #### [PostOrder1](#PostOrder1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cancellationAllowed | Bool? |  yes  |  |
 | returnAllowed | Bool? |  yes  |  |

---


 
 
 #### [PaymentAllowValue1](#PaymentAllowValue1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | max | Int? |  yes  |  |

---


 
 
 #### [PromotionPaymentModes](#PromotionPaymentModes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | codes | [String]? |  yes  |  |
 | uses | [PaymentAllowValue1](#PaymentAllowValue1)? |  yes  |  |

---


 
 
 #### [UsesRemaining1](#UsesRemaining1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | total | Int? |  yes  |  |
 | user | Int? |  yes  |  |

---


 
 
 #### [UsesRestriction1](#UsesRestriction1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | maximum | [UsesRemaining1](#UsesRemaining1)? |  yes  |  |
 | remaining | [UsesRemaining1](#UsesRemaining1)? |  yes  |  |

---


 
 
 #### [UserRegistered](#UserRegistered)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String? |  yes  |  |
 | end | String? |  yes  |  |

---


 
 
 #### [Restrictions1](#Restrictions1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | postOrder | [PostOrder1](#PostOrder1)? |  yes  |  |
 | platforms | [String]? |  yes  |  |
 | payments | [[PromotionPaymentModes](#PromotionPaymentModes)]? |  yes  |  |
 | userGroups | [Int]? |  yes  |  |
 | uses | [UsesRestriction1](#UsesRestriction1) |  no  |  |
 | userRegistered | [UserRegistered](#UserRegistered)? |  yes  |  |
 | orderQuantity | Int? |  yes  |  |
 | anonymousUsers | Bool? |  yes  |  |
 | userId | [String]? |  yes  |  |

---


 
 
 #### [Ownership1](#Ownership1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | payableCategory | String |  no  |  |
 | payableBy | String |  no  |  |

---


 
 
 #### [PromotionAction](#PromotionAction)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | actionDate | String |  no  |  |
 | actionType | String |  no  |  |

---


 
 
 #### [DisplayMeta1](#DisplayMeta1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | offerText | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [CompareObject](#CompareObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | greaterThan | Double? |  yes  |  |
 | lessThan | Double? |  yes  |  |
 | greaterThanEquals | Double? |  yes  |  |
 | lessThanEquals | Double? |  yes  |  |
 | equals | Double? |  yes  |  |

---


 
 
 #### [ItemCriteria](#ItemCriteria)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemId | [Int]? |  yes  |  |
 | allItems | Bool? |  yes  |  |
 | cartQuantity | [CompareObject](#CompareObject)? |  yes  |  |
 | itemSize | [String]? |  yes  |  |
 | itemExcludeCompany | [Int]? |  yes  |  |
 | itemCompany | [Int]? |  yes  |  |
 | itemExcludeSku | [String]? |  yes  |  |
 | itemStore | [Int]? |  yes  |  |
 | itemExcludeCategory | [Int]? |  yes  |  |
 | itemExcludeBrand | [Int]? |  yes  |  |
 | buyRules | [String]? |  yes  |  |
 | itemSku | [String]? |  yes  |  |
 | itemBrand | [Int]? |  yes  |  |
 | itemExcludeStore | [Int]? |  yes  |  |
 | cartTotal | [CompareObject](#CompareObject)? |  yes  |  |
 | itemCategory | [Int]? |  yes  |  |

---


 
 
 #### [Visibility](#Visibility)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pdp | Bool |  no  |  |
 | couponList | Bool |  no  |  |

---


 
 
 #### [DiscountOffer](#DiscountOffer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | minOfferQuantity | Int? |  yes  |  |
 | code | String? |  yes  |  |
 | maxDiscountAmount | Double? |  yes  |  |
 | maxOfferQuantity | Int? |  yes  |  |
 | discountPrice | Double? |  yes  |  |
 | discountPercentage | Double? |  yes  |  |
 | discountAmount | Double? |  yes  |  |

---


 
 
 #### [DiscountRule](#DiscountRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | offer | [DiscountOffer](#DiscountOffer) |  no  |  |
 | itemCriteria | [ItemCriteria](#ItemCriteria) |  no  |  |
 | discountType | String |  no  |  |
 | buyCondition | String |  no  |  |

---


 
 
 #### [PromotionAuthor](#PromotionAuthor)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdBy | String? |  yes  |  |
 | modifiedBy | String? |  yes  |  |

---


 
 
 #### [PromotionListItem](#PromotionListItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mode | String |  no  |  |
 | dateMeta | [PromotionDateMeta](#PromotionDateMeta)? |  yes  |  |
 | schedule | [PromotionSchedule](#PromotionSchedule)? |  yes  |  |
 | promoGroup | String |  no  |  |
 | stackable | Bool? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | restrictions | [Restrictions1](#Restrictions1)? |  yes  |  |
 | ownership | [Ownership1](#Ownership1) |  no  |  |
 | promotionType | String |  no  |  |
 | applyExclusive | String? |  yes  |  |
 | postOrderAction | [PromotionAction](#PromotionAction)? |  yes  |  |
 | applyPriority | Int? |  yes  |  |
 | displayMeta | [DisplayMeta1](#DisplayMeta1) |  no  |  |
 | applyAllDiscount | Bool? |  yes  |  |
 | buyRules | [String: [ItemCriteria](#ItemCriteria)] |  no  |  |
 | currency | String? |  yes  |  |
 | calculateOn | String? |  yes  | Only available for Contract pricing and Ladder pricing promotion type |
 | code | String? |  yes  |  |
 | visiblility | [Visibility](#Visibility)? |  yes  |  |
 | discountRules | [[DiscountRule](#DiscountRule)] |  no  |  |
 | applicationId | String |  no  |  |
 | author | [PromotionAuthor](#PromotionAuthor)? |  yes  |  |

---


 
 
 #### [PromotionsResponse](#PromotionsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [PromotionListItem](#PromotionListItem)? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [PromotionAdd](#PromotionAdd)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mode | String |  no  |  |
 | dateMeta | [PromotionDateMeta](#PromotionDateMeta)? |  yes  |  |
 | schedule | [PromotionSchedule](#PromotionSchedule)? |  yes  |  |
 | promoGroup | String |  no  |  |
 | stackable | Bool? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | restrictions | [Restrictions1](#Restrictions1)? |  yes  |  |
 | ownership | [Ownership1](#Ownership1) |  no  |  |
 | promotionType | String |  no  |  |
 | applyExclusive | String? |  yes  |  |
 | postOrderAction | [PromotionAction](#PromotionAction)? |  yes  |  |
 | applyPriority | Int? |  yes  |  |
 | displayMeta | [DisplayMeta1](#DisplayMeta1) |  no  |  |
 | applyAllDiscount | Bool? |  yes  |  |
 | buyRules | [String: [ItemCriteria](#ItemCriteria)] |  no  |  |
 | currency | String? |  yes  |  |
 | calculateOn | String? |  yes  | Only available for Contract pricing and Ladder pricing promotion type |
 | code | String? |  yes  |  |
 | visiblility | [Visibility](#Visibility)? |  yes  |  |
 | discountRules | [[DiscountRule](#DiscountRule)] |  no  |  |
 | applicationId | String |  no  |  |
 | author | [PromotionAuthor](#PromotionAuthor)? |  yes  |  |

---


 
 
 #### [PromotionUpdate](#PromotionUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mode | String |  no  |  |
 | dateMeta | [PromotionDateMeta](#PromotionDateMeta)? |  yes  |  |
 | schedule | [PromotionSchedule](#PromotionSchedule)? |  yes  |  |
 | promoGroup | String |  no  |  |
 | stackable | Bool? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | restrictions | [Restrictions1](#Restrictions1)? |  yes  |  |
 | ownership | [Ownership1](#Ownership1) |  no  |  |
 | promotionType | String |  no  |  |
 | applyExclusive | String? |  yes  |  |
 | postOrderAction | [PromotionAction](#PromotionAction)? |  yes  |  |
 | applyPriority | Int? |  yes  |  |
 | displayMeta | [DisplayMeta1](#DisplayMeta1) |  no  |  |
 | applyAllDiscount | Bool? |  yes  |  |
 | buyRules | [String: [ItemCriteria](#ItemCriteria)] |  no  |  |
 | currency | String? |  yes  |  |
 | calculateOn | String? |  yes  | Only available for Contract pricing and Ladder pricing promotion type |
 | code | String? |  yes  |  |
 | visiblility | [Visibility](#Visibility)? |  yes  |  |
 | discountRules | [[DiscountRule](#DiscountRule)] |  no  |  |
 | applicationId | String |  no  |  |
 | author | [PromotionAuthor](#PromotionAuthor)? |  yes  |  |

---


 
 
 #### [PromotionPartialUpdate](#PromotionPartialUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | archive | Bool? |  yes  | Send true to unpublish promotion |
 | schedule | [PromotionSchedule](#PromotionSchedule)? |  yes  |  |

---


 
 
 #### [CartItem](#CartItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | String |  no  |  |
 | quantity | Int? |  yes  |  |
 | productId | String |  no  |  |

---


 
 
 #### [OpenapiCartDetailsRequest](#OpenapiCartDetailsRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cartItems | [CartItem](#CartItem)? |  yes  |  |

---


 
 
 #### [BaseInfo](#BaseInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [BasePrice](#BasePrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marked | Double? |  yes  |  |
 | currencyCode | String? |  yes  |  |
 | effective | Double? |  yes  |  |
 | currencySymbol | String? |  yes  |  |

---


 
 
 #### [ArticlePriceInfo](#ArticlePriceInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | base | [BasePrice](#BasePrice)? |  yes  |  |
 | converted | [BasePrice](#BasePrice)? |  yes  |  |

---


 
 
 #### [ProductArticle](#ProductArticle)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | String? |  yes  |  |
 | extraMeta | [String: Any]? |  yes  |  |
 | sellerIdentifier | String? |  yes  |  |
 | type | String? |  yes  |  |
 | store | [BaseInfo](#BaseInfo)? |  yes  |  |
 | price | [ArticlePriceInfo](#ArticlePriceInfo)? |  yes  |  |
 | uid | String? |  yes  |  |
 | seller | [BaseInfo](#BaseInfo)? |  yes  |  |
 | identifier | [String: Any]? |  yes  |  |
 | quantity | Int? |  yes  |  |

---


 
 
 #### [ProductAvailability](#ProductAvailability)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isValid | Bool? |  yes  |  |
 | otherStoreQuantity | Int? |  yes  |  |
 | deliverable | Bool? |  yes  |  |
 | outOfStock | Bool? |  yes  |  |
 | sizes | [String]? |  yes  |  |

---


 
 
 #### [AppliedPromotion](#AppliedPromotion)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | promoId | String? |  yes  | Promotion id |
 | mrpPromotion | Bool? |  yes  | If applied promotion is applied on product MRP or ESP |
 | amount | Double? |  yes  | Per unit discount amount applied with current promotion |
 | articleQuantity | Int? |  yes  | Quantity of article on which promotion is applicable |
 | offerText | String? |  yes  | Offer text of current promotion |
 | promotionType | String? |  yes  | Promotion type of current promotion |

---


 
 
 #### [ProductPrice](#ProductPrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marked | Double? |  yes  |  |
 | addOn | Double? |  yes  |  |
 | selling | Double? |  yes  |  |
 | currencySymbol | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |
 | effective | Double? |  yes  |  |

---


 
 
 #### [ProductPriceInfo](#ProductPriceInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | base | [ProductPrice](#ProductPrice)? |  yes  |  |
 | converted | [ProductPrice](#ProductPrice)? |  yes  |  |

---


 
 
 #### [CategoryInfo](#CategoryInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  | Product Category Id |
 | name | String? |  yes  |  |

---


 
 
 #### [ProductImage](#ProductImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | secureUrl | String? |  yes  |  |
 | aspectRatio | String? |  yes  |  |
 | url | String? |  yes  |  |

---


 
 
 #### [ActionQuery](#ActionQuery)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | productSlug | [String]? |  yes  | Contains list of product slug |

---


 
 
 #### [ProductAction](#ProductAction)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | query | [ActionQuery](#ActionQuery)? |  yes  |  |
 | url | String? |  yes  |  |

---


 
 
 #### [CartProduct](#CartProduct)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  | Unique product url name generated via product name and other meta data |
 | categories | [[CategoryInfo](#CategoryInfo)]? |  yes  |  |
 | type | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | brand | [BaseInfo](#BaseInfo)? |  yes  |  |
 | name | String? |  yes  |  |
 | images | [[ProductImage](#ProductImage)]? |  yes  |  |
 | action | [ProductAction](#ProductAction)? |  yes  |  |

---


 
 
 #### [PromoMeta](#PromoMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [CartProductIdentifer](#CartProductIdentifer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | identifier | String? |  yes  | Article idenfier generated by cart |

---


 
 
 #### [CartProductInfo](#CartProductInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | article | [ProductArticle](#ProductArticle)? |  yes  |  |
 | availability | [ProductAvailability](#ProductAvailability)? |  yes  |  |
 | promotionsApplied | [[AppliedPromotion](#AppliedPromotion)]? |  yes  |  |
 | key | String? |  yes  |  |
 | price | [ProductPriceInfo](#ProductPriceInfo)? |  yes  |  |
 | message | String? |  yes  |  |
 | product | [CartProduct](#CartProduct)? |  yes  |  |
 | pricePerUnit | [ProductPriceInfo](#ProductPriceInfo)? |  yes  |  |
 | bulkOffer | [String: Any]? |  yes  |  |
 | promoMeta | [PromoMeta](#PromoMeta)? |  yes  |  |
 | discount | String? |  yes  |  |
 | isSet | Bool? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | couponMessage | String? |  yes  |  |
 | identifiers | [CartProductIdentifer](#CartProductIdentifer) |  no  |  |

---


 
 
 #### [RawBreakup](#RawBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fyndCash | Double? |  yes  |  |
 | coupon | Double? |  yes  |  |
 | gstCharges | Double? |  yes  |  |
 | total | Double? |  yes  |  |
 | codCharge | Double? |  yes  |  |
 | youSaved | Double? |  yes  |  |
 | subtotal | Double? |  yes  |  |
 | discount | Double? |  yes  |  |
 | mrpTotal | Double? |  yes  |  |
 | convenienceFee | Double? |  yes  |  |
 | deliveryCharge | Double? |  yes  |  |
 | vog | Double? |  yes  |  |

---


 
 
 #### [CouponBreakup](#CouponBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String? |  yes  |  |
 | type | String? |  yes  |  |
 | uid | String? |  yes  |  |
 | isApplied | Bool? |  yes  |  |
 | message | String? |  yes  |  |
 | value | Double? |  yes  |  |

---


 
 
 #### [LoyaltyPoints](#LoyaltyPoints)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | total | Double? |  yes  |  |
 | applicable | Double? |  yes  |  |
 | isApplied | Bool? |  yes  |  |

---


 
 
 #### [DisplayBreakup](#DisplayBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | key | String? |  yes  |  |
 | currencySymbol | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |
 | message | [String]? |  yes  |  |
 | value | Double? |  yes  |  |

---


 
 
 #### [CartBreakup](#CartBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | raw | [RawBreakup](#RawBreakup)? |  yes  |  |
 | coupon | [CouponBreakup](#CouponBreakup)? |  yes  |  |
 | loyaltyPoints | [LoyaltyPoints](#LoyaltyPoints)? |  yes  |  |
 | display | [[DisplayBreakup](#DisplayBreakup)]? |  yes  |  |

---


 
 
 #### [OpenapiCartDetailsResponse](#OpenapiCartDetailsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[CartProductInfo](#CartProductInfo)]? |  yes  |  |
 | breakupValues | [CartBreakup](#CartBreakup)? |  yes  |  |
 | message | String? |  yes  |  |
 | isValid | Bool? |  yes  |  |

---


 
 
 #### [OpenApiErrorResponse](#OpenApiErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | errors | [String: Any]? |  yes  | Contains field name which has error as key and error message as value |
 | success | Bool? |  yes  |  |

---


 
 
 #### [ShippingAddress](#ShippingAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | addressType | String? |  yes  |  |
 | pincode | Int? |  yes  |  |
 | area | String? |  yes  |  |
 | address | String? |  yes  |  |
 | areaCodeSlug | String? |  yes  |  |
 | city | String? |  yes  |  |
 | email | String? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | state | String? |  yes  |  |
 | areaCode | String |  no  |  |
 | country | String? |  yes  |  |
 | name | String? |  yes  |  |
 | landmark | String? |  yes  |  |
 | phone | Int? |  yes  |  |

---


 
 
 #### [OpenApiCartServiceabilityRequest](#OpenApiCartServiceabilityRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cartItems | [CartItem](#CartItem)? |  yes  |  |
 | shippingAddress | [ShippingAddress](#ShippingAddress) |  no  |  |

---


 
 
 #### [PromiseFormatted](#PromiseFormatted)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | max | String? |  yes  |  |
 | min | String? |  yes  |  |

---


 
 
 #### [PromiseTimestamp](#PromiseTimestamp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | max | Double? |  yes  |  |
 | min | Double? |  yes  |  |

---


 
 
 #### [ShipmentPromise](#ShipmentPromise)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | formatted | [PromiseFormatted](#PromiseFormatted)? |  yes  |  |
 | timestamp | [PromiseTimestamp](#PromiseTimestamp)? |  yes  |  |

---


 
 
 #### [OpenApiCartServiceabilityResponse](#OpenApiCartServiceabilityResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isValid | Bool? |  yes  |  |
 | items | [[CartProductInfo](#CartProductInfo)]? |  yes  |  |
 | breakupValues | [CartBreakup](#CartBreakup)? |  yes  |  |
 | deliveryPromise | [ShipmentPromise](#ShipmentPromise)? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [CartItemMeta](#CartItemMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | groupId | String? |  yes  |  |
 | primaryItem | Bool? |  yes  |  |

---


 
 
 #### [OpenApiFiles](#OpenApiFiles)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | values | [String] |  no  |  |
 | key | String |  no  |  |

---


 
 
 #### [MultiTenderPaymentMeta](#MultiTenderPaymentMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | extraMeta | [String: Any]? |  yes  |  |
 | currentStatus | String? |  yes  |  |
 | orderId | String? |  yes  |  |
 | paymentGateway | String? |  yes  |  |
 | paymentId | String? |  yes  |  |

---


 
 
 #### [MultiTenderPaymentMethod](#MultiTenderPaymentMethod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | Double |  no  | Payment amount |
 | mode | String |  no  |  |
 | meta | [MultiTenderPaymentMeta](#MultiTenderPaymentMeta)? |  yes  |  |
 | name | String? |  yes  | Payment mode name |

---


 
 
 #### [OpenApiOrderItem](#OpenApiOrderItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | loyaltyDiscount | Double? |  yes  |  |
 | productId | Int |  no  |  |
 | extraMeta | [String: Any]? |  yes  |  |
 | employeeDiscount | Double? |  yes  |  |
 | size | String |  no  |  |
 | codCharges | Double |  no  |  |
 | amountPaid | Double |  no  |  |
 | priceEffective | Double |  no  |  |
 | cashbackApplied | Double |  no  |  |
 | meta | [CartItemMeta](#CartItemMeta)? |  yes  |  |
 | files | [[OpenApiFiles](#OpenApiFiles)]? |  yes  |  |
 | discount | Double |  no  |  |
 | paymentMethods | [[MultiTenderPaymentMethod](#MultiTenderPaymentMethod)] |  no  |  |
 | deliveryCharges | Double |  no  |  |
 | quantity | Int? |  yes  |  |
 | couponEffectiveDiscount | Double |  no  |  |
 | priceMarked | Double |  no  |  |

---


 
 
 #### [OpenApiPlatformCheckoutReq](#OpenApiPlatformCheckoutReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | loyaltyDiscount | Double? |  yes  |  |
 | employeeDiscount | [String: Any]? |  yes  |  |
 | cartItems | [[OpenApiOrderItem](#OpenApiOrderItem)] |  no  |  |
 | shippingAddress | [ShippingAddress](#ShippingAddress)? |  yes  |  |
 | files | [[OpenApiFiles](#OpenApiFiles)]? |  yes  |  |
 | currencyCode | String? |  yes  |  |
 | couponValue | Double |  no  |  |
 | cartValue | Double |  no  |  |
 | coupon | String? |  yes  |  |
 | affiliateOrderId | String? |  yes  |  |
 | paymentMode | String? |  yes  |  |
 | billingAddress | [ShippingAddress](#ShippingAddress) |  no  |  |
 | codCharges | Double |  no  |  |
 | orderId | String? |  yes  |  |
 | cashbackApplied | Double |  no  |  |
 | couponCode | String |  no  |  |
 | deliveryCharges | Double |  no  |  |
 | paymentMethods | [[MultiTenderPaymentMethod](#MultiTenderPaymentMethod)] |  no  |  |

---


 
 
 #### [OpenApiCheckoutResponse](#OpenApiCheckoutResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderRefId | String? |  yes  | Order id sent in request |
 | message | String? |  yes  |  |
 | orderId | String |  no  | Fynd order id |
 | success | Bool? |  yes  |  |

---


 
 
 #### [OverrideCartItemPromo](#OverrideCartItemPromo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | promoAmount | String |  no  |  |
 | promoId | String |  no  |  |
 | itemList | [[String: Any]]? |  yes  |  |
 | rwrdTndr | String? |  yes  |  |
 | promoDesc | String? |  yes  |  |

---


 
 
 #### [OverrideCartItem](#OverrideCartItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | promoList | [[OverrideCartItemPromo](#OverrideCartItemPromo)]? |  yes  |  |
 | extraMeta | [String: Any]? |  yes  |  |
 | itemId | Int |  no  |  |
 | sellerIdentifier | String? |  yes  |  |
 | size | String |  no  |  |
 | amountPaid | Double |  no  |  |
 | priceEffective | Double |  no  |  |
 | discount | Double |  no  |  |
 | quantity | Int? |  yes  |  |
 | priceMarked | Double |  no  |  |

---


 
 
 #### [OverrideCheckoutReq](#OverrideCheckoutReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentMode | String |  no  |  |
 | billingAddress | [String: Any]? |  yes  |  |
 | paymentIdentifier | String |  no  |  |
 | orderingStore | Int? |  yes  |  |
 | cartItems | [[OverrideCartItem](#OverrideCartItem)] |  no  |  |
 | shippingAddress | [String: Any]? |  yes  |  |
 | orderType | String |  no  |  |
 | cartId | String |  no  |  |
 | currencyCode | String |  no  |  |
 | merchantCode | String |  no  |  |
 | aggregator | String |  no  |  |

---


 
 
 #### [OverrideCheckoutResponse](#OverrideCheckoutResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [String: Any] |  no  |  |
 | success | String |  no  |  |
 | orderId | String |  no  |  |
 | message | String |  no  |  |
 | cart | [String: Any] |  no  |  |

---



