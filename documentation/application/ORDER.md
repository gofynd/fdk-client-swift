



##### [Back to Application docs](./README.md)

## Order Methods
Handles all Application order and shipment api(s)
* [getOrders](#getorders)
* [getOrderById](#getorderbyid)
* [getPosOrderById](#getposorderbyid)
* [getShipmentById](#getshipmentbyid)
* [getInvoiceByShipmentId](#getinvoicebyshipmentid)
* [trackShipment](#trackshipment)
* [getCustomerDetailsByShipmentId](#getcustomerdetailsbyshipmentid)
* [sendOtpToShipmentCustomer](#sendotptoshipmentcustomer)
* [verifyOtpShipmentCustomer](#verifyotpshipmentcustomer)
* [getShipmentBagReasons](#getshipmentbagreasons)
* [getShipmentReasons](#getshipmentreasons)
* [updateShipmentStatus](#updateshipmentstatus)



## Methods with example and description


#### getOrders
Get all orders




```swift
applicationClient.order.getOrders(status: status, pageNo: pageNo, pageSize: pageSize, fromDate: fromDate, toDate: toDate, customMeta: customMeta) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| status | Int? | no | A filter to retrieve orders by their current status such as _placed_, _delivered_, etc. |   
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |   
| fromDate | String? | no | The date from which the orders should be retrieved. |   
| toDate | String? | no | The date till which the orders should be retrieved. |   
| customMeta | String? | no | A filter and retrieve data using special fields included for special use-cases |  



Use this API to retrieve all the orders.

*Returned Response:*




[OrderList](#OrderList)

Success. Returns all the orders. Check the example shown below or refer `OrderList` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getOrderById
Get details of an order




```swift
applicationClient.order.getOrderById(orderId: orderId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String | yes | A unique number used for identifying and tracking your orders. |  



Use this API to retrieve order details such as tracking details, shipment, store information using Fynd Order ID.

*Returned Response:*




[OrderById](#OrderById)

Success. Check the example shown below or refer `OrderById` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "order": {
    "bags_for_reorder": [
      {
        "item_id": 7500429,
        "item_size": "OS",
        "store_id": 50,
        "seller_id": 33,
        "article_assignment": {
          "level": "multi-companies",
          "strategy": "low-price"
        },
        "quantity": 3
      }
    ],
    "user_info": {
      "mobile": "9892133001",
      "first_name": "User",
      "last_name": "-",
      "gender": "male"
    },
    "order_created_time": "2022-09-23T12:07:20.000Z",
    "total_shipments_in_order": 2,
    "order_id": "FY632D541F01152493D0",
    "breakup_values": [
      {
        "name": "mrp_total",
        "display": "MRP Total",
        "value": 3000
      },
      {
        "name": "sub_total",
        "display": "Sub Total",
        "value": 1797
      },
      {
        "name": "coupon",
        "display": "Coupon",
        "value": 0
      },
      {
        "name": "discount",
        "display": "Discount",
        "value": -1203
      },
      {
        "name": "promotion",
        "display": "Promotion",
        "value": 0
      },
      {
        "name": "reward_points",
        "display": "Reward Points",
        "value": 0
      },
      {
        "name": "cashback_applied",
        "display": "Cashback Applied",
        "value": 0
      },
      {
        "name": "delivery_charges",
        "display": "Delivery Charges",
        "value": 0
      },
      {
        "name": "cod_charges",
        "display": "COD Charges",
        "value": 0
      },
      {
        "name": "total",
        "display": "Total",
        "value": 1797
      }
    ],
    "shipments": [
      {
        "order_id": "FY632D541F01152493D0",
        "breakup_values": [
          {
            "name": "mrp_total",
            "display": "MRP Total",
            "value": 2000
          },
          {
            "name": "sub_total",
            "display": "Sub Total",
            "value": 1198
          },
          {
            "name": "coupon",
            "display": "Coupon",
            "value": 0
          },
          {
            "name": "discount",
            "display": "Discount",
            "value": -802
          },
          {
            "name": "promotion",
            "display": "Promotion",
            "value": 0
          },
          {
            "name": "reward_points",
            "display": "Reward Points",
            "value": 0
          },
          {
            "name": "cashback_applied",
            "display": "Cashback Applied",
            "value": 0
          },
          {
            "name": "delivery_charges",
            "display": "Delivery Charges",
            "value": 0
          },
          {
            "name": "cod_charges",
            "display": "COD Charges",
            "value": 0
          },
          {
            "name": "total",
            "display": "Total",
            "value": 1198
          }
        ],
        "beneficiary_details": false,
        "shipment_created_at": "2022-09-23T12:07:35.000Z",
        "shipment_id": "16639150404761166748K",
        "shipment_status": {
          "title": "Placed",
          "value": "processing",
          "hex_code": "#02D1CB"
        },
        "track_url": "",
        "traking_no": "",
        "awb_no": "",
        "dp_name": "",
        "tracking_details": [
          {
            "status": "Order Placed",
            "time": "2022-09-23T12:07:35.000Z",
            "is_passed": true,
            "value": "processing"
          },
          {
            "status": "Order Confirmed",
            "time": "",
            "is_passed": false,
            "value": "confirmed"
          },
          {
            "status": "Delivery Partner Assigned",
            "time": "",
            "is_passed": false,
            "value": "dp_assigned"
          },
          {
            "status": "In Transit",
            "time": "",
            "is_passed": false,
            "value": "in_transit"
          },
          {
            "status": "Out For Delivery",
            "time": "",
            "is_passed": false,
            "value": "out_for_delivery"
          },
          {
            "status": "Delivered",
            "time": "",
            "is_passed": false,
            "value": "delivered"
          }
        ],
        "total_bags": 1,
        "order_type": null,
        "promise": {
          "show_promise": true,
          "timestamp": {
            "dp_promise": null,
            "min": "2022-09-26T06:37:17+00:00",
            "max": "2022-09-27T06:37:17+00:00"
          }
        },
        "bags": [
          {
            "id": 67631,
            "current_status": {
              "status": "placed",
              "updated_at": "2022-09-23T12:07:35+00:00",
              "name": "Placed",
              "journey_type": "forward"
            },
            "prices": {
              "price_effective": 599,
              "discount": 401,
              "amount_paid": 599,
              "coupon_effective_discount": 0,
              "delivery_charge": 0,
              "fynd_credits": 0,
              "cod_charges": 0,
              "refund_credit": 0,
              "cashback": 0,
              "refund_amount": 599,
              "added_to_fynd_cash": false,
              "cashback_applied": 0,
              "gst_tax_percentage": 5,
              "value_of_good": 570.48,
              "price_marked": 1000,
              "transfer_price": 0,
              "brand_calculated_amount": 599,
              "promotion_effective_discount": 0,
              "coupon_value": 0,
              "pm_price_split": {
                "": 599
              }
            },
            "item": {
              "name": "FYND Black T-Shirt 03",
              "brand": {
                "name": "lacoste",
                "logo": "https://hdn-1.jiomarketx0.de/x0/brands/pictures/square-logo/original/JK1ZUAgrl-Logo.png"
              },
              "image": [
                "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/Cg5vRX38t-FYND-Black-Cotton-Mens-T-shirt.jpeg",
                "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/QkYTI_VBn-FYND-Black-Cotton-Mens-T-shirt.jpeg",
                "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/QRNIZFn7_-FYND-Black-T-Shirt.jpeg",
                "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/TJLO6V8dW-FYND-Black-T-Shirt.jpeg",
                "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/h0HW_3rr5-FYND-Black-T-Shirt-01.jpeg",
                "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/u1zbaCncl-FYND-Black-T-Shirt-01.jpeg",
                "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/TJLO6V8dW-FYND-Black-T-Shirt.jpeg",
                "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/h0HW_3rr5-FYND-Black-T-Shirt-01.jpeg",
                "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/u1zbaCncl-FYND-Black-T-Shirt-01.jpeg"
              ],
              "slug_key": "fynd-black-cotton-mens-t-shirt",
              "size": "OS",
              "code": "SHIRT-01",
              "id": 7500429,
              "category": {
                "l1": [
                  {
                    "uid": 124,
                    "name": "Apparel",
                    "level": 1,
                    "departments": [
                      {
                        "uid": 24,
                        "name": "Crafts Of India"
                      },
                      {
                        "uid": 8,
                        "name": "Fashion"
                      }
                    ],
                    "gated_category_types": {}
                  }
                ],
                "l2": [
                  {
                    "uid": 50,
                    "name": "Western Wear",
                    "level": 2,
                    "departments": [
                      {
                        "uid": 8,
                        "name": "Fashion"
                      }
                    ],
                    "gated_category_types": {}
                  }
                ],
                "l3": [
                  {
                    "uid": 25,
                    "name": "T-Shirts",
                    "level": 3,
                    "departments": [
                      {
                        "uid": 1,
                        "name": "Men's Fashionjhjh"
                      },
                      {
                        "uid": 8,
                        "name": "Fashion"
                      }
                    ],
                    "gated_category_types": {
                      "food": false
                    }
                  }
                ]
              },
              "seller_identifier": "SHIRT-01"
            },
            "financial_breakup": [
              {
                "price_effective": 599,
                "discount": 401,
                "amount_paid": 599,
                "coupon_effective_discount": 0,
                "delivery_charge": 0,
                "fynd_credits": 0,
                "cod_charges": 0,
                "refund_credit": 0,
                "cashback": 0,
                "refund_amount": 599,
                "added_to_fynd_cash": false,
                "cashback_applied": 0,
                "gst_tax_percentage": 5,
                "value_of_good": 570.48,
                "price_marked": 1000,
                "transfer_price": 0,
                "brand_calculated_amount": 599,
                "promotion_effective_discount": 0,
                "coupon_value": 0,
                "pm_price_split": {
                  "": 599
                },
                "size": "OS",
                "total_units": 1,
                "hsn_code": "62063000",
                "identifiers": {
                  "sku_code": "SHIRT-01"
                },
                "item_name": "FYND Black T-Shirt 03",
                "gst_fee": "28.52",
                "gst_tag": "SGST"
              }
            ],
            "quantity": 2,
            "can_cancel": true,
            "can_return": false,
            "delivery_date": null,
            "returnable_date": null
          }
        ],
        "size_info": {
          "SHIRT-01": {
            "quantity": 2,
            "price_effective": 599,
            "amount_paid": 599,
            "price_marked": 1000,
            "margin": 40.1
          }
        },
        "total_details": {
          "sizes": 1,
          "total_price": 599,
          "pieces": 2
        },
        "fulfilling_store": {
          "name": "Jio-market-store4",
          "company_id": 33,
          "id": 50,
          "code": "store3"
        },
        "fulfilling_company": {
          "id": 33,
          "name": "RELIANCE JIO INFOCOMM LIMITED"
        },
        "delivery_date": null,
        "delivery_address": {
          "id": "62dfe1d112b842b2959de99e",
          "uid": 660,
          "area": "asd",
          "city": "Mumbai",
          "name": "Vaishakh Shetty",
          "email": null,
          "phone": "9892133001",
          "state": "Maharashtra",
          "address": "dsa",
          "country": "India",
          "pincode": "400059",
          "version": "1.0",
          "address1": " asd",
          "address2": "",
          "landmark": "tr",
          "latitude": 19.1157486,
          "address_1": " asd",
          "area_code": "400059",
          "longitude": 72.8773159,
          "created_at": "2022-09-22T18:19:29+00:00",
          "updated_at": "2022-09-22T18:19:29+00:00",
          "address_type": "home",
          "country_code": "91",
          "geo_location": {
            "latitude": 19.1157486,
            "longitude": 72.8773159
          },
          "area_code_slug": "pincode",
          "delivery_address_id": 660,
          "addressee_name": "Vaishakh Shetty",
          "delivery_code_required": 1
        },
        "can_cancel": true,
        "can_return": false,
        "returnable_date": null,
        "show_download_invoice": false,
        "show_track_link": false,
        "prices": {
          "amount_paid": 1198,
          "refund_amount": 1198,
          "price_marked": 2000,
          "cod_charges": 0,
          "coupon_value": 0,
          "discount": 802,
          "cashback_applied": 0,
          "delivery_charge": 0,
          "fynd_credits": 0,
          "cashback": 0,
          "price_effective": 1198,
          "refund_credit": 0,
          "value_of_good": 1140.96,
          "discount_percent": 40
        },
        "can_break": {
          "bag_repriced": {
            "can_break_entity": false
          },
          "cancelled_seller": {
            "can_break_entity": false
          },
          "bag_not_verified": {
            "can_break_entity": false
          },
          "product_not_available": {
            "can_break_entity": false
          },
          "bag_invoiced": {
            "can_break_entity": false
          },
          "store_reassigned": {
            "can_break_entity": false
          },
          "cancelled_fynd": {
            "can_break_entity": false
          },
          "cancelled_operations": {
            "can_break_entity": true
          },
          "cancelled_customer": {
            "can_break_entity": true
          },
          "bag_not_confirmed": {
            "can_break_entity": true
          },
          "delivery_sla_breached": {
            "can_break_entity": false
          },
          "bag_confirmed": {
            "can_break_entity": true
          }
        },
        "need_help_url": "https://fynd.freshdesk.com/support/solutions/33000003306",
        "payment": {
          "logo": "https://hdn-1.fynd.com/payment/Pos+Logo.png",
          "mode": "Jio Partner Pay",
          "mop": "PREPAID",
          "status": "Paid"
        },
        "user_info": {
          "email": "paymentsdummy@gofynd.com",
          "gender": "male",
          "mobile": "9892133001",
          "name": "User -"
        },
        "comment": "",
        "invoice": {
          "updated_date": "1970-01-01T00:00:00.000Z",
          "store_invoice_id": null,
          "invoice_url": "",
          "label_url": ""
        },
        "refund_details": {
          "rrn": null
        }
      },
      {
        "order_id": "FY632D541F01152493D0",
        "breakup_values": [
          {
            "name": "mrp_total",
            "display": "MRP Total",
            "value": 1000
          },
          {
            "name": "sub_total",
            "display": "Sub Total",
            "value": 599
          },
          {
            "name": "coupon",
            "display": "Coupon",
            "value": 0
          },
          {
            "name": "discount",
            "display": "Discount",
            "value": -401
          },
          {
            "name": "promotion",
            "display": "Promotion",
            "value": 0
          },
          {
            "name": "reward_points",
            "display": "Reward Points",
            "value": 0
          },
          {
            "name": "cashback_applied",
            "display": "Cashback Applied",
            "value": 0
          },
          {
            "name": "delivery_charges",
            "display": "Delivery Charges",
            "value": 0
          },
          {
            "name": "cod_charges",
            "display": "COD Charges",
            "value": 0
          },
          {
            "name": "total",
            "display": "Total",
            "value": 599
          }
        ],
        "beneficiary_details": false,
        "shipment_created_at": "2022-09-23T12:07:58.000Z",
        "shipment_id": "16639150772951172388K",
        "shipment_status": {
          "title": "Refund Initiated",
          "value": "refund_initiated",
          "hex_code": "#FE8F46"
        },
        "track_url": "",
        "traking_no": "",
        "awb_no": "",
        "dp_name": "",
        "tracking_details": [
          {
            "status": "Order Placed",
            "time": "2022-09-23T12:07:35.000Z",
            "is_passed": true,
            "value": "processing"
          },
          {
            "status": "Cancelled",
            "time": "2022-09-23T12:07:57.000Z",
            "is_passed": true,
            "value": "cancelled"
          },
          {
            "status": "Refund Processing",
            "time": "2022-09-23T12:07:58.000Z",
            "is_passed": true,
            "value": "refund_initiated",
            "tracking_details": [
              {
                "status": "Refund Initiated",
                "time": "2022-09-23T12:07:58.000Z",
                "is_passed": true,
                "value": "refund_initiated"
              },
              {
                "status": "Refund Completed",
                "time": "",
                "is_passed": false,
                "value": "refund_done"
              }
            ]
          }
        ],
        "total_bags": 1,
        "order_type": null,
        "promise": {
          "show_promise": false,
          "timestamp": {
            "dp_promise": null,
            "min": "2022-09-26T06:37:17+00:00",
            "max": "2022-09-27T06:37:17+00:00"
          }
        },
        "bags": [
          {
            "id": 67632,
            "current_status": {
              "status": "refund_acknowledged",
              "updated_at": "2022-09-23T12:07:58+00:00",
              "name": "Refund Acknowledged",
              "journey_type": null
            },
            "prices": {
              "price_effective": 599,
              "discount": 401,
              "amount_paid": 599,
              "coupon_effective_discount": 0,
              "delivery_charge": 0,
              "fynd_credits": 0,
              "cod_charges": 0,
              "refund_credit": 0,
              "cashback": 0,
              "refund_amount": 599,
              "added_to_fynd_cash": false,
              "cashback_applied": 0,
              "gst_tax_percentage": 5,
              "value_of_good": 570.48,
              "price_marked": 1000,
              "transfer_price": 0,
              "brand_calculated_amount": 599,
              "promotion_effective_discount": 0,
              "coupon_value": 0,
              "pm_price_split": {
                "": 599
              }
            },
            "item": {
              "name": "FYND Black T-Shirt 03",
              "brand": {
                "name": "lacoste",
                "logo": "https://hdn-1.jiomarketx0.de/x0/brands/pictures/square-logo/original/JK1ZUAgrl-Logo.png"
              },
              "image": [
                "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/Cg5vRX38t-FYND-Black-Cotton-Mens-T-shirt.jpeg",
                "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/QkYTI_VBn-FYND-Black-Cotton-Mens-T-shirt.jpeg",
                "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/QRNIZFn7_-FYND-Black-T-Shirt.jpeg",
                "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/TJLO6V8dW-FYND-Black-T-Shirt.jpeg",
                "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/h0HW_3rr5-FYND-Black-T-Shirt-01.jpeg",
                "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/u1zbaCncl-FYND-Black-T-Shirt-01.jpeg",
                "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/TJLO6V8dW-FYND-Black-T-Shirt.jpeg",
                "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/h0HW_3rr5-FYND-Black-T-Shirt-01.jpeg",
                "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/u1zbaCncl-FYND-Black-T-Shirt-01.jpeg"
              ],
              "slug_key": "fynd-black-cotton-mens-t-shirt",
              "size": "OS",
              "code": "SHIRT-01",
              "id": 7500429,
              "category": {
                "l1": [
                  {
                    "uid": 124,
                    "name": "Apparel",
                    "level": 1,
                    "departments": [
                      {
                        "uid": 24,
                        "name": "Crafts Of India"
                      },
                      {
                        "uid": 8,
                        "name": "Fashion"
                      }
                    ],
                    "gated_category_types": {}
                  }
                ],
                "l2": [
                  {
                    "uid": 50,
                    "name": "Western Wear",
                    "level": 2,
                    "departments": [
                      {
                        "uid": 8,
                        "name": "Fashion"
                      }
                    ],
                    "gated_category_types": {}
                  }
                ],
                "l3": [
                  {
                    "uid": 25,
                    "name": "T-Shirts",
                    "level": 3,
                    "departments": [
                      {
                        "uid": 1,
                        "name": "Men's Fashionjhjh"
                      },
                      {
                        "uid": 8,
                        "name": "Fashion"
                      }
                    ],
                    "gated_category_types": {
                      "food": false
                    }
                  }
                ]
              },
              "seller_identifier": "SHIRT-01"
            },
            "financial_breakup": [
              {
                "price_effective": 599,
                "discount": 401,
                "amount_paid": 599,
                "coupon_effective_discount": 0,
                "delivery_charge": 0,
                "fynd_credits": 0,
                "cod_charges": 0,
                "refund_credit": 0,
                "cashback": 0,
                "refund_amount": 599,
                "added_to_fynd_cash": false,
                "cashback_applied": 0,
                "gst_tax_percentage": 5,
                "value_of_good": 570.48,
                "price_marked": 1000,
                "transfer_price": 0,
                "brand_calculated_amount": 599,
                "promotion_effective_discount": 0,
                "coupon_value": 0,
                "pm_price_split": {
                  "": 599
                },
                "size": "OS",
                "total_units": 1,
                "hsn_code": "62063000",
                "identifiers": {
                  "sku_code": "SHIRT-01"
                },
                "item_name": "FYND Black T-Shirt 03",
                "gst_fee": "28.52",
                "gst_tag": "SGST"
              }
            ],
            "quantity": 1,
            "can_cancel": false,
            "can_return": false,
            "delivery_date": null,
            "returnable_date": null
          }
        ],
        "size_info": {
          "SHIRT-01": {
            "quantity": 1,
            "price_effective": 599,
            "amount_paid": 599,
            "price_marked": 1000,
            "margin": 40.1
          }
        },
        "total_details": {
          "sizes": 1,
          "total_price": 599,
          "pieces": 1
        },
        "fulfilling_store": {
          "name": "Jio-market-store4",
          "company_id": 33,
          "id": 50,
          "code": "store3"
        },
        "fulfilling_company": {
          "id": 33,
          "name": "RELIANCE JIO INFOCOMM LIMITED"
        },
        "delivery_date": null,
        "delivery_address": {
          "id": "62dfe1d112b842b2959de99e",
          "uid": 660,
          "area": "asd",
          "city": "Mumbai",
          "name": "Vaishakh Shetty",
          "email": null,
          "phone": "9892133001",
          "state": "Maharashtra",
          "address": "dsa",
          "country": "India",
          "pincode": "400059",
          "version": "1.0",
          "address1": " asd",
          "address2": "",
          "landmark": "tr",
          "latitude": 19.1157486,
          "address_1": " asd",
          "area_code": "400059",
          "longitude": 72.8773159,
          "created_at": "2022-09-22T18:19:29+00:00",
          "updated_at": "2022-09-22T18:19:29+00:00",
          "address_type": "home",
          "country_code": "91",
          "geo_location": {
            "latitude": 19.1157486,
            "longitude": 72.8773159
          },
          "area_code_slug": "pincode",
          "delivery_address_id": 660,
          "addressee_name": "Vaishakh Shetty",
          "delivery_code_required": 1
        },
        "can_cancel": false,
        "can_return": false,
        "returnable_date": null,
        "show_download_invoice": false,
        "show_track_link": false,
        "prices": {
          "amount_paid": 599,
          "refund_amount": 599,
          "price_marked": 1000,
          "cod_charges": 0,
          "coupon_value": 0,
          "discount": 401,
          "cashback_applied": 0,
          "delivery_charge": 0,
          "fynd_credits": 0,
          "cashback": 0,
          "price_effective": 599,
          "refund_credit": 0,
          "value_of_good": 570.48,
          "discount_percent": 40
        },
        "can_break": {
          "refund_completed": {
            "can_break_entity": false
          },
          "rto_delivery_attempt_failed": {
            "can_break_entity": false
          },
          "return_rejected_by_dp": {
            "can_break_entity": false
          },
          "return_to_origin": {
            "can_break_entity": false
          },
          "rto_initiated": {
            "can_break_entity": false
          },
          "refund_failed": {
            "can_break_entity": false
          },
          "bag_picked": {
            "can_break_entity": false
          },
          "rto_bag_delivered": {
            "can_break_entity": false
          },
          "return_dp_assigned": {
            "can_break_entity": false
          },
          "return_bag_in_transit": {
            "can_break_entity": false
          },
          "return_bag_out_for_delivery": {
            "can_break_entity": false
          },
          "return_initiated": {
            "can_break_entity": true
          },
          "return_rejected_by_store": {
            "can_break_entity": false
          },
          "rto_bag_out_for_delivery": {
            "can_break_entity": false
          },
          "deadstock": {
            "can_break_entity": false
          },
          "bag_lost": {
            "can_break_entity": false
          },
          "return_bag_delivered": {
            "can_break_entity": false
          },
          "return_completed": {
            "can_break_entity": false
          },
          "return_bag_picked": {
            "can_break_entity": false
          },
          "rto_bag_accepted": {
            "can_break_entity": false
          },
          "deadstock_defective": {
            "can_break_entity": false
          },
          "rto_in_transit": {
            "can_break_entity": false
          },
          "return_accepted": {
            "can_break_entity": false
          },
          "out_for_pickup": {
            "can_break_entity": false
          },
          "return_bag_not_delivered": {
            "can_break_entity": false
          },
          "cancelled_customer": {
            "can_break_entity": true
          },
          "return_bag_lost": {
            "can_break_entity": false
          }
        },
        "need_help_url": "https://fynd.freshdesk.com/support/solutions/33000003306",
        "payment": {
          "logo": "https://hdn-1.fynd.com/payment/Pos+Logo.png",
          "mode": "Jio Partner Pay",
          "mop": "PREPAID",
          "status": "Paid"
        },
        "user_info": {
          "email": "paymentsdummy@gofynd.com",
          "gender": "male",
          "mobile": "9892133001",
          "name": "User -"
        },
        "comment": "",
        "invoice": {
          "updated_date": "1970-01-01T00:00:00.000Z",
          "store_invoice_id": null,
          "invoice_url": "",
          "label_url": ""
        },
        "refund_details": {
          "rrn": ""
        }
      }
    ],
    "is_validated": false
  }
}
```
</details>









---


#### getPosOrderById
Get POS Order




```swift
applicationClient.order.getPosOrderById(orderId: orderId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String | yes | A unique number used for identifying and tracking your orders. |  



Use this API to retrieve a POS order and all its details such as tracking details, shipment, store information using Fynd Order ID.

*Returned Response:*




[OrderList](#OrderList)

Success. Check the example shown below or refer `PosOrderById` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "order": {
    "order_created_time": "2022-08-11T16:09:17.000Z",
    "total_shipments_in_order": 1,
    "order_id": "FY62F4CE260113EFCC64",
    "breakup_values": [
      {
        "name": "mrp_total",
        "display": "MRP Total",
        "value": 1000
      },
      {
        "name": "sub_total",
        "display": "Sub Total",
        "value": 999
      },
      {
        "name": "coupon",
        "display": "Coupon",
        "value": 0
      },
      {
        "name": "discount",
        "display": "Discount",
        "value": -1
      },
      {
        "name": "promotion",
        "display": "Promotion",
        "value": 0
      },
      {
        "name": "reward_points",
        "display": "Reward Points",
        "value": 0
      },
      {
        "name": "cashback_applied",
        "display": "Cashback Applied",
        "value": 0
      },
      {
        "name": "delivery_charges",
        "display": "Delivery Charges",
        "value": 0
      },
      {
        "name": "cod_charges",
        "display": "COD Charges",
        "value": 0
      },
      {
        "name": "total",
        "display": "Total",
        "value": 999
      }
    ],
    "shipments": [
      {
        "order_id": "FY62F4CE260113EFCC64",
        "breakup_values": [
          {
            "name": "mrp_total",
            "display": "MRP Total",
            "value": 1000
          },
          {
            "name": "sub_total",
            "display": "Sub Total",
            "value": 999
          },
          {
            "name": "coupon",
            "display": "Coupon",
            "value": 0
          },
          {
            "name": "discount",
            "display": "Discount",
            "value": -1
          },
          {
            "name": "promotion",
            "display": "Promotion",
            "value": 0
          },
          {
            "name": "reward_points",
            "display": "Reward Points",
            "value": 0
          },
          {
            "name": "cashback_applied",
            "display": "Cashback Applied",
            "value": 0
          },
          {
            "name": "delivery_charges",
            "display": "Delivery Charges",
            "value": 0
          },
          {
            "name": "cod_charges",
            "display": "COD Charges",
            "value": 0
          },
          {
            "name": "total",
            "display": "Total",
            "value": 999
          }
        ],
        "beneficiary_details": false,
        "shipment_created_at": "2022-08-22T21:33:33.000Z",
        "shipment_id": "16602143565551542371K",
        "shipment_status": {
          "title": "DP Assigned",
          "value": "dp_assigned",
          "hex_code": "#FE8F46"
        },
        "track_url": "",
        "traking_no": "Tracking No.: 118022046",
        "awb_no": "118022046",
        "dp_name": "ecom_jio",
        "tracking_details": [
          {
            "status": "Order Placed",
            "time": "2022-08-11T16:09:17.000Z",
            "is_passed": true,
            "value": "processing"
          },
          {
            "status": "Order Confirmed",
            "time": "2022-08-22T17:14:02.000Z",
            "is_passed": true,
            "value": "confirmed"
          },
          {
            "status": "Delivery Partner Assigned",
            "time": "2022-08-22T17:14:13.000Z",
            "is_passed": true,
            "value": "dp_assigned"
          },
          {
            "status": "In Transit",
            "time": "",
            "is_passed": false,
            "value": "in_transit"
          },
          {
            "status": "Out For Delivery",
            "time": "",
            "is_passed": false,
            "value": "out_for_delivery"
          },
          {
            "status": "Delivered",
            "time": "",
            "is_passed": false,
            "value": "delivered"
          }
        ],
        "total_bags": 1,
        "order_type": null,
        "promise": {
          "show_promise": false,
          "timestamp": {
            "dp_promise": null,
            "min": "2022-08-15T09:38:44+00:00",
            "max": "2022-08-18T09:38:44+00:00"
          }
        },
        "bags": [
          {
            "id": 59987,
            "current_status": {
              "status": "bag_not_picked",
              "updated_at": "2022-08-22T21:33:33+00:00",
              "name": "Bag Not Picked",
              "journey_type": "forward"
            },
            "prices": {
              "price_effective": 999,
              "discount": 1,
              "amount_paid": 999,
              "coupon_effective_discount": 0,
              "delivery_charge": 0,
              "fynd_credits": 0,
              "cod_charges": 0,
              "refund_credit": 0,
              "cashback": 0,
              "refund_amount": 999,
              "added_to_fynd_cash": false,
              "cashback_applied": 0,
              "gst_tax_percentage": 18,
              "value_of_good": 846.61,
              "price_marked": 1000,
              "transfer_price": 0,
              "brand_calculated_amount": 999,
              "promotion_effective_discount": 0,
              "coupon_value": 0,
              "pm_price_split": {
                "Net Banking": 999
              }
            },
            "item": {
              "name": "Puma Men Tshirt",
              "brand": {
                "name": "Dabur",
                "logo": "https://hdn-1.jiomarketx0.de/x0/brands/pictures/square-logo/original/kv5DZy0J8-Logo.jpeg"
              },
              "image": [
                "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/e6qJ_Bihn-61x838nYQUL._UL1440_.jpg"
              ],
              "slug_key": "puma-men-tshirt",
              "size": "OS",
              "code": "PUMATSHIRT",
              "id": 7507572,
              "category": [],
              "seller_identifier": "PUMATSHIRT"
            },
            "financial_breakup": [
              {
                "price_effective": 999,
                "discount": 1,
                "amount_paid": 999,
                "coupon_effective_discount": 0,
                "delivery_charge": 0,
                "fynd_credits": 0,
                "cod_charges": 0,
                "refund_credit": 0,
                "cashback": 0,
                "refund_amount": 999,
                "added_to_fynd_cash": false,
                "cashback_applied": 0,
                "gst_tax_percentage": 18,
                "value_of_good": 846.61,
                "price_marked": 1000,
                "transfer_price": 0,
                "brand_calculated_amount": 999,
                "promotion_effective_discount": 0,
                "coupon_value": 0,
                "pm_price_split": {
                  "Net Banking": 999
                },
                "size": "OS",
                "total_units": 1,
                "hsn_code": "99972900",
                "identifiers": {
                  "sku_code": "PUMATSHIRT"
                },
                "item_name": "Puma Men Tshirt",
                "gst_fee": "152.38",
                "gst_tag": "IGST"
              }
            ],
            "quantity": 1
          }
        ],
        "size_info": {
          "PUMATSHIRT": {
            "quantity": 1,
            "price_effective": 999,
            "amount_paid": 999,
            "price_marked": 1000,
            "margin": 0.1
          }
        },
        "total_details": {
          "sizes": 1,
          "total_price": 999,
          "pieces": 1
        },
        "fulfilling_store": {
          "name": "jio-location",
          "company_id": 41,
          "id": 8,
          "code": "jio-location"
        },
        "fulfilling_company": {
          "id": 41,
          "name": "Jio"
        }
      }
    ],
    "is_validated": false
  }
}
```
</details>









---


#### getShipmentById
Get details of a shipment




```swift
applicationClient.order.getShipmentById(shipmentId: shipmentId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  



Use this API to retrieve shipment details such as price breakup, tracking details, store information, etc. using Shipment ID.

*Returned Response:*




[ShipmentById](#ShipmentById)

Success. Check the example shown below or refer `ShipmentById` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "shipment": {
    "order_id": "FY62F3B8290150D13E36",
    "breakup_values": [
      {
        "name": "mrp_total",
        "display": "MRP Total",
        "value": 50
      },
      {
        "name": "sub_total",
        "display": "Sub Total",
        "value": 50
      },
      {
        "name": "coupon",
        "display": "Coupon",
        "value": 0
      },
      {
        "name": "discount",
        "display": "Discount",
        "value": 0
      },
      {
        "name": "promotion",
        "display": "Promotion",
        "value": 0
      },
      {
        "name": "reward_points",
        "display": "Reward Points",
        "value": 0
      },
      {
        "name": "cashback_applied",
        "display": "Cashback Applied",
        "value": 0
      },
      {
        "name": "delivery_charges",
        "display": "Delivery Charges",
        "value": 0
      },
      {
        "name": "cod_charges",
        "display": "COD Charges",
        "value": 0
      },
      {
        "name": "total",
        "display": "Total",
        "value": 50
      }
    ],
    "beneficiary_details": false,
    "need_help_url": "https://fynd.freshdesk.com/support/solutions/33000003306",
    "shipment_created_at": "2022-08-10T19:22:42.000Z",
    "shipment_id": "16601395620321798247K",
    "shipment_status": {
      "title": "DP Assigned",
      "value": "dp_assigned",
      "hex_code": "#FE8F46"
    },
    "track_url": "",
    "traking_no": "Tracking No.: 5923410031146",
    "awb_no": "5923410031146",
    "dp_name": "delhivery_jio_surface",
    "tracking_details": [
      {
        "status": "Order Placed",
        "time": "2022-08-10T19:22:55.000Z",
        "is_passed": true,
        "value": "processing"
      },
      {
        "status": "Order Confirmed",
        "time": "2022-08-18T19:11:02.000Z",
        "is_passed": true,
        "value": "confirmed"
      },
      {
        "status": "Delivery Partner Assigned",
        "time": "2022-08-18T19:11:38.000Z",
        "is_passed": true,
        "value": "dp_assigned"
      },
      {
        "status": "In Transit",
        "time": "",
        "is_passed": false,
        "value": "in_transit"
      },
      {
        "status": "Out For Delivery",
        "time": "",
        "is_passed": false,
        "value": "out_for_delivery"
      },
      {
        "status": "Delivered",
        "time": "",
        "is_passed": false,
        "value": "delivered"
      }
    ],
    "total_bags": 1,
    "promise": {
      "show_promise": false,
      "timestamp": {
        "min": "2022-08-14T13:52:37+00:00",
        "max": "2022-08-17T13:52:37+00:00",
        "dp_promise": null
      }
    },
    "bags": [
      {
        "id": 59624,
        "current_status": {
          "status": "bag_not_picked",
          "updated_at": "2022-08-18T23:46:11+00:00",
          "name": "Bag Not Picked",
          "journey_type": "forward"
        },
        "prices": {
          "price_effective": 50,
          "discount": 0,
          "amount_paid": 50,
          "coupon_effective_discount": 0,
          "delivery_charge": 0,
          "fynd_credits": 0,
          "cod_charges": 0,
          "refund_credit": 0,
          "cashback": 0,
          "refund_amount": 50,
          "added_to_fynd_cash": false,
          "cashback_applied": 0,
          "gst_tax_percentage": 18,
          "value_of_good": 42.37,
          "price_marked": 50,
          "transfer_price": 0,
          "brand_calculated_amount": 50,
          "promotion_effective_discount": 0,
          "coupon_value": 0,
          "pm_price_split": {
            "COD": 50
          }
        },
        "item": {
          "name": "Tissues",
          "brand": {
            "name": "Zepto",
            "logo": "https://hdn-1.jiomarketx0.de/x0/brands/pictures/square-logo/original/5XLRHXC5H-Logo.png"
          },
          "image": [
            "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/hGov80Pbv-411yLXtNYNL._SL1000_.jpg",
            "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/U-6bpneFP-Tissues.jpeg",
            "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/U-6bpneFP-Tissues.jpeg",
            "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/U-6bpneFP-Tissues.jpeg",
            "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/U-6bpneFP-Tissues.jpeg",
            "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/U-6bpneFP-Tissues.jpeg",
            "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/U-6bpneFP-Tissues.jpeg",
            "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/U-6bpneFP-Tissues.jpeg",
            "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/U-6bpneFP-Tissues.jpeg",
            "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/U-6bpneFP-Tissues.jpeg",
            "https://hdn-1.jiomarketx0.de/x0/products/pictures/item/free/270x0/U-6bpneFP-Tissues.jpeg"
          ],
          "slug_key": "tissues",
          "size": "OS",
          "code": "TIS-102",
          "id": 7500474,
          "seller_identifier": "987432134"
        },
        "financial_breakup": [
          {
            "price_effective": 50,
            "discount": 0,
            "amount_paid": 50,
            "coupon_effective_discount": 0,
            "delivery_charge": 0,
            "fynd_credits": 0,
            "cod_charges": 0,
            "refund_credit": 0,
            "cashback": 0,
            "refund_amount": 50,
            "added_to_fynd_cash": false,
            "cashback_applied": 0,
            "gst_tax_percentage": 18,
            "value_of_good": 42.37,
            "price_marked": 50,
            "transfer_price": 0,
            "brand_calculated_amount": 50,
            "promotion_effective_discount": 0,
            "coupon_value": 0,
            "pm_price_split": {
              "COD": 50
            },
            "size": "OS",
            "total_units": 1,
            "hsn_code": "70099200",
            "identifiers": {
              "sku_code": "987432134"
            },
            "item_name": "Tissues",
            "gst_fee": "7.62",
            "gst_tag": "SGST"
          }
        ],
        "quantity": 1,
        "departments": [
          31
        ],
        "can_cancel": false,
        "can_return": false
      }
    ],
    "size_info": {
      "TIS-102": {
        "quantity": 1,
        "price_effective": 50,
        "amount_paid": 50,
        "price_marked": 50,
        "margin": 0
      }
    },
    "total_details": {
      "sizes": 1,
      "total_price": 50,
      "pieces": 1
    },
    "fulfilling_store": {
      "name": "Jio-market-store3",
      "company_id": 33,
      "id": 50,
      "code": "store3"
    },
    "fulfilling_company": {
      "id": 33,
      "name": "RELIANCE JIO INFOCOMM LIMITED"
    },
    "delivery_address": {
      "id": "62e8fc91c1700b808fe528bd",
      "uid": 745,
      "area": "test",
      "city": "Mumbai",
      "name": "abc",
      "email": "abc@gofynd.com",
      "phone": "1234567890",
      "state": "Maharashtra",
      "address": "1234",
      "country": "India",
      "pincode": "400074",
      "version": "1.0",
      "address1": " test",
      "address2": "",
      "landmark": "test",
      "latitude": 19.0653252,
      "address_1": " test",
      "area_code": "400074",
      "longitude": 72.8423802,
      "created_at": "2022-08-10T18:52:38+00:00",
      "updated_at": "2022-08-10T18:52:38+00:00",
      "address_type": "home",
      "country_code": "91",
      "geo_location": {
        "latitude": 19.0653252,
        "longitude": 72.8423802
      },
      "area_code_slug": "pincode",
      "delivery_address_id": 745,
      "addressee_name": "abc",
      "delivery_code_required": 1
    },
    "can_cancel": false,
    "can_return": false,
    "delivery_date": null,
    "returnable_date": null,
    "show_download_invoice": true,
    "show_track_link": true,
    "prices": {
      "amount_paid": 50,
      "refund_amount": 50,
      "price_marked": 50,
      "cod_charges": 0,
      "coupon_value": 0,
      "discount": 0,
      "cashback_applied": 0,
      "delivery_charge": 0,
      "fynd_credits": 0,
      "cashback": 0,
      "price_effective": 50,
      "refund_credit": 0,
      "value_of_good": 42.37
    },
    "can_break": {
      "bag_not_picked": {
        "can_break_entity": false
      },
      "cancelled_customer": {
        "can_break_entity": true
      },
      "bag_picked": {
        "can_break_entity": false
      },
      "cancelled_fynd": {
        "can_break_entity": true
      },
      "bag_rescheduled": {
        "can_break_entity": false
      },
      "cancelled_at_dp": {
        "can_break_entity": false
      },
      "handed_over_to_dg": {
        "can_break_entity": false
      },
      "dp_assigned": {
        "can_break_entity": false
      },
      "cancelled_operations": {
        "can_break_entity": false
      },
      "cancelled_seller": {
        "can_break_entity": false
      },
      "out_for_pickup": {
        "can_break_entity": false
      },
      "bag_pick_failed": {
        "can_break_entity": false
      },
      "update_qr_code": {
        "can_break_entity": false
      }
    },
    "payment": {
      "logo": "https://hdn-1.fynd.com/payment/Pos+Logo.png",
      "mode": "Jio Partner Pay",
      "mop": "COD",
      "display_name": "COD",
      "payment_mode": "COD",
      "status": "Unpaid"
    },
    "user_info": {
      "email": "paymentsdummy@gofynd.com",
      "gender": "male",
      "mobile": "1234567890",
      "name": "User -"
    },
    "comment": "",
    "invoice": {
      "updated_date": "2022-08-18T19:11:02.000Z",
      "store_invoice_id": "00000050AA000147",
      "invoice_url": "",
      "label_url": ""
    },
    "refund_details": {
      "rrn": ""
    }
  }
}
```
</details>









---


#### getInvoiceByShipmentId
Get Invoice of a shipment




```swift
applicationClient.order.getInvoiceByShipmentId(shipmentId: shipmentId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes | ID of the shipment. |  



Use this API to retrieve shipment invoice.

*Returned Response:*




[ResponseGetInvoiceShipment](#ResponseGetInvoiceShipment)

Success. Check the example shown below or refer `ShipmentById` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### trackShipment
Track shipment




```swift
applicationClient.order.trackShipment(shipmentId: shipmentId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  



Track Shipment by shipment id, for application based on application Id

*Returned Response:*




[ShipmentTrack](#ShipmentTrack)

Success. Check the example shown below or refer `ShipmentTrack` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "results": [
    {
      "awb": "string",
      "updated_at": "string",
      "last_location_recieved_at": "string",
      "reason": "string",
      "shipment_type": "string",
      "status": "string",
      "updated_time": "string",
      "account_name": "string"
    }
  ]
}
```
</details>









---


#### getCustomerDetailsByShipmentId
Get Customer Details by Shipment Id




```swift
applicationClient.order.getCustomerDetailsByShipmentId(orderId: orderId, shipmentId: shipmentId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String | yes | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |   
| shipmentId | String | yes | A unique number used for identifying and tracking your orders. |  



Use this API to retrieve customer details such as mobileno using Shipment ID.

*Returned Response:*




[CustomerDetailsResponse](#CustomerDetailsResponse)

Success. Check the example shown below or refer `CustomerDetailsByShipmentId` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "order_id": "FYMP629D972D01B6BD76",
  "shipment_id": "16544950215681060915J",
  "name": "sagar Kulkarni",
  "phone": "XXX-XXX-6780",
  "country": "India"
}
```
</details>









---


#### sendOtpToShipmentCustomer
Send and Resend Otp code to Order-Shipment customer




```swift
applicationClient.order.sendOtpToShipmentCustomer(orderId: orderId, shipmentId: shipmentId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String | yes | A unique number used for identifying and tracking your orders. |   
| shipmentId | String | yes | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  



Use this API to send OTP to the customer of the mapped Shipment.

*Returned Response:*




[SendOtpToCustomerResponse](#SendOtpToCustomerResponse)

Success to acknowledge the service was notified




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "request_id": "0fe0d6e16205ddc57d212e947ee31896",
  "message": "OTP sent",
  "resend_timer": 30
}
```
</details>









---


#### verifyOtpShipmentCustomer
Verify Otp code




```swift
applicationClient.order.verifyOtpShipmentCustomer(orderId: orderId, shipmentId: shipmentId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String | yes | A unique number used for identifying and tracking your orders. |   
| shipmentId | String | yes | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  
| body | VerifyOtp | yes | Request body |


Use this API to verify OTP and create a session token with custom payload.

*Returned Response:*




[VerifyOtpResponse](#VerifyOtpResponse)

Success, the code is valid and returns a session token




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### getShipmentBagReasons
Get reasons behind full or partial cancellation of a shipment




```swift
applicationClient.order.getShipmentBagReasons(shipmentId: shipmentId, bagId: bagId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes | ID of the bag. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |   
| bagId | String | yes | ID of the bag. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  



Use this API to retrieve the issues that led to the cancellation of bags within a shipment.

*Returned Response:*




[ShipmentBagReasons](#ShipmentBagReasons)

Success. Check the example shown below or refer `ShipmentBagReasons` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "reasons": [
    {
      "id": 1,
      "display_name": "Not available",
      "qc_type": [],
      "question_set": []
    },
    {
      "reasons": [
        {
          "id": 2,
          "display_name": "Processing other orders",
          "qc_type": [],
          "question_set": []
        },
        {
          "id": 3,
          "display_name": "Printer not working",
          "qc_type": [],
          "question_set": []
        },
        {
          "reasons": [
            {
              "id": 4,
              "display_name": "Card issues",
              "qc_type": [],
              "question_set": []
            }
          ]
        }
      ]
    },
    {
      "id": 4,
      "display_name": "Card issues",
      "qc_type": [],
      "question_set": []
    }
  ]
}
```
</details>









---


#### getShipmentReasons
Get reasons behind full or partial cancellation of a shipment




```swift
applicationClient.order.getShipmentReasons(shipmentId: shipmentId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  



Use this API to retrieve the issues that led to the cancellation of bags within a shipment.

*Returned Response:*




[ShipmentReasons](#ShipmentReasons)

Success. Check the example shown below or refer `ShipmentBagReasons` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "reasons": [
    {
      "reason_id": 115,
      "priority": 9,
      "reason_text": "Wrong size/colour delivered",
      "show_text_area": false,
      "feedback_type": "bag",
      "flow": "return"
    },
    {
      "reason_id": 116,
      "priority": 10,
      "reason_text": "Product does not fit me",
      "show_text_area": false,
      "feedback_type": "bag",
      "flow": "return"
    },
    {
      "reason_id": 117,
      "priority": 11,
      "reason_text": "Quality of product is not good",
      "show_text_area": false,
      "feedback_type": "bag",
      "flow": "return"
    },
    {
      "reason_id": 118,
      "priority": 12,
      "reason_text": "Wrong product delivered",
      "show_text_area": true,
      "feedback_type": "bag",
      "flow": "return"
    },
    {
      "reason_id": 119,
      "priority": 13,
      "reason_text": "Damaged product delivered",
      "show_text_area": true,
      "feedback_type": "bag",
      "flow": "return"
    },
    {
      "reason_id": 120,
      "priority": 14,
      "reason_text": "Used product delivered",
      "show_text_area": true,
      "feedback_type": "bag",
      "flow": "return"
    },
    {
      "reason_id": 124,
      "priority": 15,
      "reason_text": "Missing Items/Partially Received",
      "show_text_area": true,
      "feedback_type": "bag",
      "flow": "return"
    },
    {
      "reason_id": 121,
      "priority": 16,
      "reason_text": "Found better price elsewhere",
      "show_text_area": true,
      "feedback_type": "bag",
      "flow": "return"
    },
    {
      "reason_id": 122,
      "priority": 17,
      "reason_text": "Product looks different from image",
      "show_text_area": true,
      "feedback_type": "bag",
      "flow": "return"
    },
    {
      "reason_id": 123,
      "priority": 18,
      "reason_text": "Other issue",
      "show_text_area": true,
      "feedback_type": "bag",
      "flow": "return"
    }
  ]
}
```
</details>









---


#### updateShipmentStatus
Update the shipment status




```swift
applicationClient.order.updateShipmentStatus(shipmentId: shipmentId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  
| body | UpdateShipmentStatusRequest | yes | Request body |


Use this API to update the status of a shipment using its shipment ID.

*Returned Response:*




[ShipmentApplicationStatusResponse](#ShipmentApplicationStatusResponse)

Successfully updateShipmentStatus!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "statuses": [
    {
      "shipments": {
        "16291129095851065963": {
          "status": 400,
          "message": {
            "16291129095851065963": "Invalid State Transition bag_invoiced detected for given entity"
          },
          "code": null,
          "exception": "ValidationError",
          "stack_trace": null
        }
      }
    }
  ]
}
```
</details>









---



### Schemas

 
 
 #### [OrderStatuses](#OrderStatuses)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | isSelected | Bool? |  yes  |  |
 | value | Int? |  yes  |  |

---


 
 
 #### [OrderFilters](#OrderFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | statuses | [[OrderStatuses](#OrderStatuses)]? |  yes  |  |

---


 
 
 #### [ShipmentPayment](#ShipmentPayment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentMode | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | mode | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | status | String? |  yes  |  |
 | mop | String? |  yes  |  |

---


 
 
 #### [Invoice](#Invoice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | updatedDate | String? |  yes  |  |
 | labelUrl | String? |  yes  |  |
 | invoiceUrl | String? |  yes  |  |

---


 
 
 #### [Prices](#Prices)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | discount | Double? |  yes  |  |
 | promotionEffectiveDiscount | Double? |  yes  |  |
 | couponEffectiveDiscount | Double? |  yes  |  |
 | priceMarked | Double? |  yes  |  |
 | gstTaxPercentage | Double? |  yes  |  |
 | addedToFyndCash | Bool? |  yes  |  |
 | refundCredit | Double? |  yes  |  |
 | couponValue | Double? |  yes  |  |
 | priceEffective | Double? |  yes  |  |
 | valueOfGood | Double? |  yes  |  |
 | amountPaid | Double? |  yes  |  |
 | currencyCode | String? |  yes  |  |
 | transferPrice | Double? |  yes  |  |
 | codCharges | Double? |  yes  |  |
 | brandCalculatedAmount | Double? |  yes  |  |
 | cashback | Double? |  yes  |  |
 | currencySymbol | String? |  yes  |  |
 | amountPaidRoundoff | Double? |  yes  |  |
 | refundAmount | Double? |  yes  |  |
 | cashbackApplied | Double? |  yes  |  |
 | fyndCredits | Double? |  yes  |  |
 | deliveryCharge | Double? |  yes  |  |

---


 
 
 #### [TimeStampData](#TimeStampData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | max | String? |  yes  |  |
 | min | String? |  yes  |  |

---


 
 
 #### [Promise](#Promise)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | showPromise | Bool? |  yes  |  |
 | timestamp | [TimeStampData](#TimeStampData)? |  yes  |  |

---


 
 
 #### [DeliveryAddress](#DeliveryAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | latitude | Double? |  yes  |  |
 | addressCategory | String? |  yes  |  |
 | area | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | address | String? |  yes  |  |
 | countryPhoneCode | String? |  yes  |  |
 | pincode | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | landmark | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | countryIsoCode | String? |  yes  |  |
 | contactPerson | String? |  yes  |  |
 | country | String? |  yes  |  |
 | state | String? |  yes  |  |
 | city | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | version | String? |  yes  |  |
 | email | String? |  yes  |  |
 | name | String? |  yes  |  |
 | longitude | Double? |  yes  |  |

---


 
 
 #### [ShipmentTotalDetails](#ShipmentTotalDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pieces | Int? |  yes  |  |
 | totalPrice | Double? |  yes  |  |
 | sizes | Int? |  yes  |  |

---


 
 
 #### [FulfillingCompany](#FulfillingCompany)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [ShipmentStatus](#ShipmentStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | hexCode | String? |  yes  |  |

---


 
 
 #### [ShipmentUserInfo](#ShipmentUserInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mobile | String? |  yes  |  |
 | lastName | String? |  yes  |  |
 | firstName | String? |  yes  |  |
 | gender | String? |  yes  |  |

---


 
 
 #### [CurrentStatus](#CurrentStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | updatedAt | String? |  yes  |  |
 | name | String? |  yes  |  |
 | status | String? |  yes  |  |
 | journeyType | String? |  yes  |  |

---


 
 
 #### [AppliedFreeArticles](#AppliedFreeArticles)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | parentItemIdentifier | String? |  yes  |  |
 | quantity | Double? |  yes  |  |
 | freeGiftItemDetails | [String: Any]? |  yes  |  |
 | articleId | String? |  yes  |  |

---


 
 
 #### [AppliedPromos](#AppliedPromos)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appliedFreeArticles | [[AppliedFreeArticles](#AppliedFreeArticles)]? |  yes  |  |
 | promotionType | String? |  yes  |  |
 | amount | Double? |  yes  |  |
 | articleQuantity | Double? |  yes  |  |
 | promotionName | String? |  yes  |  |
 | promoId | String? |  yes  |  |
 | mrpPromotion | Bool? |  yes  |  |

---


 
 
 #### [ItemBrand](#ItemBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | logo | String? |  yes  |  |

---


 
 
 #### [Item](#Item)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slugKey | String? |  yes  |  |
 | sellerIdentifier | String? |  yes  |  |
 | size | String? |  yes  |  |
 | name | String? |  yes  |  |
 | code | String? |  yes  |  |
 | id | Double? |  yes  |  |
 | image | [String]? |  yes  |  |
 | brand | [ItemBrand](#ItemBrand)? |  yes  |  |

---


 
 
 #### [Identifiers](#Identifiers)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ean | String? |  yes  |  |
 | skuCode | String? |  yes  |  |

---


 
 
 #### [FinancialBreakup](#FinancialBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | discount | Double? |  yes  |  |
 | promotionEffectiveDiscount | Double? |  yes  |  |
 | couponEffectiveDiscount | Double? |  yes  |  |
 | identifiers | [Identifiers](#Identifiers)? |  yes  |  |
 | priceMarked | Double? |  yes  |  |
 | totalUnits | Int? |  yes  |  |
 | gstTaxPercentage | Double? |  yes  |  |
 | addedToFyndCash | Bool? |  yes  |  |
 | gstFee | Double? |  yes  |  |
 | refundCredit | Double? |  yes  |  |
 | couponValue | Double? |  yes  |  |
 | priceEffective | Double? |  yes  |  |
 | valueOfGood | Double? |  yes  |  |
 | size | String? |  yes  |  |
 | amountPaid | Double? |  yes  |  |
 | transferPrice | Double? |  yes  |  |
 | itemName | String? |  yes  |  |
 | codCharges | Double? |  yes  |  |
 | hsnCode | String? |  yes  |  |
 | brandCalculatedAmount | Double? |  yes  |  |
 | cashback | Double? |  yes  |  |
 | amountPaidRoundoff | Double? |  yes  |  |
 | refundAmount | Double? |  yes  |  |
 | cashbackApplied | Double? |  yes  |  |
 | fyndCredits | Double? |  yes  |  |
 | deliveryCharge | Double? |  yes  |  |
 | gstTag | String? |  yes  |  |

---


 
 
 #### [Bags](#Bags)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | prices | [Prices](#Prices)? |  yes  |  |
 | lineNumber | Int? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | parentPromoBags | [String: Any]? |  yes  |  |
 | currencySymbol | String? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | canReturn | Bool? |  yes  |  |
 | currencyCode | String? |  yes  |  |
 | currentStatus | [CurrentStatus](#CurrentStatus)? |  yes  |  |
 | canCancel | Bool? |  yes  |  |
 | returnableDate | String? |  yes  |  |
 | appliedPromos | [[AppliedPromos](#AppliedPromos)]? |  yes  |  |
 | deliveryDate | String? |  yes  |  |
 | id | Int? |  yes  |  |
 | sellerIdentifier | String? |  yes  |  |
 | item | [Item](#Item)? |  yes  |  |
 | financialBreakup | [[FinancialBreakup](#FinancialBreakup)]? |  yes  |  |

---


 
 
 #### [BreakupValues](#BreakupValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currencySymbol | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |
 | value | Double? |  yes  |  |
 | display | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [FulfillingStore](#FulfillingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | Int? |  yes  |  |
 | code | String? |  yes  |  |
 | id | Int? |  yes  |  |
 | companyName | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [NestedTrackingDetails](#NestedTrackingDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isPassed | Bool? |  yes  |  |
 | isCurrent | Bool? |  yes  |  |
 | status | String? |  yes  |  |
 | time | String? |  yes  |  |

---


 
 
 #### [TrackingDetails](#TrackingDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  |  |
 | time | String? |  yes  |  |
 | isPassed | Bool? |  yes  |  |
 | isCurrent | Bool? |  yes  |  |
 | trackingDetails | [[NestedTrackingDetails](#NestedTrackingDetails)]? |  yes  |  |

---


 
 
 #### [Shipments](#Shipments)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | showDownloadInvoice | Bool? |  yes  |  |
 | payment | [ShipmentPayment](#ShipmentPayment)? |  yes  |  |
 | orderType | String? |  yes  |  |
 | invoice | [Invoice](#Invoice)? |  yes  |  |
 | totalBags | Int? |  yes  |  |
 | orderId | String? |  yes  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | promise | [Promise](#Promise)? |  yes  |  |
 | deliveryAddress | [DeliveryAddress](#DeliveryAddress)? |  yes  |  |
 | refundDetails | [String: Any]? |  yes  |  |
 | trakingNo | String? |  yes  |  |
 | customMeta | [[String: Any]]? |  yes  |  |
 | trackUrl | String? |  yes  |  |
 | totalDetails | [ShipmentTotalDetails](#ShipmentTotalDetails)? |  yes  |  |
 | comment | String? |  yes  |  |
 | showTrackLink | Bool? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | shipmentCreatedAt | String? |  yes  |  |
 | dpName | String? |  yes  |  |
 | fulfillingCompany | [FulfillingCompany](#FulfillingCompany)? |  yes  |  |
 | awbNo | String? |  yes  |  |
 | beneficiaryDetails | Bool? |  yes  |  |
 | canReturn | Bool? |  yes  |  |
 | canCancel | Bool? |  yes  |  |
 | canBreak | [String: Any]? |  yes  |  |
 | shipmentStatus | [ShipmentStatus](#ShipmentStatus)? |  yes  |  |
 | userInfo | [ShipmentUserInfo](#ShipmentUserInfo)? |  yes  |  |
 | sizeInfo | [String: Any]? |  yes  |  |
 | bags | [[Bags](#Bags)]? |  yes  |  |
 | returnMeta | [String: Any]? |  yes  |  |
 | breakupValues | [[BreakupValues](#BreakupValues)]? |  yes  |  |
 | returnableDate | String? |  yes  |  |
 | fulfillingStore | [FulfillingStore](#FulfillingStore)? |  yes  |  |
 | deliveryDate | String? |  yes  |  |
 | needHelpUrl | String? |  yes  |  |
 | trackingDetails | [[TrackingDetails](#TrackingDetails)]? |  yes  |  |

---


 
 
 #### [BagsForReorderArticleAssignment](#BagsForReorderArticleAssignment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | strategy | String? |  yes  |  |
 | level | String? |  yes  |  |

---


 
 
 #### [BagsForReorder](#BagsForReorder)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | articleAssignment | [BagsForReorderArticleAssignment](#BagsForReorderArticleAssignment)? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | storeId | Int? |  yes  |  |
 | itemId | Int? |  yes  |  |
 | sellerId | Int? |  yes  |  |
 | itemSize | String? |  yes  |  |

---


 
 
 #### [UserInfo](#UserInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mobile | String? |  yes  |  |
 | email | String? |  yes  |  |
 | name | String? |  yes  |  |
 | gender | String? |  yes  |  |

---


 
 
 #### [OrderSchema](#OrderSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipments | [[Shipments](#Shipments)]? |  yes  |  |
 | orderCreatedTime | String? |  yes  |  |
 | totalShipmentsInOrder | Int? |  yes  |  |
 | breakupValues | [[BreakupValues](#BreakupValues)]? |  yes  |  |
 | bagsForReorder | [[BagsForReorder](#BagsForReorder)]? |  yes  |  |
 | userInfo | [UserInfo](#UserInfo)? |  yes  |  |
 | orderId | String? |  yes  |  |

---


 
 
 #### [OrderPage](#OrderPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | current | Int? |  yes  |  |
 | size | Int? |  yes  |  |
 | itemTotal | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [OrderList](#OrderList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filters | [OrderFilters](#OrderFilters)? |  yes  |  |
 | items | [[OrderSchema](#OrderSchema)]? |  yes  |  |
 | page | [OrderPage](#OrderPage)? |  yes  |  |

---


 
 
 #### [ApefaceApiError](#ApefaceApiError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [OrderById](#OrderById)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | order | [OrderSchema](#OrderSchema)? |  yes  |  |

---


 
 
 #### [ShipmentById](#ShipmentById)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipment | [Shipments](#Shipments)? |  yes  |  |

---


 
 
 #### [ResponseGetInvoiceShipment](#ResponseGetInvoiceShipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentId | String |  no  |  |
 | success | Bool |  no  |  |
 | presignedType | String |  no  |  |
 | presignedUrl | String |  no  |  |

---


 
 
 #### [Track](#Track)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lastLocationRecievedAt | String? |  yes  |  |
 | awb | String? |  yes  |  |
 | updatedTime | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | reason | String? |  yes  |  |
 | accountName | String? |  yes  |  |
 | status | String? |  yes  |  |
 | shipmentType | String? |  yes  |  |

---


 
 
 #### [ShipmentTrack](#ShipmentTrack)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | results | [[Track](#Track)]? |  yes  |  |

---


 
 
 #### [CustomerDetailsResponse](#CustomerDetailsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | String? |  yes  |  |
 | country | String? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | name | String? |  yes  |  |
 | orderId | String? |  yes  |  |

---


 
 
 #### [SendOtpToCustomerResponse](#SendOtpToCustomerResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | requestId | String? |  yes  |  |
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |
 | resendTimer | Int? |  yes  |  |

---


 
 
 #### [VerifyOtp](#VerifyOtp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | requestId | String? |  yes  |  |
 | otpCode | String? |  yes  |  |

---


 
 
 #### [VerifyOtpResponse](#VerifyOtpResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |

---


 
 
 #### [BagReasonMeta](#BagReasonMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | showTextArea | Bool? |  yes  |  |

---


 
 
 #### [QuestionSet](#QuestionSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | displayName | String? |  yes  |  |

---


 
 
 #### [BagReasons](#BagReasons)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasons | [[BagReasons](#BagReasons)]? |  yes  |  |
 | meta | [BagReasonMeta](#BagReasonMeta)? |  yes  |  |
 | qcType | [String]? |  yes  |  |
 | questionSet | [[QuestionSet](#QuestionSet)]? |  yes  |  |
 | displayName | String? |  yes  |  |
 | id | Int? |  yes  |  |

---


 
 
 #### [ShipmentBagReasons](#ShipmentBagReasons)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasons | [[BagReasons](#BagReasons)]? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [ShipmentReason](#ShipmentReason)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | feedbackType | String? |  yes  |  |
 | reasonText | String? |  yes  |  |
 | reasonId | Int? |  yes  |  |
 | priority | Int? |  yes  |  |
 | flow | String? |  yes  |  |
 | showTextArea | Bool? |  yes  |  |

---


 
 
 #### [ShipmentReasons](#ShipmentReasons)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasons | [[ShipmentReason](#ShipmentReason)]? |  yes  |  |

---


 
 
 #### [ProductsDataUpdatesFilters](#ProductsDataUpdatesFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lineNumber | Int? |  yes  |  |
 | identifier | String? |  yes  |  |

---


 
 
 #### [ProductsDataUpdates](#ProductsDataUpdates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filters | [[ProductsDataUpdatesFilters](#ProductsDataUpdatesFilters)]? |  yes  |  |
 | data | [String: Any]? |  yes  |  |

---


 
 
 #### [EntitiesDataUpdates](#EntitiesDataUpdates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filters | [[String: Any]]? |  yes  |  |
 | data | [String: Any]? |  yes  |  |

---


 
 
 #### [DataUpdates](#DataUpdates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | products | [[ProductsDataUpdates](#ProductsDataUpdates)]? |  yes  |  |
 | entities | [[EntitiesDataUpdates](#EntitiesDataUpdates)]? |  yes  |  |

---


 
 
 #### [Products](#Products)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lineNumber | Int? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | identifier | String? |  yes  |  |

---


 
 
 #### [ProductsReasonsFilters](#ProductsReasonsFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lineNumber | Int? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | identifier | String? |  yes  |  |

---


 
 
 #### [ProductsReasonsData](#ProductsReasonsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasonText | String? |  yes  |  |
 | reasonId | Int? |  yes  |  |

---


 
 
 #### [ProductsReasons](#ProductsReasons)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filters | [[ProductsReasonsFilters](#ProductsReasonsFilters)]? |  yes  |  |
 | data | [ProductsReasonsData](#ProductsReasonsData)? |  yes  |  |

---


 
 
 #### [EntityReasonData](#EntityReasonData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasonText | String? |  yes  |  |
 | reasonId | Int? |  yes  |  |

---


 
 
 #### [EntitiesReasons](#EntitiesReasons)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filters | [[String: Any]]? |  yes  |  |
 | data | [EntityReasonData](#EntityReasonData)? |  yes  |  |

---


 
 
 #### [ReasonsData](#ReasonsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | products | [[ProductsReasons](#ProductsReasons)]? |  yes  |  |
 | entities | [[EntitiesReasons](#EntitiesReasons)]? |  yes  |  |

---


 
 
 #### [ShipmentsRequest](#ShipmentsRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dataUpdates | [DataUpdates](#DataUpdates)? |  yes  |  |
 | products | [[Products](#Products)]? |  yes  |  |
 | reasons | [ReasonsData](#ReasonsData)? |  yes  |  |
 | identifier | String |  no  |  |

---


 
 
 #### [StatuesRequest](#StatuesRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipments | [[ShipmentsRequest](#ShipmentsRequest)]? |  yes  |  |
 | status | String? |  yes  |  |
 | excludeBagsNextState | String? |  yes  |  |

---


 
 
 #### [UpdateShipmentStatusRequest](#UpdateShipmentStatusRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lockAfterTransition | Bool? |  yes  |  |
 | statuses | [[StatuesRequest](#StatuesRequest)]? |  yes  |  |
 | task | Bool? |  yes  |  |
 | unlockBeforeTransition | Bool? |  yes  |  |
 | forceTransition | Bool? |  yes  |  |

---


 
 
 #### [StatusesBodyResponse](#StatusesBodyResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipments | [[String: Any]]? |  yes  |  |

---


 
 
 #### [ShipmentApplicationStatusResponse](#ShipmentApplicationStatusResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | statuses | [[StatusesBodyResponse](#StatusesBodyResponse)]? |  yes  |  |

---


 
 
 #### [ErrorResponse](#ErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | exception | String? |  yes  |  |
 | stackTrace | String? |  yes  |  |
 | code | String? |  yes  |  |
 | status | Int? |  yes  |  |

---



