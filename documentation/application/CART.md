



##### [Back to Application docs](./README.md)

## Cart Methods
The Cart and Checkout module manages cart items, applies coupons and reward points, and allows you to select delivery addresses. This module also enables you to update payment information and view ongoing promotions. Additionally, it manages cart sharing, merging, and replacing, as well as providing details on shared carts.

Cart management
* [getCart](#getcart)
* [getCartLastModified](#getcartlastmodified)
* [addItems](#additems)
* [updateCart](#updatecart)
* [deleteCart](#deletecart)
* [getItemCount](#getitemcount)
* [getCoupons](#getcoupons)
* [applyCoupon](#applycoupon)
* [removeCoupon](#removecoupon)
* [updateCartMeta](#updatecartmeta)
* [getCartShareLink](#getcartsharelink)
* [getCartSharedItems](#getcartshareditems)
* [updateCartWithSharedItems](#updatecartwithshareditems)


Discount and Reward Points Handling
* [getBulkDiscountOffers](#getbulkdiscountoffers)
* [applyRewardPoints](#applyrewardpoints)


Address management
* [getAddresses](#getaddresses)
* [addAddress](#addaddress)
* [getAddressById](#getaddressbyid)
* [updateAddress](#updateaddress)
* [removeAddress](#removeaddress)
* [selectAddress](#selectaddress)


Payment and Coupon Validation
* [selectPaymentMode](#selectpaymentmode)
* [validateCouponForPayment](#validatecouponforpayment)


Shipment Management
* [getShipments](#getshipments)
* [checkoutCart](#checkoutcart)


Promotion Offers
* [getPromotionOffers](#getpromotionoffers)
* [getLadderOffers](#getladderoffers)


Shipment and Checkout
* [checkoutCartV2](#checkoutcartv2)




## Methods with example and description



#### getCart
Retrieve cart details.




```swift
applicationClient.cart.getCart(id: id, i: i, b: b, c: c, assignCardId: assignCardId, areaCode: areaCode, buyNow: buyNow) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String? | no | The unique identifier of the cart |   
| i | Bool? | no | This is a boolean value. Select `true` to retrieve all the items added in the cart. |   
| b | Bool? | no | This is a boolean value. Select `true` to retrieve the price breakup of cart items. |   
| c | Bool? | no | This is a boolean value. Select `true` to retrieve the cod charges in breakup of cart items. |   
| assignCardId | Int? | no | Token of user's debit or credit card |   
| areaCode | String? | no | Customer servicable area_code |   
| buyNow | Bool? | no | This is a boolen value. Select `true` to set/initialize buy now cart |  



Retrieve the current state and items in the shopping cart.

*Returned Response:*




[CartDetailResponse](#CartDetailResponse)

Success. Returns a Cart object. Check the example shown below or refer `CartDetailResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "applied_promo_details": [
    {
      "application_id": "000000000000000000000001",
      "apply_all_offers": false,
      "apply_exclusive": null,
      "buy_article_dict": {
        "rule#1": {
          "633527e850dfb8e73e6de996_0": {
            "added_in_cart": false,
            "added_quantity": 0,
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
            "article_id": "633527e850dfb8e73e6de996",
            "article_index": "0",
            "article_meta": {
              "article_id": "633527e850dfb8e73e6de996",
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
                "width": 70,
                "unit": "cm",
                "height": 70,
                "is_default": true,
                "length": 70
              },
              "fragile": false,
              "manufacturer": {
                "address": "10, PALI MALA RD, ADARSH NAGAR, BANDRA WEST,, MAHARASHTRA, MUMBAI",
                "name": "Sabki Shop",
                "is_default": true
              },
              "weight": {
                "shipping": 250,
                "unit": "gram",
                "is_default": true
              },
              "raw_meta": {
                "fynd_identifier": "4187_3412343256098",
                "is_set_article": false,
                "set_quantity": 1
              },
              "is_set": false,
              "set": {},
              "identifier": {
                "ean": "3412343256098"
              },
              "hsn_code": null,
              "hsn_code_id": "625fbd96faeed8b3df6ec3ce",
              "raw_price": {
                "effective": {
                  "conversion_rate": 1,
                  "currency_code": "INR",
                  "currency_symbol": "₹",
                  "floor_source_value": 3899,
                  "floor_value": 3899,
                  "source_currency_code": "INR",
                  "source_currency_symbol": "₹",
                  "source_value": 3899,
                  "value": 3899
                },
                "marked": {
                  "conversion_rate": 1,
                  "currency_code": "INR",
                  "currency_symbol": "₹",
                  "floor_source_value": 3899,
                  "floor_value": 3899,
                  "source_currency_code": "INR",
                  "source_currency_symbol": "₹",
                  "source_value": 3899,
                  "value": 3899
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
              "seller_identifier": "3412343256098",
              "_custom_json": {},
              "tags": [],
              "return_config": {
                "time": 0,
                "unit": "days",
                "returnable": false
              }
            },
            "attributes": {
              "essential": "No",
              "item_code": "BSFJ2-12608",
              "gender": [
                "Men"
              ],
              "denim_type": "Solid",
              "pattern": "Solid",
              "product_fit": "Slim",
              "currency": "INR",
              "media": [
                {
                  "type": "image",
                  "meta": {
                    "brand": "nike",
                    "item_code": "BSFJ2-12608",
                    "sequence": 0
                  },
                  "url": "https://hdn-1.addsale.com/addsale/products/pictures/item/free/original/nike/BSFJ2-12608/0/jMpkpyx17w-GWQjymow3-Black-Slim-Fit-Jeans.jpeg"
                }
              ],
              "name": "Nike Jeans 12608",
              "brand_name": "Nike"
            },
            "avl_qty": 97,
            "brand_id": 18,
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
              150
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
            "company_id": 2,
            "company_info": {
              "company_id": 2,
              "c_name": "Sabki Shop",
              "c_taxes": [
                {
                  "rate": 15,
                  "enable": true,
                  "effective_date": "2022-06-05T18:29:23.904Z"
                }
              ],
              "company_cin": "U45200MH1992PTC066474"
            },
            "company_taxes": [
              {
                "rate": 15,
                "enable": true,
                "effective_date": "2022-06-05T18:29:23.904Z"
              }
            ],
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
            "currency_dict": {
              "code": "INR",
              "rate": 1
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
            "gst_amount": 167.1,
            "gst_tax_percentage": 5,
            "hsn_code": null,
            "hsn_code_id": "625fbd96faeed8b3df6ec3ce",
            "identifiers": {
              "identifier": "BDnwAINORr6SlTKxZN3w"
            },
            "image_nature": "standard",
            "include": true,
            "is_valid": true,
            "item_id": 75660796,
            "item_size": "34",
            "last_update_at": 1680852767,
            "meta": {},
            "net_price": {
              "conversion_rate": 1,
              "currency_code": "INR",
              "currency_symbol": "₹",
              "floor_source_value": 3509.1,
              "floor_value": 3509.1,
              "source_currency_code": "INR",
              "source_currency_symbol": "₹",
              "source_value": 3509.1,
              "value": 3509.1
            },
            "old_price": {
              "conversion_rate": 1,
              "currency_code": "INR",
              "currency_symbol": "₹",
              "floor_source_value": 3899,
              "floor_value": 3899,
              "source_currency_code": "INR",
              "source_currency_symbol": "₹",
              "source_value": 3899,
              "value": 3899
            },
            "original_price_effective": {
              "conversion_rate": 1,
              "currency_code": "INR",
              "currency_symbol": "₹",
              "floor_source_value": 3899,
              "floor_value": 3899,
              "source_currency_code": "INR",
              "source_currency_symbol": "₹",
              "source_value": 3899,
              "value": 3899
            },
            "original_unit_price": {
              "conversion_rate": 1,
              "currency_code": "INR",
              "currency_symbol": "₹",
              "floor_source_value": 3899,
              "floor_value": 3899,
              "source_currency_code": "INR",
              "source_currency_symbol": "₹",
              "source_value": 3899,
              "value": 3899
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
              "floor_source_value": 3899,
              "floor_value": 3899,
              "source_currency_code": "INR",
              "source_currency_symbol": "₹",
              "source_value": 3899,
              "value": 3899
            },
            "price_effective": {
              "conversion_rate": 1,
              "currency_code": "INR",
              "currency_symbol": "₹",
              "floor_source_value": 3899,
              "floor_value": 3899,
              "source_currency_code": "INR",
              "source_currency_symbol": "₹",
              "source_value": 3899,
              "value": 3899
            },
            "price_marked": {
              "conversion_rate": 1,
              "currency_code": "INR",
              "currency_symbol": "₹",
              "floor_source_value": 3899,
              "floor_value": 3899,
              "source_currency_code": "INR",
              "source_currency_symbol": "₹",
              "source_value": 3899,
              "value": 3899
            },
            "product_tags": [],
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
                    "floor_source_value": 389.9,
                    "floor_value": 389.9,
                    "source_currency_code": "INR",
                    "source_currency_symbol": "₹",
                    "source_value": 389.9,
                    "value": 389.9
                  },
                  "applied_discounts": [
                    {
                      "type": "percentage",
                      "value": 10
                    }
                  ],
                  "applied_free_articles": [],
                  "apply_exclusive": null,
                  "article_quantity": 1,
                  "buy_rules": [
                    {
                      "all_items": null,
                      "cart_conditions": {},
                      "item_criteria": {
                        "item_brand": [
                          18
                        ]
                      },
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
                        "discount_percentage": 10
                      },
                      "raw_offer": {
                        "item_criteria": {
                          "buy_rules": [
                            "rule#1"
                          ]
                        },
                        "buy_condition": "( rule#1 )",
                        "discount_type": "percentage",
                        "offer": {
                          "discount_percentage": 10
                        }
                      },
                      "type": "percentage"
                    }
                  ],
                  "mrp_promo": false,
                  "offer_text": "10% of on NIKE Jeans",
                  "ownership": {
                    "payable_category": "seller",
                    "payable_by": ""
                  },
                  "payable_category": "seller",
                  "promo_code": null,
                  "promo_id": "642fe329ed159b7aa743a293",
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
              "floor_source_value": 3899,
              "floor_value": 3899,
              "source_currency_code": "INR",
              "source_currency_symbol": "₹",
              "source_value": 3899,
              "value": 3899
            },
            "service_item_meta": {
              "product_group_tags": null,
              "products": null
            },
            "size_level_total_qty": 1,
            "sizes": [
              "34"
            ],
            "split_article_id": "633527e850dfb8e73e6de996_0",
            "split_index": 0,
            "store_id": 4187,
            "store_info": {
              "store_id": 4187,
              "s_city": "HYDERABAD",
              "store_name": "AND Inorbit Hyderabad",
              "store_type": "mall",
              "store_pincode": 500081,
              "latitude": 17.4343693,
              "longitude": 78.3866087
            },
            "strategy_validation_data": {},
            "tags": [
              "rule#1"
            ],
            "total_gst_amount": 167.1,
            "total_value_of_good": 3342,
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
              "floor_source_value": 3509.1,
              "floor_value": 3509.1,
              "source_currency_code": "INR",
              "source_currency_symbol": "₹",
              "source_value": 3509.1,
              "value": 3509.1
            },
            "valid_inventory": true,
            "value_of_good": 3342,
            "verify_article": false
          }
        }
      },
      "buy_rules": [
        {
          "all_items": null,
          "cart_conditions": {},
          "item_criteria": {
            "item_brand": [
              18
            ]
          },
          "mrp_promo": false,
          "slug": "rule#1"
        }
      ],
      "buy_rules_map": {
        "rule#1": {
          "item_brand": [
            18
          ]
        }
      },
      "calculate_on": "esp",
      "cancellation_allowed": true,
      "code": null,
      "discount": 389.9,
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
            "discount_percentage": 10
          },
          "raw_offer": {
            "item_criteria": {
              "buy_rules": [
                "rule#1"
              ]
            },
            "buy_condition": "( rule#1 )",
            "discount_type": "percentage",
            "offer": {
              "discount_percentage": 10
            }
          },
          "type": "percentage"
        }
      ],
      "id": "642fe329ed159b7aa743a293",
      "mrp_promo": false,
      "offer_text": "10% of on NIKE Jeans",
      "ownership": {
        "payable_category": "seller",
        "payable_by": ""
      },
      "payable_category": "seller",
      "priority": 1,
      "promo_group": "product",
      "remaining_allowed_qty": null,
      "restrictions": {
        "uses": {
          "maximum": {
            "user": 0,
            "total": 0
          },
          "remaining": {
            "user": 0,
            "total": 0
          }
        },
        "user_groups": [],
        "post_order": {
          "return_allowed": true,
          "cancellation_allowed": true
        },
        "user_id": [],
        "payments": [],
        "user_registered": {
          "start": null,
          "end": null
        },
        "platforms": [
          "web",
          "android",
          "ios"
        ],
        "anonymous_users": true
      },
      "return_allowed": true,
      "stackable": true,
      "type": "percentage",
      "usage_meta": null
    }
  ],
  "items": [
    {
      "identifiers": {},
      "bulk_offer": {},
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
      "discount": "67% OFF",
      "moq": {},
      "article": {
        "type": "article",
        "tags": [],
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
      "charges": [
        {
          "type": "convenience fee",
          "name": "convenience fee",
          "code": "convenience fee",
          "amount": {
            "value": 10,
            "currency": "INR"
          },
          "meta": {
            "price_adjustment_id": "64c22d66fe278c0796bd8e4d",
            "article_level_distribution": true
          }
        }
      ],
      "availability": {
        "available_sizes": [
          {
            "is_available": true,
            "display": "OS",
            "value": "OS"
          }
        ],
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
      "mop_total": 0,
      "total_charge": 10,
      "subtotal": 999,
      "total": 999,
      "vog": 951.43,
      "you_saved": 0
    },
    "coupon": {
      "type": "cash",
      "code": "",
      "uid": "",
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
  "gstin": "",
  "checkout_mode": "self",
  "restrict_checkout": false,
  "is_valid": true,
  "last_modified": "2020-03-09T00:00:00.000Z"
}
```
</details>









---


#### getCartLastModified
Cart modification time.




```swift
applicationClient.cart.getCartLastModified(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String? | no |  |  



Gets the last modified timestamp for the cart.

*Returned Response:*








---


#### addItems
Add to cart.




```swift
applicationClient.cart.addItems(i: i, b: b, areaCode: areaCode, buyNow: buyNow, id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| i | Bool? | no | This is a boolean value. Select `true` to retrieve all the items added in the cart. |   
| b | Bool? | no | This is a boolean value. Select `true` to retrieve the price breakup of cart items. |   
| areaCode | String? | no | Customer servicable area_code |   
| buyNow | Bool? | no | This is a boolen value. Select `true` to set/initialize buy now cart |   
| id | String? | no | The unique identifier of the cart |  
| body | AddCartRequest | yes | Request body |


Adds selected items to the shopping cart.

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
      "applied_promo_details": [
        {
          "application_id": "000000000000000000000001",
          "apply_all_offers": false,
          "apply_exclusive": null,
          "buy_article_dict": {
            "rule#1": {
              "633527e850dfb8e73e6de996_0": {
                "added_in_cart": false,
                "added_quantity": 0,
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
                "article_id": "633527e850dfb8e73e6de996",
                "article_index": "0",
                "article_meta": {
                  "article_id": "633527e850dfb8e73e6de996",
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
                    "width": 70,
                    "unit": "cm",
                    "height": 70,
                    "is_default": true,
                    "length": 70
                  },
                  "fragile": false,
                  "manufacturer": {
                    "address": "10, PALI MALA RD, ADARSH NAGAR, BANDRA WEST,, MAHARASHTRA, MUMBAI",
                    "name": "Sabki Shop",
                    "is_default": true
                  },
                  "weight": {
                    "shipping": 250,
                    "unit": "gram",
                    "is_default": true
                  },
                  "raw_meta": {
                    "fynd_identifier": "4187_3412343256098",
                    "is_set_article": false,
                    "set_quantity": 1
                  },
                  "is_set": false,
                  "set": {},
                  "identifier": {
                    "ean": "3412343256098"
                  },
                  "hsn_code": null,
                  "hsn_code_id": "625fbd96faeed8b3df6ec3ce",
                  "raw_price": {
                    "effective": {
                      "conversion_rate": 1,
                      "currency_code": "INR",
                      "currency_symbol": "₹",
                      "floor_source_value": 3899,
                      "floor_value": 3899,
                      "source_currency_code": "INR",
                      "source_currency_symbol": "₹",
                      "source_value": 3899,
                      "value": 3899
                    },
                    "marked": {
                      "conversion_rate": 1,
                      "currency_code": "INR",
                      "currency_symbol": "₹",
                      "floor_source_value": 3899,
                      "floor_value": 3899,
                      "source_currency_code": "INR",
                      "source_currency_symbol": "₹",
                      "source_value": 3899,
                      "value": 3899
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
                  "seller_identifier": "3412343256098",
                  "_custom_json": {},
                  "tags": [],
                  "return_config": {
                    "time": 0,
                    "unit": "days",
                    "returnable": false
                  }
                },
                "attributes": {
                  "essential": "No",
                  "item_code": "BSFJ2-12608",
                  "gender": [
                    "Men"
                  ],
                  "denim_type": "Solid",
                  "pattern": "Solid",
                  "product_fit": "Slim",
                  "currency": "INR",
                  "media": [
                    {
                      "type": "image",
                      "meta": {
                        "brand": "nike",
                        "item_code": "BSFJ2-12608",
                        "sequence": 0
                      },
                      "url": "https://hdn-1.addsale.com/addsale/products/pictures/item/free/original/nike/BSFJ2-12608/0/jMpkpyx17w-GWQjymow3-Black-Slim-Fit-Jeans.jpeg"
                    }
                  ],
                  "name": "Nike Jeans 12608",
                  "brand_name": "Nike"
                },
                "avl_qty": 97,
                "brand_id": 18,
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
                  150
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
                "company_id": 2,
                "company_info": {
                  "company_id": 2,
                  "c_name": "Sabki Shop",
                  "c_taxes": [
                    {
                      "rate": 15,
                      "enable": true,
                      "effective_date": "2022-06-05T18:29:23.904Z"
                    }
                  ],
                  "company_cin": "U45200MH1992PTC066474"
                },
                "company_taxes": [
                  {
                    "rate": 15,
                    "enable": true,
                    "effective_date": "2022-06-05T18:29:23.904Z"
                  }
                ],
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
                "currency_dict": {
                  "code": "INR",
                  "rate": 1
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
                "gst_amount": 167.1,
                "gst_tax_percentage": 5,
                "hsn_code": null,
                "hsn_code_id": "625fbd96faeed8b3df6ec3ce",
                "identifiers": {
                  "identifier": "BDnwAINORr6SlTKxZN3w"
                },
                "image_nature": "standard",
                "include": true,
                "is_valid": true,
                "item_id": 75660796,
                "item_size": "34",
                "last_update_at": 1680852767,
                "meta": {},
                "net_price": {
                  "conversion_rate": 1,
                  "currency_code": "INR",
                  "currency_symbol": "₹",
                  "floor_source_value": 3509.1,
                  "floor_value": 3509.1,
                  "source_currency_code": "INR",
                  "source_currency_symbol": "₹",
                  "source_value": 3509.1,
                  "value": 3509.1
                },
                "old_price": {
                  "conversion_rate": 1,
                  "currency_code": "INR",
                  "currency_symbol": "₹",
                  "floor_source_value": 3899,
                  "floor_value": 3899,
                  "source_currency_code": "INR",
                  "source_currency_symbol": "₹",
                  "source_value": 3899,
                  "value": 3899
                },
                "original_price_effective": {
                  "conversion_rate": 1,
                  "currency_code": "INR",
                  "currency_symbol": "₹",
                  "floor_source_value": 3899,
                  "floor_value": 3899,
                  "source_currency_code": "INR",
                  "source_currency_symbol": "₹",
                  "source_value": 3899,
                  "value": 3899
                },
                "original_unit_price": {
                  "conversion_rate": 1,
                  "currency_code": "INR",
                  "currency_symbol": "₹",
                  "floor_source_value": 3899,
                  "floor_value": 3899,
                  "source_currency_code": "INR",
                  "source_currency_symbol": "₹",
                  "source_value": 3899,
                  "value": 3899
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
                  "floor_source_value": 3899,
                  "floor_value": 3899,
                  "source_currency_code": "INR",
                  "source_currency_symbol": "₹",
                  "source_value": 3899,
                  "value": 3899
                },
                "price_effective": {
                  "conversion_rate": 1,
                  "currency_code": "INR",
                  "currency_symbol": "₹",
                  "floor_source_value": 3899,
                  "floor_value": 3899,
                  "source_currency_code": "INR",
                  "source_currency_symbol": "₹",
                  "source_value": 3899,
                  "value": 3899
                },
                "price_marked": {
                  "conversion_rate": 1,
                  "currency_code": "INR",
                  "currency_symbol": "₹",
                  "floor_source_value": 3899,
                  "floor_value": 3899,
                  "source_currency_code": "INR",
                  "source_currency_symbol": "₹",
                  "source_value": 3899,
                  "value": 3899
                },
                "product_tags": [],
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
                        "floor_source_value": 389.9,
                        "floor_value": 389.9,
                        "source_currency_code": "INR",
                        "source_currency_symbol": "₹",
                        "source_value": 389.9,
                        "value": 389.9
                      },
                      "applied_discounts": [
                        {
                          "type": "percentage",
                          "value": 10
                        }
                      ],
                      "applied_free_articles": [],
                      "apply_exclusive": null,
                      "article_quantity": 1,
                      "buy_rules": [
                        {
                          "all_items": null,
                          "cart_conditions": {},
                          "item_criteria": {
                            "item_brand": [
                              18
                            ]
                          },
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
                            "discount_percentage": 10
                          },
                          "raw_offer": {
                            "item_criteria": {
                              "buy_rules": [
                                "rule#1"
                              ]
                            },
                            "buy_condition": "( rule#1 )",
                            "discount_type": "percentage",
                            "offer": {
                              "discount_percentage": 10
                            }
                          },
                          "type": "percentage"
                        }
                      ],
                      "mrp_promo": false,
                      "offer_text": "10% of on NIKE Jeans",
                      "ownership": {
                        "payable_category": "seller",
                        "payable_by": ""
                      },
                      "payable_category": "seller",
                      "promo_code": null,
                      "promo_id": "642fe329ed159b7aa743a293",
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
                  "floor_source_value": 3899,
                  "floor_value": 3899,
                  "source_currency_code": "INR",
                  "source_currency_symbol": "₹",
                  "source_value": 3899,
                  "value": 3899
                },
                "service_item_meta": {
                  "product_group_tags": null,
                  "products": null
                },
                "size_level_total_qty": 1,
                "sizes": [
                  "34"
                ],
                "split_article_id": "633527e850dfb8e73e6de996_0",
                "split_index": 0,
                "store_id": 4187,
                "store_info": {
                  "store_id": 4187,
                  "s_city": "HYDERABAD",
                  "store_name": "AND Inorbit Hyderabad",
                  "store_type": "mall",
                  "store_pincode": 500081,
                  "latitude": 17.4343693,
                  "longitude": 78.3866087
                },
                "strategy_validation_data": {},
                "tags": [
                  "rule#1"
                ],
                "total_gst_amount": 167.1,
                "total_value_of_good": 3342,
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
                  "floor_source_value": 3509.1,
                  "floor_value": 3509.1,
                  "source_currency_code": "INR",
                  "source_currency_symbol": "₹",
                  "source_value": 3509.1,
                  "value": 3509.1
                },
                "valid_inventory": true,
                "value_of_good": 3342,
                "verify_article": false
              }
            }
          },
          "buy_rules": [
            {
              "all_items": null,
              "cart_conditions": {},
              "item_criteria": {
                "item_brand": [
                  18
                ]
              },
              "mrp_promo": false,
              "slug": "rule#1"
            }
          ],
          "buy_rules_map": {
            "rule#1": {
              "item_brand": [
                18
              ]
            }
          },
          "calculate_on": "esp",
          "cancellation_allowed": true,
          "code": null,
          "discount": 389.9,
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
                "discount_percentage": 10
              },
              "raw_offer": {
                "item_criteria": {
                  "buy_rules": [
                    "rule#1"
                  ]
                },
                "buy_condition": "( rule#1 )",
                "discount_type": "percentage",
                "offer": {
                  "discount_percentage": 10
                }
              },
              "type": "percentage"
            }
          ],
          "id": "642fe329ed159b7aa743a293",
          "mrp_promo": false,
          "offer_text": "10% of on NIKE Jeans",
          "ownership": {
            "payable_category": "seller",
            "payable_by": ""
          },
          "payable_category": "seller",
          "priority": 1,
          "promo_group": "product",
          "remaining_allowed_qty": null,
          "restrictions": {
            "uses": {
              "maximum": {
                "user": 0,
                "total": 0
              },
              "remaining": {
                "user": 0,
                "total": 0
              }
            },
            "user_groups": [],
            "post_order": {
              "return_allowed": true,
              "cancellation_allowed": true
            },
            "user_id": [],
            "payments": [],
            "user_registered": {
              "start": null,
              "end": null
            },
            "platforms": [
              "web",
              "android",
              "ios"
            ],
            "anonymous_users": true
          },
          "return_allowed": true,
          "stackable": true,
          "type": "percentage",
          "usage_meta": null
        }
      ],
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
          "mop_total": 0,
          "total_charge": 10,
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
          "uid": "",
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
          "identifiers": {},
          "moq": {},
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
          "charges": [
            {
              "type": "convenience fee",
              "name": "convenience fee",
              "code": "convenience fee",
              "amount": {
                "value": 10,
                "currency": "INR"
              },
              "meta": {
                "price_adjustment_id": "64c22d66fe278c0796bd8e4d",
                "article_level_distribution": true
              }
            }
          ],
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
            "available_sizes": [
              {
                "is_available": true,
                "display": "OS",
                "value": "OS"
              }
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
          "moq": {},
          "identifiers": {},
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
          "charges": [
            {
              "type": "convenience fee",
              "name": "convenience fee",
              "code": "convenience fee",
              "amount": {
                "value": 10,
                "currency": "INR"
              },
              "meta": {
                "price_adjustment_id": "64c22d66fe278c0796bd8e4d",
                "article_level_distribution": true
              }
            }
          ],
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
            "available_sizes": [
              {
                "is_available": true,
                "display": "OS",
                "value": "OS"
              }
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
          "moq": {},
          "identifiers": {},
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
          "charges": [
            {
              "type": "convenience fee",
              "name": "convenience fee",
              "code": "convenience fee",
              "amount": {
                "value": 10,
                "currency": "INR"
              },
              "meta": {
                "price_adjustment_id": "64c22d66fe278c0796bd8e4d",
                "article_level_distribution": true
              }
            }
          ],
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
            "available_sizes": [
              {
                "is_available": true,
                "display": "OS",
                "value": "OS"
              }
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
          "moq": {},
          "identifiers": {},
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
          "charges": [
            {
              "type": "convenience fee",
              "name": "convenience fee",
              "code": "convenience fee",
              "amount": {
                "value": 10,
                "currency": "INR"
              },
              "meta": {
                "price_adjustment_id": "64c22d66fe278c0796bd8e4d",
                "article_level_distribution": true
              }
            }
          ],
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
            "available_sizes": [
              {
                "is_available": true,
                "display": "OS",
                "value": "OS"
              }
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
      "gstin": "",
      "checkout_mode": "self",
      "last_modified": "2020-03-09T00:00:00.000Z",
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
          "gift_card": 0,
          "coupon": 0,
          "delivery_charge": 0,
          "discount": -202000,
          "fynd_cash": 0,
          "gst_charges": 4804.71,
          "mrp_total": 302899,
          "mop_total": 0,
          "total_charge": 10,
          "subtotal": 100899,
          "total": 100899,
          "vog": 96094.29,
          "you_saved": 0
        },
        "coupon": {
          "type": "cash",
          "code": "",
          "uid": "",
          "value": 0,
          "is_applied": false,
          "message": "Sorry! Invalid Coupon"
        },
        "display": [
          {
            "display": "Gift Card",
            "key": "gift_card",
            "value": 0,
            "currency_code": "INR"
          },
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
          "identifiers": {},
          "article": {
            "type": "article",
            "is_gift_visible": true,
            "gift_card": {
              "display_text": "",
              "price": 30,
              "gift_message": "",
              "is_gift_applied": true
            },
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
          "charges": [
            {
              "type": "convenience fee",
              "name": "convenience fee",
              "code": "convenience fee",
              "amount": {
                "value": 10,
                "currency": "INR"
              },
              "meta": {
                "price_adjustment_id": "64c22d66fe278c0796bd8e4d",
                "article_level_distribution": true
              }
            }
          ],
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
      "gstin": "",
      "checkout_mode": "self",
      "restrict_checkout": false,
      "is_valid": false,
      "last_modified": "2020-03-09T00:00:00.000Z"
    },
    "result": {}
  }
}
```
</details>

</details>









---


#### updateCart
Update cart.




```swift
applicationClient.cart.updateCart(id: id, i: i, b: b, areaCode: areaCode, buyNow: buyNow, cartType: cartType, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String? | no | The unique identifier of the cart |   
| i | Bool? | no | This is a boolean value. Select `true` to retrieve all the items added in the cart. |   
| b | Bool? | no | This is a boolean value. Select `true` to retrieve the price breakup of cart items. |   
| areaCode | String? | no | Customer servicable area_code |   
| buyNow | Bool? | no | This is a boolen value. Select `true` to set/initialize buy now cart |   
| cartType | String? | no | The type of cart |  
| body | UpdateCartRequest | yes | Request body |


Modifies items and quantities in the existing cart.

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
          "gift_card": 30,
          "coupon": 0,
          "delivery_charge": 0,
          "discount": -202000,
          "fynd_cash": 0,
          "gst_charges": 4804.71,
          "mrp_total": 302899,
          "mop_total": 0,
          "total_charge": 10,
          "subtotal": 100899,
          "total": 100899,
          "vog": 96094.29,
          "you_saved": 0
        },
        "coupon": {
          "type": "cash",
          "code": "",
          "uid": "",
          "value": 0,
          "is_applied": false,
          "message": "Sorry! Invalid Coupon"
        },
        "display": [
          {
            "display": "Gift Card",
            "key": "gift_card",
            "value": 30,
            "currency_code": "INR"
          },
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
          "identifiers": {},
          "article": {
            "type": "article",
            "is_gift_visible": true,
            "gift_card": {
              "display_text": "",
              "price": 30,
              "gift_message": "",
              "is_gift_applied": true
            },
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
          "charges": [
            {
              "type": "convenience fee",
              "name": "convenience fee",
              "code": "convenience fee",
              "amount": {
                "value": 10,
                "currency": "INR"
              },
              "meta": {
                "price_adjustment_id": "64c22d66fe278c0796bd8e4d",
                "article_level_distribution": true
              }
            }
          ],
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
      "gstin": "",
      "checkout_mode": "self",
      "restrict_checkout": false,
      "is_valid": true,
      "last_modified": "2020-03-09T00:00:00.000Z"
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
      "applied_promo_details": [
        {
          "application_id": "000000000000000000000001",
          "apply_all_offers": false,
          "apply_exclusive": null,
          "buy_article_dict": {
            "rule#1": {
              "633527e850dfb8e73e6de996_0": {
                "added_in_cart": false,
                "added_quantity": 0,
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
                "article_id": "633527e850dfb8e73e6de996",
                "article_index": "0",
                "article_meta": {
                  "article_id": "633527e850dfb8e73e6de996",
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
                    "width": 70,
                    "unit": "cm",
                    "height": 70,
                    "is_default": true,
                    "length": 70
                  },
                  "fragile": false,
                  "manufacturer": {
                    "address": "10, PALI MALA RD, ADARSH NAGAR, BANDRA WEST,, MAHARASHTRA, MUMBAI",
                    "name": "Sabki Shop",
                    "is_default": true
                  },
                  "weight": {
                    "shipping": 250,
                    "unit": "gram",
                    "is_default": true
                  },
                  "raw_meta": {
                    "fynd_identifier": "4187_3412343256098",
                    "is_set_article": false,
                    "set_quantity": 1
                  },
                  "is_set": false,
                  "set": {},
                  "identifier": {
                    "ean": "3412343256098"
                  },
                  "hsn_code": null,
                  "hsn_code_id": "625fbd96faeed8b3df6ec3ce",
                  "raw_price": {
                    "effective": {
                      "conversion_rate": 1,
                      "currency_code": "INR",
                      "currency_symbol": "₹",
                      "floor_source_value": 3899,
                      "floor_value": 3899,
                      "source_currency_code": "INR",
                      "source_currency_symbol": "₹",
                      "source_value": 3899,
                      "value": 3899
                    },
                    "marked": {
                      "conversion_rate": 1,
                      "currency_code": "INR",
                      "currency_symbol": "₹",
                      "floor_source_value": 3899,
                      "floor_value": 3899,
                      "source_currency_code": "INR",
                      "source_currency_symbol": "₹",
                      "source_value": 3899,
                      "value": 3899
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
                  "seller_identifier": "3412343256098",
                  "_custom_json": {},
                  "tags": [],
                  "return_config": {
                    "time": 0,
                    "unit": "days",
                    "returnable": false
                  }
                },
                "attributes": {
                  "essential": "No",
                  "item_code": "BSFJ2-12608",
                  "gender": [
                    "Men"
                  ],
                  "denim_type": "Solid",
                  "pattern": "Solid",
                  "product_fit": "Slim",
                  "currency": "INR",
                  "media": [
                    {
                      "type": "image",
                      "meta": {
                        "brand": "nike",
                        "item_code": "BSFJ2-12608",
                        "sequence": 0
                      },
                      "url": "https://hdn-1.addsale.com/addsale/products/pictures/item/free/original/nike/BSFJ2-12608/0/jMpkpyx17w-GWQjymow3-Black-Slim-Fit-Jeans.jpeg"
                    }
                  ],
                  "name": "Nike Jeans 12608",
                  "brand_name": "Nike"
                },
                "avl_qty": 97,
                "brand_id": 18,
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
                  150
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
                "company_id": 2,
                "company_info": {
                  "company_id": 2,
                  "c_name": "Sabki Shop",
                  "c_taxes": [
                    {
                      "rate": 15,
                      "enable": true,
                      "effective_date": "2022-06-05T18:29:23.904Z"
                    }
                  ],
                  "company_cin": "U45200MH1992PTC066474"
                },
                "company_taxes": [
                  {
                    "rate": 15,
                    "enable": true,
                    "effective_date": "2022-06-05T18:29:23.904Z"
                  }
                ],
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
                "currency_dict": {
                  "code": "INR",
                  "rate": 1
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
                "gst_amount": 167.1,
                "gst_tax_percentage": 5,
                "hsn_code": null,
                "hsn_code_id": "625fbd96faeed8b3df6ec3ce",
                "identifiers": {
                  "identifier": "BDnwAINORr6SlTKxZN3w"
                },
                "image_nature": "standard",
                "include": true,
                "is_valid": true,
                "item_id": 75660796,
                "item_size": "34",
                "last_update_at": 1680852767,
                "meta": {},
                "net_price": {
                  "conversion_rate": 1,
                  "currency_code": "INR",
                  "currency_symbol": "₹",
                  "floor_source_value": 3509.1,
                  "floor_value": 3509.1,
                  "source_currency_code": "INR",
                  "source_currency_symbol": "₹",
                  "source_value": 3509.1,
                  "value": 3509.1
                },
                "old_price": {
                  "conversion_rate": 1,
                  "currency_code": "INR",
                  "currency_symbol": "₹",
                  "floor_source_value": 3899,
                  "floor_value": 3899,
                  "source_currency_code": "INR",
                  "source_currency_symbol": "₹",
                  "source_value": 3899,
                  "value": 3899
                },
                "original_price_effective": {
                  "conversion_rate": 1,
                  "currency_code": "INR",
                  "currency_symbol": "₹",
                  "floor_source_value": 3899,
                  "floor_value": 3899,
                  "source_currency_code": "INR",
                  "source_currency_symbol": "₹",
                  "source_value": 3899,
                  "value": 3899
                },
                "original_unit_price": {
                  "conversion_rate": 1,
                  "currency_code": "INR",
                  "currency_symbol": "₹",
                  "floor_source_value": 3899,
                  "floor_value": 3899,
                  "source_currency_code": "INR",
                  "source_currency_symbol": "₹",
                  "source_value": 3899,
                  "value": 3899
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
                  "floor_source_value": 3899,
                  "floor_value": 3899,
                  "source_currency_code": "INR",
                  "source_currency_symbol": "₹",
                  "source_value": 3899,
                  "value": 3899
                },
                "price_effective": {
                  "conversion_rate": 1,
                  "currency_code": "INR",
                  "currency_symbol": "₹",
                  "floor_source_value": 3899,
                  "floor_value": 3899,
                  "source_currency_code": "INR",
                  "source_currency_symbol": "₹",
                  "source_value": 3899,
                  "value": 3899
                },
                "price_marked": {
                  "conversion_rate": 1,
                  "currency_code": "INR",
                  "currency_symbol": "₹",
                  "floor_source_value": 3899,
                  "floor_value": 3899,
                  "source_currency_code": "INR",
                  "source_currency_symbol": "₹",
                  "source_value": 3899,
                  "value": 3899
                },
                "product_tags": [],
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
                        "floor_source_value": 389.9,
                        "floor_value": 389.9,
                        "source_currency_code": "INR",
                        "source_currency_symbol": "₹",
                        "source_value": 389.9,
                        "value": 389.9
                      },
                      "applied_discounts": [
                        {
                          "type": "percentage",
                          "value": 10
                        }
                      ],
                      "applied_free_articles": [],
                      "apply_exclusive": null,
                      "article_quantity": 1,
                      "buy_rules": [
                        {
                          "all_items": null,
                          "cart_conditions": {},
                          "item_criteria": {
                            "item_brand": [
                              18
                            ]
                          },
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
                            "discount_percentage": 10
                          },
                          "raw_offer": {
                            "item_criteria": {
                              "buy_rules": [
                                "rule#1"
                              ]
                            },
                            "buy_condition": "( rule#1 )",
                            "discount_type": "percentage",
                            "offer": {
                              "discount_percentage": 10
                            }
                          },
                          "type": "percentage"
                        }
                      ],
                      "mrp_promo": false,
                      "offer_text": "10% of on NIKE Jeans",
                      "ownership": {
                        "payable_category": "seller",
                        "payable_by": ""
                      },
                      "payable_category": "seller",
                      "promo_code": null,
                      "promo_id": "642fe329ed159b7aa743a293",
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
                  "floor_source_value": 3899,
                  "floor_value": 3899,
                  "source_currency_code": "INR",
                  "source_currency_symbol": "₹",
                  "source_value": 3899,
                  "value": 3899
                },
                "service_item_meta": {
                  "product_group_tags": null,
                  "products": null
                },
                "size_level_total_qty": 1,
                "sizes": [
                  "34"
                ],
                "split_article_id": "633527e850dfb8e73e6de996_0",
                "split_index": 0,
                "store_id": 4187,
                "store_info": {
                  "store_id": 4187,
                  "s_city": "HYDERABAD",
                  "store_name": "AND Inorbit Hyderabad",
                  "store_type": "mall",
                  "store_pincode": 500081,
                  "latitude": 17.4343693,
                  "longitude": 78.3866087
                },
                "strategy_validation_data": {},
                "tags": [
                  "rule#1"
                ],
                "total_gst_amount": 167.1,
                "total_value_of_good": 3342,
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
                  "floor_source_value": 3509.1,
                  "floor_value": 3509.1,
                  "source_currency_code": "INR",
                  "source_currency_symbol": "₹",
                  "source_value": 3509.1,
                  "value": 3509.1
                },
                "valid_inventory": true,
                "value_of_good": 3342,
                "verify_article": false
              }
            }
          },
          "buy_rules": [
            {
              "all_items": null,
              "cart_conditions": {},
              "item_criteria": {
                "item_brand": [
                  18
                ]
              },
              "mrp_promo": false,
              "slug": "rule#1"
            }
          ],
          "buy_rules_map": {
            "rule#1": {
              "item_brand": [
                18
              ]
            }
          },
          "calculate_on": "esp",
          "cancellation_allowed": true,
          "code": null,
          "discount": 389.9,
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
                "discount_percentage": 10
              },
              "raw_offer": {
                "item_criteria": {
                  "buy_rules": [
                    "rule#1"
                  ]
                },
                "buy_condition": "( rule#1 )",
                "discount_type": "percentage",
                "offer": {
                  "discount_percentage": 10
                }
              },
              "type": "percentage"
            }
          ],
          "id": "642fe329ed159b7aa743a293",
          "mrp_promo": false,
          "offer_text": "10% of on NIKE Jeans",
          "ownership": {
            "payable_category": "seller",
            "payable_by": ""
          },
          "payable_category": "seller",
          "priority": 1,
          "promo_group": "product",
          "remaining_allowed_qty": null,
          "restrictions": {
            "uses": {
              "maximum": {
                "user": 0,
                "total": 0
              },
              "remaining": {
                "user": 0,
                "total": 0
              }
            },
            "user_groups": [],
            "post_order": {
              "return_allowed": true,
              "cancellation_allowed": true
            },
            "user_id": [],
            "payments": [],
            "user_registered": {
              "start": null,
              "end": null
            },
            "platforms": [
              "web",
              "android",
              "ios"
            ],
            "anonymous_users": true
          },
          "return_allowed": true,
          "stackable": true,
          "type": "percentage",
          "usage_meta": null
        }
      ],
      "breakup_values": {
        "coupon": {
          "type": "cash",
          "code": "",
          "uid": "",
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
          "mop_total": 0,
          "total_charge": 10,
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
          "identifiers": {},
          "moq": {},
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
          "charges": [
            {
              "type": "convenience fee",
              "name": "convenience fee",
              "code": "convenience fee",
              "amount": {
                "value": 10,
                "currency": "INR"
              },
              "meta": {
                "price_adjustment_id": "64c22d66fe278c0796bd8e4d",
                "article_level_distribution": true
              }
            }
          ],
          "coupon_message": "",
          "availability": {
            "available_sizes": [
              {
                "is_available": true,
                "display": "OS",
                "value": "OS"
              }
            ],
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
      "gstin": "",
      "checkout_mode": "self",
      "last_modified": "2020-03-09T00:00:00.000Z",
      "restrict_checkout": false,
      "is_valid": true
    },
    "result": {
      "437414_7": {
        "success": true,
        "message": "Quantity of item updated"
      }
    },
    "message": "Quantity of item updated",
    "success": true
  }
}
```
</details>

</details>









---


#### deleteCart
Clears the cart




```swift
applicationClient.cart.deleteCart(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String? | no | The unique identifier of the cart. |  



Removes all items and resets the user's cart.

*Returned Response:*




[DeleteCartDetailResponse](#DeleteCartDetailResponse)

Success. Returns whether the cart has been deleted or not.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "cart archived"
}
```
</details>









---


#### getItemCount
Count cart items.




```swift
applicationClient.cart.getItemCount(id: id, buyNow: buyNow) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String? | no | The unique identifier of the cart. |   
| buyNow | Bool? | no |  |  



Gets the total number of items in the cart.

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
List available coupons.




```swift
applicationClient.cart.getCoupons(id: id, buyNow: buyNow, slug: slug, storeId: storeId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String? | no |  |   
| buyNow | Bool? | no |  |   
| slug | String? | no |  |   
| storeId | String? | no |  |  



Retrieve coupons that can be applied to the cart.

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
      "coupon_amount": 43.5,
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
      "coupon_amount": 43.5,
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
Apply coupon.




```swift
applicationClient.cart.applyCoupon(i: i, b: b, p: p, id: id, buyNow: buyNow, cartType: cartType, body: body) { (response, error) in
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
| cartType | String? | no |  |  
| body | ApplyCouponRequest | yes | Request body |


Applies a coupon code to get discounts on cart items.

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
      "mop_total": 0,
      "total_charge": 10,
      "subtotal": 19742.7837,
      "total": 17492.7837,
      "vog": 15353.7,
      "you_saved": 0
    },
    "coupon": {
      "type": "cash",
      "coupon_type": "percentage",
      "code": "PRISMC22250111",
      "uid": "17743",
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
      "identifiers": {},
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
      },
      "charges": [
        {
          "type": "convenience fee",
          "name": "convenience fee",
          "code": "convenience fee",
          "amount": {
            "value": 10,
            "currency": "INR"
          },
          "meta": {
            "price_adjustment_id": "64c22d66fe278c0796bd8e4d",
            "article_level_distribution": true
          }
        }
      ]
    },
    {
      "identifiers": {},
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
      },
      "charges": [
        {
          "type": "convenience fee",
          "name": "convenience fee",
          "code": "convenience fee",
          "amount": {
            "value": 10,
            "currency": "INR"
          },
          "meta": {
            "price_adjustment_id": "64c22d66fe278c0796bd8e4d",
            "article_level_distribution": true
          }
        }
      ]
    },
    {
      "identifiers": {},
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
      },
      "charges": [
        {
          "type": "convenience fee",
          "name": "convenience fee",
          "code": "convenience fee",
          "amount": {
            "value": 10,
            "currency": "INR"
          },
          "meta": {
            "price_adjustment_id": "64c22d66fe278c0796bd8e4d",
            "article_level_distribution": true
          }
        }
      ]
    },
    {
      "identifiers": {},
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
      },
      "charges": [
        {
          "type": "convenience fee",
          "name": "convenience fee",
          "code": "convenience fee",
          "amount": {
            "value": 10,
            "currency": "INR"
          },
          "meta": {
            "price_adjustment_id": "64c22d66fe278c0796bd8e4d",
            "article_level_distribution": true
          }
        }
      ]
    },
    {
      "identifiers": {},
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
      },
      "charges": [
        {
          "type": "convenience fee",
          "name": "convenience fee",
          "code": "convenience fee",
          "amount": {
            "value": 10,
            "currency": "INR"
          },
          "meta": {
            "price_adjustment_id": "64c22d66fe278c0796bd8e4d",
            "article_level_distribution": true
          }
        }
      ]
    }
  ],
  "delivery_charge_info": "",
  "coupon_text": "View all offers",
  "buy_now": false,
  "cart_id": 7927,
  "uid": "7927",
  "gstin": "",
  "checkout_mode": "self",
  "last_modified": "2020-03-09T00:00:00.000Z",
  "restrict_checkout": false,
  "is_valid": true
}
```
</details>









---


#### removeCoupon
Remove coupon.




```swift
applicationClient.cart.removeCoupon(id: id, buyNow: buyNow) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String? | no | The unique identifier of the cart |   
| buyNow | Bool? | no | This is boolean to get buy_now cart |  



Removes an applied coupon from the cart.

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
      "mop_total": 0,
      "total_charge": 10,
      "subtotal": 3199,
      "total": 3199,
      "vog": 2856.25,
      "you_saved": 0
    },
    "coupon": {
      "type": "cash",
      "code": "prismc22250111",
      "uid": "17743",
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
      "identifiers": {},
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
      },
      "charges": [
        {
          "type": "convenience fee",
          "name": "convenience fee",
          "code": "convenience fee",
          "amount": {
            "value": 10,
            "currency": "INR"
          },
          "meta": {
            "price_adjustment_id": "64c22d66fe278c0796bd8e4d",
            "article_level_distribution": true
          }
        }
      ]
    }
  ],
  "delivery_charge_info": "",
  "coupon_text": "View all offers",
  "buy_now": false,
  "cart_id": 7477,
  "uid": "7477",
  "gstin": "",
  "checkout_mode": "self",
  "last_modified": "2020-03-09T00:00:00.000Z",
  "restrict_checkout": false,
  "is_valid": true
}
```
</details>









---


#### updateCartMeta
Update cart metadata.




```swift
applicationClient.cart.updateCartMeta(id: id, buyNow: buyNow, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String? | no |  |   
| buyNow | Bool? | no |  |  
| body | CartMetaRequest | yes | Request body |


Adds or modifies metadata for the cart.

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


#### getCartShareLink
Share cart link.




```swift
applicationClient.cart.getCartShareLink(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GetShareCartLinkRequest | yes | Request body |


Generates a shareable link for the current cart.

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
Shared cart items.




```swift
applicationClient.cart.getCartSharedItems(token: token) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| token | String | yes | Token of the shared short link |  



Retrieves items from a shared cart link.

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
      "created_on": "2019-12-18T14:00:07.165Z"
    },
    "items": [
      {
        "key": "791651_6",
        "identifiers": {},
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
        "charges": [
          {
            "type": "convenience fee",
            "name": "convenience fee",
            "code": "convenience fee",
            "amount": {
              "value": 10,
              "currency": "INR"
            },
            "meta": {
              "price_adjustment_id": "64c22d66fe278c0796bd8e4d",
              "article_level_distribution": true
            }
          }
        ],
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
        "identifiers": {},
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
        "charges": [
          {
            "type": "convenience fee",
            "name": "convenience fee",
            "code": "convenience fee",
            "amount": {
              "value": 10,
              "currency": "INR"
            },
            "meta": {
              "price_adjustment_id": "64c22d66fe278c0796bd8e4d",
              "article_level_distribution": true
            }
          }
        ],
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
        "mop_total": 0,
        "total_charge": 10,
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
        "uid": "",
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
    "gstin": "",
    "comment": "",
    "checkout_mode": "self",
    "payment_selection_lock": {
      "enabled": false,
      "default_options": "COD",
      "payment_identifier": ""
    },
    "restrict_checkout": false,
    "is_valid": true,
    "last_modified": "2020-03-09T00:00:00.000Z"
  },
  "error": ""
}
```
</details>









---


#### updateCartWithSharedItems
Update with shared items.




```swift
applicationClient.cart.updateCartWithSharedItems(token: token, action: action) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| token | String | yes | Token of the shared short link |   
| action | String | yes | Operation to perform on the existing cart merge or replace. |  



Updates the cart with items from a shared link.

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
        "created_on": "2019-12-18T14:00:07.165Z"
      },
      "items": [
        {
          "key": "791651_6",
          "identifiers": {},
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
          "charges": [
            {
              "type": "convenience fee",
              "name": "convenience fee",
              "code": "convenience fee",
              "amount": {
                "value": 10,
                "currency": "INR"
              },
              "meta": {
                "price_adjustment_id": "64c22d66fe278c0796bd8e4d",
                "article_level_distribution": true
              }
            }
          ],
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
          "identifiers": {},
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
          "charges": [
            {
              "type": "convenience fee",
              "name": "convenience fee",
              "code": "convenience fee",
              "amount": {
                "value": 10,
                "currency": "INR"
              },
              "meta": {
                "price_adjustment_id": "64c22d66fe278c0796bd8e4d",
                "article_level_distribution": true
              }
            }
          ],
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
          "mop_total": 0,
          "total_charge": 10,
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
          "uid": "",
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
      "gstin": "",
      "comment": "",
      "checkout_mode": "self",
      "payment_selection_lock": {
        "enabled": false,
        "default_options": "COD",
        "payment_identifier": ""
      },
      "restrict_checkout": false,
      "is_valid": true,
      "last_modified": "2020-03-09T00:00:00.000Z"
    }
  }
}
```
</details>

</details>









---




#### getBulkDiscountOffers
Bulk discounts.




```swift
applicationClient.cart.getBulkDiscountOffers(itemId: itemId, articleId: articleId, uid: uid, slug: slug) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| itemId | Int? | no | The Item ID of the product |   
| articleId | String? | no | Article Mongo ID |   
| uid | Int? | no | UID of the product |   
| slug | String? | no | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/ |  



Lists available bulk discount offers for cart items.

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
Use reward points.




```swift
applicationClient.cart.applyRewardPoints(id: id, i: i, b: b, buyNow: buyNow, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String? | no | The unique identifier of the cart |   
| i | Bool? | no | This is a boolean value. Select `true` to retrieve all the items added in the cart. |   
| b | Bool? | no | This is a boolean value. Select `true` to retrieve the price breakup of cart items. |   
| buyNow | Bool? | no | This is boolean to get buy_now cart |  
| body | RewardPointRequest | yes | Request body |


Applies user’s reward points to the cart.

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
      "identifiers": {},
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
      "charges": [
        {
          "type": "convenience fee",
          "name": "convenience fee",
          "code": "convenience fee",
          "amount": {
            "value": 10,
            "currency": "INR"
          },
          "meta": {
            "price_adjustment_id": "64c22d66fe278c0796bd8e4d",
            "article_level_distribution": true
          }
        }
      ],
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
      "mop_total": 0,
      "total_charge": 10,
      "subtotal": 999,
      "total": 999,
      "vog": 951.43,
      "you_saved": 0
    },
    "coupon": {
      "type": "cash",
      "code": "",
      "uid": "",
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
  "gstin": "",
  "checkout_mode": "self",
  "restrict_checkout": false,
  "is_valid": true,
  "last_modified": "2020-03-09T00:00:00.000Z"
}
```
</details>









---




#### getAddresses
Get saved addresses.




```swift
applicationClient.cart.getAddresses(cartId: cartId, buyNow: buyNow, mobileNo: mobileNo, checkoutMode: checkoutMode, tags: tags, isDefault: isDefault) { (response, error) in
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



Retrieve all saved addresses for the user.

*Returned Response:*




[GetAddressesResponse](#GetAddressesResponse)

Success. Returns an Address object containing a list of address saved in the account. Refer `GetAddressesResponse` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; example1</i></summary>

```json
{
  "summary": "Address for India",
  "value": {
    "address": [
      {
        "landmark": "",
        "area_code": "8b526f521bb14a2593a8b9e3ce8c76b3",
        "id": "8b526f521bb14a2593a8b9e3ce8c76b3",
        "state": "Maharashtra",
        "meta": {},
        "user_id": "8b526f521bb14a2593a8b9e3ce8c76b3",
        "created_by_user_id": "8b526f521bb14a2593a8b9e3ce8c76b3",
        "country_code": "+91",
        "country_phone_code": "91",
        "country_iso_code": "IN",
        "phone": "9915347757",
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
        "state_code": "MH",
        "name": "abc",
        "email": "ankur@gofynd1.com",
        "address": "Megatron2",
        "_custom_json": {}
      }
    ]
  }
}
```
</details>

<details>
<summary><i>&nbsp; example2</i></summary>

```json
{
  "summary": "Address for Dubai",
  "value": {
    "address": [
      {
        "landmark": "",
        "area_code": "",
        "id": "651c0b882dbd5f702f711677",
        "state": "",
        "meta": {},
        "user_id": "8b526f521bb14a2593a8b9e3ce8c76b3",
        "created_by_user_id": "8b526f521bb14a2593a8b9e3ce8c76b3",
        "country_code": "+971",
        "country_phone_code": "+971",
        "country_iso_code": "AE",
        "phone": "551234567",
        "geo_location": {},
        "country": "United Arab Emirates",
        "is_default_address": true,
        "is_active": true,
        "city": "Sharjah",
        "sector": "Al Fisht",
        "checkout_mode": "self",
        "address_type": "home",
        "tags": [],
        "area": "Dubai Park",
        "name": "Shaikh Ahmed",
        "email": "example@gmail.com",
        "address": "B-62",
        "_custom_json": {}
      }
    ]
  }
}
```
</details>

</details>









---


#### addAddress
Add new address.




```swift
applicationClient.cart.addAddress(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | Address | yes | Request body |


Saves a new address for the user.

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
Fetch address.




```swift
applicationClient.cart.getAddressById(id: id, cartId: cartId, buyNow: buyNow, mobileNo: mobileNo, checkoutMode: checkoutMode, tags: tags, isDefault: isDefault) { (response, error) in
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



Retrieves a saved address using its ID.

*Returned Response:*




[Address](#Address)

Success. Returns an Address object containing a list of address saved in the account. Refer `Address` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "landmark": "",
  "area_code": "8b526f521bb14a2593a8b9e3ce8c76b3",
  "state": "Maharashtra",
  "meta": {},
  "user_id": "8b526f521bb14a2593a8b9e3ce8c76b3",
  "created_by_user_id": "8b526f521bb14a2593a8b9e3ce8c76b3",
  "country_code": "IND",
  "state_code": "MH",
  "country_phone_code": "91",
  "country_iso_code": "IND",
  "phone": "9915347757",
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
Update address.




```swift
applicationClient.cart.updateAddress(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | ID allotted to the selected address |  
| body | Address | yes | Request body |


Modifies a saved address.

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
Delete address.




```swift
applicationClient.cart.removeAddress(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | ID allotted to the selected address |  



Removes a saved address from the user's profile.

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
Choose delivery address.




```swift
applicationClient.cart.selectAddress(cartId: cartId, buyNow: buyNow, i: i, b: b, body: body) { (response, error) in
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


Selects an address for the cart's delivery.

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
      "mop_total": 0,
      "total_charge": 10,
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
      "uid": "17743",
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
      "identifiers": {},
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
      "charges": [
        {
          "type": "convenience fee",
          "name": "convenience fee",
          "code": "convenience fee",
          "amount": {
            "value": 10,
            "currency": "INR"
          },
          "meta": {
            "price_adjustment_id": "64c22d66fe278c0796bd8e4d",
            "article_level_distribution": true
          }
        }
      ],
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
      "identifiers": {},
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
      "charges": [
        {
          "type": "convenience fee",
          "name": "convenience fee",
          "code": "convenience fee",
          "amount": {
            "value": 10,
            "currency": "INR"
          },
          "meta": {
            "price_adjustment_id": "64c22d66fe278c0796bd8e4d",
            "article_level_distribution": true
          }
        }
      ],
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
  "gstin": "",
  "checkout_mode": "self",
  "last_modified": "2020-03-09T00:00:00.000Z",
  "restrict_checkout": false
}
```
</details>









---




#### selectPaymentMode
Pick payment method.




```swift
applicationClient.cart.selectPaymentMode(id: id, buyNow: buyNow, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String? | no |  |   
| buyNow | Bool? | no |  |  
| body | UpdateCartPaymentRequest | yes | Request body |


Chooses a payment mode for the checkout process.

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
      "mop_total": 0,
      "total_charge": 10,
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
      "uid": "17743",
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
      "identifiers": {},
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
      "charges": [
        {
          "type": "convenience fee",
          "name": "convenience fee",
          "code": "convenience fee",
          "amount": {
            "value": 10,
            "currency": "INR"
          },
          "meta": {
            "price_adjustment_id": "64c22d66fe278c0796bd8e4d",
            "article_level_distribution": true
          }
        }
      ],
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
      "identifiers": {},
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
      "charges": [
        {
          "type": "convenience fee",
          "name": "convenience fee",
          "code": "convenience fee",
          "amount": {
            "value": 10,
            "currency": "INR"
          },
          "meta": {
            "price_adjustment_id": "64c22d66fe278c0796bd8e4d",
            "article_level_distribution": true
          }
        }
      ],
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
  "gstin": "",
  "checkout_mode": "self",
  "last_modified": "2020-03-09T00:00:00.000Z",
  "restrict_checkout": false,
  "is_valid": true
}
```
</details>









---


#### validateCouponForPayment
Validate coupon.




```swift
applicationClient.cart.validateCouponForPayment(id: id, buyNow: buyNow, addressId: addressId, paymentMode: paymentMode, paymentIdentifier: paymentIdentifier, aggregatorName: aggregatorName, merchantCode: merchantCode, iin: iin, network: network, type: type, cardId: cardId, cartType: cartType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String? | no | The unique identifier of the cart |   
| buyNow | Bool? | no | This is boolean to get buy_now cart |   
| addressId | String? | no | ID allotted to an address |   
| paymentMode | String? | no | Payment mode selected by the customer |   
| paymentIdentifier | String? | no | Identifier of payment like ICIC, PAYTM |   
| aggregatorName | String? | no | Payment gateway identifier |   
| merchantCode | String? | no | Identifier used by payment gateway for a given payment mode, e.g. NB_ICIC, PAYTM |   
| iin | String? | no | Debit/Credit card prefix (first 6 digit) |   
| network | String? | no | Credit/Debit card issuer, e.g. VISA, MASTERCARD, RUPAY |   
| type | String? | no | card type, e.g. Credit, Debit |   
| cardId | String? | no | saved card token reference id |   
| cartType | String? | no | type of the cart |  



Checks if a coupon is valid for the selected payment mode.

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
    "title": "Coupon value will change.",
    "next_validation_required": false
  }
}
```
</details>









---




#### getShipments
List shipments.




```swift
applicationClient.cart.getShipments(p: p, id: id, buyNow: buyNow, addressId: addressId, areaCode: areaCode, orderType: orderType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| p | Bool? | no | This is a boolean value. Select `true` for getting a payment option in response. |   
| id | String? | no | The unique identifier of the cart |   
| buyNow | Bool? | no |  |   
| addressId | String? | no | ID allotted to the selected address |   
| areaCode | String? | no | The PIN Code of the destination address, e.g. 400059 |   
| orderType | String? | no | The order type of shipment HomeDelivery - If the customer wants the order home-delivered PickAtStore - If the customer wants the handover of an order at the store itself. Digital - If the customer wants to buy digital voucher ( for jiogames ) |  



Retrieve shipment details for items in the cart.

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
    "buy_now": false,
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
        "uid": "",
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
        "mop_total": 0,
        "total_charge": 10,
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
        "order_type": "HomeDelivery",
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
          },
          "iso": {
            "min": "2019-08-25T00:35:08.000Z",
            "max": "2019-08-29T07:55:08.000Z"
          }
        },
        "box_type": "Small Courier bag",
        "shipments": 1,
        "items": [
          {
            "quantity": 1,
            "identifiers": {},
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
              "tags": [],
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
            "charges": [
              {
                "type": "convenience fee",
                "name": "convenience fee",
                "code": "convenience fee",
                "amount": {
                  "value": 10,
                  "currency": "INR"
                },
                "meta": {
                  "price_adjustment_id": "64c22d66fe278c0796bd8e4d",
                  "article_level_distribution": true
                }
              }
            ],
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
    "gstin": "",
    "checkout_mode": "self",
    "last_modified": "2020-03-09T00:00:00.000Z",
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
    "buy_now": false,
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
        "uid": "",
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
        "mop_total": 0,
        "total_charge": 10,
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
    "gstin": "",
    "checkout_mode": "self",
    "last_modified": "2020-03-09T00:00:00.000Z",
    "restrict_checkout": false,
    "is_valid": false
  }
}
```
</details>

</details>









---


#### checkoutCart
Checkout cart.




```swift
applicationClient.cart.checkoutCart(buyNow: buyNow, cartType: cartType, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| buyNow | Bool? | no | This indicates the type of cart to checkout |   
| cartType | String? | no | The type of cart |  
| body | CartCheckoutDetailRequest | yes | Request body |


Initiates the checkout process for the cart.

*Returned Response:*




[CartCheckoutResponse](#CartCheckoutResponse)

Success. Returns the status of cart checkout. Refer `CartCheckoutResponseSchema` for more details.




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
          "uid": "",
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
          "mop_total": 0,
          "total_charge": 10,
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
          "identifiers": {},
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
          "charges": [
            {
              "type": "convenience fee",
              "name": "convenience fee",
              "code": "convenience fee",
              "amount": {
                "value": 10,
                "currency": "INR"
              },
              "meta": {
                "price_adjustment_id": "64c22d66fe278c0796bd8e4d",
                "article_level_distribution": true
              }
            }
          ],
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
      "gstin": "",
      "checkout_mode": "self",
      "last_modified": "2020-03-09T00:00:00.000Z",
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




#### getPromotionOffers
Retrieves promotional offers




```swift
applicationClient.cart.getPromotionOffers(slug: slug, pageSize: pageSize, promotionGroup: promotionGroup, storeId: storeId, cartType: cartType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| slug | String? | no | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/ |   
| pageSize | Int? | no | Number of offers to be fetched to show |   
| promotionGroup | String? | no | Type of promotion groups |   
| storeId | Int? | no | Store id |   
| cartType | String? | no | The type of cart |  



Lists all available promotional offers for the cart.

*Returned Response:*




[PromotionOffersResponse](#PromotionOffersResponse)

Success. Returns a array containing the available offers (if exists) on product via promotions. Refer `PromotionOffersResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "available_promotions": [
    {
      "offer_text": "Buy 2 apple/gionee product get 500 off",
      "description": "Test promotion",
      "id": "61d1db23f5b315cf265126c0",
      "valid_till": "2022-03-29T09:05:49.063Z",
      "promotion_group": "cart"
    },
    {
      "offer_text": "Buy 2 apple/gionee product get 500 off",
      "description": "Test promotion",
      "id": "6203cb1393506f8a75ecd566",
      "valid_till": "2022-03-29T09:05:49.063Z",
      "promotion_group": "product"
    },
    {
      "offer_text": "Buy 2 apple/gionee product get 500 off",
      "description": "Test promotion",
      "id": "6203cb1393506f8a75ecd567",
      "valid_till": "2022-03-29T09:05:49.063Z",
      "promotion_group": "product"
    },
    {
      "offer_text": "Buy 2 apple/gionee product get 500 off",
      "description": "Test promotion",
      "id": "6203cb1393506f8a75ecd569",
      "valid_till": "2022-03-29T09:05:49.063Z",
      "promotion_group": "product"
    },
    {
      "free_gift_items": [
        {
          "item_id": 7513738,
          "item_name": "dinshaws milk",
          "item_images_url": [
            "https://hdn-1.jmpx2.de/jmpx2/products/pictures/item/free/original/-uah4-ZMe-ProductTestAR2.jpeg"
          ],
          "item_brand_name": "Arpita",
          "item_price_details": {
            "effective": {
              "min": 80,
              "max": 700
            },
            "marked": {
              "min": 100,
              "max": 800
            },
            "currency": "INR"
          }
        },
        {
          "item_slug": "Dinshaw"
        }
      ]
    }
  ]
}
```
</details>









---


#### getLadderOffers
Fetches ladder offers.




```swift
applicationClient.cart.getLadderOffers(slug: slug, storeId: storeId, promotionId: promotionId, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| slug | String | yes | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/ |   
| storeId | String? | no | Store uid of assigned store on PDP page. If not passed default first created ladder will be returned |   
| promotionId | String? | no | Get ladder information of given promotion id explicitely |   
| pageSize | Int? | no | Number of offers to be fetched to show |  



Gets tiered discounts based on cart value.

*Returned Response:*




[LadderPriceOffers](#LadderPriceOffers)

Success. Returns a object containing the applicable ladder price offers (if exists) on product. Refer `PromotionOffersResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "available_offers": [
    {
      "id": "6203cb1393506f8a75ecd56b",
      "offer_text": "Ladder Price 2",
      "description": "Ladder Price 2",
      "offer_prices": [
        {
          "min_quantity": 0,
          "max_quantity": 0,
          "margin": 5,
          "type": "percentage",
          "price": {
            "marked": 5499,
            "effective": 5499,
            "offer_price": 5224.05
          }
        },
        {
          "min_quantity": 0,
          "max_quantity": 0,
          "margin": 10,
          "type": "percentage",
          "price": {
            "marked": 5499,
            "effective": 5499,
            "offer_price": 4949.1
          }
        },
        {
          "min_quantity": 0,
          "max_quantity": 0,
          "margin": 20,
          "type": "percentage",
          "price": {
            "marked": 5499,
            "effective": 5499,
            "offer_price": 4399.2
          }
        }
      ]
    },
    {
      "id": "6203cb1393506f8a75ecd56a",
      "offer_text": "Ladder Price 1",
      "description": "Ladder Price 1",
      "offer_prices": [
        {
          "min_quantity": 0,
          "max_quantity": 0,
          "margin": 10,
          "type": "amount",
          "price": {
            "marked": 5499,
            "effective": 5499,
            "offer_price": 4949.1
          }
        },
        {
          "min_quantity": 0,
          "max_quantity": 0,
          "margin": 15,
          "type": "amount",
          "price": {
            "marked": 5499,
            "effective": 5499,
            "offer_price": 4674.15
          }
        },
        {
          "min_quantity": 0,
          "max_quantity": 0,
          "margin": 20,
          "type": "amount",
          "price": {
            "marked": 5499,
            "effective": 5499,
            "offer_price": 4399.2
          }
        }
      ]
    }
  ],
  "currency": {
    "code": "INR",
    "symbol": "₹"
  }
}
```
</details>









---




#### checkoutCartV2
Enhanced cart checkout process




```swift
applicationClient.cart.checkoutCartV2(buyNow: buyNow, cartType: cartType, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| buyNow | Bool? | no | This indicates the type of cart to checkout |   
| cartType | String? | no | The type of cart |  
| body | CartCheckoutDetailV2Request | yes | Request body |


Initiates a more secure and detailed checkout process.

*Returned Response:*




[CartCheckoutResponse](#CartCheckoutResponse)

Success. Returns the status of cart checkout. Refer `CartCheckoutResponseSchema` for more details.




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
          "uid": "",
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
          "mop_total": 0,
          "total_charge": 10,
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
          "identifiers": {},
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
          "charges": [
            {
              "type": "convenience fee",
              "name": "convenience fee",
              "code": "convenience fee",
              "amount": {
                "value": 10,
                "currency": "INR"
              },
              "meta": {
                "price_adjustment_id": "64c22d66fe278c0796bd8e4d",
                "article_level_distribution": true
              }
            }
          ],
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
      "gstin": "",
      "checkout_mode": "self",
      "last_modified": "2020-03-09T00:00:00.000Z",
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




### Schemas

 
 
 #### [BuyRules](#BuyRules)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemCriteria | [String: Any]? |  yes  | Item criteria of promotion |
 | cartConditions | [String: Any]? |  yes  | Cart conditions details for promotion |

---


 
 
 #### [DiscountRulesApp](#DiscountRulesApp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | matchedBuyRules | [String]? |  yes  | Matched buy rules for promotion |
 | rawOffer | [String: Any]? |  yes  | raw offer details for promotion |
 | offer | [String: Any]? |  yes  | offer for promotion |
 | itemCriteria | [String: Any]? |  yes  | Item criteria of promotion |

---


 
 
 #### [Ownership](#Ownership)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | payableCategory | String? |  yes  | promo amount payable category |
 | payableBy | String? |  yes  | promo amount bearable party |

---


 
 
 #### [FreeGiftItem](#FreeGiftItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemSlug | String? |  yes  | item slug |
 | itemName | String? |  yes  | Item name |
 | itemPriceDetails | [String: Any]? |  yes  | item price details |
 | itemBrandName | String? |  yes  | item brand name |
 | itemId | Int? |  yes  | Item id |
 | itemImagesUrl | [String]? |  yes  | item images URL |

---


 
 
 #### [AppliedFreeArticles](#AppliedFreeArticles)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | freeGiftItemDetails | [FreeGiftItem](#FreeGiftItem)? |  yes  | Free gift items details |
 | parentItemIdentifier | String? |  yes  | Parent item identifier for free article |
 | quantity | Int? |  yes  | Free article quantity |
 | articleId | String? |  yes  | free article id |

---


 
 
 #### [AppliedPromotion](#AppliedPromotion)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | promoId | String? |  yes  | Promotion id |
 | buyRules | [[BuyRules](#BuyRules)]? |  yes  | Buy rules for promotions |
 | offerText | String? |  yes  | Offer text of current promotion |
 | promotionGroup | String? |  yes  | Promotion group for the promotion |
 | mrpPromotion | Bool? |  yes  | If applied promotion is applied on product MRP or ESP |
 | promotionName | String? |  yes  | Promotion name of current promotion |
 | amount | Double? |  yes  | Per unit discount amount applied with current promotion |
 | discountRules | [[DiscountRulesApp](#DiscountRulesApp)]? |  yes  | Discount rules for promotions |
 | ownership | [Ownership](#Ownership)? |  yes  | Ownership of promotion |
 | articleQuantity | Int? |  yes  | Quantity of article on which promotion is applicable |
 | appliedFreeArticles | [[AppliedFreeArticles](#AppliedFreeArticles)]? |  yes  | Applied free article for free gift item promotions |
 | promotionType | String? |  yes  | Promotion type of current promotion |
 | meta | [String: Any]? |  yes  | Meta object for extra data |
 | code | String? |  yes  | Promotion code |

---


 
 
 #### [PaymentSelectionLock](#PaymentSelectionLock)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | defaultOptions | String? |  yes  |  |
 | paymentIdentifier | String? |  yes  |  |

---


 
 
 #### [PromiseFormatted](#PromiseFormatted)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | max | String? |  yes  |  |
 | min | String? |  yes  |  |

---


 
 
 #### [PromiseISOFormat](#PromiseISOFormat)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | max | String? |  yes  | Max promise in ISO format. |
 | min | String? |  yes  | Min Promise in ISO format. |

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
 | iso | [PromiseISOFormat](#PromiseISOFormat)? |  yes  |  |

---


 
 
 #### [BasePrice](#BasePrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | effective | Double? |  yes  |  |
 | currencySymbol | String? |  yes  |  |
 | marked | Double? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [ArticlePriceInfo](#ArticlePriceInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | base | [BasePrice](#BasePrice)? |  yes  |  |
 | converted | [BasePrice](#BasePrice)? |  yes  |  |

---


 
 
 #### [BaseInfo](#BaseInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [StoreInfo](#StoreInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeCode | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [ProductArticle](#ProductArticle)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | price | [ArticlePriceInfo](#ArticlePriceInfo)? |  yes  |  |
 | productGroupTags | [String]? |  yes  |  |
 | extraMeta | [String: Any]? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | size | String? |  yes  |  |
 | mtoQuantity | Int? |  yes  |  |
 | seller | [BaseInfo](#BaseInfo)? |  yes  |  |
 | sellerIdentifier | String? |  yes  |  |
 | parentItemIdentifiers | [String: Any]? |  yes  |  |
 | identifier | [String: Any]? |  yes  |  |
 | store | [StoreInfo](#StoreInfo)? |  yes  |  |
 | cartItemMeta | [String: Any]? |  yes  |  |
 | uid | String? |  yes  |  |
 | giftCard | [String: Any]? |  yes  |  |
 | isGiftVisible | Bool? |  yes  |  |
 | type | String? |  yes  |  |
 | tags | [String]? |  yes  | a list of article tags |

---


 
 
 #### [CartProductIdentifer](#CartProductIdentifer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | identifier | String? |  yes  | Article idenfier generated by cart |

---


 
 
 #### [PromoMeta](#PromoMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [ChargesAmount](#ChargesAmount)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | Double? |  yes  | This is the value of amount added |
 | currency | String? |  yes  | This is destination currency of value |

---


 
 
 #### [Charges](#Charges)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [String: Any]? |  yes  | This object contains the meta data realted to charges price adjustment |
 | amount | [ChargesAmount](#ChargesAmount)? |  yes  |  |
 | name | String? |  yes  | This is the name of the charge applied |
 | allowRefund | Bool? |  yes  | This boolean value defines that refund is allowed or not for the charge |
 | code | String? |  yes  | This is the code of the charge applied |
 | type | String? |  yes  | This is the type of the charge applied |

---


 
 
 #### [ProductPrice](#ProductPrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currencySymbol | String? |  yes  |  |
 | selling | Double? |  yes  |  |
 | currencyCode | String? |  yes  |  |
 | addOn | Double? |  yes  |  |
 | effective | Double? |  yes  |  |
 | marked | Double? |  yes  |  |

---


 
 
 #### [ProductPriceInfo](#ProductPriceInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | base | [ProductPrice](#ProductPrice)? |  yes  |  |
 | converted | [ProductPrice](#ProductPrice)? |  yes  |  |

---


 
 
 #### [ProductPricePerUnit](#ProductPricePerUnit)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currencySymbol | String? |  yes  |  |
 | sellingPrice | Double? |  yes  |  |
 | currencyCode | String? |  yes  |  |
 | addOn | Double? |  yes  |  |
 | effective | Double? |  yes  |  |
 | marked | Double? |  yes  |  |

---


 
 
 #### [ProductPricePerUnitInfo](#ProductPricePerUnitInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | base | [ProductPricePerUnit](#ProductPricePerUnit)? |  yes  |  |
 | converted | [ProductPricePerUnit](#ProductPricePerUnit)? |  yes  |  |

---


 
 
 #### [ProductAvailabilitySize](#ProductAvailabilitySize)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | value | String? |  yes  |  |
 | isAvailable | Bool? |  yes  |  |

---


 
 
 #### [ProductAvailability](#ProductAvailability)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | outOfStock | Bool? |  yes  |  |
 | deliverable | Bool? |  yes  |  |
 | availableSizes | [[ProductAvailabilitySize](#ProductAvailabilitySize)]? |  yes  |  |
 | isValid | Bool? |  yes  |  |
 | otherStoreQuantity | Int? |  yes  |  |
 | sizes | [String]? |  yes  |  |

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


 
 
 #### [Tags](#Tags)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tags | [String: Any]? |  yes  |  |

---


 
 
 #### [ProductImage](#ProductImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | secureUrl | String? |  yes  |  |
 | aspectRatio | String? |  yes  |  |
 | url | String? |  yes  |  |

---


 
 
 #### [CategoryInfo](#CategoryInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  | Product Category Id |
 | name | String? |  yes  |  |

---


 
 
 #### [CartProduct](#CartProduct)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customJson | [String: Any]? |  yes  |  |
 | brand | [BaseInfo](#BaseInfo)? |  yes  |  |
 | action | [ProductAction](#ProductAction)? |  yes  |  |
 | teaserTag | [Tags](#Tags)? |  yes  |  |
 | slug | String? |  yes  | Unique product url name generated via product name and other meta data |
 | images | [[ProductImage](#ProductImage)]? |  yes  |  |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |
 | itemCode | String? |  yes  |  |
 | categories | [[CategoryInfo](#CategoryInfo)]? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | type | String? |  yes  |  |
 | attributes | [String: Any]? |  yes  |  |

---


 
 
 #### [CouponDetails](#CouponDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | discountSingleQuantity | Double? |  yes  |  |
 | code | String? |  yes  |  |
 | discountTotalQuantity | Double? |  yes  |  |

---


 
 
 #### [CartProductInfo](#CartProductInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | article | [ProductArticle](#ProductArticle)? |  yes  |  |
 | moq | [String: Any]? |  yes  |  |
 | identifiers | [CartProductIdentifer](#CartProductIdentifer) |  no  |  |
 | promoMeta | [PromoMeta](#PromoMeta)? |  yes  |  |
 | price | [ProductPriceInfo](#ProductPriceInfo)? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | charges | [[Charges](#Charges)]? |  yes  |  |
 | discount | String? |  yes  |  |
 | availability | [ProductAvailability](#ProductAvailability)? |  yes  |  |
 | deliveryPromise | [ShipmentPromise](#ShipmentPromise)? |  yes  |  |
 | product | [CartProduct](#CartProduct)? |  yes  |  |
 | productEanId | String? |  yes  |  |
 | bulkOffer | [String: Any]? |  yes  |  |
 | parentItemIdentifiers | [String: Any]? |  yes  |  |
 | coupon | [CouponDetails](#CouponDetails)? |  yes  |  |
 | customOrder | [String: Any]? |  yes  |  |
 | couponMessage | String? |  yes  |  |
 | key | String? |  yes  |  |
 | message | String? |  yes  |  |
 | isSet | Bool? |  yes  |  |
 | pricePerUnit | [ProductPricePerUnitInfo](#ProductPricePerUnitInfo)? |  yes  |  |
 | promotionsApplied | [[AppliedPromotion](#AppliedPromotion)]? |  yes  |  |

---


 
 
 #### [DisplayBreakup](#DisplayBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currencySymbol | String? |  yes  |  |
 | key | String? |  yes  |  |
 | display | String? |  yes  |  |
 | message | [String]? |  yes  |  |
 | currencyCode | String? |  yes  |  |
 | value | Double? |  yes  |  |
 | preset | Double? |  yes  |  |

---


 
 
 #### [RawBreakup](#RawBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | vog | Double? |  yes  |  |
 | subtotal | Double? |  yes  |  |
 | fyndCash | Double? |  yes  |  |
 | discount | Double? |  yes  |  |
 | convenienceFee | Double? |  yes  |  |
 | deliveryCharge | Double? |  yes  |  |
 | gstCharges | Double? |  yes  |  |
 | mrpTotal | Double? |  yes  |  |
 | mopTotal | Double? |  yes  |  |
 | totalCharge | Double? |  yes  |  |
 | coupon | Double? |  yes  |  |
 | total | Double? |  yes  |  |
 | giftCard | Double? |  yes  |  |
 | youSaved | Double? |  yes  |  |
 | codCharge | Double? |  yes  |  |

---


 
 
 #### [CouponBreakup](#CouponBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | couponValue | Double? |  yes  |  |
 | title | String? |  yes  |  |
 | subTitle | String? |  yes  |  |
 | minimumCartValue | Double? |  yes  |  |
 | message | String? |  yes  |  |
 | couponType | String? |  yes  |  |
 | uid | String? |  yes  |  |
 | value | Double? |  yes  |  |
 | maxDiscountValue | Double? |  yes  |  |
 | isApplied | Bool? |  yes  |  |
 | description | String? |  yes  |  |
 | code | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [LoyaltyPoints](#LoyaltyPoints)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | total | Double? |  yes  |  |
 | description | String? |  yes  |  |
 | applicable | Double? |  yes  |  |
 | isApplied | Bool? |  yes  |  |

---


 
 
 #### [CartBreakup](#CartBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | [[DisplayBreakup](#DisplayBreakup)]? |  yes  |  |
 | raw | [RawBreakup](#RawBreakup)? |  yes  |  |
 | coupon | [CouponBreakup](#CouponBreakup)? |  yes  |  |
 | loyaltyPoints | [LoyaltyPoints](#LoyaltyPoints)? |  yes  |  |

---


 
 
 #### [CartCurrency](#CartCurrency)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String? |  yes  | Currency code defined by ISO 4217:2015 |
 | symbol | String? |  yes  |  |

---


 
 
 #### [CartDetailCoupon](#CartDetailCoupon)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cashbackAmount | Double? |  yes  |  |
 | cashbackMessagePrimary | String? |  yes  |  |
 | cashbackMessageSecondary | String? |  yes  |  |
 | couponCode | String? |  yes  |  |
 | couponDescription | String? |  yes  |  |
 | couponId | String? |  yes  |  |
 | couponSubtitle | String? |  yes  |  |
 | couponTitle | String? |  yes  |  |
 | couponType | String? |  yes  |  |
 | couponValue | Double? |  yes  |  |
 | discount | Double? |  yes  |  |
 | isApplied | Bool? |  yes  |  |
 | isValid | Bool? |  yes  |  |
 | maximumDiscountValue | Double? |  yes  |  |
 | message | String? |  yes  |  |
 | minimumCartValue | Double? |  yes  |  |

---


 
 
 #### [ChargesThreshold](#ChargesThreshold)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | charges | Double? |  yes  |  |
 | threshold | Double? |  yes  |  |

---


 
 
 #### [DeliveryChargesConfig](#DeliveryChargesConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | charges | [[ChargesThreshold](#ChargesThreshold)]? |  yes  |  |

---


 
 
 #### [CartCommonConfig](#CartCommonConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | deliveryChargesConfig | [DeliveryChargesConfig](#DeliveryChargesConfig)? |  yes  |  |

---


 
 
 #### [CartDetailResponse](#CartDetailResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cartId | Int? |  yes  |  |
 | uid | String? |  yes  |  |
 | appliedPromoDetails | [[AppliedPromotion](#AppliedPromotion)]? |  yes  |  |
 | checkoutMode | String? |  yes  |  |
 | panNo | String? |  yes  |  |
 | isValid | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | paymentSelectionLock | [PaymentSelectionLock](#PaymentSelectionLock)? |  yes  |  |
 | deliveryPromise | [ShipmentPromise](#ShipmentPromise)? |  yes  |  |
 | comment | String? |  yes  |  |
 | items | [[CartProductInfo](#CartProductInfo)]? |  yes  |  |
 | deliveryChargeInfo | String? |  yes  |  |
 | commonConfig | [CartCommonConfig](#CartCommonConfig)? |  yes  |  |
 | coupon | [CartDetailCoupon](#CartDetailCoupon)? |  yes  |  |
 | message | String? |  yes  |  |
 | notification | [String: Any]? |  yes  |  |
 | staffUserId | String? |  yes  |  |
 | success | Bool? |  yes  |  |
 | gstin | String? |  yes  |  |
 | restrictCheckout | Bool? |  yes  |  |
 | lastModified | String? |  yes  |  |
 | breakupValues | [CartBreakup](#CartBreakup)? |  yes  |  |
 | currency | [CartCurrency](#CartCurrency)? |  yes  |  |
 | couponText | String? |  yes  |  |
 | buyNow | Bool? |  yes  |  |
 | panConfig | [String: Any]? |  yes  |  |

---


 
 
 #### [AddProductCart](#AddProductCart)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | articleAssignment | [String: Any]? |  yes  |  |
 | productGroupTags | [String]? |  yes  |  |
 | extraMeta | [String: Any]? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | itemSize | String? |  yes  |  |
 | storeId | Int? |  yes  |  |
 | display | String? |  yes  |  |
 | articleId | String? |  yes  |  |
 | parentItemIdentifiers | [[String: String]]? |  yes  |  |
 | sellerId | Int? |  yes  |  |
 | pos | Bool? |  yes  |  |
 | itemId | Int? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | sellerIdentifier | String? |  yes  | Add items using seller identifier for store os |

---


 
 
 #### [AddCartRequest](#AddCartRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[AddProductCart](#AddProductCart)]? |  yes  |  |
 | newCart | Bool? |  yes  |  |

---


 
 
 #### [AddCartDetailResponse](#AddCartDetailResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | partial | Bool? |  yes  | When adding multiple items check if all added. True if only few are added. |
 | cart | [CartDetailResponse](#CartDetailResponse)? |  yes  |  |
 | success | Bool? |  yes  | True if all items are added successfully. False if partially added or not added. |

---


 
 
 #### [UpdateProductCart](#UpdateProductCart)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | extraMeta | [String: Any]? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | itemSize | String? |  yes  |  |
 | itemIndex | Int? |  yes  |  |
 | identifiers | [CartProductIdentifer](#CartProductIdentifer) |  no  |  |
 | articleId | String? |  yes  |  |
 | parentItemIdentifiers | [String: Any]? |  yes  |  |
 | itemId | Int? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

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
 | message | String? |  yes  |  |
 | cart | [CartDetailResponse](#CartDetailResponse)? |  yes  |  |
 | success | Bool? |  yes  | True if all items are added successfully. False if partially added or not added. |

---


 
 
 #### [DeleteCartDetailResponse](#DeleteCartDetailResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | success | Bool? |  yes  | True if cart is archived successfully. False if not archived. |

---


 
 
 #### [CartItemCountResponse](#CartItemCountResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userCartItemsCount | Int? |  yes  | Item count present in cart |

---


 
 
 #### [PageCoupon](#PageCoupon)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalItemCount | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | total | Int? |  yes  |  |
 | current | Int? |  yes  |  |
 | hasPrevious | Bool? |  yes  |  |

---


 
 
 #### [Coupon](#Coupon)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | couponAmount | Double? |  yes  | The amount based on cart value |
 | couponValue | Double? |  yes  |  |
 | title | String? |  yes  |  |
 | minimumCartValue | Double? |  yes  |  |
 | subTitle | String? |  yes  |  |
 | expiresOn | String? |  yes  |  |
 | message | String? |  yes  |  |
 | couponType | String? |  yes  |  |
 | maxDiscountValue | Double? |  yes  |  |
 | couponCode | String? |  yes  |  |
 | isApplicable | Bool? |  yes  |  |
 | description | String? |  yes  |  |
 | isApplied | Bool? |  yes  |  |
 | startDate | String? |  yes  |  |
 | endDate | String? |  yes  |  |
 | couponApplicableMessage | String? |  yes  |  |

---


 
 
 #### [GetCouponResponse](#GetCouponResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [PageCoupon](#PageCoupon)? |  yes  |  |
 | availableCouponList | [[Coupon](#Coupon)]? |  yes  |  |

---


 
 
 #### [ApplyCouponRequest](#ApplyCouponRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | couponCode | String |  no  | Coupon code to be applied |

---


 
 
 #### [OfferPrice](#OfferPrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currencySymbol | String? |  yes  | Currency symbol for currency |
 | bulkEffective | Double? |  yes  | Discounted per unit price for current offer object |
 | currencyCode | String? |  yes  | Currency code for all amounts |
 | effective | Int? |  yes  | Current per unit price of product after existing deductions |
 | marked | Int? |  yes  | Original price of product |

---


 
 
 #### [OfferItem](#OfferItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | price | [OfferPrice](#OfferPrice)? |  yes  |  |
 | margin | Int? |  yes  | Percentage value of discount |
 | quantity | Int? |  yes  | Quantity on which offer is applicable |
 | best | Bool? |  yes  | Is true for best offer from all offers present for all sellers |
 | total | Double? |  yes  | Total price of offer quantity with discount |
 | autoApplied | Bool? |  yes  | Whether offer discount is auto applied in cart |
 | type | String? |  yes  | Offer type |

---


 
 
 #### [OfferSeller](#OfferSeller)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  | Seller id |
 | name | String? |  yes  |  |

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
 | latitude | Double? |  yes  |  |
 | longitude | Double? |  yes  |  |

---


 
 
 #### [Address](#Address)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryIsoCode | String? |  yes  |  |
 | area | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | countryPhoneCode | String? |  yes  |  |
 | checkoutMode | String? |  yes  |  |
 | address | String? |  yes  |  |
 | areaCodeSlug | String? |  yes  |  |
 | geoLocation | [GeoLocation](#GeoLocation)? |  yes  |  |
 | id | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | city | String? |  yes  |  |
 | sector | String? |  yes  |  |
 | stateCode | String? |  yes  | State code for international address |
 | createdByUserId | String? |  yes  |  |
 | landmark | String? |  yes  |  |
 | userId | String? |  yes  |  |
 | name | String? |  yes  |  |
 | googleMapPoint | [String: Any]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | country | String? |  yes  |  |
 | isDefaultAddress | Bool? |  yes  |  |
 | areaCode | String? |  yes  |  |
 | email | String? |  yes  |  |
 | state | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [GetAddressesResponse](#GetAddressesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | piiMasking | Bool? |  yes  |  |
 | address | [[Address](#Address)]? |  yes  |  |

---


 
 
 #### [SaveAddressResponse](#SaveAddressResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | success | Bool? |  yes  |  |
 | isDefaultAddress | Bool? |  yes  |  |

---


 
 
 #### [UpdateAddressResponse](#UpdateAddressResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isUpdated | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | success | Bool? |  yes  |  |
 | isDefaultAddress | Bool? |  yes  |  |

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
 | id | String? |  yes  |  |
 | billingAddressId | String? |  yes  |  |
 | cartId | String? |  yes  |  |

---


 
 
 #### [UpdateCartPaymentRequest](#UpdateCartPaymentRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | paymentIdentifier | String? |  yes  |  |
 | addressId | String? |  yes  |  |
 | merchantCode | String? |  yes  |  |
 | aggregatorName | String? |  yes  |  |
 | paymentMode | String? |  yes  |  |

---


 
 
 #### [CouponValidity](#CouponValidity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | discount | Double? |  yes  |  |
 | nextValidationRequired | Bool? |  yes  |  |
 | valid | Bool? |  yes  |  |
 | displayMessageEn | String? |  yes  |  |
 | code | String? |  yes  |  |

---


 
 
 #### [PaymentCouponValidate](#PaymentCouponValidate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | couponValidity | [CouponValidity](#CouponValidity)? |  yes  |  |
 | success | Bool |  no  |  |

---


 
 
 #### [ShipmentResponse](#ShipmentResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipments | Int? |  yes  |  |
 | promise | [ShipmentPromise](#ShipmentPromise)? |  yes  |  |
 | orderType | String? |  yes  |  |
 | boxType | String? |  yes  |  |
 | shipmentType | String? |  yes  |  |
 | dpOptions | [String: Any]? |  yes  |  |
 | dpId | String? |  yes  |  |
 | items | [[CartProductInfo](#CartProductInfo)]? |  yes  |  |
 | fulfillmentType | String? |  yes  |  |
 | fulfillmentId | Int? |  yes  |  |

---


 
 
 #### [CartShipmentsResponse](#CartShipmentsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | deliveryChargeInfo | String? |  yes  |  |
 | checkoutMode | String? |  yes  |  |
 | message | String? |  yes  |  |
 | gstin | String? |  yes  |  |
 | restrictCheckout | Bool? |  yes  |  |
 | lastModified | String? |  yes  |  |
 | cartId | Int? |  yes  |  |
 | isValid | Bool? |  yes  |  |
 | breakupValues | [CartBreakup](#CartBreakup)? |  yes  |  |
 | currency | [CartCurrency](#CartCurrency)? |  yes  |  |
 | id | String? |  yes  |  |
 | shipments | [[ShipmentResponse](#ShipmentResponse)]? |  yes  |  |
 | paymentSelectionLock | [PaymentSelectionLock](#PaymentSelectionLock)? |  yes  |  |
 | couponText | String? |  yes  |  |
 | deliveryPromise | [ShipmentPromise](#ShipmentPromise)? |  yes  |  |
 | error | Bool? |  yes  |  |
 | comment | String? |  yes  |  |
 | buyNow | Bool? |  yes  |  |
 | uid | String? |  yes  |  |

---


 
 
 #### [CartCheckoutCustomMeta](#CartCheckoutCustomMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String |  no  |  |
 | value | String |  no  |  |

---


 
 
 #### [CustomerDetails](#CustomerDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  |  |
 | mobile | String |  no  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [StaffCheckout](#StaffCheckout)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | employeeCode | String? |  yes  |  |
 | user | String |  no  |  |
 | lastName | String |  no  |  |
 | firstName | String |  no  |  |
 | id | String |  no  |  |

---


 
 
 #### [CartCheckoutDetailRequest](#CartCheckoutDetailRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customMeta | [[CartCheckoutCustomMeta](#CartCheckoutCustomMeta)]? |  yes  |  |
 | customerDetails | [CustomerDetails](#CustomerDetails)? |  yes  | Customer details |
 | merchantCode | String? |  yes  |  |
 | id | String? |  yes  |  |
 | paymentAutoConfirm | Bool? |  yes  |  |
 | paymentMode | String |  no  |  |
 | aggregator | String? |  yes  |  |
 | addressId | String? |  yes  |  |
 | callbackUrl | String? |  yes  |  |
 | deliveryAddress | [String: Any]? |  yes  |  |
 | staff | [StaffCheckout](#StaffCheckout)? |  yes  |  |
 | orderType | String? |  yes  |  |
 | orderingStore | Int? |  yes  |  |
 | extraMeta | [String: Any]? |  yes  |  |
 | paymentIdentifier | String? |  yes  |  |
 | billingAddress | [String: Any]? |  yes  |  |
 | paymentParams | [String: Any]? |  yes  |  |
 | billingAddressId | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | paymentExtraIdentifiers | [String: Any]? |  yes  |  |
 | iin | String? |  yes  |  |
 | network | String? |  yes  |  |
 | type | String? |  yes  |  |
 | cardId | String? |  yes  |  |

---


 
 
 #### [CheckCart](#CheckCart)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | checkoutMode | String? |  yes  |  |
 | userType | String? |  yes  |  |
 | codMessage | String? |  yes  |  |
 | cartId | Int? |  yes  |  |
 | isValid | Bool? |  yes  |  |
 | deliveryCharges | Double? |  yes  |  |
 | id | String? |  yes  |  |
 | paymentSelectionLock | [PaymentSelectionLock](#PaymentSelectionLock)? |  yes  |  |
 | errorMessage | String? |  yes  |  |
 | deliveryPromise | [ShipmentPromise](#ShipmentPromise)? |  yes  |  |
 | comment | String? |  yes  |  |
 | items | [[CartProductInfo](#CartProductInfo)]? |  yes  |  |
 | uid | String? |  yes  |  |
 | deliveryChargeOrderValue | Int? |  yes  |  |
 | deliveryChargeInfo | String? |  yes  |  |
 | codAvailable | Bool? |  yes  |  |
 | success | Bool? |  yes  |  |
 | storeCode | String? |  yes  |  |
 | message | String? |  yes  |  |
 | gstin | String? |  yes  |  |
 | restrictCheckout | Bool? |  yes  |  |
 | lastModified | String? |  yes  |  |
 | orderId | String? |  yes  |  |
 | breakupValues | [CartBreakup](#CartBreakup)? |  yes  |  |
 | currency | [CartCurrency](#CartCurrency)? |  yes  |  |
 | storeEmps | [[String: Any]]? |  yes  |  |
 | couponText | String? |  yes  |  |
 | buyNow | Bool? |  yes  |  |
 | codCharges | Double? |  yes  |  |

---


 
 
 #### [CartCheckoutResponse](#CartCheckoutResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentConfirmUrl | String? |  yes  |  |
 | appInterceptUrl | String? |  yes  |  |
 | success | Bool? |  yes  |  |
 | callbackUrl | String? |  yes  |  |
 | message | String? |  yes  |  |
 | data | [String: Any]? |  yes  |  |
 | orderId | String? |  yes  |  |
 | cart | [CheckCart](#CheckCart)? |  yes  |  |

---


 
 
 #### [GiftDetail](#GiftDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isGiftApplied | Bool? |  yes  |  |
 | giftMessage | String? |  yes  |  |

---


 
 
 #### [ArticleGiftDetail](#ArticleGiftDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | articleId | [GiftDetail](#GiftDetail)? |  yes  |  |

---


 
 
 #### [CartMetaRequest](#CartMetaRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | deliverySlots | [String: Any]? |  yes  |  |
 | giftDetails | [ArticleGiftDetail](#ArticleGiftDetail)? |  yes  |  |
 | pickUpCustomerDetails | [String: Any]? |  yes  | Customer contact details for customer pickup at store |
 | checkoutMode | String? |  yes  |  |
 | comment | String? |  yes  |  |
 | gstin | String? |  yes  |  |

---


 
 
 #### [CartMetaResponse](#CartMetaResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | isValid | Bool? |  yes  |  |

---


 
 
 #### [CartMetaMissingResponse](#CartMetaMissingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | errors | [String]? |  yes  |  |

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
 | user | [String: Any]? |  yes  | User details of who generated share link |
 | createdOn | String? |  yes  |  |
 | source | [String: Any]? |  yes  | Share link device and other source information |
 | meta | [String: Any]? |  yes  | Meta data sent while generating share cart link |

---


 
 
 #### [SharedCart](#SharedCart)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | checkoutMode | String? |  yes  |  |
 | cartId | Int? |  yes  |  |
 | isValid | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | paymentSelectionLock | [PaymentSelectionLock](#PaymentSelectionLock)? |  yes  |  |
 | deliveryPromise | [ShipmentPromise](#ShipmentPromise)? |  yes  |  |
 | comment | String? |  yes  |  |
 | items | [[CartProductInfo](#CartProductInfo)]? |  yes  |  |
 | uid | String? |  yes  |  |
 | deliveryChargeInfo | String? |  yes  |  |
 | message | String? |  yes  |  |
 | gstin | String? |  yes  |  |
 | sharedCartDetails | [SharedCartDetails](#SharedCartDetails)? |  yes  |  |
 | restrictCheckout | Bool? |  yes  |  |
 | lastModified | String? |  yes  |  |
 | breakupValues | [CartBreakup](#CartBreakup)? |  yes  |  |
 | currency | [CartCurrency](#CartCurrency)? |  yes  |  |
 | couponText | String? |  yes  |  |
 | buyNow | Bool? |  yes  |  |

---


 
 
 #### [SharedCartResponse](#SharedCartResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | String? |  yes  |  |
 | cart | [SharedCart](#SharedCart)? |  yes  |  |

---


 
 
 #### [FreeGiftItems](#FreeGiftItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemSlug | String? |  yes  | item slug |
 | itemName | String? |  yes  | Item name |
 | itemPriceDetails | [String: Any]? |  yes  | item price details |
 | itemBrandName | String? |  yes  | item brand name |
 | itemId | Int? |  yes  | Item id |
 | itemImagesUrl | [String]? |  yes  | item images URL |

---


 
 
 #### [PromotionOffer](#PromotionOffer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  | Promotion id |
 | buyRules | [String: Any]? |  yes  | Buy rules of promotions |
 | offerText | String? |  yes  | Offer title |
 | promotionGroup | String? |  yes  | Group of promotion belongs to |
 | validTill | String? |  yes  | Datetime ISOString for promotion end date |
 | discountRules | [[String: Any]]? |  yes  | Discount rules of promotions |
 | freeGiftItems | [[FreeGiftItems](#FreeGiftItems)]? |  yes  | Details of free gift items |
 | description | String? |  yes  | Offer details including T&C |

---


 
 
 #### [PromotionOffersResponse](#PromotionOffersResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | availablePromotions | [[PromotionOffer](#PromotionOffer)]? |  yes  |  |

---


 
 
 #### [OperationErrorResponse](#OperationErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [LadderPrice](#LadderPrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currencySymbol | String? |  yes  | Currency symbol for currency |
 | offerPrice | Double? |  yes  | Discounted per unit price for current offer object |
 | currencyCode | String? |  yes  | Currency code for all amounts |
 | effective | Int? |  yes  | Current per unit price of product after existing deductions |
 | marked | Int? |  yes  | Original price of product |

---


 
 
 #### [LadderOfferItem](#LadderOfferItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | price | [LadderPrice](#LadderPrice)? |  yes  |  |
 | margin | Int? |  yes  | Percentage value of discount |
 | maxQuantity | Int? |  yes  | Minimum quantity upto which offer is applicable. If not present that offer is applicable on all quantities |
 | minQuantity | Int? |  yes  | Minimum quantity from which offer is applicable |
 | type | String? |  yes  | Offer type |

---


 
 
 #### [LadderPriceOffer](#LadderPriceOffer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  | Promotion id |
 | buyRules | [String: Any]? |  yes  | Buy rules of promotions |
 | calculateOn | String? |  yes  | If this ladder offer is to be calculated on MRP or ESP price |
 | offerText | String? |  yes  | Offer title |
 | promotionGroup | String? |  yes  | Group of promotion belongs to |
 | validTill | String? |  yes  | Datetime ISOString for promotion end date |
 | discountRules | [[String: Any]]? |  yes  | Discount rules of promotions |
 | offerPrices | [[LadderOfferItem](#LadderOfferItem)]? |  yes  |  |
 | freeGiftItems | [[FreeGiftItems](#FreeGiftItems)]? |  yes  | Details of free gift items |
 | description | String? |  yes  | Offer details including T&C |

---


 
 
 #### [CurrencyInfo](#CurrencyInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String? |  yes  |  |
 | symbol | String? |  yes  |  |

---


 
 
 #### [LadderPriceOffers](#LadderPriceOffers)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | availableOffers | [[LadderPriceOffer](#LadderPriceOffer)]? |  yes  |  |
 | currency | [CurrencyInfo](#CurrencyInfo)? |  yes  |  |

---


 
 
 #### [PaymentMeta](#PaymentMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | merchantCode | String? |  yes  |  |
 | type | String? |  yes  |  |
 | paymentGateway | String? |  yes  |  |
 | paymentIdentifier | String? |  yes  |  |

---


 
 
 #### [PaymentMethod](#PaymentMethod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentMeta | [PaymentMeta](#PaymentMeta) |  no  |  |
 | mode | String |  no  |  |
 | payment | String? |  yes  |  |
 | amount | Double? |  yes  |  |
 | name | String? |  yes  |  |
 | paymentExtraIdentifiers | [String: Any]? |  yes  |  |

---


 
 
 #### [CartCheckoutDetailV2Request](#CartCheckoutDetailV2Request)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customMeta | [String: Any]? |  yes  |  |
 | customerDetails | [CustomerDetails](#CustomerDetails)? |  yes  | Customer details |
 | merchantCode | String? |  yes  |  |
 | cartId | String? |  yes  |  |
 | id | String? |  yes  |  |
 | paymentAutoConfirm | Bool? |  yes  |  |
 | paymentMethods | [[PaymentMethod](#PaymentMethod)] |  no  |  |
 | paymentMode | String |  no  |  |
 | aggregator | String? |  yes  |  |
 | addressId | String? |  yes  |  |
 | callbackUrl | String? |  yes  |  |
 | deliveryAddress | [String: Any]? |  yes  |  |
 | staff | [StaffCheckout](#StaffCheckout)? |  yes  |  |
 | orderType | String? |  yes  |  |
 | orderingStore | Int? |  yes  |  |
 | extraMeta | [String: Any]? |  yes  |  |
 | paymentIdentifier | String? |  yes  |  |
 | billingAddress | [String: Any]? |  yes  |  |
 | paymentParams | [String: Any]? |  yes  |  |
 | billingAddressId | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | iin | String? |  yes  |  |
 | network | String? |  yes  |  |
 | type | String? |  yes  |  |
 | cardId | String? |  yes  |  |

---



