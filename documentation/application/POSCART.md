



##### [Back to Application docs](./README.md)

## PosCart Methods
Cart APIs
* [getCart](#getcart)
* [getCartLastModified](#getcartlastmodified)
* [addItems](#additems)
* [updateCart](#updatecart)
* [getItemCount](#getitemcount)
* [getCoupons](#getcoupons)
* [applyCoupon](#applycoupon)
* [removeCoupon](#removecoupon)
* [getBulkDiscountOffers](#getbulkdiscountoffers)
* [applyRewardPoints](#applyrewardpoints)
* [getAddresses](#getaddresses)
* [addAddress](#addaddress)
* [getAddressById](#getaddressbyid)
* [updateAddress](#updateaddress)
* [removeAddress](#removeaddress)
* [selectAddress](#selectaddress)
* [selectPaymentMode](#selectpaymentmode)
* [validateCouponForPayment](#validatecouponforpayment)
* [getShipments](#getshipments)
* [updateShipments](#updateshipments)
* [checkoutCart](#checkoutcart)
* [updateCartMeta](#updatecartmeta)
* [getAvailableDeliveryModes](#getavailabledeliverymodes)
* [getStoreAddressByUid](#getstoreaddressbyuid)
* [getCartShareLink](#getcartsharelink)
* [getCartSharedItems](#getcartshareditems)
* [updateCartWithSharedItems](#updatecartwithshareditems)



## Methods with example and description


#### getCart
Fetch all items added to the cart




```swift
poscart.getCart(id: id, i: i, b: b, assignCardId: assignCardId, areaCode: areaCode, buyNow: buyNow) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String? | no |  |   
| i | Bool? | no |  |   
| b | Bool? | no |  |   
| assignCardId | Int? | no |  |   
| areaCode | String? | no |  |   
| buyNow | Bool? | no |  |  



Use this API to get details of all the items added to a cart.

*Returned Response:*




[CartDetailResponse](#CartDetailResponse)

Success. Returns a Cart object. Check the example shown below or refer `CartDetailResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "bulk_offer": {},
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
      "key": "75251393_L",
      "price": {
        "base": {
          "add_on": 1099,
          "marked": 1099,
          "effective": 1099,
          "selling": 1099,
          "currency_code": "INR",
          "currency_symbol": "₹"
        },
        "converted": {
          "add_on": 1099,
          "marked": 1099,
          "effective": 1099,
          "selling": 1099,
          "currency_code": "INR",
          "currency_symbol": "₹"
        }
      },
      "discount": "",
      "article": {
        "type": "article",
        "uid": "6388b1136e440e76ba0e5af2",
        "size": "L",
        "product_group_tags": null,
        "seller": {
          "uid": 37,
          "name": "SPYKAR LIFESTYLES PRIVATE LIMITED"
        },
        "store": {
          "uid": 10514,
          "name": "SPYKAR KALHER BHIWANDI WAREHOUSE"
        },
        "quantity": 599,
        "price": {
          "base": {
            "marked": 1099,
            "effective": 1099,
            "selling": 1099,
            "currency_code": "INR",
            "currency_symbol": "₹"
          },
          "converted": {
            "marked": 1099,
            "effective": 1099,
            "selling": 1099,
            "currency_code": "INR",
            "currency_symbol": "INR"
          }
        },
        "extra_meta": {}
      },
      "product": {
        "type": "product",
        "uid": 75251393,
        "name": "Spykar Brown Leather Belts",
        "slug": "spykar-olive-leather-belts-jej4kndn5s",
        "brand": {
          "uid": 56,
          "name": "Spykar"
        },
        "categories": [
          {
            "uid": 202,
            "name": "Duffles"
          }
        ],
        "attributes": {
          "item_code": "SPYMBLCORE013Olive",
          "color": "Olive",
          "gender": [
            "Men"
          ],
          "style": "SPY-MBL-CORE-013",
          "occasion": "Casual",
          "season": "Summer-2021",
          "material": "Leather",
          "primary_color": "Green",
          "currency": "INR",
          "media": [
            {
              "type": "image",
              "url": "https://hdn-1.fynd.com/products/pictures/item/free/original/8907966514645/Zm-mKqN5b5-SPY-MBL-ON-S1714-OLIVE-04.jpg"
            },
            {
              "type": "image",
              "url": "https://hdn-1.fynd.com/products/pictures/item/free/original/8907966514645/vOmcjZkXxv-SPY-MBL-ON-S1714-OLIVE-02.jpg"
            },
            {
              "type": "image",
              "url": "https://hdn-1.fynd.com/products/pictures/item/free/original/8907966514645/aEB7WMysfs-SPY-MBL-ON-S1714-OLIVE-03.jpg"
            },
            {
              "type": "image",
              "url": "https://hdn-1.fynd.com/products/pictures/item/free/original/8907966514645/xP78kUZL6M-SPY-MBL-ON-S1714-OLIVE-01.jpg"
            }
          ],
          "name": "Spykar Brown Leather Belts",
          "brand_name": "Spykar",
          "primary_color_hex": "2BD892"
        },
        "images": [
          {
            "aspect_ratio": "16:25",
            "url": "https://hdn-1.fynd.com/products/pictures/item/free/original/8907966514645/Zm-mKqN5b5-SPY-MBL-ON-S1714-OLIVE-04.jpg",
            "secure_url": "https://hdn-1.fynd.com/products/pictures/item/free/original/8907966514645/Zm-mKqN5b5-SPY-MBL-ON-S1714-OLIVE-04.jpg"
          },
          {
            "aspect_ratio": "16:25",
            "url": "https://hdn-1.fynd.com/products/pictures/item/free/original/8907966514645/vOmcjZkXxv-SPY-MBL-ON-S1714-OLIVE-02.jpg",
            "secure_url": "https://hdn-1.fynd.com/products/pictures/item/free/original/8907966514645/vOmcjZkXxv-SPY-MBL-ON-S1714-OLIVE-02.jpg"
          },
          {
            "aspect_ratio": "16:25",
            "url": "https://hdn-1.fynd.com/products/pictures/item/free/original/8907966514645/aEB7WMysfs-SPY-MBL-ON-S1714-OLIVE-03.jpg",
            "secure_url": "https://hdn-1.fynd.com/products/pictures/item/free/original/8907966514645/aEB7WMysfs-SPY-MBL-ON-S1714-OLIVE-03.jpg"
          },
          {
            "aspect_ratio": "16:25",
            "url": "https://hdn-1.fynd.com/products/pictures/item/free/original/8907966514645/xP78kUZL6M-SPY-MBL-ON-S1714-OLIVE-01.jpg",
            "secure_url": "https://hdn-1.fynd.com/products/pictures/item/free/original/8907966514645/xP78kUZL6M-SPY-MBL-ON-S1714-OLIVE-01.jpg"
          }
        ],
        "action": {
          "type": "product",
          "url": "https://api.fyndx1.de/platform/content/v1/products/spykar-olive-leather-belts-jej4kndn5s/",
          "query": {
            "product_slug": [
              "spykar-olive-leather-belts-jej4kndn5s"
            ]
          }
        },
        "item_code": "SPYMBLCORE013Olive",
        "_custom_json": {},
        "net_quantity": {
          "unit": "cm",
          "value": 109
        }
      },
      "coupon_message": "",
      "parent_item_identifiers": {
        "identifier": null,
        "parent_item_size": null,
        "parent_item_id": null
      },
      "promotions_applied": [
        {
          "promo_id": "6380a896012cc2dda62f6682",
          "amount": 1000,
          "article_quantity": 1,
          "mrp_promotion": false,
          "promotion_type": "percentage",
          "buy_rules": [
            {
              "item_criteria": {},
              "cart_conditions": {
                "cart_quantity": {
                  "greater_than_equals": 1
                }
              }
            }
          ],
          "discount_rules": [
            {
              "item_criteria": {
                "buy_rules": [
                  "rule#1"
                ]
              },
              "matched_buy_rules": [
                "rule#1"
              ],
              "offer": {
                "discount_percentage": 100,
                "max_discount_amount": 1000
              },
              "raw_offer": {
                "buy_condition": "( rule#1 )",
                "discount_type": "percentage",
                "item_criteria": {
                  "buy_rules": [
                    "rule#1"
                  ]
                },
                "offer": {
                  "discount_percentage": 100,
                  "max_discount_amount": 1000
                }
              }
            }
          ],
          "promotion_name": "sadad",
          "promotion_group": "product",
          "offer_text": "sadad"
        }
      ],
      "quantity": 1,
      "promo_meta": {},
      "moq": {
        "minimum": 1
      },
      "identifiers": {
        "identifier": "axe4piIIR5Sk4EocrRNYeA"
      },
      "is_set": false,
      "price_per_unit": {
        "base": {
          "marked": 1099,
          "effective": 1099,
          "selling_price": 1099,
          "currency_code": "INR",
          "currency_symbol": "₹"
        },
        "converted": {
          "marked": 1099,
          "effective": 1099,
          "selling_price": 1099,
          "currency_code": "INR",
          "currency_symbol": "₹"
        }
      },
      "availability": {
        "sizes": [
          "L"
        ],
        "other_store_quantity": 1,
        "out_of_stock": false,
        "deliverable": true,
        "is_valid": true,
        "available_sizes": [
          {
            "is_available": true,
            "display": "L",
            "value": "L"
          }
        ]
      }
    }
  ],
  "cart_id": 433453,
  "uid": "433453",
  "id": "63bd1860f46211103683ab18",
  "coupon": {
    "coupon_code": "",
    "coupon_type": "cart",
    "is_applied": false,
    "is_valid": false,
    "message": "Sorry! Invalid coupon",
    "coupon_id": null,
    "discount": 0,
    "cashback_amount": 0,
    "cashback_message_primary": "",
    "cashback_message_secondary": "",
    "coupon_title": "",
    "coupon_subtitle": "",
    "coupon_description": "",
    "minimum_cart_value": 0,
    "maximum_discount_value": 0,
    "coupon_value": 0
  },
  "breakup_values": {
    "display": [
      {
        "display": "MRP Total",
        "key": "mrp_total",
        "original": 1099,
        "attr": "mrp_total",
        "value": 1099,
        "currency_code": "INR",
        "currency_symbol": "₹",
        "message": []
      },
      {
        "display": "Subtotal",
        "key": "subtotal",
        "original": 1099,
        "attr": "subtotal",
        "value": 1099,
        "currency_code": "INR",
        "currency_symbol": "₹",
        "message": []
      },
      {
        "display": "Promotion",
        "key": "promotion",
        "original": -1000,
        "attr": "promotion",
        "value": -1000,
        "currency_code": "INR",
        "currency_symbol": "₹",
        "message": []
      },
      {
        "display": "Total",
        "key": "total",
        "original": 99,
        "attr": "total",
        "value": 99,
        "currency_code": "INR",
        "currency_symbol": "₹",
        "message": []
      }
    ],
    "raw": {
      "sub_total": 1099,
      "subtotal": 1099,
      "coupon": 0,
      "promotion": -1000,
      "delivery_charge": 0,
      "you_saved": 0,
      "fynd_cash": 0,
      "cod_charge": 0,
      "total": 99,
      "gst_charges": 4.71,
      "vog": 94.29,
      "convenience_fee": 0,
      "mrp_total": 1099,
      "discount": 0
    },
    "loyalty_points": {
      "total": 0,
      "applicable": 0,
      "is_applied": false,
      "description": "Your cashback, reward points, and refund amount get credited to Fynd Cash which can be redeemed while placing an order.",
      "message": "No Fynd Cash Applied"
    },
    "coupon": {
      "type": "cash",
      "coupon_type": "cart",
      "code": "",
      "uid": null,
      "value": 0,
      "is_applied": false,
      "message": "Sorry! Invalid coupon",
      "title": "",
      "sub_title": "",
      "description": "",
      "minimum_cart_value": 0,
      "maximum_discount_value": 0,
      "coupon_value": 0
    }
  },
  "free_gift_items": [],
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
  "applied_promo_details": [
    {
      "application_id": "000000000000000000000001",
      "apply_all_offers": false,
      "apply_exclusive": null,
      "buy_article_dict": {
        "rule#1": {
          "6388b1136e440e76ba0e5af2_0": {
            "amount_paid": 0,
            "applicable_credits": {
              "conversion_rate": 1,
              "currency_code": "INR",
              "currency_symbol": "₹",
              "floor_source_value": 0,
              "floor_value": 0,
              "source_currency_code": "FC",
              "source_currency_symbol": "",
              "source_value": 0,
              "value": 0
            },
            "article_assign_status": true,
            "article_assignment": {
              "level": "multi-companies",
              "strategy": "optimal"
            },
            "article_error": {
              "type": null,
              "value": null,
              "message": null
            },
            "article_id": "6388b1136e440e76ba0e5af2",
            "article_index": "0",
            "article_meta": {
              "article_id": "6388b1136e440e76ba0e5af2",
              "bulk_margin": 0,
              "bulk_discount": {
                "conversion_rate": 1,
                "currency_code": "INR",
                "currency_symbol": "₹",
                "floor_source_value": 0,
                "floor_value": 0,
                "source_currency_code": "INR",
                "source_currency_symbol": "₹",
                "source_value": 0,
                "value": 0
              },
              "bulk_coupon_code": null,
              "country_of_origin": "India",
              "dimension": {
                "width": 2,
                "length": 4,
                "is_default": true,
                "height": 7,
                "unit": "cm"
              },
              "fragile": false,
              "manufacturer": {
                "name": "SPYKAR LIFESTYLES PRIVATE LIMITED",
                "is_default": true,
                "address": "LOTUS CORPORATE PARK, 19TH FLOOR, A WING, JAY COACH JUNCTION, OFF. WESTERN EXPRESS HIGHWAY, GOREGAON (EAST), MUMBAI- 400 063, None, MAHARASHTRA, MUMBAI"
              },
              "weight": {
                "shipping": 200,
                "is_default": true,
                "unit": "gram"
              },
              "raw_meta": {
                "fynd_identifier": "10514_8907966510647",
                "is_set_article": false,
                "set_quantity": 1
              },
              "is_set": false,
              "set": {},
              "identifier": {
                "ean": "8907966510647"
              },
              "hsn_code": null,
              "hsn_code_id": "625fbd91faeed8b3df6ec353",
              "raw_price": {
                "effective": {
                  "conversion_rate": 1,
                  "currency_code": "INR",
                  "currency_symbol": "₹",
                  "floor_source_value": 1099,
                  "floor_value": 1099,
                  "source_currency_code": "INR",
                  "source_currency_symbol": "₹",
                  "source_value": 1099,
                  "value": 1099
                },
                "marked": {
                  "conversion_rate": 1,
                  "currency_code": "INR",
                  "currency_symbol": "₹",
                  "floor_source_value": 1099,
                  "floor_value": 1099,
                  "source_currency_code": "INR",
                  "source_currency_symbol": "₹",
                  "source_value": 1099,
                  "value": 1099
                },
                "transfer": {
                  "conversion_rate": 1,
                  "currency_code": "INR",
                  "currency_symbol": "₹",
                  "floor_source_value": 0,
                  "floor_value": 0,
                  "source_currency_code": "INR",
                  "source_currency_symbol": "₹",
                  "source_value": 0,
                  "value": 0
                }
              },
              "seller_identifier": "8907966510647",
              "_custom_json": {},
              "tags": [],
              "return_config": {
                "returnable": false,
                "time": 0,
                "unit": "days"
              }
            },
            "attributes": {
              "item_code": "SPYMBLCORE013Olive",
              "color": "Olive",
              "gender": [
                "Men"
              ],
              "style": "SPY-MBL-CORE-013",
              "occasion": "Casual",
              "season": "Summer-2021",
              "material": "Leather",
              "primary_color": "Green",
              "currency": "INR",
              "media": [
                {
                  "type": "image",
                  "url": "https://hdn-1.fynd.com/products/pictures/item/free/original/8907966514645/Zm-mKqN5b5-SPY-MBL-ON-S1714-OLIVE-04.jpg"
                },
                {
                  "type": "image",
                  "url": "https://hdn-1.fynd.com/products/pictures/item/free/original/8907966514645/vOmcjZkXxv-SPY-MBL-ON-S1714-OLIVE-02.jpg"
                },
                {
                  "type": "image",
                  "url": "https://hdn-1.fynd.com/products/pictures/item/free/original/8907966514645/aEB7WMysfs-SPY-MBL-ON-S1714-OLIVE-03.jpg"
                },
                {
                  "type": "image",
                  "url": "https://hdn-1.fynd.com/products/pictures/item/free/original/8907966514645/xP78kUZL6M-SPY-MBL-ON-S1714-OLIVE-01.jpg"
                }
              ],
              "name": "Spykar Brown Leather Belts",
              "brand_name": "Spykar",
              "primary_color_hex": "2BD892"
            },
            "avl_qty": 599,
            "brand_id": 56,
            "bulk_coupon_applied": false,
            "bulk_coupon_code": null,
            "bulk_discount": {
              "conversion_rate": 1,
              "currency_code": "INR",
              "currency_symbol": "₹",
              "floor_source_value": 0,
              "floor_value": 0,
              "source_currency_code": "INR",
              "source_currency_symbol": "₹",
              "source_value": 0,
              "value": 0
            },
            "bulk_margin": 0,
            "cancellation_allowed": true,
            "cashback": {
              "amount": {
                "conversion_rate": 1,
                "currency_code": "INR",
                "currency_symbol": "₹",
                "floor_source_value": 0,
                "floor_value": 0,
                "source_currency_code": "FC",
                "source_currency_symbol": "",
                "source_value": 0,
                "value": 0
              }
            },
            "category_id": [
              202
            ],
            "cod_charges": {
              "amount": {
                "conversion_rate": 1,
                "currency_code": "INR",
                "currency_symbol": "₹",
                "floor_source_value": 0,
                "floor_value": 0,
                "source_currency_code": "INR",
                "source_currency_symbol": "₹",
                "source_value": 0,
                "value": 0
              }
            },
            "company_id": 37,
            "company_info": {
              "company_id": 37,
              "c_name": "SPYKAR LIFESTYLES PRIVATE LIMITED",
              "c_taxes": null
            },
            "company_taxes": null,
            "coupon": {
              "amount": {
                "conversion_rate": 1,
                "currency_code": "INR",
                "currency_symbol": "₹",
                "floor_source_value": 0,
                "floor_value": 0,
                "source_currency_code": "INR",
                "source_currency_symbol": "₹",
                "source_value": 0,
                "value": 0
              },
              "article_count": 0,
              "cancellation_allowed": true,
              "return_allowed": true
            },
            "custom_meta": {},
            "data": {},
            "delivery_charges": {
              "amount": {
                "conversion_rate": 1,
                "currency_code": "INR",
                "currency_symbol": "₹",
                "floor_source_value": 0,
                "floor_value": 0,
                "source_currency_code": "INR",
                "source_currency_symbol": "₹",
                "source_value": 0,
                "value": 0
              }
            },
            "delivery_error_msg": "",
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
            "departments": [
              99
            ],
            "discount": 0,
            "discount_applied": {},
            "dt_currency": "INR",
            "dt_currency_symbol": "₹",
            "esp_modified": false,
            "extra_meta": {},
            "float_amount_paid": 0,
            "free_gift_items_meta": {},
            "group_id": "",
            "gst_amount": 4.71,
            "gst_tax_percentage": 5,
            "hsn_code": null,
            "hsn_code_id": "625fbd91faeed8b3df6ec353",
            "identifiers": {
              "identifier": "axe4piIIR5Sk4EocrRNYeA"
            },
            "image_nature": "standard",
            "include": true,
            "is_valid": true,
            "item_id": 75251393,
            "item_size": "L",
            "item_tags": [],
            "last_update_at": 1673336897,
            "meta": {},
            "net_price": {
              "conversion_rate": 1,
              "currency_code": "INR",
              "currency_symbol": "₹",
              "floor_source_value": 99,
              "floor_value": 99,
              "source_currency_code": "INR",
              "source_currency_symbol": "₹",
              "source_value": 99,
              "value": 99
            },
            "old_price": {
              "conversion_rate": 1,
              "currency_code": "INR",
              "currency_symbol": "₹",
              "floor_source_value": 1099,
              "floor_value": 1099,
              "source_currency_code": "INR",
              "source_currency_symbol": "₹",
              "source_value": 1099,
              "value": 1099
            },
            "original_price_effective": {
              "conversion_rate": 1,
              "currency_code": "INR",
              "currency_symbol": "₹",
              "floor_source_value": 1099,
              "floor_value": 1099,
              "source_currency_code": "INR",
              "source_currency_symbol": "₹",
              "source_value": 1099,
              "value": 1099
            },
            "original_unit_price": {
              "conversion_rate": 1,
              "currency_code": "INR",
              "currency_symbol": "₹",
              "floor_source_value": 1099,
              "floor_value": 1099,
              "source_currency_code": "INR",
              "source_currency_symbol": "₹",
              "source_value": 1099,
              "value": 1099
            },
            "parent_item_identifiers": {
              "identifier": null,
              "parent_item_size": null,
              "parent_item_id": null
            },
            "pickup_stores": [],
            "price": {
              "conversion_rate": 1,
              "currency_code": "INR",
              "currency_symbol": "₹",
              "floor_source_value": 1099,
              "floor_value": 1099,
              "source_currency_code": "INR",
              "source_currency_symbol": "₹",
              "source_value": 1099,
              "value": 1099
            },
            "price_effective": {
              "conversion_rate": 1,
              "currency_code": "INR",
              "currency_symbol": "₹",
              "floor_source_value": 1099,
              "floor_value": 1099,
              "source_currency_code": "INR",
              "source_currency_symbol": "₹",
              "source_value": 1099,
              "value": 1099
            },
            "price_marked": {
              "conversion_rate": 1,
              "currency_code": "INR",
              "currency_symbol": "₹",
              "floor_source_value": 1099,
              "floor_value": 1099,
              "source_currency_code": "INR",
              "source_currency_symbol": "₹",
              "source_value": 1099,
              "value": 1099
            },
            "promotions": {
              "amount": {
                "conversion_rate": 1,
                "currency_code": "INR",
                "currency_symbol": "₹",
                "floor_source_value": 0,
                "floor_value": 0,
                "source_currency_code": "INR",
                "source_currency_symbol": "₹",
                "source_value": 0,
                "value": 0
              },
              "applied": [
                {
                  "amount": {
                    "conversion_rate": 1,
                    "currency_code": "INR",
                    "currency_symbol": "₹",
                    "floor_source_value": 1000,
                    "floor_value": 1000,
                    "source_currency_code": "INR",
                    "source_currency_symbol": "₹",
                    "source_value": 1000,
                    "value": 1000
                  },
                  "applied_discounts": [
                    {
                      "type": "percentage",
                      "value": 100
                    }
                  ],
                  "applied_free_articles": [],
                  "apply_exclusive": null,
                  "article_quantity": 1,
                  "buy_rules": [
                    {
                      "all_items": true,
                      "cart_conditions": {
                        "cart_quantity": {
                          "greater_than_equals": 1
                        }
                      },
                      "item_criteria": {},
                      "mrp_promo": false,
                      "slug": "rule#1"
                    }
                  ],
                  "cancellation_allowed": true,
                  "discount_rules": [
                    {
                      "all_items": null,
                      "buy_condition": "( rule#1 )",
                      "item_criteria": {
                        "buy_rules": [
                          "rule#1"
                        ]
                      },
                      "matched_buy_rules": [
                        "rule#1"
                      ],
                      "offer": {
                        "discount_percentage": 100,
                        "max_discount_amount": 1000
                      },
                      "raw_offer": {
                        "buy_condition": "( rule#1 )",
                        "discount_type": "percentage",
                        "item_criteria": {
                          "buy_rules": [
                            "rule#1"
                          ]
                        },
                        "offer": {
                          "discount_percentage": 100,
                          "max_discount_amount": 1000
                        }
                      },
                      "type": "percentage"
                    }
                  ],
                  "mrp_promo": false,
                  "offer_text": "sadad",
                  "payable_category": "seller",
                  "promo_code": null,
                  "promo_id": "6380a896012cc2dda62f6682",
                  "promo_type": "percentage",
                  "promotion_group": "product",
                  "return_allowed": true
                }
              ],
              "apply_exclusive": null,
              "available": [],
              "cancellation_allowed": true,
              "exclusive_promo_applied": false,
              "mrp_promo_applied": false,
              "return_allowed": true
            },
            "quantity": 1,
            "quantity_assign_status": false,
            "referral_credits": {
              "amount": {
                "conversion_rate": 1,
                "currency_code": "INR",
                "currency_symbol": "₹",
                "floor_source_value": 0,
                "floor_value": 0,
                "source_currency_code": "FC",
                "source_currency_symbol": "",
                "source_value": 0,
                "value": 0
              }
            },
            "reload_data_only": true,
            "return_allowed": false,
            "sc_currency": "INR",
            "sc_currency_symbol": "₹",
            "selling_price": {
              "conversion_rate": 1,
              "currency_code": "INR",
              "currency_symbol": "₹",
              "floor_source_value": 1099,
              "floor_value": 1099,
              "source_currency_code": "INR",
              "source_currency_symbol": "₹",
              "source_value": 1099,
              "value": 1099
            },
            "service_item_meta": {
              "product_group_tags": null,
              "products": null
            },
            "size_level_total_qty": 1,
            "sizes": [
              "M",
              "L",
              "XL",
              "2XL"
            ],
            "split_article_id": "6388b1136e440e76ba0e5af2_0",
            "split_index": 0,
            "store_id": 10514,
            "store_info": {
              "store_id": 10514,
              "s_city": "THANE",
              "store_name": "SPYKAR KALHER BHIWANDI WAREHOUSE",
              "store_type": "warehouse",
              "store_pincode": 421302,
              "latitude": 19.0759837,
              "longitude": 72.8776559
            },
            "tags": [],
            "total_gst_amount": 4.71,
            "total_value_of_good": 94.29,
            "transfer_price": {
              "conversion_rate": 1,
              "currency_code": "INR",
              "currency_symbol": "₹",
              "floor_source_value": 0,
              "floor_value": 0,
              "source_currency_code": "INR",
              "source_currency_symbol": "₹",
              "source_value": 0,
              "value": 0
            },
            "unit_price": {
              "conversion_rate": 1,
              "currency_code": "INR",
              "currency_symbol": "₹",
              "floor_source_value": 99,
              "floor_value": 99,
              "source_currency_code": "INR",
              "source_currency_symbol": "₹",
              "source_value": 99,
              "value": 99
            },
            "valid_inventory": true,
            "value_of_good": 94.29
          }
        }
      },
      "buy_rules": [
        {
          "all_items": true,
          "cart_conditions": {
            "cart_quantity": {
              "greater_than_equals": 1
            }
          },
          "item_criteria": {},
          "mrp_promo": false,
          "slug": "rule#1"
        }
      ],
      "buy_rules_map": {
        "rule#1": {
          "cart_quantity": {
            "greater_than_equals": 1
          },
          "all_items": true
        }
      },
      "calculate_on": "esp",
      "cancellation_allowed": true,
      "code": null,
      "discount": 1000,
      "discount_rules": [
        {
          "all_items": null,
          "buy_condition": "( rule#1 )",
          "item_criteria": {
            "buy_rules": [
              "rule#1"
            ]
          },
          "matched_buy_rules": [
            "rule#1"
          ],
          "offer": {
            "discount_percentage": 100,
            "max_discount_amount": 1000
          },
          "raw_offer": {
            "buy_condition": "( rule#1 )",
            "discount_type": "percentage",
            "item_criteria": {
              "buy_rules": [
                "rule#1"
              ]
            },
            "offer": {
              "discount_percentage": 100,
              "max_discount_amount": 1000
            }
          },
          "type": "percentage"
        }
      ],
      "id": "6380a896012cc2dda62f6682",
      "mrp_promo": false,
      "offer_text": "sadad",
      "payable_category": "seller",
      "priority": 1,
      "promo_group": "product",
      "remaining_allowed_qty": null,
      "restrictions": {
        "user_registered": {
          "end": null,
          "start": null
        },
        "user_groups": [],
        "user_id": [],
        "anonymous_users": true,
        "payments": [],
        "platforms": [
          "web",
          "android",
          "ios"
        ],
        "uses": {
          "remaining": {
            "total": 0,
            "user": 0
          },
          "maximum": {
            "total": 0,
            "user": 0
          }
        },
        "post_order": {
          "cancellation_allowed": true,
          "return_allowed": true
        }
      },
      "return_allowed": true,
      "stackable": true,
      "type": "percentage",
      "usage_meta": null
    }
  ],
  "coupon_text": "View all offers",
  "buy_now": false,
  "gstin": null,
  "comment": "",
  "checkout_mode": "self",
  "payment_selection_lock": {
    "enabled": false,
    "default_options": "",
    "payment_identifier": ""
  },
  "restrict_checkout": false,
  "is_valid": true,
  "success": true,
  "currency": {
    "code": "INR",
    "symbol": "₹"
  },
  "last_modified": "Tue, 10 Jan 2023 07:48:56 GMT"
}
```
</details>









---


#### getCartLastModified
Fetch last-modified timestamp




```swift
poscart.getCartLastModified(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String? | no |  |  



Use this API to fetch Last-Modified timestamp in header metadata.

*Returned Response:*








---


#### addItems
Add items to cart




```swift
poscart.addItems(i: i, b: b, areaCode: areaCode, buyNow: buyNow, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| i | Bool? | no |  |   
| b | Bool? | no |  |   
| areaCode | String? | no |  |   
| buyNow | Bool? | no |  |  
| body | AddCartRequest | yes | Request body |


Use this API to add items to the cart.

*Returned Response:*




[AddCartDetailResponse](#AddCartDetailResponse)

Success. Returns a cart object as shown below. Refer `AddCartDetailResponse` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Product has been added to your cart</i></summary>

```json
{
  "value": {
    "message": "Product has been added to your cart",
    "success": true,
    "cart": {
      "breakup_values": {
        "display": [
          {
            "display": "MRP Total",
            "key": "mrp_total",
            "value": 17486,
            "currency_code": "INR"
          },
          {
            "display": "Discount",
            "key": "discount",
            "value": -3540,
            "currency_code": "INR"
          },
          {
            "display": "Subtotal",
            "key": "subtotal",
            "value": 13946,
            "currency_code": "INR"
          },
          {
            "display": "Total",
            "key": "total",
            "value": 13946,
            "currency_code": "INR"
          }
        ],
        "raw": {
          "cod_charge": 0,
          "convenience_fee": 0,
          "coupon": 0,
          "delivery_charge": 0,
          "discount": -3540,
          "fynd_cash": 0,
          "gst_charges": 1529.96,
          "mrp_total": 17486,
          "subtotal": 13946,
          "total": 13946,
          "vog": 12416.04,
          "you_saved": 0
        },
        "loyalty_points": {
          "total": 0,
          "applicable": 0,
          "is_applied": false,
          "description": "Your cashback, referrals, and refund amount get credited to Fynd Cash which can be redeemed while placing an order."
        },
        "coupon": {
          "type": "cash",
          "code": "",
          "uid": null,
          "value": 0,
          "is_applied": false,
          "message": "Sorry! Invalid Coupon"
        }
      },
      "items": [
        {
          "key": "751083_10",
          "parent_item_identifiers": {
            "identifier": "ZASFF",
            "parent_item_id": 7501190,
            "parent_item_size": "OS"
          },
          "article": {
            "type": "article",
            "uid": "612_9_SE61201_19100302_10",
            "size": "10",
            "seller": {
              "uid": 612,
              "name": "SSR ENTERPRISE"
            },
            "store": {
              "uid": 4431,
              "name": "Motilal Nagar 1, Goregaon"
            },
            "quantity": 4,
            "price": {
              "base": {
                "marked": 3999,
                "effective": 2399,
                "currency_code": "INR"
              },
              "converted": {
                "marked": 3999,
                "effective": 2399,
                "currency_code": "INR"
              }
            }
          },
          "price": {
            "base": {
              "add_on": 4798,
              "marked": 7998,
              "effective": 4798,
              "selling": 4798,
              "currency_code": "INR"
            },
            "converted": {
              "add_on": 4798,
              "marked": 7998,
              "effective": 4798,
              "selling": 4798,
              "currency_code": "INR"
            }
          },
          "availability": {
            "sizes": [
              "10"
            ],
            "other_store_quantity": 2,
            "out_of_stock": false,
            "deliverable": true,
            "is_valid": true
          },
          "product": {
            "type": "product",
            "uid": 751083,
            "name": "Carson 2",
            "slug": "puma-carson-2-751083-6ad98d",
            "brand": {
              "uid": 9,
              "name": "Puma"
            },
            "categories": [
              {
                "uid": 165,
                "name": "Outdoor Sports Shoes"
              }
            ],
            "images": [
              {
                "aspect_ratio": "16:25",
                "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/9_19100302/1_1542807042296.jpg",
                "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/9_19100302/1_1542807042296.jpg"
              }
            ],
            "action": {
              "type": "product",
              "url": "https://api.addsale.com/platform/content/v1/products/puma-carson-2-751083-6ad98d/",
              "query": {
                "product_slug": [
                  "puma-carson-2-751083-6ad98d"
                ]
              }
            }
          },
          "coupon_message": "",
          "quantity": 2,
          "message": "",
          "bulk_offer": {},
          "discount": "41% OFF"
        },
        {
          "key": "246228_S",
          "article": {
            "type": "article",
            "uid": "46_235_TM62_M11029ONDSXNS_S",
            "size": "S",
            "seller": {
              "uid": 46,
              "name": "RELIANCE BRANDS LIMITED"
            },
            "store": {
              "uid": 4550,
              "name": "VR Mall"
            },
            "quantity": 1,
            "price": {
              "base": {
                "marked": 4490,
                "effective": 4490,
                "currency_code": "INR"
              },
              "converted": {
                "marked": 4490,
                "effective": 4490,
                "currency_code": "INR"
              }
            }
          },
          "price": {
            "base": {
              "add_on": 4490,
              "marked": 4490,
              "effective": 4490,
              "selling": 4490,
              "currency_code": "INR"
            },
            "converted": {
              "add_on": 4490,
              "marked": 4490,
              "effective": 4490,
              "selling": 4490,
              "currency_code": "INR"
            }
          },
          "availability": {
            "sizes": [
              "L",
              "M",
              "S",
              "XL",
              "XXL"
            ],
            "other_store_quantity": 0,
            "out_of_stock": false,
            "deliverable": true,
            "is_valid": true
          },
          "product": {
            "type": "product",
            "uid": 246228,
            "name": "Blue Solid T-Shirt",
            "slug": "superdry-blue-solid-t-shirt-2",
            "brand": {
              "uid": 235,
              "name": "Superdry"
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
                "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/235_M11029ONDSXNS/1.jpg",
                "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/235_M11029ONDSXNS/1.jpg"
              }
            ],
            "action": {
              "type": "product",
              "url": "https://api.addsale.com/platform/content/v1/products/superdry-blue-solid-t-shirt-2/",
              "query": {
                "product_slug": [
                  "superdry-blue-solid-t-shirt-2"
                ]
              }
            }
          },
          "coupon_message": "",
          "quantity": 1,
          "message": "",
          "bulk_offer": {},
          "discount": ""
        },
        {
          "key": "443175_S",
          "article": {
            "type": "article",
            "uid": "162_207_1271_LJ03LBLUDN88_S",
            "size": "S",
            "seller": {
              "uid": 162,
              "name": "GO FASHION INDIA PRIVATE LIMITED"
            },
            "store": {
              "uid": 5784,
              "name": "Vega City mall"
            },
            "quantity": 3,
            "price": {
              "base": {
                "marked": 1599,
                "effective": 1599,
                "currency_code": "INR"
              },
              "converted": {
                "marked": 1599,
                "effective": 1599,
                "currency_code": "INR"
              }
            }
          },
          "price": {
            "base": {
              "add_on": 1599,
              "marked": 1599,
              "effective": 1599,
              "selling": 1599,
              "currency_code": "INR"
            },
            "converted": {
              "add_on": 1599,
              "marked": 1599,
              "effective": 1599,
              "selling": 1599,
              "currency_code": "INR"
            }
          },
          "availability": {
            "sizes": [
              "XL",
              "M",
              "L",
              "S"
            ],
            "other_store_quantity": 8,
            "out_of_stock": false,
            "deliverable": true,
            "is_valid": true
          },
          "product": {
            "type": "product",
            "uid": 443175,
            "name": "Light Blue Denim Jeggings",
            "slug": "go-colors-light-blue-denim-jeggings-443175-3c688c",
            "brand": {
              "uid": 207,
              "name": "Go Colors"
            },
            "categories": [
              {
                "uid": 267,
                "name": "Jeggings"
              }
            ],
            "images": [
              {
                "aspect_ratio": "16:25",
                "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/207_LJ03LBLUDN88/1_1512382513548.jpg",
                "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/207_LJ03LBLUDN88/1_1512382513548.jpg"
              }
            ],
            "action": {
              "type": "product",
              "url": "https://api.addsale.com/platform/content/v1/products/go-colors-light-blue-denim-jeggings-443175-3c688c/",
              "query": {
                "product_slug": [
                  "go-colors-light-blue-denim-jeggings-443175-3c688c"
                ]
              }
            }
          },
          "coupon_message": "",
          "quantity": 1,
          "message": "",
          "bulk_offer": {},
          "discount": ""
        },
        {
          "key": "778937_OS",
          "article": {
            "type": "article",
            "uid": "686_963_IC68601_PWUPC01977_OS",
            "size": "OS",
            "seller": {
              "uid": 686,
              "name": "INDUS CORPORATION"
            },
            "store": {
              "uid": 5059,
              "name": "Vidyaranyapura Main Road"
            },
            "quantity": 3,
            "price": {
              "base": {
                "marked": 3399,
                "effective": 3059,
                "currency_code": "INR"
              },
              "converted": {
                "marked": 3399,
                "effective": 3059,
                "currency_code": "INR"
              }
            }
          },
          "price": {
            "base": {
              "add_on": 3059,
              "marked": 3399,
              "effective": 3059,
              "selling": 3059,
              "currency_code": "INR"
            },
            "converted": {
              "add_on": 3059,
              "marked": 3399,
              "effective": 3059,
              "selling": 3059,
              "currency_code": "INR"
            }
          },
          "availability": {
            "sizes": [
              "OS"
            ],
            "other_store_quantity": 2,
            "out_of_stock": false,
            "deliverable": true,
            "is_valid": true
          },
          "product": {
            "type": "product",
            "uid": 778937,
            "name": "Colourful Carnival Bouncer",
            "slug": "fisher-price-colourful-carnival-bouncer-778937-fafa1f",
            "brand": {
              "uid": 963,
              "name": "Fisher-Price"
            },
            "categories": [
              {
                "uid": 576,
                "name": "Cradles"
              }
            ],
            "images": [
              {
                "aspect_ratio": "16:25",
                "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/963_PWUPC01977/1_1545308400588.jpg",
                "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/963_PWUPC01977/1_1545308400588.jpg"
              }
            ],
            "action": {
              "type": "product",
              "url": "https://api.addsale.com/platform/content/v1/products/fisher-price-colourful-carnival-bouncer-778937-fafa1f/",
              "query": {
                "product_slug": [
                  "fisher-price-colourful-carnival-bouncer-778937-fafa1f"
                ]
              }
            }
          },
          "coupon_message": "",
          "quantity": 1,
          "message": "",
          "bulk_offer": {},
          "discount": "11% OFF"
        }
      ],
      "delivery_charge_info": "",
      "coupon_text": "View all offers",
      "buy_now": false,
      "cart_id": 7927,
      "uid": "7927",
      "gstin": null,
      "checkout_mode": "self",
      "last_modified": "Tue, 03 Sep 2019 06:00:43 GMT",
      "restrict_checkout": false,
      "is_valid": true
    },
    "result": {}
  }
}
```
</details>

<details>
<summary><i>&nbsp; Sorry, item is out of stock</i></summary>

```json
{
  "value": {
    "message": "Sorry, item is out of stock",
    "success": false,
    "cart": {
      "breakup_values": {
        "raw": {
          "cod_charge": 0,
          "convenience_fee": 0,
          "coupon": 0,
          "delivery_charge": 0,
          "discount": -202000,
          "fynd_cash": 0,
          "gst_charges": 4804.71,
          "mrp_total": 302899,
          "subtotal": 100899,
          "total": 100899,
          "vog": 96094.29,
          "you_saved": 0
        },
        "coupon": {
          "type": "cash",
          "code": "",
          "uid": null,
          "value": 0,
          "is_applied": false,
          "message": "Sorry! Invalid Coupon"
        },
        "display": [
          {
            "display": "MRP Total",
            "key": "mrp_total",
            "value": 302899,
            "currency_code": "INR"
          },
          {
            "display": "Discount",
            "key": "discount",
            "value": -202000,
            "currency_code": "INR"
          },
          {
            "display": "Subtotal",
            "key": "subtotal",
            "value": 100899,
            "currency_code": "INR"
          },
          {
            "display": "Total",
            "key": "total",
            "value": 100899,
            "currency_code": "INR"
          }
        ],
        "loyalty_points": {
          "total": 0,
          "applicable": 0,
          "is_applied": false,
          "description": "Your cashback, referrals, and refund amount get credited to Fynd Cash which can be redeemed while placing an order."
        }
      },
      "items": [
        {
          "bulk_offer": {},
          "discount": "67% OFF",
          "parent_item_identifiers": {
            "identifier": "ZASFF",
            "parent_item_id": 7501190,
            "parent_item_size": "OS"
          },
          "article": {
            "type": "article",
            "uid": "604_902_SSTC60401_636BLUE_1",
            "size": "1",
            "seller": {
              "uid": 604,
              "name": "SHRI SHANTINATH TRADING COMPANY"
            },
            "store": {
              "uid": 4579,
              "name": "Gandhi Nagar"
            },
            "quantity": 108,
            "price": {
              "base": {
                "marked": 2999,
                "effective": 999,
                "currency_code": "INR"
              },
              "converted": {
                "marked": 2999,
                "effective": 999,
                "currency_code": "INR"
              }
            }
          },
          "coupon_message": "",
          "key": "707569_1",
          "availability": {
            "sizes": [
              "1",
              "8",
              "7",
              "2",
              "9",
              "5",
              "3",
              "6"
            ],
            "other_store_quantity": 7,
            "out_of_stock": false,
            "deliverable": true,
            "is_valid": true
          },
          "product": {
            "type": "product",
            "uid": 707569,
            "name": "Blue and Gold Printed Ethnic Set",
            "slug": "aj-dezines-blue-and-gold-printed-ethnic-set-707569-bff01a",
            "brand": {
              "uid": 902,
              "name": ""
            },
            "categories": [
              {
                "uid": 525,
                "name": ""
              }
            ],
            "images": [
              {
                "aspect_ratio": "16:25",
                "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/902_636BLUE/1_1540301094877.jpg",
                "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/902_636BLUE/1_1540301094877.jpg"
              }
            ],
            "action": {
              "type": "product",
              "url": "https://api.addsale.com/v1/products/aj-dezines-blue-and-gold-printed-ethnic-set-707569-bff01a/",
              "query": {
                "product_slug": [
                  "aj-dezines-blue-and-gold-printed-ethnic-set-707569-bff01a"
                ]
              }
            }
          },
          "price": {
            "base": {
              "add_on": 100899,
              "marked": 302899,
              "effective": 100899,
              "selling": 100899,
              "currency_code": "INR"
            },
            "converted": {
              "add_on": 100899,
              "marked": 302899,
              "effective": 100899,
              "selling": 100899,
              "currency_code": "INR"
            }
          },
          "message": "",
          "quantity": 101
        }
      ],
      "delivery_charge_info": "",
      "coupon_text": "View all offers",
      "buy_now": false,
      "cart_id": 54,
      "uid": "54",
      "gstin": null,
      "checkout_mode": "self",
      "restrict_checkout": false,
      "is_valid": false,
      "last_modified": "Tue, 03 Sep 2019 09:55:40 GMT"
    },
    "result": {}
  }
}
```
</details>

</details>









---


#### updateCart
Update items in the cart




```swift
poscart.updateCart(id: id, i: i, b: b, areaCode: areaCode, buyNow: buyNow, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String? | no |  |   
| i | Bool? | no |  |   
| b | Bool? | no |  |   
| areaCode | String? | no |  |   
| buyNow | Bool? | no |  |  
| body | UpdateCartRequest | yes | Request body |


<p>Use this API to update items added to the cart with the help of a request object containing attributes like item_quantity and item_size. These attributes will be fetched from the following APIs</p> <ul> <li><font color="monochrome">operation</font> Operation for current api call. <b>update_item</b> for update items. <b>remove_item</b> for removing items.</li> <li> <font color="monochrome">item_id</font>  "/platform/content/v1/products/"</li> <li> <font color="monochrome">item_size</font>   "/platform/content/v1/products/:slug/sizes/"</li> <li> <font color="monochrome">quantity</font>  item quantity (must be greater than or equal to 1)</li> <li> <font color="monochrome">article_id</font>   "/content​/v1​/products​/:identifier​/sizes​/price​/"</li> <li> <font color="monochrome">item_index</font>  item position in the cart (must be greater than or equal to 0)</li> </ul>

*Returned Response:*




[UpdateCartDetailResponse](#UpdateCartDetailResponse)

Success. Updates and returns a cart object as shown below. Refer `UpdateCartDetailResponse` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Nothing updated</i></summary>

```json
{
  "value": {
    "cart": {
      "breakup_values": {
        "raw": {
          "cod_charge": 0,
          "convenience_fee": 0,
          "coupon": 0,
          "delivery_charge": 0,
          "discount": -202000,
          "fynd_cash": 0,
          "gst_charges": 4804.71,
          "mrp_total": 302899,
          "subtotal": 100899,
          "total": 100899,
          "vog": 96094.29,
          "you_saved": 0
        },
        "coupon": {
          "type": "cash",
          "code": "",
          "uid": null,
          "value": 0,
          "is_applied": false,
          "message": "Sorry! Invalid Coupon"
        },
        "display": [
          {
            "display": "MRP Total",
            "key": "mrp_total",
            "value": 302899,
            "currency_code": "INR"
          },
          {
            "display": "Discount",
            "key": "discount",
            "value": -202000,
            "currency_code": "INR"
          },
          {
            "display": "Subtotal",
            "key": "subtotal",
            "value": 100899,
            "currency_code": "INR"
          },
          {
            "display": "Total",
            "key": "total",
            "value": 100899,
            "currency_code": "INR"
          }
        ],
        "loyalty_points": {
          "total": 0,
          "applicable": 0,
          "is_applied": false,
          "description": "Your cashback, referrals, and refund amount get credited to Fynd Cash which can be redeemed while placing an order."
        }
      },
      "items": [
        {
          "bulk_offer": {},
          "discount": "67% OFF",
          "parent_item_identifiers": {
            "identifier": "ZASFF",
            "parent_item_id": 7501190,
            "parent_item_size": "OS"
          },
          "article": {
            "type": "article",
            "uid": "604_902_SSTC60401_636BLUE_1",
            "size": "1",
            "seller": {
              "uid": 604,
              "name": "SHRI SHANTINATH TRADING COMPANY"
            },
            "store": {
              "uid": 4579,
              "name": "Gandhi Nagar"
            },
            "quantity": 108,
            "price": {
              "base": {
                "marked": 2999,
                "effective": 999,
                "currency_code": "INR"
              },
              "converted": {
                "marked": 2999,
                "effective": 999,
                "currency_code": "INR"
              }
            }
          },
          "coupon_message": "",
          "key": "707569_1",
          "availability": {
            "sizes": [
              "1",
              "8",
              "7",
              "2",
              "9",
              "5",
              "3",
              "6"
            ],
            "other_store_quantity": 7,
            "out_of_stock": false,
            "deliverable": true,
            "is_valid": true
          },
          "product": {
            "type": "product",
            "uid": 707569,
            "name": "Blue and Gold Printed Ethnic Set",
            "slug": "aj-dezines-blue-and-gold-printed-ethnic-set-707569-bff01a",
            "brand": {
              "uid": 902,
              "name": ""
            },
            "categories": [
              {
                "uid": 525,
                "name": ""
              }
            ],
            "images": [
              {
                "aspect_ratio": "16:25",
                "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/902_636BLUE/1_1540301094877.jpg",
                "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/902_636BLUE/1_1540301094877.jpg"
              }
            ],
            "action": {
              "type": "product",
              "url": "https://api.addsale.com/v1/products/aj-dezines-blue-and-gold-printed-ethnic-set-707569-bff01a/",
              "query": {
                "product_slug": [
                  "aj-dezines-blue-and-gold-printed-ethnic-set-707569-bff01a"
                ]
              }
            }
          },
          "price": {
            "base": {
              "add_on": 100899,
              "marked": 302899,
              "effective": 100899,
              "selling": 100899,
              "currency_code": "INR"
            },
            "converted": {
              "add_on": 100899,
              "marked": 302899,
              "effective": 100899,
              "selling": 100899,
              "currency_code": "INR"
            }
          },
          "message": "",
          "quantity": 101
        }
      ],
      "delivery_charge_info": "",
      "coupon_text": "View all offers",
      "buy_now": false,
      "cart_id": 54,
      "uid": "54",
      "gstin": null,
      "checkout_mode": "self",
      "restrict_checkout": false,
      "is_valid": true,
      "last_modified": "Tue, 03 Sep 2019 10:19:20 GMT"
    },
    "result": {
      "707569_90": {
        "success": true,
        "message": "Nothing updated"
      }
    },
    "message": "Nothing updated",
    "success": true
  }
}
```
</details>

<details>
<summary><i>&nbsp; Item updated in the cart</i></summary>

```json
{
  "value": {
    "cart": {
      "breakup_values": {
        "coupon": {
          "type": "cash",
          "code": "",
          "uid": null,
          "value": 0,
          "is_applied": false,
          "message": "Sorry! Invalid Coupon"
        },
        "loyalty_points": {
          "total": 0,
          "applicable": 0,
          "is_applied": false,
          "description": "Your cashback, referrals, and refund amount get credited to Fynd Cash which can be redeemed while placing an order."
        },
        "raw": {
          "cod_charge": 0,
          "convenience_fee": 0,
          "coupon": 0,
          "delivery_charge": 0,
          "discount": 0,
          "fynd_cash": 0,
          "gst_charges": 838.83,
          "mrp_total": 5499,
          "subtotal": 5499,
          "total": 5499,
          "vog": 4660.17,
          "you_saved": 0
        },
        "display": [
          {
            "display": "MRP Total",
            "key": "mrp_total",
            "value": 5499,
            "currency_code": "INR"
          },
          {
            "display": "Subtotal",
            "key": "subtotal",
            "value": 5499,
            "currency_code": "INR"
          },
          {
            "display": "Total",
            "key": "total",
            "value": 5499,
            "currency_code": "INR"
          }
        ]
      },
      "items": [
        {
          "key": "437414_7",
          "message": "",
          "bulk_offer": {},
          "price": {
            "base": {
              "add_on": 5499,
              "marked": 5499,
              "effective": 5499,
              "selling": 5499,
              "currency_code": "INR"
            },
            "converted": {
              "add_on": 5499,
              "marked": 5499,
              "effective": 5499,
              "selling": 5499,
              "currency_code": "INR"
            }
          },
          "quantity": 1,
          "discount": "",
          "product": {
            "type": "product",
            "uid": 437414,
            "name": "Suede Classic",
            "slug": "puma-suede-classic-437414-6e6bbf",
            "brand": {
              "uid": 9,
              "name": "Puma"
            },
            "categories": [
              {
                "uid": 165,
                "name": "Outdoor Sports Shoes"
              }
            ],
            "images": [
              {
                "aspect_ratio": "16:25",
                "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/9_35656851/1_1511171811830.jpg",
                "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/9_35656851/1_1511171811830.jpg"
              }
            ],
            "action": {
              "type": "product",
              "url": "https://api.addsale.com/platform/content/v1/products/puma-suede-classic-437414-6e6bbf/",
              "query": {
                "product_slug": [
                  "puma-suede-classic-437414-6e6bbf"
                ]
              }
            }
          },
          "parent_item_identifiers": {
            "identifier": "ZASFF",
            "parent_item_id": 7501190,
            "parent_item_size": "OS"
          },
          "article": {
            "type": "article",
            "uid": "507_9_96099_35656851_7",
            "size": "7",
            "seller": {
              "uid": 507,
              "name": "PUMA SPORTS INDIA PVT LTD"
            },
            "store": {
              "uid": 3632,
              "name": "Colaba Causway"
            },
            "quantity": 5,
            "price": {
              "base": {
                "marked": 5499,
                "effective": 5499,
                "currency_code": "INR"
              },
              "converted": {
                "marked": 5499,
                "effective": 5499,
                "currency_code": "INR"
              }
            }
          },
          "coupon_message": "",
          "availability": {
            "sizes": [
              "10",
              "11",
              "6",
              "9",
              "7",
              "8"
            ],
            "other_store_quantity": 22,
            "out_of_stock": false,
            "deliverable": true,
            "is_valid": true
          }
        }
      ],
      "delivery_charge_info": "",
      "coupon_text": "View all offers",
      "buy_now": false,
      "cart_id": 12426,
      "uid": "12426",
      "gstin": null,
      "checkout_mode": "self",
      "last_modified": "Thu, 22 Aug 2019 04:51:42 GMT",
      "restrict_checkout": false,
      "is_valid": true
    },
    "result": {
      "437414_7": {
        "success": true,
        "message": "Item updated in the bag"
      }
    },
    "message": "Item updated in the bag",
    "success": true
  }
}
```
</details>

</details>









---


#### getItemCount
Count items in the cart




```swift
poscart.getItemCount(id: id, buyNow: buyNow) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String? | no | The unique identifier of the cart. |   
| buyNow | Bool? | no |  |  



Use this API to get the total number of items present in cart.

*Returned Response:*




[CartItemCountResponse](#CartItemCountResponse)

Success. Returns the total count of items in a user's cart.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "user_cart_items_count": 0
}
```
</details>









---


#### getCoupons
Fetch Coupon




```swift
poscart.getCoupons(id: id, buyNow: buyNow) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String? | no |  |   
| buyNow | Bool? | no |  |  



Use this API to get a list of available coupons along with their details.

*Returned Response:*




[GetCouponResponse](#GetCouponResponse)

Success. Returns a coupon object which has a list of all the eligible coupons. Refer `GetCouponResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "available_coupon_list": [
    {
      "coupon_value": 500,
      "minimum_cart_value": 0,
      "coupon_code": "RAJA500",
      "title": "RAJA500 | Fynd coupon",
      "sub_title": "NA",
      "message": "TEST500",
      "max_discount_value": 500,
      "uid": 17921,
      "is_applicable": true,
      "is_applied": false,
      "expires_on": "28 Aug, 19"
    },
    {
      "coupon_value": 2250,
      "minimum_cart_value": 0,
      "coupon_code": "PRISMC22250111",
      "title": "celio 2 time coupn to kalim hsp",
      "sub_title": "celio 2 time coupn to kalim hsp",
      "message": "celio 2 time coupn to kalim hsp",
      "max_discount_value": 2250,
      "uid": 17743,
      "is_applicable": true,
      "is_applied": false,
      "expires_on": "24 Jan, 20"
    }
  ],
  "page": {
    "current": 1,
    "total": 0,
    "has_previous": false,
    "has_next": false,
    "total_item_count": 0
  }
}
```
</details>









---


#### applyCoupon
Apply Coupon




```swift
poscart.applyCoupon(i: i, b: b, p: p, id: id, buyNow: buyNow, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| i | Bool? | no |  |   
| b | Bool? | no |  |   
| p | Bool? | no |  |   
| id | String? | no |  |   
| buyNow | Bool? | no |  |  
| body | ApplyCouponRequest | yes | Request body |


Use this API to apply coupons on items in the cart.

*Returned Response:*




[CartDetailResponse](#CartDetailResponse)

Success. Returns coupons applied to the cart along with item details and price breakup. Refer `CartDetailResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "breakup_values": {
    "raw": {
      "cod_charge": 0,
      "convenience_fee": 0,
      "coupon": -2250,
      "delivery_charge": 0,
      "discount": -7240.2163,
      "fynd_cash": 0,
      "gst_charges": 2139.08,
      "mrp_total": 26983,
      "subtotal": 19742.7837,
      "total": 17492.7837,
      "vog": 15353.7,
      "you_saved": 0
    },
    "coupon": {
      "type": "cash",
      "coupon_type": "percentage",
      "code": "PRISMC22250111",
      "uid": 17743,
      "value": 2250,
      "is_applied": true,
      "message": "coupn applied",
      "title": "Only Test Coupon",
      "sub_title": "TEST",
      "description": "",
      "minimum_cart_value": 100,
      "maximum_discount_value": 100000,
      "coupon_value": 10
    },
    "loyalty_points": {
      "total": 0,
      "applicable": 0,
      "is_applied": false,
      "description": "Your cashback, referrals, and refund amount get credited to Fynd Cash which can be redeemed while placing an order."
    },
    "display": [
      {
        "display": "MRP Total",
        "key": "mrp_total",
        "value": 26983,
        "currency_code": "INR"
      },
      {
        "display": "Discount",
        "key": "discount",
        "value": -7240,
        "currency_code": "INR"
      },
      {
        "display": "Subtotal",
        "key": "subtotal",
        "value": 19743,
        "currency_code": "INR"
      },
      {
        "display": "Coupon",
        "key": "coupon",
        "value": -2250,
        "currency_code": "INR"
      },
      {
        "display": "Total",
        "key": "total",
        "value": 17493,
        "currency_code": "INR"
      }
    ]
  },
  "items": [
    {
      "availability": {
        "sizes": [
          "10"
        ],
        "other_store_quantity": 0,
        "out_of_stock": false,
        "deliverable": true,
        "is_valid": true
      },
      "product": {
        "type": "product",
        "uid": 751083,
        "name": "Carson 2",
        "slug": "puma-carson-2-751083-6ad98d",
        "brand": {
          "uid": 9,
          "name": "Puma"
        },
        "categories": [
          {
            "uid": 165,
            "name": "Outdoor Sports Shoes"
          }
        ],
        "images": [
          {
            "aspect_ratio": "16:25",
            "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/9_19100302/1_1542807042296.jpg",
            "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/9_19100302/1_1542807042296.jpg"
          }
        ],
        "action": {
          "type": "product",
          "url": "https://api.addsale.com/platform/content/v1/products/puma-carson-2-751083-6ad98d/",
          "query": {
            "product_slug": [
              "puma-carson-2-751083-6ad98d"
            ]
          }
        }
      },
      "quantity": 4,
      "discount": "41% OFF",
      "price": {
        "base": {
          "add_on": 9596,
          "marked": 15996,
          "effective": 9596,
          "selling": 9596,
          "currency_code": "INR"
        },
        "converted": {
          "add_on": 9596,
          "marked": 15996,
          "effective": 9596,
          "selling": 9596,
          "currency_code": "INR"
        }
      },
      "message": "",
      "bulk_offer": {},
      "key": "751083_10",
      "coupon_message": "",
      "article": {
        "type": "article",
        "uid": "612_9_SE61201_19100302_10",
        "size": "10",
        "seller": {
          "uid": 612,
          "name": "SSR ENTERPRISE"
        },
        "store": {
          "uid": 4431,
          "name": "Motilal Nagar 1, Goregaon"
        },
        "quantity": 4,
        "price": {
          "base": {
            "marked": 3999,
            "effective": 2399,
            "currency_code": "INR"
          },
          "converted": {
            "marked": 3999,
            "effective": 2399,
            "currency_code": "INR"
          }
        }
      }
    },
    {
      "availability": {
        "sizes": [
          "L",
          "M",
          "S",
          "XL",
          "XXL"
        ],
        "other_store_quantity": 0,
        "out_of_stock": false,
        "deliverable": true,
        "is_valid": true
      },
      "product": {
        "type": "product",
        "uid": 246228,
        "name": "Blue Solid T-Shirt",
        "slug": "superdry-blue-solid-t-shirt-2",
        "brand": {
          "uid": 235,
          "name": "Superdry"
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
            "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/235_M11029ONDSXNS/1.jpg",
            "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/235_M11029ONDSXNS/1.jpg"
          }
        ],
        "action": {
          "type": "product",
          "url": "https://api.addsale.com/platform/content/v1/products/superdry-blue-solid-t-shirt-2/",
          "query": {
            "product_slug": [
              "superdry-blue-solid-t-shirt-2"
            ]
          }
        }
      },
      "quantity": 1,
      "discount": "",
      "price": {
        "base": {
          "add_on": 4490,
          "marked": 4490,
          "effective": 4490,
          "selling": 4490,
          "currency_code": "INR"
        },
        "converted": {
          "add_on": 4490,
          "marked": 4490,
          "effective": 4490,
          "selling": 4490,
          "currency_code": "INR"
        }
      },
      "message": "",
      "bulk_offer": {},
      "key": "246228_S",
      "coupon_message": "",
      "article": {
        "type": "article",
        "uid": "46_235_TM62_M11029ONDSXNS_S",
        "size": "S",
        "seller": {
          "uid": 46,
          "name": "RELIANCE BRANDS LIMITED"
        },
        "store": {
          "uid": 4550,
          "name": "VR Mall"
        },
        "quantity": 1,
        "price": {
          "base": {
            "marked": 4490,
            "effective": 4490,
            "currency_code": "INR"
          },
          "converted": {
            "marked": 4490,
            "effective": 4490,
            "currency_code": "INR"
          }
        }
      }
    },
    {
      "availability": {
        "sizes": [
          "XL",
          "M",
          "L",
          "S"
        ],
        "other_store_quantity": 8,
        "out_of_stock": false,
        "deliverable": true,
        "is_valid": true
      },
      "product": {
        "type": "product",
        "uid": 443175,
        "name": "Light Blue Denim Jeggings",
        "slug": "go-colors-light-blue-denim-jeggings-443175-3c688c",
        "brand": {
          "uid": 207,
          "name": "Go Colors"
        },
        "categories": [
          {
            "uid": 267,
            "name": "Jeggings"
          }
        ],
        "images": [
          {
            "aspect_ratio": "16:25",
            "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/207_LJ03LBLUDN88/1_1512382513548.jpg",
            "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/207_LJ03LBLUDN88/1_1512382513548.jpg"
          }
        ],
        "action": {
          "type": "product",
          "url": "https://api.addsale.com/platform/content/v1/products/go-colors-light-blue-denim-jeggings-443175-3c688c/",
          "query": {
            "product_slug": [
              "go-colors-light-blue-denim-jeggings-443175-3c688c"
            ]
          }
        }
      },
      "quantity": 1,
      "discount": "",
      "price": {
        "base": {
          "add_on": 1599,
          "marked": 1599,
          "effective": 1599,
          "selling": 1599,
          "currency_code": "INR"
        },
        "converted": {
          "add_on": 1599,
          "marked": 1599,
          "effective": 1599,
          "selling": 1599,
          "currency_code": "INR"
        }
      },
      "message": "",
      "bulk_offer": {},
      "key": "443175_S",
      "coupon_message": "",
      "article": {
        "type": "article",
        "uid": "162_207_1271_LJ03LBLUDN88_S",
        "size": "S",
        "seller": {
          "uid": 162,
          "name": "GO FASHION INDIA PRIVATE LIMITED"
        },
        "store": {
          "uid": 5784,
          "name": "Vega City mall"
        },
        "quantity": 3,
        "price": {
          "base": {
            "marked": 1599,
            "effective": 1599,
            "currency_code": "INR"
          },
          "converted": {
            "marked": 1599,
            "effective": 1599,
            "currency_code": "INR"
          }
        }
      }
    },
    {
      "availability": {
        "sizes": [
          "OS"
        ],
        "other_store_quantity": 12,
        "out_of_stock": false,
        "deliverable": true,
        "is_valid": true
      },
      "product": {
        "type": "product",
        "uid": 842716,
        "name": "Blue Backpack",
        "slug": "istorm-blue-backpack-842716-951b5a",
        "brand": {
          "uid": 1177,
          "name": "iStorm"
        },
        "categories": [
          {
            "uid": 198,
            "name": "Backpacks"
          }
        ],
        "images": [
          {
            "aspect_ratio": "16:25",
            "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/1177_IS483/1_1551353288247.jpg",
            "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/1177_IS483/1_1551353288247.jpg"
          }
        ],
        "action": {
          "type": "product",
          "url": "https://api.addsale.com/platform/content/v1/products/istorm-blue-backpack-842716-951b5a/",
          "query": {
            "product_slug": [
              "istorm-blue-backpack-842716-951b5a"
            ]
          }
        }
      },
      "quantity": 1,
      "discount": "34% OFF",
      "price": {
        "base": {
          "add_on": 998.7837,
          "marked": 1499,
          "effective": 998.7837,
          "selling": 998.7837,
          "currency_code": "INR"
        },
        "converted": {
          "add_on": 998.7837,
          "marked": 1499,
          "effective": 998.7837,
          "selling": 998.7837,
          "currency_code": "INR"
        }
      },
      "message": "",
      "bulk_offer": {},
      "key": "842716_OS",
      "coupon_message": "",
      "article": {
        "type": "article",
        "uid": "638_1177_CRSL63802_IS483_OS",
        "size": "OS",
        "seller": {
          "uid": 638,
          "name": "COUNFREEDISE RETAIL SERVICES LTD"
        },
        "store": {
          "uid": 4630,
          "name": "Bhiwandi"
        },
        "quantity": 4,
        "price": {
          "base": {
            "marked": 1499,
            "effective": 998.7837,
            "currency_code": "INR"
          },
          "converted": {
            "marked": 1499,
            "effective": 998.7837,
            "currency_code": "INR"
          }
        }
      }
    },
    {
      "availability": {
        "sizes": [
          "OS"
        ],
        "other_store_quantity": 2,
        "out_of_stock": false,
        "deliverable": true,
        "is_valid": true
      },
      "product": {
        "type": "product",
        "uid": 778937,
        "name": "Colourful Carnival Bouncer",
        "slug": "fisher-price-colourful-carnival-bouncer-778937-fafa1f",
        "brand": {
          "uid": 963,
          "name": "Fisher-Price"
        },
        "categories": [
          {
            "uid": 576,
            "name": "Cradles"
          }
        ],
        "images": [
          {
            "aspect_ratio": "16:25",
            "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/963_PWUPC01977/1_1545308400588.jpg",
            "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/963_PWUPC01977/1_1545308400588.jpg"
          }
        ],
        "action": {
          "type": "product",
          "url": "https://api.addsale.com/platform/content/v1/products/fisher-price-colourful-carnival-bouncer-778937-fafa1f/",
          "query": {
            "product_slug": [
              "fisher-price-colourful-carnival-bouncer-778937-fafa1f"
            ]
          }
        }
      },
      "quantity": 1,
      "discount": "11% OFF",
      "price": {
        "base": {
          "add_on": 3059,
          "marked": 3399,
          "effective": 3059,
          "selling": 3059,
          "currency_code": "INR"
        },
        "converted": {
          "add_on": 3059,
          "marked": 3399,
          "effective": 3059,
          "selling": 3059,
          "currency_code": "INR"
        }
      },
      "message": "",
      "bulk_offer": {},
      "key": "778937_OS",
      "coupon_message": "",
      "article": {
        "type": "article",
        "uid": "686_963_IC68601_PWUPC01977_OS",
        "size": "OS",
        "seller": {
          "uid": 686,
          "name": "INDUS CORPORATION"
        },
        "store": {
          "uid": 5059,
          "name": "Vidyaranyapura Main Road"
        },
        "quantity": 3,
        "price": {
          "base": {
            "marked": 3399,
            "effective": 3059,
            "currency_code": "INR"
          },
          "converted": {
            "marked": 3399,
            "effective": 3059,
            "currency_code": "INR"
          }
        }
      }
    }
  ],
  "delivery_charge_info": "",
  "coupon_text": "View all offers",
  "buy_now": false,
  "cart_id": 7927,
  "uid": "7927",
  "gstin": null,
  "checkout_mode": "self",
  "last_modified": "Wed, 04 Sep 2019 04:52:21 GMT",
  "restrict_checkout": false,
  "is_valid": true
}
```
</details>









---


#### removeCoupon
Remove Coupon Applied




```swift
poscart.removeCoupon(id: id, buyNow: buyNow) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String? | no |  |   
| buyNow | Bool? | no |  |  



Remove Coupon applied on the cart by passing uid in request body.

*Returned Response:*




[CartDetailResponse](#CartDetailResponse)

Success. Returns coupons removed from the cart along with item details and price breakup. Refer `CartDetailResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "breakup_values": {
    "raw": {
      "cod_charge": 0,
      "convenience_fee": 0,
      "coupon": 0,
      "delivery_charge": 0,
      "discount": 0,
      "fynd_cash": 0,
      "gst_charges": 342.75,
      "mrp_total": 3199,
      "subtotal": 3199,
      "total": 3199,
      "vog": 2856.25,
      "you_saved": 0
    },
    "coupon": {
      "type": "cash",
      "code": "prismc22250111",
      "uid": 17743,
      "value": 0,
      "is_applied": false,
      "message": "Coupon successfully removed"
    },
    "display": [
      {
        "display": "MRP Total",
        "key": "mrp_total",
        "value": 3199,
        "currency_code": "INR"
      },
      {
        "display": "Subtotal",
        "key": "subtotal",
        "value": 3199,
        "currency_code": "INR"
      },
      {
        "display": "Total",
        "key": "total",
        "value": 3199,
        "currency_code": "INR"
      }
    ],
    "loyalty_points": {
      "total": 0,
      "applicable": 0,
      "is_applied": false,
      "description": "Your cashback, referrals, and refund amount get credited to Fynd Cash which can be redeemed while placing an order."
    }
  },
  "items": [
    {
      "message": "",
      "availability": {
        "sizes": [
          "M",
          "S",
          "L",
          "XXL",
          "XL"
        ],
        "other_store_quantity": 10,
        "out_of_stock": false,
        "deliverable": true,
        "is_valid": true
      },
      "bulk_offer": {},
      "key": "857596_S",
      "quantity": 1,
      "price": {
        "base": {
          "add_on": 3199,
          "marked": 3199,
          "effective": 3199,
          "selling": 3199,
          "currency_code": "INR"
        },
        "converted": {
          "add_on": 3199,
          "marked": 3199,
          "effective": 3199,
          "selling": 3199,
          "currency_code": "INR"
        }
      },
      "discount": "",
      "coupon_message": "",
      "product": {
        "type": "product",
        "uid": 857596,
        "name": "Pink Solid Hoodie",
        "slug": "883-police-pink-solid-hoodie-857596-111bdc",
        "brand": {
          "uid": 610,
          "name": "883 Police"
        },
        "categories": [
          {
            "uid": 144,
            "name": "Hoodies"
          }
        ],
        "images": [
          {
            "aspect_ratio": "16:25",
            "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/610_LETTER19APINK/1_1553062658148.jpg",
            "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/610_LETTER19APINK/1_1553062658148.jpg"
          }
        ],
        "action": {
          "type": "product",
          "url": "https://api.addsale.com/platform/content/v1/products/883-police-pink-solid-hoodie-857596-111bdc/",
          "query": {
            "product_slug": [
              "883-police-pink-solid-hoodie-857596-111bdc"
            ]
          }
        }
      },
      "article": {
        "type": "article",
        "uid": "381_610_IGPL01_LETTER19APINK_S",
        "size": "S",
        "seller": {
          "uid": 381,
          "name": "INTERSOURCE GARMENTS PVT LTD"
        },
        "store": {
          "uid": 3009,
          "name": "Kormangala"
        },
        "quantity": 11,
        "price": {
          "base": {
            "marked": 3199,
            "effective": 3199,
            "currency_code": "INR"
          },
          "converted": {
            "marked": 3199,
            "effective": 3199,
            "currency_code": "INR"
          }
        }
      }
    }
  ],
  "delivery_charge_info": "",
  "coupon_text": "View all offers",
  "buy_now": false,
  "cart_id": 7477,
  "uid": "7477",
  "gstin": null,
  "checkout_mode": "self",
  "last_modified": "Thu, 22 Aug 2019 10:55:05 GMT",
  "restrict_checkout": false,
  "is_valid": true
}
```
</details>









---


#### getBulkDiscountOffers
Get discount offers based on quantity




```swift
poscart.getBulkDiscountOffers(itemId: itemId, articleId: articleId, uid: uid, slug: slug) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| itemId | Int? | no | The Item ID of the product |   
| articleId | String? | no | Article Mongo ID |   
| uid | Int? | no | UID of the product |   
| slug | String? | no | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/ |  



Use this API to get a list of applicable offers along with current, next and best offer for given product. Either one of uid, item_id, slug should be present.

*Returned Response:*




[BulkPriceResponse](#BulkPriceResponse)

Success. Returns a data object containing the seller details and available offers (if exists) on bulk products. Refer `BulkPriceResponse` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Offers found</i></summary>

```json
{
  "value": {
    "data": [
      {
        "seller": {
          "uid": 248,
          "name": "MANYAVAR CREATIONS PRIVATE LIMITED"
        },
        "offers": [
          {
            "quantity": 1,
            "auto_applied": true,
            "margin": 10,
            "type": "bundle",
            "price": {
              "marked": 3999,
              "effective": 3999,
              "bulk_effective": 3599.1,
              "currency_code": "INR"
            },
            "total": 3599.1
          },
          {
            "quantity": 3,
            "auto_applied": true,
            "margin": 20,
            "type": "bundle",
            "price": {
              "marked": 3999,
              "effective": 3999,
              "bulk_effective": 3199.2,
              "currency_code": "INR"
            },
            "total": 9597.6
          },
          {
            "quantity": 9,
            "auto_applied": true,
            "margin": 30,
            "type": "bundle",
            "price": {
              "marked": 3999,
              "effective": 3999,
              "bulk_effective": 3443.4444444444,
              "currency_code": "INR"
            },
            "total": 30991,
            "best": true
          }
        ]
      }
    ]
  }
}
```
</details>

<details>
<summary><i>&nbsp; Offers not found</i></summary>

```json
{
  "value": {
    "data": []
  }
}
```
</details>

</details>









---


#### applyRewardPoints
Apply reward points at cart




```swift
poscart.applyRewardPoints(id: id, i: i, b: b, buyNow: buyNow, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String? | no |  |   
| i | Bool? | no |  |   
| b | Bool? | no |  |   
| buyNow | Bool? | no |  |  
| body | RewardPointRequest | yes | Request body |


Use this API to redeem a fixed no. of reward points by applying it to the cart.

*Returned Response:*




[CartDetailResponse](#CartDetailResponse)

Success. Returns a Cart object. Check the example shown below or refer `CartDetailResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "bulk_offer": {},
      "discount": "67% OFF",
      "article": {
        "type": "article",
        "uid": "604_902_SSTC60401_636BLUE_1",
        "size": "1",
        "seller": {
          "uid": 604,
          "name": "SHRI SHANTINATH TRADING COMPANY"
        },
        "store": {
          "uid": 4579,
          "name": "Gandhi Nagar"
        },
        "quantity": 108,
        "price": {
          "base": {
            "marked": 2999,
            "effective": 999,
            "currency_code": "INR"
          },
          "converted": {
            "marked": 2999,
            "effective": 999,
            "currency_code": "INR"
          }
        }
      },
      "coupon_message": "",
      "key": "707569_1",
      "availability": {
        "sizes": [
          "1",
          "8",
          "7",
          "2",
          "9",
          "5",
          "3",
          "6"
        ],
        "other_store_quantity": 107,
        "out_of_stock": false,
        "deliverable": true,
        "is_valid": true
      },
      "product": {
        "type": "product",
        "uid": 707569,
        "name": "Blue and Gold Printed Ethnic Set",
        "slug": "aj-dezines-blue-and-gold-printed-ethnic-set-707569-bff01a",
        "brand": {
          "uid": 902,
          "name": ""
        },
        "categories": [
          {
            "uid": 525,
            "name": ""
          }
        ],
        "images": [
          {
            "aspect_ratio": "16:25",
            "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/902_636BLUE/1_1540301094877.jpg",
            "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/902_636BLUE/1_1540301094877.jpg"
          }
        ],
        "action": {
          "type": "product",
          "url": "https://api.addsale.com/v1/products/aj-dezines-blue-and-gold-printed-ethnic-set-707569-bff01a/",
          "query": {
            "product_slug": [
              "aj-dezines-blue-and-gold-printed-ethnic-set-707569-bff01a"
            ]
          }
        }
      },
      "price": {
        "base": {
          "add_on": 999,
          "marked": 2999,
          "effective": 999,
          "selling": 999,
          "currency_code": "INR"
        },
        "converted": {
          "add_on": 999,
          "marked": 2999,
          "effective": 999,
          "selling": 999,
          "currency_code": "INR"
        }
      },
      "message": "",
      "quantity": 1
    }
  ],
  "buy_now": false,
  "cart_id": 54,
  "uid": "54",
  "breakup_values": {
    "raw": {
      "cod_charge": 0,
      "convenience_fee": 0,
      "coupon": 0,
      "delivery_charge": 0,
      "discount": -2000,
      "fynd_cash": 0,
      "gst_charges": 47.57,
      "mrp_total": 2999,
      "subtotal": 999,
      "total": 999,
      "vog": 951.43,
      "you_saved": 0
    },
    "coupon": {
      "type": "cash",
      "code": "",
      "uid": null,
      "value": 0,
      "is_applied": false,
      "message": "Sorry! Invalid Coupon"
    },
    "display": [
      {
        "display": "MRP Total",
        "key": "mrp_total",
        "value": 2999,
        "currency_code": "INR"
      },
      {
        "display": "Discount",
        "key": "discount",
        "value": -2000,
        "currency_code": "INR"
      },
      {
        "display": "Subtotal",
        "key": "subtotal",
        "value": 999,
        "currency_code": "INR"
      },
      {
        "display": "Total",
        "key": "total",
        "value": 999,
        "currency_code": "INR"
      }
    ],
    "loyalty_points": {
      "total": 0,
      "applicable": 0,
      "is_applied": false,
      "description": "Your cashback, referrals, and refund amount get credited to Fynd Cash which can be redeemed while placing an order."
    }
  },
  "delivery_charge_info": "",
  "coupon_text": "View all offers",
  "gstin": null,
  "checkout_mode": "self",
  "restrict_checkout": false,
  "is_valid": true,
  "last_modified": "Tue, 03 Sep 2019 05:35:59 GMT"
}
```
</details>









---


#### getAddresses
Fetch address




```swift
poscart.getAddresses(cartId: cartId, buyNow: buyNow, mobileNo: mobileNo, checkoutMode: checkoutMode, tags: tags, isDefault: isDefault) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| cartId | String? | no |  |   
| buyNow | Bool? | no |  |   
| mobileNo | String? | no |  |   
| checkoutMode | String? | no |  |   
| tags | String? | no |  |   
| isDefault | Bool? | no |  |  



Use this API to get all the addresses associated with an account. If successful, returns a Address resource in the response body specified in GetAddressesResponse.attibutes listed below are optional <ul> <li> <font color="monochrome">uid</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>

*Returned Response:*




[GetAddressesResponse](#GetAddressesResponse)

Success. Returns an Address object containing a list of address saved in the account. Refer `GetAddressesResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "address": [
    {
      "landmark": "",
      "area_code": {
        "slug": "pincode",
        "id": 400093
      },
      "id": "8b526f521bb14a2593a8b9e3ce8c76b3",
      "state": "Maharashtra",
      "meta": {},
      "user_id": "8b526f521bb14a2593a8b9e3ce8c76b3",
      "country_code": "IND",
      "phone": 9915347757,
      "geo_location": {},
      "country": "India",
      "is_default_address": true,
      "is_active": true,
      "city": "Mumbai",
      "pincode": 400093,
      "checkout_mode": "self",
      "address_type": "home",
      "tags": [],
      "area": "Sector 127",
      "name": "abc",
      "email": "ankur@gofynd1.com",
      "address": "Megatron2",
      "store_name": "store123"
    }
  ]
}
```
</details>









---


#### addAddress
Add address to an account




```swift
poscart.addAddress(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | Address | yes | Request body |


Use this API to add an address to an account.

*Returned Response:*




[SaveAddressResponse](#SaveAddressResponse)

Success. Returns the address ID, a flag whether the address is set as default, and a success message. Refer `SaveAddressResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "id": "mongo_object_id",
  "is_default_address": true,
  "success": true
}
```
</details>









---


#### getAddressById
Fetch a single address by its ID




```swift
poscart.getAddressById(id: id, cartId: cartId, buyNow: buyNow, mobileNo: mobileNo, checkoutMode: checkoutMode, tags: tags, isDefault: isDefault) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes |  |   
| cartId | String? | no |  |   
| buyNow | Bool? | no |  |   
| mobileNo | String? | no |  |   
| checkoutMode | String? | no |  |   
| tags | String? | no |  |   
| isDefault | Bool? | no |  |  



Use this API to get an addresses using its ID. If successful, returns a Address resource in the response body specified in `Address`. Attibutes listed below are optional <ul> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>

*Returned Response:*




[Address](#Address)

Success. Returns an Address object containing a list of address saved in the account. Refer `Address` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "landmark": "",
  "area_code": {
    "slug": "pincode",
    "id": 400093
  },
  "state": "Maharashtra",
  "meta": {},
  "user_id": "8b526f521bb14a2593a8b9e3ce8c76b3",
  "country_code": "IND",
  "phone": 9915347757,
  "geo_location": {},
  "country": "India",
  "is_default_address": true,
  "is_active": true,
  "city": "Mumbai",
  "pincode": 400093,
  "checkout_mode": "self",
  "address_type": "home",
  "uid": 1145,
  "tags": [],
  "area": "Sector 127",
  "name": "abc",
  "address_id": 1145,
  "email": "ankur@gofynd1.com",
  "address": "Megatron2",
  "store_name": "store123"
}
```
</details>









---


#### updateAddress
Update address added to an account




```swift
poscart.updateAddress(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | ID allotted to the selected address |  
| body | Address | yes | Request body |


<p>Use this API to update an existing address in the account. Request object should contain attributes mentioned in  <font color="blue">Address </font> can be updated. These attributes are:</p> <ul> <li> <font color="monochrome">is_default_address</font></li> <li> <font color="monochrome">landmark</font></li> <li> <font color="monochrome">area</font></li> <li> <font color="monochrome">pincode</font></li> <li> <font color="monochrome">email</font></li> <li> <font color="monochrome">address_type</font></li> <li> <font color="monochrome">name</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">address</font></li> </ul>

*Returned Response:*




[UpdateAddressResponse](#UpdateAddressResponse)

Success. Returns the address ID and a message indicating a successful address updation.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "is_updated": true,
  "id": "<mongo_object_id>",
  "is_default_address": true,
  "success": true
}
```
</details>









---


#### removeAddress
Remove address associated with an account




```swift
poscart.removeAddress(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | ID allotted to the selected address |  



Use this API to delete an address by its ID. This will returns an object that will indicate whether the address was deleted successfully or not.

*Returned Response:*




[DeleteAddressResponse](#DeleteAddressResponse)

Returns a Status object indicating the success or failure of address deletion.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "id": "<mongo_object_id>",
  "is_deleted": true
}
```
</details>









---


#### selectAddress
Select an address from available addresses




```swift
poscart.selectAddress(cartId: cartId, buyNow: buyNow, i: i, b: b, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| cartId | String? | no |  |   
| buyNow | Bool? | no |  |   
| i | Bool? | no |  |   
| b | Bool? | no |  |  
| body | SelectCartAddressRequest | yes | Request body |


<p>Select Address from all addresses associated with the account in order to ship the cart items to that address, otherwise default address will be selected implicitly. See `SelectCartAddressRequest` in schema of request body for the list of attributes needed to select Address from account. On successful request, this API returns a Cart object. Below address attributes are required. <ul> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">billing_address_id</font></li> <li> <font color="monochrome">uid</font></li> </ul></p>

*Returned Response:*




[CartDetailResponse](#CartDetailResponse)

Success. Returns a Cart object as shown below. Refer `CartDetailResponse` for more details.  .




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "is_valid": true,
  "buy_now": false,
  "breakup_values": {
    "raw": {
      "cod_charge": 0,
      "convenience_fee": 0,
      "coupon": -2250,
      "delivery_charge": 0,
      "discount": 0,
      "fynd_cash": 0,
      "gst_charges": 315.86,
      "mrp_total": 5198,
      "subtotal": 5198,
      "total": 2948,
      "vog": 2632.15,
      "you_saved": 0
    },
    "display": [
      {
        "display": "MRP Total",
        "key": "mrp_total",
        "value": 5198,
        "currency_code": "INR"
      },
      {
        "display": "Subtotal",
        "key": "subtotal",
        "value": 5198,
        "currency_code": "INR"
      },
      {
        "display": "Coupon",
        "key": "coupon",
        "value": -2250,
        "currency_code": "INR"
      },
      {
        "display": "Total",
        "key": "total",
        "value": 2948,
        "currency_code": "INR"
      }
    ],
    "coupon": {
      "type": "cash",
      "code": "PRISMC22250111",
      "uid": 17743,
      "value": 2250,
      "is_applied": true,
      "message": "coupn applied"
    },
    "loyalty_points": {
      "total": 0,
      "applicable": 0,
      "is_applied": false,
      "description": "Your cashback, referrals, and refund amount get credited to Fynd Cash which can be redeemed while placing an order."
    }
  },
  "items": [
    {
      "message": "",
      "quantity": 1,
      "availability": {
        "sizes": [
          "M",
          "S",
          "L",
          "XXL",
          "XL"
        ],
        "other_store_quantity": 10,
        "out_of_stock": false,
        "deliverable": true,
        "is_valid": true
      },
      "coupon_message": "PRISMC22250111 coupon applied",
      "price": {
        "base": {
          "add_on": 3199,
          "marked": 3199,
          "effective": 3199,
          "selling": 3199,
          "currency_code": "INR"
        },
        "converted": {
          "add_on": 3199,
          "marked": 3199,
          "effective": 3199,
          "selling": 3199,
          "currency_code": "INR"
        }
      },
      "bulk_offer": {},
      "article": {
        "type": "article",
        "uid": "381_610_IGPL01_LETTER19APINK_S",
        "size": "S",
        "seller": {
          "uid": 381,
          "name": "INTERSOURCE GARMENTS PVT LTD"
        },
        "store": {
          "uid": 3009,
          "name": "Kormangala"
        },
        "quantity": 11,
        "price": {
          "base": {
            "marked": 3199,
            "effective": 3199,
            "currency_code": "INR"
          },
          "converted": {
            "marked": 3199,
            "effective": 3199,
            "currency_code": "INR"
          }
        }
      },
      "product": {
        "type": "product",
        "uid": 857596,
        "name": "Pink Solid Hoodie",
        "slug": "883-police-pink-solid-hoodie-857596-111bdc",
        "brand": {
          "uid": 610,
          "name": "883 Police"
        },
        "categories": [
          {
            "uid": 144,
            "name": "Hoodies"
          }
        ],
        "images": [
          {
            "aspect_ratio": "16:25",
            "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/610_LETTER19APINK/1_1553062658148.jpg",
            "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/610_LETTER19APINK/1_1553062658148.jpg"
          }
        ],
        "action": {
          "type": "product",
          "url": "https://api.addsale.com/platform/content/v1/products/883-police-pink-solid-hoodie-857596-111bdc/",
          "query": {
            "product_slug": [
              "883-police-pink-solid-hoodie-857596-111bdc"
            ]
          }
        }
      },
      "key": "857596_S",
      "discount": ""
    },
    {
      "message": "",
      "quantity": 1,
      "availability": {
        "sizes": [
          "L",
          "XL",
          "XXL"
        ],
        "other_store_quantity": 1,
        "out_of_stock": false,
        "deliverable": true,
        "is_valid": true
      },
      "coupon_message": "PRISMC22250111 coupon applied",
      "price": {
        "base": {
          "add_on": 1999,
          "marked": 1999,
          "effective": 1999,
          "selling": 1999,
          "currency_code": "INR"
        },
        "converted": {
          "add_on": 1999,
          "marked": 1999,
          "effective": 1999,
          "selling": 1999,
          "currency_code": "INR"
        }
      },
      "bulk_offer": {},
      "article": {
        "type": "article",
        "uid": "381_610_IGPL01_SPIRAL19ANAVY_L",
        "size": "L",
        "seller": {
          "uid": 381,
          "name": "INTERSOURCE GARMENTS PVT LTD"
        },
        "store": {
          "uid": 3009,
          "name": "Kormangala"
        },
        "quantity": 2,
        "price": {
          "base": {
            "marked": 1999,
            "effective": 1999,
            "currency_code": "INR"
          },
          "converted": {
            "marked": 1999,
            "effective": 1999,
            "currency_code": "INR"
          }
        }
      },
      "product": {
        "type": "product",
        "uid": 820312,
        "name": "Navy Blue Melange Shorts",
        "slug": "883-police-navy-blue-melange-shorts-820312-4943a8",
        "brand": {
          "uid": 610,
          "name": "883 Police"
        },
        "categories": [
          {
            "uid": 193,
            "name": "Shorts"
          }
        ],
        "images": [
          {
            "aspect_ratio": "16:25",
            "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/610_SPIRAL19ANAVY/1_1549105947281.jpg",
            "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/610_SPIRAL19ANAVY/1_1549105947281.jpg"
          }
        ],
        "action": {
          "type": "product",
          "url": "https://api.addsale.com/platform/content/v1/products/883-police-navy-blue-melange-shorts-820312-4943a8/",
          "query": {
            "product_slug": [
              "883-police-navy-blue-melange-shorts-820312-4943a8"
            ]
          }
        }
      },
      "key": "820312_L",
      "discount": ""
    }
  ],
  "delivery_charge_info": "",
  "coupon_text": "View all offers",
  "uid": "7477",
  "gstin": null,
  "checkout_mode": "self",
  "last_modified": "Fri, 23 Aug 2019 08:03:12 GMT",
  "restrict_checkout": false
}
```
</details>









---


#### selectPaymentMode
Update cart payment




```swift
poscart.selectPaymentMode(id: id, buyNow: buyNow, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String? | no |  |   
| buyNow | Bool? | no |  |  
| body | UpdateCartPaymentRequest | yes | Request body |


Use this API to update cart payment.

*Returned Response:*




[CartDetailResponse](#CartDetailResponse)

Success. Returns a Cart object as shown below. Refer `CartDetailResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "error_message": "Note: Your order delivery will be delayed by 7-10 Days",
  "user_type": "Store User",
  "cod_charges": 0,
  "order_id": null,
  "cod_available": true,
  "cod_message": "No additional COD charges applicable",
  "delivery_charges": 0,
  "delivery_charge_order_value": 0,
  "store_code": "",
  "store_emps": [],
  "breakup_values": {
    "raw": {
      "cod_charge": 0,
      "convenience_fee": 0,
      "coupon": -2250,
      "delivery_charge": 0,
      "discount": 0,
      "fynd_cash": 0,
      "gst_charges": 315.86,
      "mrp_total": 5198,
      "subtotal": 5198,
      "total": 2948,
      "vog": 2632.15,
      "you_saved": 0
    },
    "display": [
      {
        "display": "MRP Total",
        "key": "mrp_total",
        "value": 5198,
        "currency_code": "INR"
      },
      {
        "display": "Subtotal",
        "key": "subtotal",
        "value": 5198,
        "currency_code": "INR"
      },
      {
        "display": "Coupon",
        "key": "coupon",
        "value": -2250,
        "currency_code": "INR"
      },
      {
        "display": "Total",
        "key": "total",
        "value": 2948,
        "currency_code": "INR"
      }
    ],
    "coupon": {
      "type": "cash",
      "code": "PRISMC22250111",
      "uid": 17743,
      "value": 2250,
      "is_applied": true,
      "message": "coupn applied"
    },
    "loyalty_points": {
      "total": 0,
      "applicable": 0,
      "is_applied": false,
      "description": "Your cashback, referrals, and refund amount get credited to Fynd Cash which can be redeemed while placing an order."
    }
  },
  "items": [
    {
      "message": "",
      "quantity": 1,
      "availability": {
        "sizes": [
          "M",
          "S",
          "L",
          "XXL",
          "XL"
        ],
        "other_store_quantity": 10,
        "out_of_stock": false,
        "deliverable": true,
        "is_valid": true
      },
      "coupon_message": "PRISMC22250111 coupon applied",
      "price": {
        "base": {
          "add_on": 3199,
          "marked": 3199,
          "effective": 3199,
          "selling": 3199,
          "currency_code": "INR"
        },
        "converted": {
          "add_on": 3199,
          "marked": 3199,
          "effective": 3199,
          "selling": 3199,
          "currency_code": "INR"
        }
      },
      "bulk_offer": {},
      "article": {
        "type": "article",
        "uid": "381_610_IGPL01_LETTER19APINK_S",
        "size": "S",
        "seller": {
          "uid": 381,
          "name": "INTERSOURCE GARMENTS PVT LTD"
        },
        "store": {
          "uid": 3009,
          "name": "Kormangala"
        },
        "quantity": 11,
        "price": {
          "base": {
            "marked": 3199,
            "effective": 3199,
            "currency_code": "INR"
          },
          "converted": {
            "marked": 3199,
            "effective": 3199,
            "currency_code": "INR"
          }
        }
      },
      "product": {
        "type": "product",
        "uid": 857596,
        "name": "Pink Solid Hoodie",
        "slug": "883-police-pink-solid-hoodie-857596-111bdc",
        "brand": {
          "uid": 610,
          "name": "883 Police"
        },
        "categories": [
          {
            "uid": 144,
            "name": "Hoodies"
          }
        ],
        "images": [
          {
            "aspect_ratio": "16:25",
            "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/610_LETTER19APINK/1_1553062658148.jpg",
            "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/610_LETTER19APINK/1_1553062658148.jpg"
          }
        ],
        "action": {
          "type": "product",
          "url": "https://api.addsale.com/platform/content/v1/products/883-police-pink-solid-hoodie-857596-111bdc/",
          "query": {
            "product_slug": [
              "883-police-pink-solid-hoodie-857596-111bdc"
            ]
          }
        }
      },
      "key": "857596_S",
      "discount": ""
    },
    {
      "message": "",
      "quantity": 1,
      "availability": {
        "sizes": [
          "L",
          "XL",
          "XXL"
        ],
        "other_store_quantity": 1,
        "out_of_stock": false,
        "deliverable": true,
        "is_valid": true
      },
      "coupon_message": "PRISMC22250111 coupon applied",
      "price": {
        "base": {
          "add_on": 1999,
          "marked": 1999,
          "effective": 1999,
          "selling": 1999,
          "currency_code": "INR"
        },
        "converted": {
          "add_on": 1999,
          "marked": 1999,
          "effective": 1999,
          "selling": 1999,
          "currency_code": "INR"
        }
      },
      "bulk_offer": {},
      "article": {
        "type": "article",
        "uid": "381_610_IGPL01_SPIRAL19ANAVY_L",
        "size": "L",
        "seller": {
          "uid": 381,
          "name": "INTERSOURCE GARMENTS PVT LTD"
        },
        "store": {
          "uid": 3009,
          "name": "Kormangala"
        },
        "quantity": 2,
        "price": {
          "base": {
            "marked": 1999,
            "effective": 1999,
            "currency_code": "INR"
          },
          "converted": {
            "marked": 1999,
            "effective": 1999,
            "currency_code": "INR"
          }
        }
      },
      "product": {
        "type": "product",
        "uid": 820312,
        "name": "Navy Blue Melange Shorts",
        "slug": "883-police-navy-blue-melange-shorts-820312-4943a8",
        "brand": {
          "uid": 610,
          "name": "883 Police"
        },
        "categories": [
          {
            "uid": 193,
            "name": "Shorts"
          }
        ],
        "images": [
          {
            "aspect_ratio": "16:25",
            "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/610_SPIRAL19ANAVY/1_1549105947281.jpg",
            "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/610_SPIRAL19ANAVY/1_1549105947281.jpg"
          }
        ],
        "action": {
          "type": "product",
          "url": "https://api.addsale.com/platform/content/v1/products/883-police-navy-blue-melange-shorts-820312-4943a8/",
          "query": {
            "product_slug": [
              "883-police-navy-blue-melange-shorts-820312-4943a8"
            ]
          }
        }
      },
      "key": "820312_L",
      "discount": ""
    }
  ],
  "delivery_charge_info": "",
  "coupon_text": "View all offers",
  "buy_now": false,
  "cart_id": 7477,
  "uid": "7477",
  "gstin": null,
  "checkout_mode": "self",
  "last_modified": "Fri, 23 Aug 2019 08:03:04 GMT",
  "restrict_checkout": false,
  "is_valid": true
}
```
</details>









---


#### validateCouponForPayment
Verify the coupon eligibility against the payment mode




```swift
poscart.validateCouponForPayment(id: id, buyNow: buyNow, addressId: addressId, paymentMode: paymentMode, paymentIdentifier: paymentIdentifier, aggregatorName: aggregatorName, merchantCode: merchantCode) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String? | no |  |   
| buyNow | Bool? | no |  |   
| addressId | String? | no |  |   
| paymentMode | String? | no |  |   
| paymentIdentifier | String? | no |  |   
| aggregatorName | String? | no |  |   
| merchantCode | String? | no |  |  



Use this API to validate a coupon against the payment mode such as NetBanking, Wallet, UPI etc.

*Returned Response:*




[PaymentCouponValidate](#PaymentCouponValidate)

Success. Returns a success message and the coupon validity. Refer `PaymentCouponValidate` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "",
  "coupon_validity": {
    "valid": true,
    "discount": 499.5,
    "code": "testpayment",
    "display_message_en": "",
    "title": "Coupon value will change."
  }
}
```
</details>









---


#### getShipments
Get delivery date and options before checkout




```swift
poscart.getShipments(pickAtStoreUid: pickAtStoreUid, orderingStoreId: orderingStoreId, p: p, id: id, addressId: addressId, areaCode: areaCode, orderType: orderType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pickAtStoreUid | Int? | no |  |   
| orderingStoreId | Int? | no |  |   
| p | Bool? | no | This is a boolean value. Select `true` for getting a payment option in response. |   
| id | String? | no | The unique identifier of the cart |   
| addressId | String? | no | ID allotted to the selected address |   
| areaCode | String? | no | The PIN Code of the destination address, e.g. 400059 |   
| orderType | String? | no | The order type of shipment HomeDelivery - If the customer wants the order home-delivered PickAtStore - If the customer wants the handover of an order at the store itself. |  



Use this API to get shipment details, expected delivery date, items and price breakup of the shipment.

*Returned Response:*




[CartShipmentsResponse](#CartShipmentsResponse)

Success. Returns delivery promise along with shipment details and price breakup. Refer `CartShipmentsResponse` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Shipment Generated</i></summary>

```json
{
  "value": {
    "items": [],
    "cart_id": 7501,
    "uid": "7501",
    "success": true,
    "error_message": "Note: Your order delivery will be delayed by 7-10 Days",
    "payment_options": {
      "payment_option": [
        {
          "name": "COD",
          "display_name": "Cash on Delivery",
          "display_priority": 1,
          "payment_mode_id": 11,
          "logo": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/cod.png",
          "logo_url": {
            "small": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/cod.png",
            "large": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/cod.png"
          },
          "list": []
        },
        {
          "name": "CARD",
          "display_priority": 2,
          "payment_mode_id": 2,
          "display_name": "Card",
          "list": []
        },
        {
          "name": "NB",
          "display_priority": 3,
          "payment_mode_id": 3,
          "display_name": "Net Banking",
          "list": [
            {
              "aggregator_name": "Razorpay",
              "bank_name": "ICICI Bank",
              "bank_code": "ICIC",
              "url": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/NB_ICICI.png",
              "logo_url": {
                "small": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/NB_ICICI.png",
                "large": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/NB_ICICI.png"
              },
              "merchant_code": "NB_ICICI",
              "display_priority": 1
            }
          ]
        },
        {
          "name": "WL",
          "display_priority": 4,
          "payment_mode_id": 4,
          "display_name": "Wallet",
          "list": [
            {
              "wallet_name": "Paytm",
              "wallet_code": "paytm",
              "wallet_id": 4,
              "merchant_code": "PAYTM",
              "logo_url": {
                "small": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/paytm_logo_small.png",
                "large": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/paytm_logo_large.png"
              },
              "aggregator_name": "Juspay",
              "display_priority": 1
            }
          ]
        },
        {
          "name": "UPI",
          "display_priority": 9,
          "payment_mode_id": 6,
          "display_name": "UPI",
          "list": [
            {
              "aggregator_name": "UPI_Razorpay",
              "name": "UPI",
              "display_name": "BHIM UPI",
              "code": "UPI",
              "logo_url": {
                "small": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/upi_100x78.png",
                "large": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/upi_150x100.png"
              },
              "merchant_code": "UPI",
              "timeout": 240,
              "retry_count": 0,
              "fynd_vpa": "shopsense.rzp@hdfcbank",
              "intent_flow": true,
              "intent_app_error_list": [
                "com.csam.icici.bank.imobile",
                "in.org.npci.upiapp",
                "com.whatsapp"
              ]
            }
          ]
        },
        {
          "name": "PL",
          "display_priority": 11,
          "payment_mode_id": 1,
          "display_name": "Pay Later",
          "list": [
            {
              "aggregator_name": "Simpl",
              "name": "Simpl",
              "code": "simpl",
              "merchant_code": "SIMPL",
              "logo": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/simpl_logo.png",
              "logo_url": {
                "small": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/simpl_logo.png",
                "large": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/simpl_logo.png"
              }
            }
          ]
        }
      ],
      "payment_flows": {
        "Simpl": {
          "data": {
            "gateway": {
              "route": "simpl",
              "entity": "sdk",
              "is_customer_validation_required": true,
              "cust_validation_url": "https://api.addsale.com/gringotts/api/v1/validate-customer/",
              "sdk": {
                "config": {
                  "redirect": false,
                  "callback_url": null,
                  "action_url": "https://api.addsale.com/avis/api/v1/payments/charge-gringotts-transaction/"
                },
                "data": {
                  "user_phone": "8452996729",
                  "user_email": "paymentsdummy@gofynd.com"
                }
              },
              "return_url": null
            }
          },
          "api_link": "",
          "payment_flow": "sdk"
        },
        "Juspay": {
          "data": {},
          "api_link": "https://sandbox.juspay.in/txns",
          "payment_flow": "api"
        },
        "Razorpay": {
          "data": {},
          "api_link": "",
          "payment_flow": "sdk"
        },
        "UPI_Razorpay": {
          "data": {},
          "api_link": "https://api.addsale.com/gringotts/api/v1/external/payment-initialisation/",
          "payment_flow": "api"
        },
        "Fynd": {
          "data": {},
          "api_link": "",
          "payment_flow": "api"
        }
      },
      "default": {}
    },
    "user_type": "Store User",
    "cod_charges": 0,
    "order_id": null,
    "cod_available": true,
    "cod_message": "No additional COD charges applicable",
    "delivery_charges": 0,
    "delivery_charge_order_value": 0,
    "delivery_slots": [
      {
        "date": "Sat, 24 Aug",
        "delivery_slot": [
          {
            "delivery_slot_timing": "By 9:00 PM",
            "default": true,
            "delivery_slot_id": 1
          }
        ]
      }
    ],
    "store_code": "",
    "store_emps": [],
    "breakup_values": {
      "loyalty_points": {
        "total": 0,
        "applicable": 0,
        "is_applied": false,
        "description": "Your cashback, referrals, and refund amount get credited to Fynd Cash which can be redeemed while placing an order."
      },
      "coupon": {
        "type": "cash",
        "code": "",
        "uid": null,
        "value": 0,
        "is_applied": false,
        "message": "Sorry! Invalid Coupon"
      },
      "raw": {
        "cod_charge": 0,
        "convenience_fee": 0,
        "coupon": 0,
        "delivery_charge": 0,
        "discount": 0,
        "fynd_cash": 0,
        "gst_charges": 214.18,
        "mrp_total": 1999,
        "subtotal": 1999,
        "total": 1999,
        "vog": 1784.82,
        "you_saved": 0
      },
      "display": [
        {
          "display": "MRP Total",
          "key": "mrp_total",
          "value": 1999,
          "currency_code": "INR"
        },
        {
          "display": "Subtotal",
          "key": "subtotal",
          "value": 1999,
          "currency_code": "INR"
        },
        {
          "display": "Total",
          "key": "total",
          "value": 1999,
          "currency_code": "INR"
        }
      ]
    },
    "shipments": [
      {
        "fulfillment_id": 3009,
        "shipment_type": "single_shipment",
        "fulfillment_type": "store",
        "dp_id": "29",
        "dp_options": {
          "4": {
            "f_priority": 4,
            "r_priority": 5,
            "is_cod": true,
            "is_prepaid": true,
            "is_reverse": true
          },
          "7": {
            "f_priority": 3,
            "r_priority": 4,
            "is_cod": true,
            "is_prepaid": true,
            "is_reverse": true
          },
          "29": {
            "f_priority": 1,
            "r_priority": 2,
            "is_cod": true,
            "is_prepaid": true,
            "is_reverse": true
          }
        },
        "promise": {
          "timestamp": {
            "min": 1566678108,
            "max": 1567023708
          },
          "formatted": {
            "min": "Aug 24",
            "max": "Aug 28"
          }
        },
        "box_type": "Small Courier bag",
        "shipments": 1,
        "items": [
          {
            "quantity": 1,
            "product": {
              "type": "product",
              "uid": 820312,
              "name": "Navy Blue Melange Shorts",
              "slug": "883-police-navy-blue-melange-shorts-820312-4943a8",
              "brand": {
                "uid": 610,
                "name": "883 Police"
              },
              "categories": [
                {
                  "uid": 193,
                  "name": "Shorts"
                }
              ],
              "images": [
                {
                  "aspect_ratio": "16:25",
                  "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/610_SPIRAL19ANAVY/1_1549105947281.jpg",
                  "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/610_SPIRAL19ANAVY/1_1549105947281.jpg"
                }
              ],
              "action": {
                "type": "product",
                "url": "https://api.addsale.com/platform/content/v1/products/883-police-navy-blue-melange-shorts-820312-4943a8/",
                "query": {
                  "product_slug": [
                    "883-police-navy-blue-melange-shorts-820312-4943a8"
                  ]
                }
              }
            },
            "discount": "",
            "bulk_offer": {},
            "key": "820312_L",
            "price": {
              "base": {
                "add_on": 1999,
                "marked": 1999,
                "effective": 1999,
                "selling": 1999,
                "currency_code": "INR"
              },
              "converted": {
                "add_on": 1999,
                "marked": 1999,
                "effective": 1999,
                "selling": 1999,
                "currency_code": "INR"
              }
            },
            "article": {
              "type": "article",
              "uid": "381_610_IGPL01_SPIRAL19ANAVY_L",
              "size": "L",
              "seller": {
                "uid": 381,
                "name": "INTERSOURCE GARMENTS PVT LTD"
              },
              "store": {
                "uid": 3009,
                "name": "Kormangala"
              },
              "quantity": 2,
              "price": {
                "base": {
                  "marked": 1999,
                  "effective": 1999,
                  "currency_code": "INR"
                },
                "converted": {
                  "marked": 1999,
                  "effective": 1999,
                  "currency_code": "INR"
                }
              }
            },
            "availability": {
              "sizes": [
                "L",
                "XL",
                "XXL"
              ],
              "other_store_quantity": 1,
              "out_of_stock": false,
              "deliverable": true,
              "is_valid": true
            },
            "coupon_message": "",
            "message": ""
          }
        ]
      }
    ],
    "delivery_charge_info": "",
    "coupon_text": "View all offers",
    "gstin": null,
    "checkout_mode": "self",
    "last_modified": "Thu, 22 Aug 2019 20:21:48 GMT",
    "restrict_checkout": false,
    "is_valid": true
  }
}
```
</details>

<details>
<summary><i>&nbsp; Shipment Generation Failed</i></summary>

```json
{
  "value": {
    "items": [],
    "cart_id": 7501,
    "uid": "7501",
    "success": true,
    "error_message": "Note: Your order delivery will be delayed by 7-10 Days",
    "payment_options": {
      "payment_option": [
        {
          "name": "COD",
          "display_name": "Cash on Delivery",
          "display_priority": 1,
          "payment_mode_id": 11,
          "logo": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/cod.png",
          "logo_url": {
            "small": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/cod.png",
            "large": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/cod.png"
          },
          "list": []
        },
        {
          "name": "CARD",
          "display_priority": 2,
          "payment_mode_id": 2,
          "display_name": "Card",
          "list": []
        },
        {
          "name": "NB",
          "display_priority": 3,
          "payment_mode_id": 3,
          "display_name": "Net Banking",
          "list": [
            {
              "aggregator_name": "Razorpay",
              "bank_name": "ICICI Bank",
              "bank_code": "ICIC",
              "url": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/NB_ICICI.png",
              "logo_url": {
                "small": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/NB_ICICI.png",
                "large": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/NB_ICICI.png"
              },
              "merchant_code": "NB_ICICI",
              "display_priority": 1
            }
          ]
        },
        {
          "name": "WL",
          "display_priority": 4,
          "payment_mode_id": 4,
          "display_name": "Wallet",
          "list": [
            {
              "wallet_name": "Paytm",
              "wallet_code": "paytm",
              "wallet_id": 4,
              "merchant_code": "PAYTM",
              "logo_url": {
                "small": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/paytm_logo_small.png",
                "large": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/paytm_logo_large.png"
              },
              "aggregator_name": "Juspay",
              "display_priority": 1
            }
          ]
        },
        {
          "name": "UPI",
          "display_priority": 9,
          "payment_mode_id": 6,
          "display_name": "UPI",
          "list": [
            {
              "aggregator_name": "UPI_Razorpay",
              "name": "UPI",
              "display_name": "BHIM UPI",
              "code": "UPI",
              "logo_url": {
                "small": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/upi_100x78.png",
                "large": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/upi_150x100.png"
              },
              "merchant_code": "UPI",
              "timeout": 240,
              "retry_count": 0,
              "fynd_vpa": "shopsense.rzp@hdfcbank",
              "intent_flow": true,
              "intent_app_error_list": [
                "com.csam.icici.bank.imobile",
                "in.org.npci.upiapp",
                "com.whatsapp"
              ]
            }
          ]
        },
        {
          "name": "PL",
          "display_priority": 11,
          "payment_mode_id": 1,
          "display_name": "Pay Later",
          "list": [
            {
              "aggregator_name": "Simpl",
              "name": "Simpl",
              "code": "simpl",
              "merchant_code": "SIMPL",
              "logo": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/simpl_logo.png",
              "logo_url": {
                "small": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/simpl_logo.png",
                "large": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/simpl_logo.png"
              }
            }
          ]
        }
      ],
      "payment_flows": {
        "Simpl": {
          "data": {
            "gateway": {
              "route": "simpl",
              "entity": "sdk",
              "is_customer_validation_required": true,
              "cust_validation_url": "https://api.addsale.com/gringotts/api/v1/validate-customer/",
              "sdk": {
                "config": {
                  "redirect": false,
                  "callback_url": null,
                  "action_url": "https://api.addsale.com/avis/api/v1/payments/charge-gringotts-transaction/"
                },
                "data": {
                  "user_phone": "8452996729",
                  "user_email": "paymentsdummy@gofynd.com"
                }
              },
              "return_url": null
            }
          },
          "api_link": "",
          "payment_flow": "sdk"
        },
        "Juspay": {
          "data": {},
          "api_link": "https://sandbox.juspay.in/txns",
          "payment_flow": "api"
        },
        "Razorpay": {
          "data": {},
          "api_link": "",
          "payment_flow": "sdk"
        },
        "UPI_Razorpay": {
          "data": {},
          "api_link": "https://api.addsale.com/gringotts/api/v1/external/payment-initialisation/",
          "payment_flow": "api"
        },
        "Fynd": {
          "data": {},
          "api_link": "",
          "payment_flow": "api"
        }
      },
      "default": {}
    },
    "user_type": "Store User",
    "cod_charges": 0,
    "order_id": null,
    "cod_available": true,
    "cod_message": "No additional COD charges applicable",
    "delivery_charges": 0,
    "delivery_charge_order_value": 0,
    "delivery_slots": [
      {
        "date": "Sat, 24 Aug",
        "delivery_slot": [
          {
            "delivery_slot_timing": "By 9:00 PM",
            "default": true,
            "delivery_slot_id": 1
          }
        ]
      }
    ],
    "store_code": "",
    "store_emps": [],
    "breakup_values": {
      "loyalty_points": {
        "total": 0,
        "applicable": 0,
        "is_applied": false,
        "description": "Your cashback, referrals, and refund amount get credited to Fynd Cash which can be redeemed while placing an order."
      },
      "coupon": {
        "type": "cash",
        "code": "",
        "uid": null,
        "value": 0,
        "is_applied": false,
        "message": "Sorry! Invalid Coupon"
      },
      "raw": {
        "cod_charge": 0,
        "convenience_fee": 0,
        "coupon": 0,
        "delivery_charge": 0,
        "discount": 0,
        "fynd_cash": 0,
        "gst_charges": 214.18,
        "mrp_total": 1999,
        "subtotal": 1999,
        "total": 1999,
        "vog": 1784.82,
        "you_saved": 0
      },
      "display": [
        {
          "display": "MRP Total",
          "key": "mrp_total",
          "value": 1999,
          "currency_code": "INR"
        },
        {
          "display": "Subtotal",
          "key": "subtotal",
          "value": 1999,
          "currency_code": "INR"
        },
        {
          "display": "Total",
          "key": "total",
          "value": 1999,
          "currency_code": "INR"
        }
      ]
    },
    "shipments": [],
    "message": "Shipments could not be generated. Please Try again after some time.",
    "delivery_charge_info": "",
    "coupon_text": "View all offers",
    "gstin": null,
    "checkout_mode": "self",
    "last_modified": "Thu, 22 Aug 2019 20:21:48 GMT",
    "restrict_checkout": false,
    "is_valid": false
  }
}
```
</details>

</details>









---


#### updateShipments
Update shipment delivery type and quantity before checkout




```swift
poscart.updateShipments(i: i, p: p, id: id, addressId: addressId, orderType: orderType, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| i | Bool? | no | This is a boolean value. Select `true` to retrieve all the items added in the cart. |   
| p | Bool? | no | This is a boolean value. Select `true` for getting a payment option in response. |   
| id | String? | no | The unique identifier of the cart |   
| addressId | String? | no | ID allotted to an address |   
| orderType | String? | no | The order type of shipment HomeDelivery - If the customer wants the order home-delivered PickAtStore - If the customer wants the handover of an order at the store itself. |  
| body | UpdateCartShipmentRequest | yes | Request body |


Use this API to update the delivery type and quantity as per customer's preference for either store pick-up or home-delivery.

*Returned Response:*




[CartShipmentsResponse](#CartShipmentsResponse)

Success. Returns delivery promise along with shipment details and price breakup. Refer `CartShipmentsResponse` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Shipment Generated</i></summary>

```json
{
  "value": {
    "items": [],
    "cart_id": 7501,
    "uid": "7501",
    "success": true,
    "error_message": "Note: Your order delivery will be delayed by 7-10 Days",
    "payment_options": {
      "payment_option": [
        {
          "name": "COD",
          "display_name": "Cash on Delivery",
          "display_priority": 1,
          "payment_mode_id": 11,
          "logo": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/cod.png",
          "logo_url": {
            "small": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/cod.png",
            "large": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/cod.png"
          },
          "list": []
        },
        {
          "name": "CARD",
          "display_priority": 2,
          "payment_mode_id": 2,
          "display_name": "Card",
          "list": []
        },
        {
          "name": "NB",
          "display_priority": 3,
          "payment_mode_id": 3,
          "display_name": "Net Banking",
          "list": [
            {
              "aggregator_name": "Razorpay",
              "bank_name": "ICICI Bank",
              "bank_code": "ICIC",
              "url": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/NB_ICICI.png",
              "logo_url": {
                "small": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/NB_ICICI.png",
                "large": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/NB_ICICI.png"
              },
              "merchant_code": "NB_ICICI",
              "display_priority": 1
            }
          ]
        },
        {
          "name": "WL",
          "display_priority": 4,
          "payment_mode_id": 4,
          "display_name": "Wallet",
          "list": [
            {
              "wallet_name": "Paytm",
              "wallet_code": "paytm",
              "wallet_id": 4,
              "merchant_code": "PAYTM",
              "logo_url": {
                "small": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/paytm_logo_small.png",
                "large": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/paytm_logo_large.png"
              },
              "aggregator_name": "Juspay",
              "display_priority": 1
            }
          ]
        },
        {
          "name": "UPI",
          "display_priority": 9,
          "payment_mode_id": 6,
          "display_name": "UPI",
          "list": [
            {
              "aggregator_name": "UPI_Razorpay",
              "name": "UPI",
              "display_name": "BHIM UPI",
              "code": "UPI",
              "logo_url": {
                "small": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/upi_100x78.png",
                "large": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/upi_150x100.png"
              },
              "merchant_code": "UPI",
              "timeout": 240,
              "retry_count": 0,
              "fynd_vpa": "shopsense.rzp@hdfcbank",
              "intent_flow": true,
              "intent_app_error_list": [
                "com.csam.icici.bank.imobile",
                "in.org.npci.upiapp",
                "com.whatsapp"
              ]
            }
          ]
        },
        {
          "name": "PL",
          "display_priority": 11,
          "payment_mode_id": 1,
          "display_name": "Pay Later",
          "list": [
            {
              "aggregator_name": "Simpl",
              "name": "Simpl",
              "code": "simpl",
              "merchant_code": "SIMPL",
              "logo": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/simpl_logo.png",
              "logo_url": {
                "small": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/simpl_logo.png",
                "large": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/simpl_logo.png"
              }
            }
          ]
        }
      ],
      "payment_flows": {
        "Simpl": {
          "data": {
            "gateway": {
              "route": "simpl",
              "entity": "sdk",
              "is_customer_validation_required": true,
              "cust_validation_url": "https://api.addsale.com/gringotts/api/v1/validate-customer/",
              "sdk": {
                "config": {
                  "redirect": false,
                  "callback_url": null,
                  "action_url": "https://api.addsale.com/avis/api/v1/payments/charge-gringotts-transaction/"
                },
                "data": {
                  "user_phone": "8452996729",
                  "user_email": "paymentsdummy@gofynd.com"
                }
              },
              "return_url": null
            }
          },
          "api_link": "",
          "payment_flow": "sdk"
        },
        "Juspay": {
          "data": {},
          "api_link": "https://sandbox.juspay.in/txns",
          "payment_flow": "api"
        },
        "Razorpay": {
          "data": {},
          "api_link": "",
          "payment_flow": "sdk"
        },
        "UPI_Razorpay": {
          "data": {},
          "api_link": "https://api.addsale.com/gringotts/api/v1/external/payment-initialisation/",
          "payment_flow": "api"
        },
        "Fynd": {
          "data": {},
          "api_link": "",
          "payment_flow": "api"
        }
      },
      "default": {}
    },
    "user_type": "Store User",
    "cod_charges": 0,
    "order_id": null,
    "cod_available": true,
    "cod_message": "No additional COD charges applicable",
    "delivery_charges": 0,
    "delivery_charge_order_value": 0,
    "delivery_slots": [
      {
        "date": "Sat, 24 Aug",
        "delivery_slot": [
          {
            "delivery_slot_timing": "By 9:00 PM",
            "default": true,
            "delivery_slot_id": 1
          }
        ]
      }
    ],
    "store_code": "",
    "store_emps": [],
    "breakup_values": {
      "loyalty_points": {
        "total": 0,
        "applicable": 0,
        "is_applied": false,
        "description": "Your cashback, referrals, and refund amount get credited to Fynd Cash which can be redeemed while placing an order."
      },
      "coupon": {
        "type": "cash",
        "code": "",
        "uid": null,
        "value": 0,
        "is_applied": false,
        "message": "Sorry! Invalid Coupon"
      },
      "raw": {
        "cod_charge": 0,
        "convenience_fee": 0,
        "coupon": 0,
        "delivery_charge": 0,
        "discount": 0,
        "fynd_cash": 0,
        "gst_charges": 214.18,
        "mrp_total": 1999,
        "subtotal": 1999,
        "total": 1999,
        "vog": 1784.82,
        "you_saved": 0
      },
      "display": [
        {
          "display": "MRP Total",
          "key": "mrp_total",
          "value": 1999,
          "currency_code": "INR"
        },
        {
          "display": "Subtotal",
          "key": "subtotal",
          "value": 1999,
          "currency_code": "INR"
        },
        {
          "display": "Total",
          "key": "total",
          "value": 1999,
          "currency_code": "INR"
        }
      ]
    },
    "shipments": [
      {
        "fulfillment_id": 3009,
        "shipment_type": "single_shipment",
        "fulfillment_type": "store",
        "dp_id": "29",
        "order_type": "PickAtStore",
        "dp_options": {
          "4": {
            "f_priority": 4,
            "r_priority": 5,
            "is_cod": true,
            "is_prepaid": true,
            "is_reverse": true
          },
          "7": {
            "f_priority": 3,
            "r_priority": 4,
            "is_cod": true,
            "is_prepaid": true,
            "is_reverse": true
          },
          "29": {
            "f_priority": 1,
            "r_priority": 2,
            "is_cod": true,
            "is_prepaid": true,
            "is_reverse": true
          }
        },
        "promise": {
          "timestamp": {
            "min": 1566678108,
            "max": 1567023708
          },
          "formatted": {
            "min": "Aug 24",
            "max": "Aug 28"
          }
        },
        "box_type": "Small Courier bag",
        "shipments": 1,
        "items": [
          {
            "quantity": 1,
            "product": {
              "type": "product",
              "uid": 820312,
              "name": "Navy Blue Melange Shorts",
              "slug": "883-police-navy-blue-melange-shorts-820312-4943a8",
              "brand": {
                "uid": 610,
                "name": "883 Police"
              },
              "categories": [
                {
                  "uid": 193,
                  "name": "Shorts"
                }
              ],
              "images": [
                {
                  "aspect_ratio": "16:25",
                  "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/610_SPIRAL19ANAVY/1_1549105947281.jpg",
                  "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/610_SPIRAL19ANAVY/1_1549105947281.jpg"
                }
              ],
              "action": {
                "type": "product",
                "url": "https://api.addsale.com/platform/content/v1/products/883-police-navy-blue-melange-shorts-820312-4943a8/",
                "query": {
                  "product_slug": [
                    "883-police-navy-blue-melange-shorts-820312-4943a8"
                  ]
                }
              }
            },
            "discount": "",
            "bulk_offer": {},
            "key": "820312_L",
            "price": {
              "base": {
                "add_on": 1999,
                "marked": 1999,
                "effective": 1999,
                "selling": 1999,
                "currency_code": "INR"
              },
              "converted": {
                "add_on": 1999,
                "marked": 1999,
                "effective": 1999,
                "selling": 1999,
                "currency_code": "INR"
              }
            },
            "article": {
              "type": "article",
              "uid": "381_610_IGPL01_SPIRAL19ANAVY_L",
              "size": "L",
              "seller": {
                "uid": 381,
                "name": "INTERSOURCE GARMENTS PVT LTD"
              },
              "store": {
                "uid": 3009,
                "name": "Kormangala"
              },
              "quantity": 2,
              "price": {
                "base": {
                  "marked": 1999,
                  "effective": 1999,
                  "currency_code": "INR"
                },
                "converted": {
                  "marked": 1999,
                  "effective": 1999,
                  "currency_code": "INR"
                }
              }
            },
            "availability": {
              "sizes": [
                "L",
                "XL",
                "XXL"
              ],
              "other_store_quantity": 1,
              "out_of_stock": false,
              "deliverable": true,
              "is_valid": true
            },
            "coupon_message": "",
            "message": ""
          }
        ]
      }
    ],
    "delivery_charge_info": "",
    "coupon_text": "View all offers",
    "gstin": null,
    "checkout_mode": "self",
    "last_modified": "Thu, 22 Aug 2019 20:21:48 GMT",
    "restrict_checkout": false,
    "is_valid": true
  }
}
```
</details>

<details>
<summary><i>&nbsp; Shipment Generation Failed</i></summary>

```json
{
  "value": {
    "items": [],
    "cart_id": 7501,
    "uid": "7501",
    "success": true,
    "error_message": "Note: Your order delivery will be delayed by 7-10 Days",
    "payment_options": {
      "payment_option": [
        {
          "name": "COD",
          "display_name": "Cash on Delivery",
          "display_priority": 1,
          "payment_mode_id": 11,
          "logo": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/cod.png",
          "logo_url": {
            "small": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/cod.png",
            "large": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/cod.png"
          },
          "list": []
        },
        {
          "name": "CARD",
          "display_priority": 2,
          "payment_mode_id": 2,
          "display_name": "Card",
          "list": []
        },
        {
          "name": "NB",
          "display_priority": 3,
          "payment_mode_id": 3,
          "display_name": "Net Banking",
          "list": [
            {
              "aggregator_name": "Razorpay",
              "bank_name": "ICICI Bank",
              "bank_code": "ICIC",
              "url": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/NB_ICICI.png",
              "logo_url": {
                "small": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/NB_ICICI.png",
                "large": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/NB_ICICI.png"
              },
              "merchant_code": "NB_ICICI",
              "display_priority": 1
            }
          ]
        },
        {
          "name": "WL",
          "display_priority": 4,
          "payment_mode_id": 4,
          "display_name": "Wallet",
          "list": [
            {
              "wallet_name": "Paytm",
              "wallet_code": "paytm",
              "wallet_id": 4,
              "merchant_code": "PAYTM",
              "logo_url": {
                "small": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/paytm_logo_small.png",
                "large": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/paytm_logo_large.png"
              },
              "aggregator_name": "Juspay",
              "display_priority": 1
            }
          ]
        },
        {
          "name": "UPI",
          "display_priority": 9,
          "payment_mode_id": 6,
          "display_name": "UPI",
          "list": [
            {
              "aggregator_name": "UPI_Razorpay",
              "name": "UPI",
              "display_name": "BHIM UPI",
              "code": "UPI",
              "logo_url": {
                "small": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/upi_100x78.png",
                "large": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/upi_150x100.png"
              },
              "merchant_code": "UPI",
              "timeout": 240,
              "retry_count": 0,
              "fynd_vpa": "shopsense.rzp@hdfcbank",
              "intent_flow": true,
              "intent_app_error_list": [
                "com.csam.icici.bank.imobile",
                "in.org.npci.upiapp",
                "com.whatsapp"
              ]
            }
          ]
        },
        {
          "name": "PL",
          "display_priority": 11,
          "payment_mode_id": 1,
          "display_name": "Pay Later",
          "list": [
            {
              "aggregator_name": "Simpl",
              "name": "Simpl",
              "code": "simpl",
              "merchant_code": "SIMPL",
              "logo": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/simpl_logo.png",
              "logo_url": {
                "small": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/simpl_logo.png",
                "large": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/simpl_logo.png"
              }
            }
          ]
        }
      ],
      "payment_flows": {
        "Simpl": {
          "data": {
            "gateway": {
              "route": "simpl",
              "entity": "sdk",
              "is_customer_validation_required": true,
              "cust_validation_url": "https://api.addsale.com/gringotts/api/v1/validate-customer/",
              "sdk": {
                "config": {
                  "redirect": false,
                  "callback_url": null,
                  "action_url": "https://api.addsale.com/avis/api/v1/payments/charge-gringotts-transaction/"
                },
                "data": {
                  "user_phone": "8452996729",
                  "user_email": "paymentsdummy@gofynd.com"
                }
              },
              "return_url": null
            }
          },
          "api_link": "",
          "payment_flow": "sdk"
        },
        "Juspay": {
          "data": {},
          "api_link": "https://sandbox.juspay.in/txns",
          "payment_flow": "api"
        },
        "Razorpay": {
          "data": {},
          "api_link": "",
          "payment_flow": "sdk"
        },
        "UPI_Razorpay": {
          "data": {},
          "api_link": "https://api.addsale.com/gringotts/api/v1/external/payment-initialisation/",
          "payment_flow": "api"
        },
        "Fynd": {
          "data": {},
          "api_link": "",
          "payment_flow": "api"
        }
      },
      "default": {}
    },
    "user_type": "Store User",
    "cod_charges": 0,
    "order_id": null,
    "cod_available": true,
    "cod_message": "No additional COD charges applicable",
    "delivery_charges": 0,
    "delivery_charge_order_value": 0,
    "delivery_slots": [
      {
        "date": "Sat, 24 Aug",
        "delivery_slot": [
          {
            "delivery_slot_timing": "By 9:00 PM",
            "default": true,
            "delivery_slot_id": 1
          }
        ]
      }
    ],
    "store_code": "",
    "store_emps": [],
    "breakup_values": {
      "loyalty_points": {
        "total": 0,
        "applicable": 0,
        "is_applied": false,
        "description": "Your cashback, referrals, and refund amount get credited to Fynd Cash which can be redeemed while placing an order."
      },
      "coupon": {
        "type": "cash",
        "code": "",
        "uid": null,
        "value": 0,
        "is_applied": false,
        "message": "Sorry! Invalid Coupon"
      },
      "raw": {
        "cod_charge": 0,
        "convenience_fee": 0,
        "coupon": 0,
        "delivery_charge": 0,
        "discount": 0,
        "fynd_cash": 0,
        "gst_charges": 214.18,
        "mrp_total": 1999,
        "subtotal": 1999,
        "total": 1999,
        "vog": 1784.82,
        "you_saved": 0
      },
      "display": [
        {
          "display": "MRP Total",
          "key": "mrp_total",
          "value": 1999,
          "currency_code": "INR"
        },
        {
          "display": "Subtotal",
          "key": "subtotal",
          "value": 1999,
          "currency_code": "INR"
        },
        {
          "display": "Total",
          "key": "total",
          "value": 1999,
          "currency_code": "INR"
        }
      ]
    },
    "shipments": [],
    "message": "Shipments could not be generated. Please Try again after some time.",
    "delivery_charge_info": "",
    "coupon_text": "View all offers",
    "gstin": null,
    "checkout_mode": "self",
    "last_modified": "Thu, 22 Aug 2019 20:21:48 GMT",
    "restrict_checkout": false,
    "is_valid": false
  }
}
```
</details>

</details>









---


#### checkoutCart
Checkout all items in the cart




```swift
poscart.checkoutCart(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String? | no |  |  
| body | CartPosCheckoutDetailRequest | yes | Request body |


Use this API to checkout all items in the cart for payment and order generation. For COD, order will be generated directly, whereas for other checkout modes, user will be redirected to a payment gateway.

*Returned Response:*




[CartCheckoutResponse](#CartCheckoutResponse)

Success. Returns the status of cart checkout. Refer `CartCheckoutResponse` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Address id not found</i></summary>

```json
{
  "value": {
    "success": false,
    "message": "No address found with address id {address_id}"
  }
}
```
</details>

<details>
<summary><i>&nbsp; Missing address_id</i></summary>

```json
{
  "value": {
    "address_id": [
      "Missing data for required field."
    ]
  }
}
```
</details>

<details>
<summary><i>&nbsp; Successful checkout cod payment</i></summary>

```json
{
  "value": {
    "success": true,
    "cart": {
      "success": true,
      "error_message": "Note: Your order delivery will be delayed by 7-10 Days",
      "payment_options": {
        "payment_option": [
          {
            "name": "COD",
            "display_name": "Cash on Delivery",
            "display_priority": 1,
            "payment_mode_id": 11,
            "logo": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/cod.png",
            "logo_url": {
              "small": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/cod.png",
              "large": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/cod.png"
            },
            "list": []
          },
          {
            "name": "CARD",
            "display_priority": 2,
            "payment_mode_id": 2,
            "display_name": "Card",
            "list": []
          },
          {
            "name": "NB",
            "display_priority": 3,
            "payment_mode_id": 3,
            "display_name": "Net Banking",
            "list": [
              {
                "aggregator_name": "Razorpay",
                "bank_name": "ICICI Bank",
                "bank_code": "ICIC",
                "url": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/NB_ICICI.png",
                "logo_url": {
                  "small": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/NB_ICICI.png",
                  "large": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/NB_ICICI.png"
                },
                "merchant_code": "NB_ICICI",
                "display_priority": 1
              }
            ]
          },
          {
            "name": "WL",
            "display_priority": 4,
            "payment_mode_id": 4,
            "display_name": "Wallet",
            "list": [
              {
                "wallet_name": "Paytm",
                "wallet_code": "paytm",
                "wallet_id": 4,
                "merchant_code": "PAYTM",
                "logo_url": {
                  "small": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/paytm_logo_small.png",
                  "large": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/paytm_logo_large.png"
                },
                "aggregator_name": "Juspay",
                "display_priority": 1
              }
            ]
          },
          {
            "name": "UPI",
            "display_priority": 9,
            "payment_mode_id": 6,
            "display_name": "UPI",
            "list": [
              {
                "aggregator_name": "UPI_Razorpay",
                "name": "UPI",
                "display_name": "BHIM UPI",
                "code": "UPI",
                "logo_url": {
                  "small": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/upi_100x78.png",
                  "large": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/upi_150x100.png"
                },
                "merchant_code": "UPI",
                "timeout": 240,
                "retry_count": 0,
                "fynd_vpa": "shopsense.rzp@hdfcbank",
                "intent_flow": true,
                "intent_app_error_list": [
                  "com.csam.icici.bank.imobile",
                  "in.org.npci.upiapp",
                  "com.whatsapp"
                ]
              }
            ]
          },
          {
            "name": "PL",
            "display_priority": 11,
            "payment_mode_id": 1,
            "display_name": "Pay Later",
            "list": [
              {
                "aggregator_name": "Simpl",
                "name": "Simpl",
                "code": "simpl",
                "merchant_code": "SIMPL",
                "logo": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/simpl_logo.png",
                "logo_url": {
                  "small": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/simpl_logo.png",
                  "large": "https://d2co8r51m5ca2d.cloudfront.net/payments_assets/simpl_logo.png"
                }
              }
            ]
          }
        ],
        "payment_flows": {
          "Simpl": {
            "data": {
              "gateway": {
                "route": "simpl",
                "entity": "sdk",
                "is_customer_validation_required": true,
                "cust_validation_url": "https://api.addsale.com/gringotts/api/v1/validate-customer/",
                "sdk": {
                  "config": {
                    "redirect": false,
                    "callback_url": null,
                    "action_url": "https://api.addsale.com/avis/api/v1/payments/charge-gringotts-transaction/"
                  },
                  "data": {
                    "user_phone": "8452996729",
                    "user_email": "paymentsdummy@gofynd.com"
                  }
                },
                "return_url": null
              }
            },
            "api_link": "",
            "payment_flow": "sdk"
          },
          "Juspay": {
            "data": {},
            "api_link": "https://sandbox.juspay.in/txns",
            "payment_flow": "api"
          },
          "Razorpay": {
            "data": {},
            "api_link": "",
            "payment_flow": "sdk"
          },
          "UPI_Razorpay": {
            "data": {},
            "api_link": "https://api.addsale.com/gringotts/api/v1/external/payment-initialisation/",
            "payment_flow": "api"
          },
          "Fynd": {
            "data": {},
            "api_link": "",
            "payment_flow": "api"
          }
        },
        "default": {}
      },
      "user_type": "Store User",
      "cod_charges": 0,
      "order_id": "FY5D5E215CF287584CE6",
      "cod_available": true,
      "cod_message": "No additional COD charges applicable",
      "delivery_charges": 0,
      "delivery_charge_order_value": 0,
      "delivery_slots": [
        {
          "date": "Sat, 24 Aug",
          "delivery_slot": [
            {
              "delivery_slot_timing": "By 9:00 PM",
              "default": true,
              "delivery_slot_id": 1
            }
          ]
        }
      ],
      "store_code": "",
      "store_emps": [],
      "breakup_values": {
        "coupon": {
          "type": "cash",
          "code": "",
          "uid": null,
          "value": 0,
          "is_applied": false,
          "message": "Sorry! Invalid Coupon"
        },
        "loyalty_points": {
          "total": 0,
          "applicable": 0,
          "is_applied": false,
          "description": "Your cashback, referrals, and refund amount get credited to Fynd Cash which can be redeemed while placing an order."
        },
        "raw": {
          "cod_charge": 0,
          "convenience_fee": 0,
          "coupon": 0,
          "delivery_charge": 0,
          "discount": 0,
          "fynd_cash": 0,
          "gst_charges": 214.18,
          "mrp_total": 1999,
          "subtotal": 1999,
          "total": 1999,
          "vog": 1784.82,
          "you_saved": 0
        },
        "display": [
          {
            "display": "MRP Total",
            "key": "mrp_total",
            "value": 1999,
            "currency_code": "INR"
          },
          {
            "display": "Subtotal",
            "key": "subtotal",
            "value": 1999,
            "currency_code": "INR"
          },
          {
            "display": "Total",
            "key": "total",
            "value": 1999,
            "currency_code": "INR"
          }
        ]
      },
      "items": [
        {
          "key": "820312_L",
          "message": "",
          "bulk_offer": {},
          "price": {
            "base": {
              "add_on": 1999,
              "marked": 1999,
              "effective": 1999,
              "selling": 1999,
              "currency_code": "INR"
            },
            "converted": {
              "add_on": 1999,
              "marked": 1999,
              "effective": 1999,
              "selling": 1999,
              "currency_code": "INR"
            }
          },
          "quantity": 1,
          "discount": "",
          "product": {
            "type": "product",
            "uid": 820312,
            "name": "Navy Blue Melange Shorts",
            "slug": "883-police-navy-blue-melange-shorts-820312-4943a8",
            "brand": {
              "uid": 610,
              "name": "883 Police"
            },
            "categories": [
              {
                "uid": 193,
                "name": "Shorts"
              }
            ],
            "images": [
              {
                "aspect_ratio": "16:25",
                "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/610_SPIRAL19ANAVY/1_1549105947281.jpg",
                "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/610_SPIRAL19ANAVY/1_1549105947281.jpg"
              }
            ],
            "action": {
              "type": "product",
              "url": "https://api.addsale.com/platform/content/v1/products/883-police-navy-blue-melange-shorts-820312-4943a8/",
              "query": {
                "product_slug": [
                  "883-police-navy-blue-melange-shorts-820312-4943a8"
                ]
              }
            }
          },
          "article": {
            "type": "article",
            "uid": "381_610_IGPL01_SPIRAL19ANAVY_L",
            "size": "L",
            "seller": {
              "uid": 381,
              "name": "INTERSOURCE GARMENTS PVT LTD"
            },
            "store": {
              "uid": 3009,
              "name": "Kormangala"
            },
            "quantity": 2,
            "price": {
              "base": {
                "marked": 1999,
                "effective": 1999,
                "currency_code": "INR"
              },
              "converted": {
                "marked": 1999,
                "effective": 1999,
                "currency_code": "INR"
              }
            }
          },
          "coupon_message": "",
          "availability": {
            "sizes": [
              "L",
              "XL",
              "XXL"
            ],
            "other_store_quantity": 1,
            "out_of_stock": false,
            "deliverable": true,
            "is_valid": true
          }
        }
      ],
      "delivery_charge_info": "",
      "coupon_text": "View all offers",
      "cart_id": 7483,
      "uid": "7483",
      "gstin": null,
      "checkout_mode": "self",
      "last_modified": "Thu, 22 Aug 2019 04:58:44 GMT",
      "restrict_checkout": false,
      "is_valid": true
    },
    "callback_url": "https://api.addsale.com/gringotts/api/v1/external/payment-callback/",
    "app_intercept_url": "http://uniket-testing.addsale.link/cart/order-status",
    "message": "",
    "data": {
      "order_id": "FY5D5E215CF287584CE6"
    },
    "order_id": "FY5D5E215CF287584CE6"
  }
}
```
</details>

</details>









---


#### updateCartMeta
Update the cart meta




```swift
poscart.updateCartMeta(id: id, buyNow: buyNow, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String? | no |  |   
| buyNow | Bool? | no |  |  
| body | CartMetaRequest | yes | Request body |


Use this API to update cart meta like checkout_mode and gstin.

*Returned Response:*




[CartMetaResponse](#CartMetaResponse)

Returns a message indicating the success of cart meta updation as shown below.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "cart meta updated"
}
```
</details>









---


#### getAvailableDeliveryModes
Get available delivery modes for cart




```swift
poscart.getAvailableDeliveryModes(areaCode: areaCode, id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| areaCode | String | yes |  |   
| id | String? | no |  |  



Use this API to get the delivery modes (home-delivery/store-pickup) along with a list of pickup stores available for a given cart at a given PIN Code. User can then view the address of a pickup store with the help of store-address API.

*Returned Response:*




[CartDeliveryModesResponse](#CartDeliveryModesResponse)

Success. Returns the available delivery mode available for a given PIN Code, along with the UID of all the eligible pickup stores.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "available_modes": [
    "HomeDelivery",
    "PickAtStore"
  ],
  "pickup_stores": [
    1
  ]
}
```
</details>









---


#### getStoreAddressByUid
Get list of stores for give uids




```swift
poscart.getStoreAddressByUid(storeUid: storeUid) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| storeUid | Int | yes |  |  



Use this API to get the store details by entering the unique identifier of the pickup stores shown in the response of available-delivery-mode API.

*Returned Response:*




[StoreDetailsResponse](#StoreDetailsResponse)

Success. Returns available store information with its address as shown below.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "name": "Tennille Urse",
      "phone": "9819716565",
      "email": "rehman@cashkart.com",
      "address_type": "store",
      "address": "NO",
      "area": "",
      "pincode": 400072,
      "area_code": 400072,
      "area_code_slug": "pincode",
      "landmark": "",
      "country": "INDIA",
      "city": "MUMBAI",
      "state": "MAHA",
      "store_code": "6462b3cd-9d64-4da9-a764-b0e6a52cf5e8",
      "uid": 20,
      "geo_location": {
        "longitude": 1,
        "latitude": 1
      }
    }
  ]
}
```
</details>









---


#### getCartShareLink
Generate token for sharing the cart




```swift
poscart.getCartShareLink(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GetShareCartLinkRequest | yes | Request body |


Use this API to generate a shared cart snapshot and return a shortlink token. The link can be shared with other users for getting the same items in their cart.

*Returned Response:*




[GetShareCartLinkResponse](#GetShareCartLinkResponse)

Returns a URL to share and a token as shown below.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Token Generated</i></summary>

```json
{
  "value": {
    "token": "ZweG1XyX",
    "share_url": "https://uniket-testing.addsale.link/shared-cart/ZweG1XyX"
  }
}
```
</details>

</details>









---


#### getCartSharedItems
Get details of a shared cart




```swift
poscart.getCartSharedItems(token: token) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| token | String | yes | Token of the shared short link |  



Use this API to get the shared cart details as per the token generated using the share-cart API.

*Returned Response:*




[SharedCartResponse](#SharedCartResponse)

Success. Returns a Cart object as per the valid token. Refer `SharedCartResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "cart": {
    "shared_cart_details": {
      "token": "BQ9jySQ9",
      "user": {
        "user_id": "23109086",
        "is_anonymous": false
      },
      "meta": {
        "selected_staff": "",
        "ordering_store": null
      },
      "selected_staff": "",
      "ordering_store": null,
      "source": {},
      "created_on": "2019-12-18T14:00:07.165000"
    },
    "items": [
      {
        "key": "791651_6",
        "discount": "",
        "bulk_offer": {},
        "coupon_message": "",
        "article": {
          "type": "article",
          "uid": "304_1054_9036_R1005753_6",
          "size": "6",
          "seller": {
            "uid": 304,
            "name": "LEAYAN GLOBAL PVT. LTD."
          },
          "store": {
            "uid": 5322,
            "name": "Vaisali Nagar"
          },
          "quantity": 1,
          "price": {
            "base": {
              "marked": 2095,
              "effective": 2095,
              "currency_code": "INR"
            },
            "converted": {
              "marked": 2095,
              "effective": 2095,
              "currency_code": "INR"
            }
          }
        },
        "product": {
          "type": "product",
          "uid": 791651,
          "name": "Black Running Shoes",
          "slug": "furo-black-running-shoes-791651-f8bcc3",
          "brand": {
            "uid": 1054,
            "name": "Furo"
          },
          "categories": [
            {
              "uid": 160,
              "name": "Running Shoes"
            }
          ],
          "images": [
            {
              "aspect_ratio": "16:25",
              "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/1054_R1005753/1_1546490507364.jpg",
              "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/1054_R1005753/1_1546490507364.jpg"
            }
          ],
          "action": {
            "type": "product",
            "url": "https://api.addsale.com/platform/content/v1/products/furo-black-running-shoes-791651-f8bcc3/",
            "query": {
              "product_slug": [
                "furo-black-running-shoes-791651-f8bcc3"
              ]
            }
          }
        },
        "message": "",
        "quantity": 1,
        "availability": {
          "sizes": [
            "7",
            "8",
            "9",
            "10",
            "6"
          ],
          "other_store_quantity": 12,
          "out_of_stock": false,
          "deliverable": true,
          "is_valid": true
        },
        "price": {
          "base": {
            "add_on": 2095,
            "marked": 2095,
            "effective": 2095,
            "selling": 2095,
            "currency_code": "INR"
          },
          "converted": {
            "add_on": 2095,
            "marked": 2095,
            "effective": 2095,
            "selling": 2095,
            "currency_code": "INR"
          }
        }
      },
      {
        "key": "791651_7",
        "discount": "",
        "bulk_offer": {},
        "coupon_message": "",
        "article": {
          "type": "article",
          "uid": "304_1054_9036_R1005753_7",
          "size": "7",
          "seller": {
            "uid": 304,
            "name": "LEAYAN GLOBAL PVT. LTD."
          },
          "store": {
            "uid": 5322,
            "name": "Vaisali Nagar"
          },
          "quantity": 2,
          "price": {
            "base": {
              "marked": 2095,
              "effective": 2095,
              "currency_code": "INR"
            },
            "converted": {
              "marked": 2095,
              "effective": 2095,
              "currency_code": "INR"
            }
          }
        },
        "product": {
          "type": "product",
          "uid": 791651,
          "name": "Black Running Shoes",
          "slug": "furo-black-running-shoes-791651-f8bcc3",
          "brand": {
            "uid": 1054,
            "name": "Furo"
          },
          "categories": [
            {
              "uid": 160,
              "name": "Running Shoes"
            }
          ],
          "images": [
            {
              "aspect_ratio": "16:25",
              "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/1054_R1005753/1_1546490507364.jpg",
              "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/1054_R1005753/1_1546490507364.jpg"
            }
          ],
          "action": {
            "type": "product",
            "url": "https://api.addsale.com/platform/content/v1/products/furo-black-running-shoes-791651-f8bcc3/",
            "query": {
              "product_slug": [
                "furo-black-running-shoes-791651-f8bcc3"
              ]
            }
          }
        },
        "message": "",
        "quantity": 2,
        "availability": {
          "sizes": [
            "7",
            "8",
            "9",
            "10",
            "6"
          ],
          "other_store_quantity": 7,
          "out_of_stock": false,
          "deliverable": true,
          "is_valid": true
        },
        "price": {
          "base": {
            "add_on": 4190,
            "marked": 4190,
            "effective": 4190,
            "selling": 4190,
            "currency_code": "INR"
          },
          "converted": {
            "add_on": 4190,
            "marked": 4190,
            "effective": 4190,
            "selling": 4190,
            "currency_code": "INR"
          }
        }
      }
    ],
    "cart_id": 13055,
    "uid": "13055",
    "breakup_values": {
      "raw": {
        "cod_charge": 0,
        "convenience_fee": 0,
        "coupon": 0,
        "delivery_charge": 0,
        "discount": 0,
        "fynd_cash": 0,
        "gst_charges": 958.73,
        "mrp_total": 6285,
        "subtotal": 6285,
        "total": 6285,
        "vog": 5326.27,
        "you_saved": 0
      },
      "loyalty_points": {
        "total": 0,
        "applicable": 0,
        "is_applied": false,
        "description": "Your cashback, referrals, and refund amount get credited to Fynd Cash which can be redeemed while placing an order."
      },
      "coupon": {
        "type": "cash",
        "code": "",
        "uid": null,
        "value": 0,
        "is_applied": false,
        "message": "Sorry! Invalid coupon"
      },
      "display": [
        {
          "display": "MRP Total",
          "key": "mrp_total",
          "value": 6285,
          "currency_code": "INR"
        },
        {
          "display": "Subtotal",
          "key": "subtotal",
          "value": 6285,
          "currency_code": "INR"
        },
        {
          "display": "Total",
          "key": "total",
          "value": 6285,
          "currency_code": "INR"
        }
      ]
    },
    "delivery_charge_info": "",
    "coupon_text": "View all offers",
    "gstin": null,
    "comment": "",
    "checkout_mode": "self",
    "payment_selection_lock": {
      "enabled": false,
      "default_options": "COD",
      "payment_identifier": null
    },
    "restrict_checkout": false,
    "is_valid": true,
    "last_modified": "Mon, 16 Dec 2019 07:02:18 GMT"
  },
  "error": ""
}
```
</details>









---


#### updateCartWithSharedItems
Merge or replace existing cart




```swift
poscart.updateCartWithSharedItems(token: token, action: action) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| token | String | yes | Token of the shared short link |   
| action | String | yes | Operation to perform on the existing cart merge or replace. |  



Use this API to merge the shared cart with existing cart, or replace the existing cart with the shared cart. The `action` parameter is used to indicate the operation Merge or Replace.

*Returned Response:*




[SharedCartResponse](#SharedCartResponse)

Success. Returns a merged or replaced cart as per the valid token. Refer `SharedCartResponse` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Cart Merged/Replaced</i></summary>

```json
{
  "value": {
    "cart": {
      "shared_cart_details": {
        "token": "BQ9jySQ9",
        "user": {
          "user_id": "23109086",
          "is_anonymous": false
        },
        "meta": {
          "selected_staff": "",
          "ordering_store": null
        },
        "selected_staff": "",
        "ordering_store": null,
        "source": {},
        "created_on": "2019-12-18T14:00:07.165000"
      },
      "items": [
        {
          "key": "791651_6",
          "discount": "",
          "bulk_offer": {},
          "coupon_message": "",
          "article": {
            "type": "article",
            "uid": "304_1054_9036_R1005753_6",
            "size": "6",
            "seller": {
              "uid": 304,
              "name": "LEAYAN GLOBAL PVT. LTD."
            },
            "store": {
              "uid": 5322,
              "name": "Vaisali Nagar"
            },
            "quantity": 1,
            "price": {
              "base": {
                "marked": 2095,
                "effective": 2095,
                "currency_code": "INR"
              },
              "converted": {
                "marked": 2095,
                "effective": 2095,
                "currency_code": "INR"
              }
            }
          },
          "product": {
            "type": "product",
            "uid": 791651,
            "name": "Black Running Shoes",
            "slug": "furo-black-running-shoes-791651-f8bcc3",
            "brand": {
              "uid": 1054,
              "name": "Furo"
            },
            "categories": [
              {
                "uid": 160,
                "name": "Running Shoes"
              }
            ],
            "images": [
              {
                "aspect_ratio": "16:25",
                "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/1054_R1005753/1_1546490507364.jpg",
                "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/1054_R1005753/1_1546490507364.jpg"
              }
            ],
            "action": {
              "type": "product",
              "url": "https://api.addsale.com/platform/content/v1/products/furo-black-running-shoes-791651-f8bcc3/",
              "query": {
                "product_slug": [
                  "furo-black-running-shoes-791651-f8bcc3"
                ]
              }
            }
          },
          "message": "",
          "quantity": 1,
          "availability": {
            "sizes": [
              "7",
              "8",
              "9",
              "10",
              "6"
            ],
            "other_store_quantity": 12,
            "out_of_stock": false,
            "deliverable": true,
            "is_valid": true
          },
          "price": {
            "base": {
              "add_on": 2095,
              "marked": 2095,
              "effective": 2095,
              "selling": 2095,
              "currency_code": "INR"
            },
            "converted": {
              "add_on": 2095,
              "marked": 2095,
              "effective": 2095,
              "selling": 2095,
              "currency_code": "INR"
            }
          }
        },
        {
          "key": "791651_7",
          "discount": "",
          "bulk_offer": {},
          "coupon_message": "",
          "article": {
            "type": "article",
            "uid": "304_1054_9036_R1005753_7",
            "size": "7",
            "seller": {
              "uid": 304,
              "name": "LEAYAN GLOBAL PVT. LTD."
            },
            "store": {
              "uid": 5322,
              "name": "Vaisali Nagar"
            },
            "quantity": 2,
            "price": {
              "base": {
                "marked": 2095,
                "effective": 2095,
                "currency_code": "INR"
              },
              "converted": {
                "marked": 2095,
                "effective": 2095,
                "currency_code": "INR"
              }
            }
          },
          "product": {
            "type": "product",
            "uid": 791651,
            "name": "Black Running Shoes",
            "slug": "furo-black-running-shoes-791651-f8bcc3",
            "brand": {
              "uid": 1054,
              "name": "Furo"
            },
            "categories": [
              {
                "uid": 160,
                "name": "Running Shoes"
              }
            ],
            "images": [
              {
                "aspect_ratio": "16:25",
                "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/1054_R1005753/1_1546490507364.jpg",
                "secure_url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/original/1054_R1005753/1_1546490507364.jpg"
              }
            ],
            "action": {
              "type": "product",
              "url": "https://api.addsale.com/platform/content/v1/products/furo-black-running-shoes-791651-f8bcc3/",
              "query": {
                "product_slug": [
                  "furo-black-running-shoes-791651-f8bcc3"
                ]
              }
            }
          },
          "message": "",
          "quantity": 2,
          "availability": {
            "sizes": [
              "7",
              "8",
              "9",
              "10",
              "6"
            ],
            "other_store_quantity": 7,
            "out_of_stock": false,
            "deliverable": true,
            "is_valid": true
          },
          "price": {
            "base": {
              "add_on": 4190,
              "marked": 4190,
              "effective": 4190,
              "selling": 4190,
              "currency_code": "INR"
            },
            "converted": {
              "add_on": 4190,
              "marked": 4190,
              "effective": 4190,
              "selling": 4190,
              "currency_code": "INR"
            }
          }
        }
      ],
      "cart_id": 13055,
      "uid": "13055",
      "breakup_values": {
        "raw": {
          "cod_charge": 0,
          "convenience_fee": 0,
          "coupon": 0,
          "delivery_charge": 0,
          "discount": 0,
          "fynd_cash": 0,
          "gst_charges": 958.73,
          "mrp_total": 6285,
          "subtotal": 6285,
          "total": 6285,
          "vog": 5326.27,
          "you_saved": 0
        },
        "loyalty_points": {
          "total": 0,
          "applicable": 0,
          "is_applied": false,
          "description": "Your cashback, referrals, and refund amount get credited to Fynd Cash which can be redeemed while placing an order."
        },
        "coupon": {
          "type": "cash",
          "code": "",
          "uid": null,
          "value": 0,
          "is_applied": false,
          "message": "Sorry! Invalid coupon"
        },
        "display": [
          {
            "display": "MRP Total",
            "key": "mrp_total",
            "value": 6285,
            "currency_code": "INR"
          },
          {
            "display": "Subtotal",
            "key": "subtotal",
            "value": 6285,
            "currency_code": "INR"
          },
          {
            "display": "Total",
            "key": "total",
            "value": 6285,
            "currency_code": "INR"
          }
        ]
      },
      "delivery_charge_info": "",
      "coupon_text": "View all offers",
      "gstin": null,
      "comment": "",
      "checkout_mode": "self",
      "payment_selection_lock": {
        "enabled": false,
        "default_options": "COD",
        "payment_identifier": null
      },
      "restrict_checkout": false,
      "is_valid": true,
      "last_modified": "Mon, 16 Dec 2019 07:02:18 GMT"
    }
  }
}
```
</details>

</details>









---



### Schemas

 
 
 #### [PaymentSelectionLock](#PaymentSelectionLock)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | defaultOptions | String? |  yes  |  |
 | paymentIdentifier | String? |  yes  |  |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [CartCurrency](#CartCurrency)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | symbol | String? |  yes  |  |
 | code | String? |  yes  | Currency code defined by ISO 4217:2015 |

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


 
 
 #### [DisplayBreakup](#DisplayBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |
 | message | [String]? |  yes  |  |
 | value | Double? |  yes  |  |
 | key | String? |  yes  |  |
 | currencySymbol | String? |  yes  |  |

---


 
 
 #### [RawBreakup](#RawBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fyndCash | Double? |  yes  |  |
 | total | Double? |  yes  |  |
 | youSaved | Double? |  yes  |  |
 | gstCharges | Double? |  yes  |  |
 | convenienceFee | Double? |  yes  |  |
 | vog | Double? |  yes  |  |
 | deliveryCharge | Double? |  yes  |  |
 | coupon | Double? |  yes  |  |
 | mrpTotal | Double? |  yes  |  |
 | subtotal | Double? |  yes  |  |
 | codCharge | Double? |  yes  |  |
 | discount | Double? |  yes  |  |

---


 
 
 #### [LoyaltyPoints](#LoyaltyPoints)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | total | Double? |  yes  |  |
 | isApplied | Bool? |  yes  |  |
 | applicable | Double? |  yes  |  |

---


 
 
 #### [CouponBreakup](#CouponBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | maxDiscountValue | Double? |  yes  |  |
 | message | String? |  yes  |  |
 | title | String? |  yes  |  |
 | value | Double? |  yes  |  |
 | description | String? |  yes  |  |
 | couponValue | Double? |  yes  |  |
 | subTitle | String? |  yes  |  |
 | couponType | String? |  yes  |  |
 | type | String? |  yes  |  |
 | uid | String? |  yes  |  |
 | isApplied | Bool? |  yes  |  |
 | code | String? |  yes  |  |
 | minimumCartValue | Double? |  yes  |  |

---


 
 
 #### [CartBreakup](#CartBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | [[DisplayBreakup](#DisplayBreakup)]? |  yes  |  |
 | raw | [RawBreakup](#RawBreakup)? |  yes  |  |
 | loyaltyPoints | [LoyaltyPoints](#LoyaltyPoints)? |  yes  |  |
 | coupon | [CouponBreakup](#CouponBreakup)? |  yes  |  |

---


 
 
 #### [BaseInfo](#BaseInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | uid | Int? |  yes  |  |

---


 
 
 #### [BasePrice](#BasePrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currencyCode | String? |  yes  |  |
 | effective | Double? |  yes  |  |
 | currencySymbol | String? |  yes  |  |
 | marked | Double? |  yes  |  |

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
 | store | [BaseInfo](#BaseInfo)? |  yes  |  |
 | price | [ArticlePriceInfo](#ArticlePriceInfo)? |  yes  |  |
 | extraMeta | [String: Any]? |  yes  |  |
 | parentItemIdentifiers | [String: Any]? |  yes  |  |
 | size | String? |  yes  |  |
 | productGroupTags | [String]? |  yes  |  |
 | type | String? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | uid | String? |  yes  |  |
 | seller | [BaseInfo](#BaseInfo)? |  yes  |  |

---


 
 
 #### [ProductPrice](#ProductPrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | addOn | Double? |  yes  |  |
 | currencyCode | String? |  yes  |  |
 | effective | Double? |  yes  |  |
 | currencySymbol | String? |  yes  |  |
 | selling | Double? |  yes  |  |
 | marked | Double? |  yes  |  |

---


 
 
 #### [ProductPriceInfo](#ProductPriceInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | base | [ProductPrice](#ProductPrice)? |  yes  |  |
 | converted | [ProductPrice](#ProductPrice)? |  yes  |  |

---


 
 
 #### [ProductAvailability](#ProductAvailability)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isValid | Bool? |  yes  |  |
 | outOfStock | Bool? |  yes  |  |
 | otherStoreQuantity | Int? |  yes  |  |
 | sizes | [String]? |  yes  |  |
 | deliverable | Bool? |  yes  |  |

---


 
 
 #### [PromoMeta](#PromoMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [FreeGiftItem](#FreeGiftItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemSlug | String? |  yes  | item slug |
 | itemName | String? |  yes  | Item name |
 | itemBrandName | String? |  yes  | item brand name |
 | itemImagesUrl | [String]? |  yes  | item images URL |
 | itemPriceDetails | [String: Any]? |  yes  | item price details |
 | itemId | Int? |  yes  | Item id |

---


 
 
 #### [AppliedFreeArticles](#AppliedFreeArticles)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | parentItemIdentifier | String? |  yes  | Parent item identifier for free article |
 | quantity | Int? |  yes  | Free article quantity |
 | freeGiftItemDetails | [FreeGiftItem](#FreeGiftItem)? |  yes  | Free gift items details |
 | articleId | String? |  yes  | free article id |

---


 
 
 #### [BuyRules](#BuyRules)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cartConditions | [String: Any]? |  yes  | Cart conditions details for promotion |
 | itemCriteria | [String: Any]? |  yes  | Item criteria of promotion |

---


 
 
 #### [DiscountRulesApp](#DiscountRulesApp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | offer | [String: Any]? |  yes  | offer for promotion |
 | rawOffer | [String: Any]? |  yes  | raw offer details for promotion |
 | matchedBuyRules | [String]? |  yes  | Matched buy rules for promotion |
 | itemCriteria | [String: Any]? |  yes  | Item criteria of promotion |

---


 
 
 #### [AppliedPromotion](#AppliedPromotion)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mrpPromotion | Bool? |  yes  | If applied promotion is applied on product MRP or ESP |
 | promotionName | String? |  yes  | Promotion name of current promotion |
 | appliedFreeArticles | [[AppliedFreeArticles](#AppliedFreeArticles)]? |  yes  | Applied free article for free gift item promotions |
 | articleQuantity | Int? |  yes  | Quantity of article on which promotion is applicable |
 | promotionGroup | String? |  yes  | Promotion group for the promotion |
 | promotionType | String? |  yes  | Promotion type of current promotion |
 | amount | Double? |  yes  | Per unit discount amount applied with current promotion |
 | buyRules | [[BuyRules](#BuyRules)]? |  yes  | Buy rules for promotions |
 | promoId | String? |  yes  | Promotion id |
 | discountRules | [[DiscountRulesApp](#DiscountRulesApp)]? |  yes  | Discount rules for promotions |
 | offerText | String? |  yes  | Offer text of current promotion |

---


 
 
 #### [CartProductIdentifer](#CartProductIdentifer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | identifier | String? |  yes  | Article idenfier generated by cart |

---


 
 
 #### [CategoryInfo](#CategoryInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | uid | Int? |  yes  | Product Category Id |

---


 
 
 #### [NetQuantity](#NetQuantity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | unit | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [ProductImage](#ProductImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String? |  yes  |  |
 | url | String? |  yes  |  |
 | secureUrl | String? |  yes  |  |

---


 
 
 #### [ActionQuery](#ActionQuery)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | productSlug | [String]? |  yes  | Contains list of product slug |

---


 
 
 #### [ProductAction](#ProductAction)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | query | [ActionQuery](#ActionQuery)? |  yes  |  |
 | url | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [CartProduct](#CartProduct)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | brand | [BaseInfo](#BaseInfo)? |  yes  |  |
 | categories | [[CategoryInfo](#CategoryInfo)]? |  yes  |  |
 | type | String? |  yes  |  |
 | netQuantity | [NetQuantity](#NetQuantity)? |  yes  |  |
 | images | [[ProductImage](#ProductImage)]? |  yes  |  |
 | action | [ProductAction](#ProductAction)? |  yes  |  |
 | uid | Int? |  yes  |  |
 | slug | String? |  yes  | Unique product url name generated via product name and other meta data |

---


 
 
 #### [CartProductInfo](#CartProductInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | article | [ProductArticle](#ProductArticle)? |  yes  |  |
 | pricePerUnit | [ProductPriceInfo](#ProductPriceInfo)? |  yes  |  |
 | price | [ProductPriceInfo](#ProductPriceInfo)? |  yes  |  |
 | availability | [ProductAvailability](#ProductAvailability)? |  yes  |  |
 | message | String? |  yes  |  |
 | parentItemIdentifiers | [String: Any]? |  yes  |  |
 | promoMeta | [PromoMeta](#PromoMeta)? |  yes  |  |
 | promotionsApplied | [[AppliedPromotion](#AppliedPromotion)]? |  yes  |  |
 | key | String? |  yes  |  |
 | isSet | Bool? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | identifiers | [CartProductIdentifer](#CartProductIdentifer) |  no  |  |
 | discount | String? |  yes  |  |
 | bulkOffer | [String: Any]? |  yes  |  |
 | product | [CartProduct](#CartProduct)? |  yes  |  |
 | couponMessage | String? |  yes  |  |

---


 
 
 #### [CartDetailResponse](#CartDetailResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentSelectionLock | [PaymentSelectionLock](#PaymentSelectionLock)? |  yes  |  |
 | isValid | Bool? |  yes  |  |
 | message | String? |  yes  |  |
 | couponText | String? |  yes  |  |
 | id | String? |  yes  |  |
 | restrictCheckout | Bool? |  yes  |  |
 | currency | [CartCurrency](#CartCurrency)? |  yes  |  |
 | comment | String? |  yes  |  |
 | checkoutMode | String? |  yes  |  |
 | deliveryChargeInfo | String? |  yes  |  |
 | deliveryPromise | [ShipmentPromise](#ShipmentPromise)? |  yes  |  |
 | buyNow | Bool? |  yes  |  |
 | breakupValues | [CartBreakup](#CartBreakup)? |  yes  |  |
 | items | [[CartProductInfo](#CartProductInfo)]? |  yes  |  |
 | gstin | String? |  yes  |  |
 | lastModified | String? |  yes  |  |

---


 
 
 #### [AddProductCart](#AddProductCart)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | extraMeta | [String: Any]? |  yes  |  |
 | sellerId | Int? |  yes  |  |
 | pos | Bool? |  yes  |  |
 | parentItemIdentifiers | [String: Any]? |  yes  |  |
 | articleId | String? |  yes  |  |
 | productGroupTags | [String]? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | itemSize | String? |  yes  |  |
 | articleAssignment | [String: Any]? |  yes  |  |
 | itemId | Int? |  yes  |  |
 | storeId | Int? |  yes  |  |

---


 
 
 #### [AddCartRequest](#AddCartRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[AddProductCart](#AddProductCart)]? |  yes  |  |

---


 
 
 #### [AddCartDetailResponse](#AddCartDetailResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  | True if all items are added successfully. False if partially added or not added. |
 | partial | Bool? |  yes  | When adding multiple items check if all added. True if only few are added. |
 | message | String? |  yes  |  |
 | cart | [CartDetailResponse](#CartDetailResponse)? |  yes  |  |

---


 
 
 #### [UpdateProductCart](#UpdateProductCart)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | extraMeta | [String: Any]? |  yes  |  |
 | parentItemIdentifiers | [String: Any]? |  yes  |  |
 | itemIndex | Int? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | identifiers | [CartProductIdentifer](#CartProductIdentifer) |  no  |  |
 | itemSize | String? |  yes  |  |
 | itemId | Int? |  yes  |  |
 | articleId | String? |  yes  |  |

---


 
 
 #### [UpdateCartRequest](#UpdateCartRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[UpdateProductCart](#UpdateProductCart)]? |  yes  |  |
 | operation | String |  no  |  |

---


 
 
 #### [UpdateCartDetailResponse](#UpdateCartDetailResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  | True if all items are added successfully. False if partially added or not added. |
 | message | String? |  yes  |  |
 | cart | [CartDetailResponse](#CartDetailResponse)? |  yes  |  |

---


 
 
 #### [CartItemCountResponse](#CartItemCountResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userCartItemsCount | Int? |  yes  | Item count present in cart |

---


 
 
 #### [Coupon](#Coupon)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | maxDiscountValue | Double? |  yes  |  |
 | message | String? |  yes  |  |
 | title | String? |  yes  |  |
 | expiresOn | String? |  yes  |  |
 | description | String? |  yes  |  |
 | couponValue | Double? |  yes  |  |
 | subTitle | String? |  yes  |  |
 | couponType | String? |  yes  |  |
 | couponCode | String? |  yes  |  |
 | isApplied | Bool? |  yes  |  |
 | isApplicable | Bool? |  yes  |  |
 | minimumCartValue | Double? |  yes  |  |

---


 
 
 #### [PageCoupon](#PageCoupon)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalItemCount | Int? |  yes  |  |
 | hasPrevious | Bool? |  yes  |  |
 | current | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | total | Int? |  yes  |  |

---


 
 
 #### [GetCouponResponse](#GetCouponResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | availableCouponList | [[Coupon](#Coupon)]? |  yes  |  |
 | page | [PageCoupon](#PageCoupon)? |  yes  |  |

---


 
 
 #### [ApplyCouponRequest](#ApplyCouponRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | couponCode | String |  no  | Coupon code to be applied |

---


 
 
 #### [OfferPrice](#OfferPrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currencyCode | String? |  yes  | Currency code for all amounts |
 | effective | Int? |  yes  | Current per unit price of product after existing deductions |
 | bulkEffective | Double? |  yes  | Discounted per unit price for current offer object |
 | currencySymbol | String? |  yes  | Currency symbol for currency |
 | marked | Int? |  yes  | Original price of product |

---


 
 
 #### [OfferItem](#OfferItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | best | Bool? |  yes  | Is true for best offer from all offers present for all sellers |
 | price | [OfferPrice](#OfferPrice)? |  yes  |  |
 | autoApplied | Bool? |  yes  | Whether offer discount is auto applied in cart |
 | type | String? |  yes  | Offer type |
 | quantity | Int? |  yes  | Quantity on which offer is applicable |
 | margin | Int? |  yes  | Percentage value of discount |
 | total | Double? |  yes  | Total price of offer quantity with discount |

---


 
 
 #### [OfferSeller](#OfferSeller)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | uid | Int? |  yes  | Seller id |

---


 
 
 #### [BulkPriceOffer](#BulkPriceOffer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | offers | [[OfferItem](#OfferItem)]? |  yes  |  |
 | seller | [OfferSeller](#OfferSeller)? |  yes  |  |

---


 
 
 #### [BulkPriceResponse](#BulkPriceResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[BulkPriceOffer](#BulkPriceOffer)]? |  yes  | Consist of offers from multiple seller |

---


 
 
 #### [RewardPointRequest](#RewardPointRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | points | Bool |  no  |  |

---


 
 
 #### [GeoLocation](#GeoLocation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | longitude | Double? |  yes  |  |
 | latitude | Double? |  yes  |  |

---


 
 
 #### [Address](#Address)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isDefaultAddress | Bool? |  yes  |  |
 | landmark | String? |  yes  |  |
 | area | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | googleMapPoint | [String: Any]? |  yes  |  |
 | checkoutMode | String? |  yes  |  |
 | address | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | userId | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | name | String? |  yes  |  |
 | id | String? |  yes  |  |
 | areaCode | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | geoLocation | [GeoLocation](#GeoLocation)? |  yes  |  |
 | country | String? |  yes  |  |
 | email | String? |  yes  |  |
 | areaCodeSlug | String? |  yes  |  |
 | state | String? |  yes  |  |
 | city | String? |  yes  |  |

---


 
 
 #### [GetAddressesResponse](#GetAddressesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | [[Address](#Address)]? |  yes  |  |

---


 
 
 #### [SaveAddressResponse](#SaveAddressResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | isDefaultAddress | Bool? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [UpdateAddressResponse](#UpdateAddressResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isUpdated | Bool? |  yes  |  |
 | success | Bool? |  yes  |  |
 | isDefaultAddress | Bool? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [DeleteAddressResponse](#DeleteAddressResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | isDeleted | Bool? |  yes  |  |

---


 
 
 #### [SelectCartAddressRequest](#SelectCartAddressRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cartId | String? |  yes  |  |
 | id | String? |  yes  |  |
 | billingAddressId | String? |  yes  |  |

---


 
 
 #### [UpdateCartPaymentRequest](#UpdateCartPaymentRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentMode | String? |  yes  |  |
 | merchantCode | String? |  yes  |  |
 | id | String? |  yes  |  |
 | aggregatorName | String? |  yes  |  |
 | paymentIdentifier | String? |  yes  |  |
 | addressId | String? |  yes  |  |

---


 
 
 #### [CouponValidity](#CouponValidity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | valid | Bool? |  yes  |  |
 | displayMessageEn | String? |  yes  |  |
 | code | String? |  yes  |  |
 | discount | Double? |  yes  |  |

---


 
 
 #### [PaymentCouponValidate](#PaymentCouponValidate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | couponValidity | [CouponValidity](#CouponValidity)? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [ShipmentResponse](#ShipmentResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dpId | String? |  yes  |  |
 | fulfillmentType | String? |  yes  |  |
 | promise | [ShipmentPromise](#ShipmentPromise)? |  yes  |  |
 | orderType | String? |  yes  |  |
 | shipmentType | String? |  yes  |  |
 | dpOptions | [String: Any]? |  yes  |  |
 | items | [[CartProductInfo](#CartProductInfo)]? |  yes  |  |
 | fulfillmentId | Int? |  yes  |  |
 | shipments | Int? |  yes  |  |
 | boxType | String? |  yes  |  |

---


 
 
 #### [CartShipmentsResponse](#CartShipmentsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentSelectionLock | [PaymentSelectionLock](#PaymentSelectionLock)? |  yes  |  |
 | isValid | Bool? |  yes  |  |
 | message | String? |  yes  |  |
 | id | String? |  yes  |  |
 | restrictCheckout | Bool? |  yes  |  |
 | checkoutMode | String? |  yes  |  |
 | deliveryPromise | [ShipmentPromise](#ShipmentPromise)? |  yes  |  |
 | breakupValues | [CartBreakup](#CartBreakup)? |  yes  |  |
 | cartId | Int? |  yes  |  |
 | error | Bool? |  yes  |  |
 | gstin | String? |  yes  |  |
 | currency | [CartCurrency](#CartCurrency)? |  yes  |  |
 | couponText | String? |  yes  |  |
 | comment | String? |  yes  |  |
 | deliveryChargeInfo | String? |  yes  |  |
 | buyNow | Bool? |  yes  |  |
 | uid | String? |  yes  |  |
 | shipments | [[ShipmentResponse](#ShipmentResponse)]? |  yes  |  |
 | lastModified | String? |  yes  |  |

---


 
 
 #### [UpdateCartShipmentItem](#UpdateCartShipmentItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentType | String |  no  | Shipment delivery type |
 | articleUid | String |  no  | Article mongo id |
 | quantity | Int? |  yes  | Quantity of product in shipment |

---


 
 
 #### [UpdateCartShipmentRequest](#UpdateCartShipmentRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipments | [[UpdateCartShipmentItem](#UpdateCartShipmentItem)] |  no  |  |

---


 
 
 #### [StaffCheckout](#StaffCheckout)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String |  no  |  |
 | user | String |  no  |  |
 | id | String |  no  |  |
 | lastName | String |  no  |  |

---


 
 
 #### [CartCheckoutCustomMeta](#CartCheckoutCustomMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String |  no  |  |
 | value | String |  no  |  |

---


 
 
 #### [Files](#Files)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String |  no  |  |
 | values | [String] |  no  |  |

---


 
 
 #### [CartPosCheckoutDetailRequest](#CartPosCheckoutDetailRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentMode | String |  no  |  |
 | staff | [StaffCheckout](#StaffCheckout)? |  yes  |  |
 | billingAddress | [String: Any]? |  yes  |  |
 | customMeta | [[CartCheckoutCustomMeta](#CartCheckoutCustomMeta)]? |  yes  |  |
 | merchantCode | String? |  yes  |  |
 | extraMeta | [String: Any]? |  yes  |  |
 | pos | Bool? |  yes  |  |
 | orderType | String |  no  |  |
 | paymentAutoConfirm | Bool? |  yes  |  |
 | paymentParams | [String: Any]? |  yes  |  |
 | files | [[Files](#Files)]? |  yes  | List of file url |
 | billingAddressId | String? |  yes  |  |
 | deliveryAddress | [String: Any]? |  yes  |  |
 | paymentIdentifier | String? |  yes  |  |
 | addressId | String? |  yes  |  |
 | pickAtStoreUid | Int? |  yes  |  |
 | aggregator | String? |  yes  |  |
 | callbackUrl | String? |  yes  |  |
 | orderingStore | Int? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [CheckCart](#CheckCart)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentSelectionLock | [PaymentSelectionLock](#PaymentSelectionLock)? |  yes  |  |
 | isValid | Bool? |  yes  |  |
 | message | String? |  yes  |  |
 | codAvailable | Bool? |  yes  |  |
 | checkoutMode | String? |  yes  |  |
 | codCharges | Int? |  yes  |  |
 | deliveryPromise | [ShipmentPromise](#ShipmentPromise)? |  yes  |  |
 | breakupValues | [CartBreakup](#CartBreakup)? |  yes  |  |
 | codMessage | String? |  yes  |  |
 | gstin | String? |  yes  |  |
 | couponText | String? |  yes  |  |
 | orderId | String? |  yes  |  |
 | deliveryChargeInfo | String? |  yes  |  |
 | buyNow | Bool? |  yes  |  |
 | deliveryChargeOrderValue | Int? |  yes  |  |
 | errorMessage | String? |  yes  |  |
 | id | String? |  yes  |  |
 | restrictCheckout | Bool? |  yes  |  |
 | storeCode | String? |  yes  |  |
 | userType | String? |  yes  |  |
 | cartId | Int? |  yes  |  |
 | storeEmps | [[String: Any]]? |  yes  |  |
 | currency | [CartCurrency](#CartCurrency)? |  yes  |  |
 | comment | String? |  yes  |  |
 | success | Bool? |  yes  |  |
 | items | [[CartProductInfo](#CartProductInfo)]? |  yes  |  |
 | uid | String? |  yes  |  |
 | deliveryCharges | Int? |  yes  |  |
 | lastModified | String? |  yes  |  |

---


 
 
 #### [CartCheckoutResponse](#CartCheckoutResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentConfirmUrl | String? |  yes  |  |
 | callbackUrl | String? |  yes  |  |
 | message | String? |  yes  |  |
 | data | [String: Any]? |  yes  |  |
 | orderId | String? |  yes  |  |
 | appInterceptUrl | String? |  yes  |  |
 | cart | [CheckCart](#CheckCart)? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [CartMetaRequest](#CartMetaRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | comment | String? |  yes  |  |
 | pickUpCustomerDetails | [String: Any]? |  yes  | Customer contact details for customer pickup at store |
 | gstin | String? |  yes  |  |
 | checkoutMode | String? |  yes  |  |

---


 
 
 #### [CartMetaResponse](#CartMetaResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [CartMetaMissingResponse](#CartMetaMissingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | errors | [String]? |  yes  |  |

---


 
 
 #### [CartDeliveryModesResponse](#CartDeliveryModesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pickupStores | [Int]? |  yes  | Store pick up available store uids |
 | availableModes | [String]? |  yes  | Available delivery modes |

---


 
 
 #### [PickupStoreDetail](#PickupStoreDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | landmark | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | area | String? |  yes  |  |
 | areaCode | String? |  yes  |  |
 | id | Int? |  yes  |  |
 | storeCode | String? |  yes  |  |
 | pincode | Int? |  yes  |  |
 | country | String? |  yes  |  |
 | areaCodeSlug | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | email | String? |  yes  |  |
 | address | String? |  yes  |  |
 | state | String? |  yes  |  |
 | city | String? |  yes  |  |

---


 
 
 #### [StoreDetailsResponse](#StoreDetailsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[PickupStoreDetail](#PickupStoreDetail)]? |  yes  |  |

---


 
 
 #### [GetShareCartLinkRequest](#GetShareCartLinkRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  | Cart uid for generating sharing |
 | meta | [String: Any]? |  yes  | Staff, Ordering store or any other data. This data will be used to generate link as well as sent as shared details. |

---


 
 
 #### [GetShareCartLinkResponse](#GetShareCartLinkResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | token | String? |  yes  | Short url unique id |
 | shareUrl | String? |  yes  | Short shareable final url |

---


 
 
 #### [SharedCartDetails](#SharedCartDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | token | String? |  yes  | Short link id |
 | createdOn | String? |  yes  |  |
 | source | [String: Any]? |  yes  | Share link device and other source information |
 | user | [String: Any]? |  yes  | User details of who generated share link |
 | meta | [String: Any]? |  yes  | Meta data sent while generating share cart link |

---


 
 
 #### [SharedCart](#SharedCart)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentSelectionLock | [PaymentSelectionLock](#PaymentSelectionLock)? |  yes  |  |
 | isValid | Bool? |  yes  |  |
 | message | String? |  yes  |  |
 | checkoutMode | String? |  yes  |  |
 | deliveryPromise | [ShipmentPromise](#ShipmentPromise)? |  yes  |  |
 | breakupValues | [CartBreakup](#CartBreakup)? |  yes  |  |
 | gstin | String? |  yes  |  |
 | couponText | String? |  yes  |  |
 | deliveryChargeInfo | String? |  yes  |  |
 | buyNow | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | restrictCheckout | Bool? |  yes  |  |
 | cartId | Int? |  yes  |  |
 | currency | [CartCurrency](#CartCurrency)? |  yes  |  |
 | sharedCartDetails | [SharedCartDetails](#SharedCartDetails)? |  yes  |  |
 | comment | String? |  yes  |  |
 | items | [[CartProductInfo](#CartProductInfo)]? |  yes  |  |
 | uid | String? |  yes  |  |
 | lastModified | String? |  yes  |  |

---


 
 
 #### [SharedCartResponse](#SharedCartResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | String? |  yes  |  |
 | cart | [SharedCart](#SharedCart)? |  yes  |  |

---



