



##### [Back to Platform docs](./README.md)

## Order Methods
Handles all platform order and shipment api(s)
* [getShipments](#getshipments)
* [getShipmentById](#getshipmentbyid)
* [getOrderById](#getorderbyid)
* [getLaneConfig](#getlaneconfig)
* [getApplicationShipments](#getapplicationshipments)
* [getOrders](#getorders)
* [getMetricCount](#getmetriccount)
* [getAppOrderShipmentDetails](#getappordershipmentdetails)
* [trackPlatformShipment](#trackplatformshipment)
* [getfilters](#getfilters)
* [createShipmentReport](#createshipmentreport)
* [getReportsShipmentListing](#getreportsshipmentlisting)
* [upsertJioCode](#upsertjiocode)
* [getBulkInvoice](#getbulkinvoice)
* [getBulkInvoiceLabel](#getbulkinvoicelabel)
* [getBulkShipmentExcelFile](#getbulkshipmentexcelfile)
* [getBulkList](#getbulklist)
* [getManifestList](#getmanifestlist)
* [getManifestDetailsWithShipments](#getmanifestdetailswithshipments)
* [getBulkActionFailedReport](#getbulkactionfailedreport)
* [getShipmentReasons](#getshipmentreasons)
* [bulkActionProcessXlsxFile](#bulkactionprocessxlsxfile)
* [bulkActionDetails](#bulkactiondetails)
* [getBagById](#getbagbyid)
* [getBags](#getbags)
* [invalidateShipmentCache](#invalidateshipmentcache)
* [reassignLocation](#reassignlocation)
* [updateShipmentLock](#updateshipmentlock)
* [getAnnouncements](#getannouncements)
* [updateAddress](#updateaddress)
* [click2Call](#click2call)
* [updateShipmentStatus](#updateshipmentstatus)
* [processManifest](#processmanifest)
* [dispatchManifest](#dispatchmanifest)
* [getRoleBasedActions](#getrolebasedactions)
* [getShipmentHistory](#getshipmenthistory)
* [sendSmsNinja](#sendsmsninja)
* [platformManualAssignDPToShipment](#platformmanualassigndptoshipment)
* [updatePackagingDimensions](#updatepackagingdimensions)
* [createOrder](#createorder)
* [createChannelConfig](#createchannelconfig)
* [getChannelConfig](#getchannelconfig)
* [uploadConsent](#uploadconsent)
* [orderUpdate](#orderupdate)
* [checkOrderStatus](#checkorderstatus)
* [sendSmsNinjaPlatform](#sendsmsninjaplatform)



## Methods with example and description


#### getShipments





```swift
client.order.getShipments(lane: lane, searchType: searchType, searchValue: searchValue, searchId: searchId, fromDate: fromDate, toDate: toDate, dpIds: dpIds, orderingCompanyId: orderingCompanyId, stores: stores, salesChannel: salesChannel, requestByExt: requestByExt, pageNo: pageNo, pageSize: pageSize, isPrioritySort: isPrioritySort, excludeLockedShipments: excludeLockedShipments, paymentMethods: paymentMethods, channelShipmentId: channelShipmentId, channelOrderId: channelOrderId, customMeta: customMeta) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| lane | String? | no |  |   
| searchType | String? | no |  |   
| searchValue | String? | no |  |   
| searchId | String? | no |  |   
| fromDate | String? | no |  |   
| toDate | String? | no |  |   
| dpIds | String? | no |  |   
| orderingCompanyId | String? | no |  |   
| stores | String? | no |  |   
| salesChannel | String? | no |  |   
| requestByExt | String? | no |  |   
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |   
| isPrioritySort | Bool? | no |  |   
| excludeLockedShipments | Bool? | no |  |   
| paymentMethods | String? | no |  |   
| channelShipmentId | String? | no |  |   
| channelOrderId | String? | no |  |   
| customMeta | String? | no |  |  





*Returned Response:*




[ShipmentInternalPlatformViewResponse](#ShipmentInternalPlatformViewResponse)

We are processing the report!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getShipmentById





```swift
client.order.getShipmentById(channelShipmentId: channelShipmentId, shipmentId: shipmentId, orderingCompanyId: orderingCompanyId, requestByExt: requestByExt) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| channelShipmentId | String? | no |  |   
| shipmentId | String? | no |  |   
| orderingCompanyId | String? | no |  |   
| requestByExt | String? | no |  |  





*Returned Response:*




[ShipmentInfoResponse](#ShipmentInfoResponse)

We are processing the report!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "order": {
    "fynd_order_id": "FY62B13E2101810C19E4",
    "shipment_count": 1,
    "order_date": "2022-06-21T09:12:26+00:00"
  },
  "shipments": [
    {
      "shipment_id": "16557829457641286433",
      "payment_mode": "COD",
      "fulfilling_store": {
        "id": 1,
        "code": "HS-468a5",
        "fulfillment_channel": "pulse",
        "store_name": "Reliance Industries Ltd - Jio Market",
        "contact_person": "",
        "phone": "8268108880",
        "address": "high_street WEWORK, VIJAY DIAMONDS, ANDHERI MUMBAI MAHARASHTRA 400093",
        "city": "MUMBAI",
        "state": "MAHARASHTRA",
        "country": "INDIA",
        "pincode": 400093
      },
      "delivery_details": {
        "name": "Manish Prakash",
        "email": "Manish.Prakash@ril.com",
        "phone": "7787051611",
        "address": "home 479 sector3 bokaro Bokaro Jharkhand 827003",
        "city": "Bokaro",
        "state": "Jharkhand",
        "country": "India",
        "pincode": "827003",
        "state_code": 0
      },
      "billing_details": {
        "name": "Manish Prakash",
        "email": "Manish.Prakash@ril.com",
        "phone": "7787051611",
        "address": "home 479 sector3 bokaro Bokaro Jharkhand 827003",
        "city": "Bokaro",
        "state": "Jharkhand",
        "country": "India",
        "pincode": "827003",
        "state_code": 0
      },
      "dp_details": {
        "id": null,
        "name": null,
        "awb_no": null,
        "eway_bill_id": null,
        "track_url": null,
        "gst_tag": "sgst"
      },
      "journey_type": "forward",
      "order": {
        "fynd_order_id": "FY62B13E2101810C19E4",
        "affiliate_id": "000000000000000000000001",
        "ordering_channel": "FYND",
        "source": null,
        "tax_details": {
          "gstin": null
        },
        "order_date": "2022-06-21T09:12:26+00:00"
      },
      "gst_details": {
        "value_of_good": 475.24,
        "gst_fee": 23.76,
        "brand_calculated_amount": 499,
        "tax_collected_at_source": 0,
        "gstin_code": null
      },
      "shipment_quantity": 1,
      "bag_status_history": [
        {
          "status": "pending",
          "updated_at": "2022-06-21T09:12:26+00:00",
          "state_type": "operational",
          "app_display_name": "Pending",
          "display_name": "Pending",
          "forward": null
        },
        {
          "status": "placed",
          "updated_at": "2022-06-21T09:12:32+00:00",
          "state_type": "operational",
          "app_display_name": "Ordered",
          "display_name": "Placed",
          "forward": null
        },
        {
          "status": "bag_confirmed",
          "updated_at": "2022-06-21T09:39:13+00:00",
          "state_type": "operational",
          "app_display_name": "Ordered",
          "display_name": "Bag Confirmed",
          "forward": null
        },
        {
          "status": "dp_assigned",
          "updated_at": "2022-06-21T09:40:04+00:00",
          "state_type": "operational",
          "app_display_name": "DP Assigned",
          "display_name": "DP Assigned",
          "forward": null
        },
        {
          "status": "bag_picked",
          "updated_at": "2022-06-21T09:40:12+00:00",
          "state_type": "operational",
          "app_display_name": "Shipped",
          "display_name": "In Transit",
          "forward": null
        },
        {
          "status": "out_for_delivery",
          "updated_at": "2022-06-21T09:40:29+00:00",
          "state_type": "operational",
          "app_display_name": "Out For Delivery",
          "display_name": "Out For Delivery",
          "forward": null
        },
        {
          "status": "delivery_done",
          "updated_at": "2022-06-21T09:40:37+00:00",
          "state_type": "operational",
          "app_display_name": "Delivered",
          "display_name": "Delivery Done",
          "forward": null
        }
      ],
      "bags": [
        {
          "bag_id": 43880,
          "display_name": "Bag",
          "entity_type": "bag",
          "bag_configs": {
            "is_returnable": true,
            "can_be_cancelled": true,
            "enable_tracking": false,
            "is_customer_return_allowed": true,
            "allow_force_return": false,
            "is_active": false
          },
          "financial_breakup": [
            {
              "price_effective": 499,
              "discount": 0,
              "amount_paid": 549,
              "coupon_effective_discount": 0,
              "delivery_charge": 50,
              "fynd_credits": 0,
              "cod_charges": 0,
              "refund_credit": 0,
              "cashback": 0,
              "refund_amount": 549,
              "added_to_fynd_cash": false,
              "cashback_applied": 0,
              "gst_tax_percentage": 5,
              "value_of_good": 475.24,
              "price_marked": 499,
              "transfer_price": 0,
              "brand_calculated_amount": 499,
              "promotion_effective_discount": 0,
              "coupon_value": 0,
              "pm_price_split": {
                "COD": 549
              },
              "size": "5",
              "total_units": 1,
              "hsn_code": "62050000",
              "identifiers": {
                "sku_code": "CL-001L-L-PRPL-PINK-5"
              },
              "item_name": "Purple Flip Flops",
              "gst_fee": "23.76",
              "gst_tag": "IGST"
            }
          ],
          "current_status": "delivery_done",
          "item": {
            "name": "Purple Flip Flops",
            "brand": "Nike",
            "slug_key": "purple-flip-flops-ezmucvw4d3",
            "images": [
              "https://hdn-1.fynd.com/products/pictures/item/free/270x0/CL-001L-L-PRPL-PINK-6/Rvk5WbGg9Hx-1.jpg"
            ],
            "size": "5",
            "l1_category": "",
            "l3_category": "27"
          },
          "brand": {
            "modified_on": 1655707988,
            "logo": "https://hdn-1.jiomarketx0.de/x0/brands/pictures/square-logo/original/DbhIvd_tB-Logo.jpeg",
            "brand_name": "Nike",
            "company": null,
            "created_on": 1647793418,
            "id": 4
          },
          "gst_details": {
            "gstin_code": null,
            "gst_tag": "IGST",
            "hsn_code": "62050000",
            "value_of_good": 475.24,
            "gst_tax_percentage": 5,
            "is_default_hsn_code": true,
            "brand_calculated_amount": 499,
            "gst_fee": "23.76"
          },
          "article": {
            "uid": "6237fdfec0903e7ae543c201",
            "identifiers": {
              "sku_code": "CL-001L-L-PRPL-PINK-5"
            },
            "return_config": {
              "time": 30,
              "unit": "days",
              "returnable": true
            }
          },
          "quantity": 1
        }
      ],
      "delivery_slot": {
        "slot": "By 03:00 AM",
        "upper_bound": "2022-06-21T03:42:23+00:00",
        "lower_bound": "2022-06-21T03:42:23+00:00",
        "date": "2022-06-21T03:42:23+00:00",
        "type": "order_window"
      },
      "total_items": 1,
      "payment_methods": [
        {
          "slug": "COD",
          "payment_id": "COD",
          "payment_amt": 549,
          "payment_cart": null,
          "payment_desc": "COD",
          "bdcustomer_id": null,
          "order_inv_num": null,
          "mode_of_payment": "COD",
          "payment_gateway_logo": null,
          "transaction_ref_number": ""
        }
      ],
      "vertical": "GROCERIES",
      "payments": {
        "mode": "COD",
        "logo": "https://hdn-1.fynd.com/payment/Pos+Logo.png",
        "source": "Jio Partner Pay"
      },
      "priority_text": null,
      "status": {
        "created_at": 1655804437,
        "shipment_id": "16557829457641286433",
        "status": "delivery_done",
        "bag_list": [
          "43880"
        ],
        "id": 19980
      },
      "prices": {
        "amount_paid": 549,
        "refund_amount": 549,
        "price_marked": 499,
        "cod_charges": 0,
        "discount": 0,
        "cashback_applied": 0,
        "delivery_charge": 50,
        "fynd_credits": 0,
        "cashback": 0,
        "price_effective": 499,
        "refund_credit": 0,
        "value_of_good": 475.24,
        "pm_price_split": {
          "COD": 549
        },
        "brand_calculated_amount": 499,
        "coupon_effective_discount": 0,
        "tax_collected_at_source": 0,
        "promotion_effective_discount": 0
      },
      "picked_date": "",
      "tracking_list": [
        {
          "status": "Order Placed",
          "time": "2022-06-21T09:12:32+00:00",
          "is_passed": true,
          "is_current": false
        },
        {
          "status": "Order Confirmed",
          "time": "2022-06-21T09:39:13+00:00",
          "is_passed": true,
          "is_current": false
        },
        {
          "status": "Invoiced",
          "time": "2022-06-21T09:40:12+00:00",
          "is_passed": true,
          "is_current": false
        },
        {
          "status": "Delivery Partner Assigned",
          "time": "2022-06-21T09:40:12+00:00",
          "is_passed": true,
          "is_current": false
        },
        {
          "status": "Packed",
          "time": "2022-06-21T09:40:12+00:00",
          "is_passed": true,
          "is_current": false
        },
        {
          "status": "In Transit",
          "time": "2022-06-21T09:40:12+00:00",
          "is_passed": true,
          "is_current": false
        },
        {
          "status": "Out For Delivery",
          "time": "2022-06-21T09:40:29+00:00",
          "is_passed": true,
          "is_current": false
        },
        {
          "status": "Delivered",
          "time": "2022-06-21T09:40:37+00:00",
          "is_passed": true,
          "is_current": true
        }
      ],
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36",
      "platform_logo": "https://fynd-static.s3.amazonaws.com/mode_of_payment/fynd_logo.png",
      "packaging_type": "POLYB_DFLT_L"
    }
  ]
}
```
</details>









---


#### getOrderById





```swift
client.order.getOrderById(orderId: orderId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String | yes |  |  





*Returned Response:*




[ShipmentDetailsResponse](#ShipmentDetailsResponse)

We are processing the report!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "order": {
    "fynd_order_id": "FY637CFCC00177713D47",
    "meta": {
      "files": [],
      "staff": {},
      "cart_id": 1835,
      "comment": "",
      "extra_meta": {},
      "order_tags": null,
      "order_type": "HomeDelivery",
      "employee_id": null,
      "payment_type": "self",
      "mongo_cart_id": 1835,
      "order_platform": "platform-site",
      "ordering_store": null,
      "order_child_entities": [
        "bag",
        "shipment"
      ]
    },
    "affiliate_id": "62f35968d101a6d38c886d85",
    "ordering_channel": "Ecomm",
    "source": "uniket-desktop",
    "tax_details": {
      "gstin": null
    },
    "order_date": "2022-11-22T22:15:53+00:00",
    "prices": {
      "amount_paid": 948.5,
      "refund_amount": 948.5,
      "price_marked": 1398,
      "cod_charges": 0,
      "discount": 349.5,
      "cashback_applied": 0,
      "delivery_charge": 0,
      "fynd_credits": 0,
      "cashback": 0,
      "price_effective": 1048.5,
      "refund_credit": 0,
      "value_of_good": 803.82,
      "coupon_value": 0,
      "tax_collected_at_source": 0,
      "promotion_effective_discount": 100,
      "amount_paid_roundoff": 948
    },
    "raw_user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36",
    "comment": ""
  },
  "shipments": [
    {
      "shipment_id": "16691355532841431595",
      "fulfilling_store": {
        "id": 5,
        "code": "SF94",
        "fulfillment_channel": "pulse",
        "store_name": "RELIANCE RETAIL LTD - Beauty & Personal care",
        "contact_person": "Anju Abraham",
        "phone": "918898846722",
        "address": "store 1ST FLOOR, WEWORK VIJAY DIAMOND, CROSS RD B, AJIT NAGAR, KONDIVITA, ANDHERI EAST, MUMBAI, MAHARASHTR Mumbai Maharashtra 400093",
        "city": "Mumbai",
        "state": "Maharashtra",
        "country": "India",
        "pincode": "400093",
        "meta": {
          "stage": "verified",
          "timing": [
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "monday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "tuesday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "wednesday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "thursday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "friday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "saturday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "sunday"
            }
          ],
          "documents": {},
          "gst_number": null,
          "display_name": "RELIANCE RETAIL LTD - Beauty & Personal care",
          "gst_credentials": {
            "e_invoice": {
              "enabled": false
            },
            "e_waybill": {
              "enabled": false
            }
          },
          "notification_emails": [
            "anjuabraham@gofynd.com"
          ],
          "product_return_config": {
            "on_same_store": true
          },
          "additional_contact_details": {
            "number": [
              "91 - 8898846722"
            ]
          },
          "ewaybill_portal_details": null
        },
        "fulfilment_type": null
      },
      "delivery_details": {
        "name": "Vaishakh Shetty",
        "email": "",
        "phone": "9892133001",
        "address": "home Asd,Mumbai,Maharashtra,Mumbai,Maharashtra,India Asd,Mumbai,Maharashtra,Mumbai,Maharashtra,India Mumbai,Maharashtra Mumbai Maharashtra 400083",
        "city": "Mumbai",
        "state": "Maharashtra",
        "country": "India",
        "pincode": "400083",
        "state_code": "27"
      },
      "billing_details": {
        "name": "Vaishakh Shetty",
        "email": "",
        "phone": "9892133001",
        "address": "home Asd,Mumbai,Maharashtra,Mumbai,Maharashtra,India Mumbai,Maharashtra Mumbai Maharashtra 400083",
        "city": "Mumbai",
        "state": "Maharashtra",
        "country": "India",
        "pincode": "400083",
        "state_code": "27"
      },
      "dp_details": {
        "id": null,
        "name": null,
        "awb_no": null,
        "eway_bill_id": null,
        "track_url": null,
        "gst_tag": "sgst",
        "dp_otp": ""
      },
      "journey_type": "forward",
      "order": {
        "fynd_order_id": "FY637CFCC00177713D47",
        "meta": {
          "files": [],
          "staff": {},
          "cart_id": 1835,
          "comment": "",
          "extra_meta": {},
          "order_tags": null,
          "order_type": "HomeDelivery",
          "employee_id": null,
          "payment_type": "self",
          "mongo_cart_id": 1835,
          "order_platform": "platform-site",
          "ordering_store": null,
          "order_child_entities": [
            "bag",
            "shipment"
          ]
        },
        "affiliate_id": "62f35968d101a6d38c886d85",
        "ordering_channel": "Ecomm",
        "source": "uniket-desktop",
        "tax_details": {
          "gstin": null
        },
        "order_date": "2022-11-22T22:15:53+00:00",
        "prices": {
          "amount_paid": 948.5,
          "refund_amount": 948.5,
          "price_marked": 1398,
          "cod_charges": 0,
          "discount": 349.5,
          "cashback_applied": 0,
          "delivery_charge": 0,
          "fynd_credits": 0,
          "cashback": 0,
          "price_effective": 1048.5,
          "refund_credit": 0,
          "value_of_good": 803.82,
          "coupon_value": 0,
          "tax_collected_at_source": 0,
          "promotion_effective_discount": 100,
          "amount_paid_roundoff": 948
        },
        "raw_user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36",
        "comment": ""
      },
      "gst_details": {
        "value_of_good": 401.91,
        "gst_fee": 72.34,
        "brand_calculated_amount": 474.25,
        "tax_collected_at_source": 0,
        "gstin_code": "null"
      },
      "shipment_quantity": 1,
      "bag_status_history": [
        {
          "status": "pending",
          "updated_at": "2022-11-22T22:15:54+00:00",
          "state_type": "operational",
          "app_display_name": "Pending",
          "display_name": "Pending",
          "forward": null
        },
        {
          "status": "placed",
          "updated_at": "2022-11-22T22:15:59+00:00",
          "state_type": "operational",
          "app_display_name": "Ordered",
          "display_name": "Placed",
          "forward": null
        },
        {
          "status": "bag_confirmed",
          "updated_at": "2022-11-22T22:54:50+00:00",
          "state_type": "operational",
          "app_display_name": "Ordered",
          "display_name": "Bag Confirmed",
          "forward": null
        }
      ],
      "bags": [
        {
          "bag_id": 20472628,
          "display_name": "Bag",
          "entity_type": "bag",
          "meta": {
            "custom_message": "Please send the shipment as soon as possible."
          },
          "bag_configs": {
            "is_returnable": true,
            "can_be_cancelled": true,
            "enable_tracking": true,
            "is_customer_return_allowed": false,
            "is_active": true
          },
          "financial_breakup": [
            {
              "price_effective": 524.25,
              "discount": 174.75,
              "amount_paid": 474.25,
              "coupon_effective_discount": 0,
              "delivery_charge": 0,
              "fynd_credits": 0,
              "cod_charges": 0,
              "refund_credit": 0,
              "cashback": 0,
              "refund_amount": 474.25,
              "added_to_fynd_cash": false,
              "cashback_applied": 0,
              "gst_tax_percentage": 18,
              "value_of_good": 401.91,
              "price_marked": 699,
              "transfer_price": 0,
              "brand_calculated_amount": 474.25,
              "tax_collected_at_source": 0,
              "tcs_percentage": 0,
              "promotion_effective_discount": 50,
              "coupon_value": 0,
              "amount_paid_roundoff": 474,
              "size": "OS",
              "total_units": 1,
              "hsn_code": "20472574",
              "identifiers": {
                "ean": "6902395784364",
                "sku_code": "1020820"
              },
              "item_name": "L'Oreal Paris Rouge Signature Matte Liquid Lipstick, 146 I Enlight",
              "gst_fee": 72.34,
              "gst_tag": "SGST"
            }
          ],
          "current_status": "bag_confirmed",
          "item": {
            "name": "L'Oreal Paris Rouge Signature Matte Liquid Lipstick, 146 I Enlight",
            "brand": "L'Oreal Paris",
            "slug_key": "loreal-paris-rouge-signature-matte-liquid-lipstick-146-i-enlight-96a1wferol05",
            "images": [
              "https://cdn.pixelbin.io/v2/super-fire-62c344/tirabz/wrkr/tiraz0/products/pictures/item/free/270x0/1020820/shj00c0H4T-1020820_1.jpg",
              "https://cdn.pixelbin.io/v2/super-fire-62c344/tirabz/wrkr/tiraz0/products/pictures/item/free/270x0/1020820/iM7wvxxxT5-1020820_2.jpg",
              "https://cdn.pixelbin.io/v2/super-fire-62c344/tirabz/wrkr/tiraz0/products/pictures/item/free/270x0/1020820/TcPMevsr6O-1020820_3.jpg",
              "https://cdn.pixelbin.io/v2/super-fire-62c344/tirabz/wrkr/tiraz0/products/pictures/item/free/270x0/1020820/BAiV5xox57-1020820_4.jpg",
              "https://cdn.pixelbin.io/v2/super-fire-62c344/tirabz/wrkr/tiraz0/products/pictures/item/free/270x0/1020820/6wXPvugMto-1020820_5.jpg",
              "https://cdn.pixelbin.io/v2/super-fire-62c344/tirabz/wrkr/tiraz0/products/pictures/item/free/270x0/1020820/LvlirqfHho-1020820_6.jpg",
              "https://cdn.pixelbin.io/v2/super-fire-62c344/tirabz/wrkr/tiraz0/products/pictures/item/free/270x0/1020820/KKnZHIJwO-1020820_7.jpg",
              "https://cdn.pixelbin.io/v2/super-fire-62c344/tirabz/wrkr/tiraz0/products/pictures/item/free/270x0/1020820/NheQB3HLlq-1020820_8.jpg"
            ],
            "size": "OS",
            "l1_category": [
              "Makeup"
            ],
            "l3_category": 134
          },
          "brand": {
            "credit_note_expiry_days": null,
            "modified_on": "2022-11-22T09:08:25",
            "id": 2,
            "logo": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/tira-n/wrkr/tiraz0/brands/pictures/square-logo/original/iCMr3gmUF-Logo.jpeg",
            "created_on": "2022-08-09T13:17:41",
            "credit_note_allowed": false,
            "start_date": null,
            "company": null,
            "script_last_ran": null,
            "pickup_location": null,
            "brand_name": "L'Oreal Paris",
            "invoice_prefix": null,
            "is_virtual_invoice": false
          },
          "gst_details": {
            "gstin_code": "null",
            "gst_tag": "SGST",
            "hsn_code": "20472574",
            "value_of_good": 401.91,
            "gst_tax_percentage": 18,
            "is_default_hsn_code": true,
            "brand_calculated_amount": 474.25,
            "tax_collected_at_source": 0,
            "hsn_code_id": "62f3ad402cbb29a3a1c9186b",
            "gst_fee": 72.34,
            "igst_tax_percentage": 0,
            "sgst_tax_percentage": 9,
            "cgst_tax_percentage": 9,
            "igst_gst_fee": "0",
            "cgst_gst_fee": "36.17",
            "sgst_gst_fee": "36.17"
          },
          "article": {
            "uid": "62f495f2a604499934540c69",
            "identifiers": {
              "ean": "6902395784364",
              "sku_code": "1020820"
            },
            "return_config": {
              "time": 7,
              "unit": "days",
              "returnable": true
            }
          },
          "affiliate_bag_details": {
            "coupon_code": null
          },
          "quantity": 1,
          "identifier": null,
          "applied_promos": [
            {
              "amount": 50,
              "promo_id": "637cfcb19d43e76334b9fb6c",
              "buy_rules": [
                {
                  "item_criteria": {
                    "item_brand": [
                      2
                    ]
                  },
                  "cart_conditions": {}
                }
              ],
              "mrp_promotion": false,
              "discount_rules": [
                {
                  "type": "amount",
                  "value": 100
                }
              ],
              "promotion_name": "VS",
              "promotion_type": "amount",
              "article_quantity": 2
            }
          ],
          "mark_as_returnable": false
        }
      ],
      "custom_message": "Please send the shipment as soon as possible.",
      "company_id": 2,
      "user": {
        "user_oid": "637cbf77e7706fbc79baa669",
        "gender": "female",
        "first_name": "Vaishakh",
        "id": 18052704,
        "mobile": "9892133001",
        "mongo_user_id": "637cbf77e7706fbc79baa669",
        "email": "vaishakhshetty@gofynd.com",
        "last_name": "Shetty",
        "is_anonymous_user": false
      },
      "pickup_slot": {},
      "delivery_slot": {
        "slot": "By 16:00 PM",
        "upper_bound": "2022-11-25T16:45:50+00:00",
        "lower_bound": "2022-11-23T16:45:50+00:00",
        "date": "2022-11-25T16:45:50+00:00",
        "type": "order_window"
      },
      "total_items": 1,
      "payment_methods": {
        "PP": {
          "amount": 474.25,
          "mode": "PP",
          "name": "PartnerPay",
          "collect_by": "seller",
          "refund_by": "seller",
          "meta": {}
        }
      },
      "vertical": null,
      "priority_text": null,
      "status": {
        "created_at": "2022-11-22T22:54:50+00:00",
        "id": 88117778,
        "meta": {
          "request_meta": {},
          "state_manager_used": "entity",
          "kafka_emission_status": 1
        },
        "status": "bag_confirmed",
        "shipment_id": "16691355532841431595",
        "bag_list": [
          "20472628"
        ],
        "current_shipment_status": "bag_confirmed",
        "status_created_at": "2022-11-22T22:54:50"
      },
      "prices": {
        "amount_paid": 474.25,
        "refund_amount": 474.25,
        "price_marked": 699,
        "cod_charges": 0,
        "discount": 174.75,
        "cashback_applied": 0,
        "delivery_charge": 0,
        "fynd_credits": 0,
        "cashback": 0,
        "price_effective": 524.25,
        "refund_credit": 0,
        "value_of_good": 401.91,
        "coupon_value": 0,
        "tax_collected_at_source": 0,
        "promotion_effective_discount": 50,
        "amount_paid_roundoff": 474
      },
      "tracking_list": [
        {
          "text": "Placed",
          "status": "processing",
          "is_passed": true,
          "time": "2022-11-22T22:15:59+00:00"
        },
        {
          "text": "Bag Confirmed",
          "status": "confirmed",
          "is_passed": true,
          "time": "2022-11-22T22:54:50+00:00"
        },
        {
          "text": "Dp Assigned",
          "status": "dp_assigned",
          "is_passed": false,
          "time": ""
        },
        {
          "text": "In Transit",
          "status": "in_transit",
          "is_passed": false,
          "time": ""
        },
        {
          "text": "Out For Delivery",
          "status": "out_for_delivery",
          "is_passed": false,
          "time": ""
        },
        {
          "text": "Delivered",
          "status": "delivered",
          "is_passed": false,
          "time": ""
        }
      ],
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36",
      "platform_logo": "https://fynd-static.s3.amazonaws.com/mode_of_payment/ecomm_logo.png",
      "packaging_type": "POLYB_DFLT_L",
      "enable_dp_tracking": false,
      "invoice": {
        "updated_date": "1970-01-01T00:00:00",
        "store_invoice_id": null,
        "invoice_url": "",
        "label_url": "",
        "external_invoice_id": ""
      },
      "can_process": true,
      "estimated_sla_time": null,
      "tracking_url": "",
      "meta": {
        "dp_id": "9",
        "weight": 300,
        "external": {},
        "formatted": {
          "max": "Fri, 25 Nov",
          "min": "Wed, 23 Nov"
        },
        "timestamp": {
          "max": 1669394750,
          "min": 1669221950
        },
        "bag_weight": {
          "20472628": 300
        },
        "debug_info": {
          "stormbreaker_uuid": "998171bb-67af-412a-a00a-12d436418ff2"
        },
        "dp_options": {},
        "order_type": null,
        "dp_sort_key": "fm_priority",
        "packaging_name": "POLYB_DFLT_L",
        "assign_dp_from_sb": true,
        "same_store_available": true,
        "fulfill_virtual_invoice": false,
        "fulfilment_priority_text": null,
        "auto_trigger_dp_assignment_ACF": true
      },
      "shipment_created_at": "2022-11-22T22:15:53+00:00",
      "mark_as_returnable": false,
      "ordering_store": {
        "id": 5,
        "code": "SF94",
        "fulfillment_channel": "pulse",
        "store_name": "RELIANCE RETAIL LTD - Beauty & Personal care",
        "contact_person": "Anju Abraham",
        "phone": "918898846722",
        "address": "store 1ST FLOOR, WEWORK VIJAY DIAMOND, CROSS RD B, AJIT NAGAR, KONDIVITA, ANDHERI EAST, MUMBAI, MAHARASHTR Mumbai Maharashtra 400093",
        "city": "Mumbai",
        "state": "Maharashtra",
        "country": "India",
        "pincode": "400093",
        "meta": {
          "stage": "verified",
          "timing": [
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "monday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "tuesday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "wednesday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "thursday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "friday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "saturday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "sunday"
            }
          ],
          "documents": {},
          "gst_number": null,
          "display_name": "RELIANCE RETAIL LTD - Beauty & Personal care",
          "gst_credentials": {
            "e_invoice": {
              "enabled": false
            },
            "e_waybill": {
              "enabled": false
            }
          },
          "notification_emails": [
            "anjuabraham@gofynd.com"
          ],
          "product_return_config": {
            "on_same_store": true
          },
          "additional_contact_details": {
            "number": [
              "91 - 8898846722"
            ]
          },
          "ewaybill_portal_details": null
        },
        "fulfilment_type": null
      },
      "custom_meta": {}
    }
  ]
}
```
</details>









---


#### getLaneConfig





```swift
client.order.getLaneConfig(superLane: superLane, groupEntity: groupEntity, fromDate: fromDate, toDate: toDate, dpIds: dpIds, stores: stores, salesChannel: salesChannel, paymentMode: paymentMode, bagStatus: bagStatus) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| superLane | String? | no |  |   
| groupEntity | String? | no |  |   
| fromDate | String? | no |  |   
| toDate | String? | no |  |   
| dpIds | String? | no |  |   
| stores | String? | no |  |   
| salesChannel | String? | no |  |   
| paymentMode | String? | no |  |   
| bagStatus | String? | no |  |  





*Returned Response:*




[LaneConfigResponse](#LaneConfigResponse)

Response containing count of shipments of the given status




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "super_lanes": [
    {
      "text": "Unfulfilled",
      "value": "unfulfilled",
      "options": [
        {
          "text": "New",
          "value": "new",
          "total_items": 18,
          "index": 1,
          "actions": []
        },
        {
          "text": "Confirmed",
          "value": "confirmed",
          "total_items": 0,
          "index": 2,
          "actions": []
        },
        {
          "text": "To Be Packed",
          "value": "to_be_packed",
          "total_items": 0,
          "index": 3,
          "actions": []
        },
        {
          "text": "Ready To Dispatch",
          "value": "ready_for_dispatch",
          "total_items": 0,
          "index": 4,
          "actions": []
        }
      ],
      "total_items": 18
    },
    {
      "text": "Return",
      "value": "return",
      "options": [
        {
          "text": "Return Initiated",
          "value": "return_initiated",
          "total_items": 0,
          "index": 9,
          "actions": []
        },
        {
          "text": "Return In Transit",
          "value": "return_in_transit",
          "total_items": 0,
          "index": 10,
          "actions": []
        },
        {
          "text": "Return Delivered",
          "value": "return_delivered",
          "total_items": 0,
          "index": 11,
          "actions": []
        },
        {
          "text": "Return Accepted",
          "value": "return_accepted",
          "total_items": 0,
          "index": 12,
          "actions": []
        }
      ],
      "total_items": 0
    }
  ]
}
```
</details>









---


#### getApplicationShipments





```swift
client.application("<APPLICATION_ID>").order.getApplicationShipments(lane: lane, searchType: searchType, searchId: searchId, fromDate: fromDate, toDate: toDate, dpIds: dpIds, orderingCompanyId: orderingCompanyId, stores: stores, salesChannel: salesChannel, requestByExt: requestByExt, pageNo: pageNo, pageSize: pageSize, customerId: customerId, isPrioritySort: isPrioritySort) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| lane | String? | no |  |   
| searchType | String? | no |  |   
| searchId | String? | no |  |   
| fromDate | String? | no |  |   
| toDate | String? | no |  |   
| dpIds | String? | no |  |   
| orderingCompanyId | String? | no |  |   
| stores | String? | no |  |   
| salesChannel | String? | no |  |   
| requestByExt | String? | no |  |   
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |   
| customerId | String? | no |  |   
| isPrioritySort | Bool? | no |  |  





*Returned Response:*




[ShipmentInternalPlatformViewResponse](#ShipmentInternalPlatformViewResponse)

We are processing the report!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getOrders





```swift
client.order.getOrders(lane: lane, searchType: searchType, searchValue: searchValue, fromDate: fromDate, toDate: toDate, dpIds: dpIds, stores: stores, salesChannel: salesChannel, pageNo: pageNo, pageSize: pageSize, isPrioritySort: isPrioritySort, customMeta: customMeta) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| lane | String? | no |  |   
| searchType | String? | no |  |   
| searchValue | String? | no |  |   
| fromDate | String? | no |  |   
| toDate | String? | no |  |   
| dpIds | String? | no |  |   
| stores | String? | no |  |   
| salesChannel | String? | no |  |   
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |   
| isPrioritySort | Bool? | no |  |   
| customMeta | String? | no |  |  





*Returned Response:*




[OrderListingResponse](#OrderListingResponse)

We are processing the report!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getMetricCount





```swift
client.order.getMetricCount(fromDate: fromDate, toDate: toDate) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| fromDate | String? | no |  |   
| toDate | String? | no |  |  





*Returned Response:*




[MetricCountResponse](#MetricCountResponse)

Response containing count of shipments of the given metrics




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getAppOrderShipmentDetails





```swift
client.application("<APPLICATION_ID>").order.getAppOrderShipmentDetails(orderId: orderId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String | yes |  |  





*Returned Response:*




[ShipmentDetailsResponse](#ShipmentDetailsResponse)

We render shipment details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "order": {
    "fynd_order_id": "FY62B13E2101810C19E4",
    "shipment_count": 1,
    "order_date": "2022-06-21T09:12:26+00:00"
  },
  "shipments": [
    {
      "shipment_id": "16557829457641286433",
      "payment_mode": "COD",
      "fulfilling_store": {
        "id": 1,
        "code": "HS-468a5",
        "fulfillment_channel": "pulse",
        "store_name": "Reliance Industries Ltd - Jio Market",
        "contact_person": "",
        "phone": "8268108880",
        "address": "high_street WEWORK, VIJAY DIAMONDS, ANDHERI MUMBAI MAHARASHTRA 400093",
        "city": "MUMBAI",
        "state": "MAHARASHTRA",
        "country": "INDIA",
        "pincode": 400093
      },
      "delivery_details": {
        "name": "Manish Prakash",
        "email": "Manish.Prakash@ril.com",
        "phone": "7787051611",
        "address": "home 479 sector3 bokaro Bokaro Jharkhand 827003",
        "city": "Bokaro",
        "state": "Jharkhand",
        "country": "India",
        "pincode": "827003",
        "state_code": 0
      },
      "billing_details": {
        "name": "Manish Prakash",
        "email": "Manish.Prakash@ril.com",
        "phone": "7787051611",
        "address": "home 479 sector3 bokaro Bokaro Jharkhand 827003",
        "city": "Bokaro",
        "state": "Jharkhand",
        "country": "India",
        "pincode": "827003",
        "state_code": 0
      },
      "dp_details": {
        "id": null,
        "name": null,
        "awb_no": null,
        "eway_bill_id": null,
        "track_url": null,
        "gst_tag": "sgst"
      },
      "journey_type": "forward",
      "order": {
        "fynd_order_id": "FY62B13E2101810C19E4",
        "affiliate_id": "000000000000000000000001",
        "ordering_channel": "FYND",
        "source": null,
        "tax_details": {
          "gstin": null
        },
        "order_date": "2022-06-21T09:12:26+00:00"
      },
      "gst_details": {
        "value_of_good": 475.24,
        "gst_fee": 23.76,
        "brand_calculated_amount": 499,
        "tax_collected_at_source": 0,
        "gstin_code": null
      },
      "shipment_quantity": 1,
      "bag_status_history": [
        {
          "status": "pending",
          "updated_at": "2022-06-21T09:12:26+00:00",
          "state_type": "operational",
          "app_display_name": "Pending",
          "display_name": "Pending",
          "forward": null
        },
        {
          "status": "placed",
          "updated_at": "2022-06-21T09:12:32+00:00",
          "state_type": "operational",
          "app_display_name": "Ordered",
          "display_name": "Placed",
          "forward": null
        },
        {
          "status": "bag_confirmed",
          "updated_at": "2022-06-21T09:39:13+00:00",
          "state_type": "operational",
          "app_display_name": "Ordered",
          "display_name": "Bag Confirmed",
          "forward": null
        },
        {
          "status": "dp_assigned",
          "updated_at": "2022-06-21T09:40:04+00:00",
          "state_type": "operational",
          "app_display_name": "DP Assigned",
          "display_name": "DP Assigned",
          "forward": null
        },
        {
          "status": "bag_picked",
          "updated_at": "2022-06-21T09:40:12+00:00",
          "state_type": "operational",
          "app_display_name": "Shipped",
          "display_name": "In Transit",
          "forward": null
        },
        {
          "status": "out_for_delivery",
          "updated_at": "2022-06-21T09:40:29+00:00",
          "state_type": "operational",
          "app_display_name": "Out For Delivery",
          "display_name": "Out For Delivery",
          "forward": null
        },
        {
          "status": "delivery_done",
          "updated_at": "2022-06-21T09:40:37+00:00",
          "state_type": "operational",
          "app_display_name": "Delivered",
          "display_name": "Delivery Done",
          "forward": null
        }
      ],
      "bags": [
        {
          "bag_id": 43880,
          "display_name": "Bag",
          "entity_type": "bag",
          "bag_configs": {
            "is_returnable": true,
            "can_be_cancelled": true,
            "enable_tracking": false,
            "is_customer_return_allowed": true,
            "allow_force_return": false,
            "is_active": false
          },
          "financial_breakup": [
            {
              "price_effective": 499,
              "discount": 0,
              "amount_paid": 549,
              "coupon_effective_discount": 0,
              "delivery_charge": 50,
              "fynd_credits": 0,
              "cod_charges": 0,
              "refund_credit": 0,
              "cashback": 0,
              "refund_amount": 549,
              "added_to_fynd_cash": false,
              "cashback_applied": 0,
              "gst_tax_percentage": 5,
              "value_of_good": 475.24,
              "price_marked": 499,
              "transfer_price": 0,
              "brand_calculated_amount": 499,
              "promotion_effective_discount": 0,
              "coupon_value": 0,
              "pm_price_split": {
                "COD": 549
              },
              "size": "5",
              "total_units": 1,
              "hsn_code": "62050000",
              "identifiers": {
                "sku_code": "CL-001L-L-PRPL-PINK-5"
              },
              "item_name": "Purple Flip Flops",
              "gst_fee": "23.76",
              "gst_tag": "IGST"
            }
          ],
          "current_status": "delivery_done",
          "item": {
            "name": "Purple Flip Flops",
            "brand": "Nike",
            "slug_key": "purple-flip-flops-ezmucvw4d3",
            "images": [
              "https://hdn-1.fynd.com/products/pictures/item/free/270x0/CL-001L-L-PRPL-PINK-6/Rvk5WbGg9Hx-1.jpg"
            ],
            "size": "5",
            "l1_category": "",
            "l3_category": "27"
          },
          "brand": {
            "modified_on": 1655707988,
            "logo": "https://hdn-1.jiomarketx0.de/x0/brands/pictures/square-logo/original/DbhIvd_tB-Logo.jpeg",
            "brand_name": "Nike",
            "company": null,
            "created_on": 1647793418,
            "id": 4
          },
          "gst_details": {
            "gstin_code": null,
            "gst_tag": "IGST",
            "hsn_code": "62050000",
            "value_of_good": 475.24,
            "gst_tax_percentage": 5,
            "is_default_hsn_code": true,
            "brand_calculated_amount": 499,
            "gst_fee": "23.76"
          },
          "article": {
            "uid": "6237fdfec0903e7ae543c201",
            "identifiers": {
              "sku_code": "CL-001L-L-PRPL-PINK-5"
            },
            "return_config": {
              "time": 30,
              "unit": "days",
              "returnable": true
            }
          },
          "quantity": 1
        }
      ],
      "delivery_slot": {
        "slot": "By 03:00 AM",
        "upper_bound": "2022-06-21T03:42:23+00:00",
        "lower_bound": "2022-06-21T03:42:23+00:00",
        "date": "2022-06-21T03:42:23+00:00",
        "type": "order_window"
      },
      "total_items": 1,
      "payment_methods": [
        {
          "slug": "COD",
          "payment_id": "COD",
          "payment_amt": 549,
          "payment_cart": null,
          "payment_desc": "COD",
          "bdcustomer_id": null,
          "order_inv_num": null,
          "mode_of_payment": "COD",
          "payment_gateway_logo": null,
          "transaction_ref_number": ""
        }
      ],
      "vertical": "GROCERIES",
      "payments": {
        "mode": "COD",
        "logo": "https://hdn-1.fynd.com/payment/Pos+Logo.png",
        "source": "Jio Partner Pay"
      },
      "priority_text": null,
      "status": {
        "created_at": 1655804437,
        "shipment_id": "16557829457641286433",
        "status": "delivery_done",
        "bag_list": [
          "43880"
        ],
        "id": 19980
      },
      "prices": {
        "amount_paid": 549,
        "refund_amount": 549,
        "price_marked": 499,
        "cod_charges": 0,
        "discount": 0,
        "cashback_applied": 0,
        "delivery_charge": 50,
        "fynd_credits": 0,
        "cashback": 0,
        "price_effective": 499,
        "refund_credit": 0,
        "value_of_good": 475.24,
        "pm_price_split": {
          "COD": 549
        },
        "brand_calculated_amount": 499,
        "coupon_effective_discount": 0,
        "tax_collected_at_source": 0,
        "promotion_effective_discount": 0
      },
      "picked_date": "",
      "tracking_list": [
        {
          "status": "Order Placed",
          "time": "2022-06-21T09:12:32+00:00",
          "is_passed": true,
          "is_current": false
        },
        {
          "status": "Order Confirmed",
          "time": "2022-06-21T09:39:13+00:00",
          "is_passed": true,
          "is_current": false
        },
        {
          "status": "Invoiced",
          "time": "2022-06-21T09:40:12+00:00",
          "is_passed": true,
          "is_current": false
        },
        {
          "status": "Delivery Partner Assigned",
          "time": "2022-06-21T09:40:12+00:00",
          "is_passed": true,
          "is_current": false
        },
        {
          "status": "Packed",
          "time": "2022-06-21T09:40:12+00:00",
          "is_passed": true,
          "is_current": false
        },
        {
          "status": "In Transit",
          "time": "2022-06-21T09:40:12+00:00",
          "is_passed": true,
          "is_current": false
        },
        {
          "status": "Out For Delivery",
          "time": "2022-06-21T09:40:29+00:00",
          "is_passed": true,
          "is_current": false
        },
        {
          "status": "Delivered",
          "time": "2022-06-21T09:40:37+00:00",
          "is_passed": true,
          "is_current": true
        }
      ],
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36",
      "platform_logo": "https://fynd-static.s3.amazonaws.com/mode_of_payment/fynd_logo.png",
      "packaging_type": "POLYB_DFLT_L"
    }
  ]
}
```
</details>









---


#### trackPlatformShipment
Track shipment




```swift
client.application("<APPLICATION_ID>").order.trackPlatformShipment(shipmentId: shipmentId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes |  |  



Track Shipment by shipment id, for application based on application Id

*Returned Response:*




[PlatformShipmentTrack](#PlatformShipmentTrack)

Success. Check the example shown below or refer `PlatformShipmentTrack` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "meta": {},
  "results": [
    {
      "updated_at": "24 Nov, 12:39 PM",
      "last_location_recieved_at": "Thane",
      "reason": "Fyndr",
      "shipment_type": "forward",
      "status": "dp_assigned",
      "updated_time": "2022-11-24T12:39:38+05:30",
      "account_name": "fyndr",
      "awb": "2125658183710",
      "raw_status": "dp_assigned",
      "meta": null
    }
  ]
}
```
</details>









---


#### getfilters





```swift
client.order.getfilters(view: view, groupEntity: groupEntity) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| view | String | yes |  |   
| groupEntity | String? | no |  |  





*Returned Response:*




[FiltersResponse](#FiltersResponse)

List of filters




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "global": [
    {
      "text": "Fulfilling Stores",
      "value": "stores",
      "type": "single_select",
      "options": null
    },
    {
      "text": "Search Types",
      "value": "search_type",
      "type": "single_select",
      "options": [
        {
          "text": "Auto",
          "value": "auto",
          "placeholder_text": "Search by Shipment ID, Order ID & Customer Email",
          "min_search_size": 5,
          "show_ui": true
        },
        {
          "text": "Shipment ID",
          "value": "shipment_id",
          "placeholder_text": "Search by Shipment ID",
          "min_search_size": 6,
          "show_ui": true
        },
        {
          "text": "Order ID",
          "value": "order_id",
          "placeholder_text": "Search by Order ID",
          "min_search_size": 6,
          "show_ui": true
        },
        {
          "text": "Customer Name",
          "value": "name",
          "placeholder_text": "Search by Customer Name",
          "min_search_size": 3,
          "show_ui": true
        },
        {
          "text": "Customer Email",
          "value": "email",
          "placeholder_text": "Search by Customer Email",
          "min_search_size": 5,
          "show_ui": true
        },
        {
          "text": "AWB Number",
          "value": "awb_no",
          "placeholder_text": "Search by AWB Number",
          "min_search_size": 10,
          "show_ui": true
        },
        {
          "text": "Invoice Id",
          "value": "invoice_id",
          "placeholder_text": "Search by Invoice Id",
          "min_search_size": 5,
          "show_ui": true
        },
        {
          "text": "EAN",
          "value": "ean",
          "placeholder_text": "Search by EAN",
          "min_search_size": 3,
          "show_ui": true
        },
        {
          "text": "SKU",
          "value": "sku",
          "placeholder_text": "Search by SKU",
          "min_search_size": 3,
          "show_ui": true
        }
      ]
    }
  ],
  "advance": {
    "Unfulfilled": [
      {
        "text": "Store Type",
        "value": "store_type",
        "type": "single_select",
        "options": [
          {
            "name": "Warehouse",
            "value": "warehouse"
          },
          {
            "name": "High Street",
            "value": "high_street"
          },
          {
            "name": "Mall",
            "value": "mall"
          },
          {
            "name": "Web Store",
            "value": "webstore"
          }
        ]
      },
      {
        "text": "Order Source",
        "value": "order_source",
        "type": "single_select",
        "options": [
          {
            "name": "Uniket",
            "value": "uniket"
          },
          {
            "name": "Fynd",
            "value": "fynd"
          },
          {
            "name": "Fynd Store",
            "value": "fynd_store"
          },
          {
            "name": "Affiliate",
            "value": "affiliate"
          }
        ]
      },
      {
        "text": "Time to Dispatch",
        "value": "time_to_dispatch",
        "type": "single_select",
        "options": [
          {
            "text": "Breached",
            "value": 1
          },
          {
            "text": "Not Breached",
            "value": -1
          }
        ]
      },
      {
        "text": "Payment Methods",
        "value": "payment_methods",
        "type": "single_select",
        "options": [
          {
            "text": "COD",
            "value": "COD"
          },
          {
            "text": "Prepaid",
            "value": "PREPAID"
          }
        ]
      }
    ],
    "Processed": [
      {
        "text": "Store Type",
        "value": "store_type",
        "type": "single_select",
        "options": [
          {
            "name": "Warehouse",
            "value": "warehouse"
          },
          {
            "name": "High Street",
            "value": "high_street"
          },
          {
            "name": "Mall",
            "value": "mall"
          },
          {
            "name": "Web Store",
            "value": "webstore"
          }
        ]
      },
      {
        "text": "Order Source",
        "value": "order_source",
        "type": "single_select",
        "options": [
          {
            "name": "Uniket",
            "value": "uniket"
          },
          {
            "name": "Fynd",
            "value": "fynd"
          },
          {
            "name": "Fynd Store",
            "value": "fynd_store"
          },
          {
            "name": "Affiliate",
            "value": "affiliate"
          }
        ]
      },
      {
        "text": "Payment Methods",
        "value": "payment_methods",
        "type": "single_select",
        "options": [
          {
            "text": "COD",
            "value": "COD"
          },
          {
            "text": "Prepaid",
            "value": "PREPAID"
          }
        ]
      }
    ],
    "Return": [
      {
        "text": "Store Type",
        "value": "store_type",
        "type": "single_select",
        "options": [
          {
            "name": "Warehouse",
            "value": "warehouse"
          },
          {
            "name": "High Street",
            "value": "high_street"
          },
          {
            "name": "Mall",
            "value": "mall"
          },
          {
            "name": "Web Store",
            "value": "webstore"
          }
        ]
      },
      {
        "text": "Order Source",
        "value": "order_source",
        "type": "single_select",
        "options": [
          {
            "name": "Uniket",
            "value": "uniket"
          },
          {
            "name": "Fynd",
            "value": "fynd"
          },
          {
            "name": "Fynd Store",
            "value": "fynd_store"
          },
          {
            "name": "Affiliate",
            "value": "affiliate"
          }
        ]
      },
      {
        "text": "Payment Methods",
        "value": "payment_methods",
        "type": "single_select",
        "options": [
          {
            "text": "COD",
            "value": "COD"
          },
          {
            "text": "Prepaid",
            "value": "PREPAID"
          }
        ]
      }
    ],
    "ActionCentre": [
      {
        "text": "Store Type",
        "value": "store_type",
        "type": "single_select",
        "options": [
          {
            "name": "Warehouse",
            "value": "warehouse"
          },
          {
            "name": "High Street",
            "value": "high_street"
          },
          {
            "name": "Mall",
            "value": "mall"
          },
          {
            "name": "Web Store",
            "value": "webstore"
          }
        ]
      },
      {
        "text": "Order Source",
        "value": "order_source",
        "type": "single_select",
        "options": [
          {
            "name": "Uniket",
            "value": "uniket"
          },
          {
            "name": "Fynd",
            "value": "fynd"
          },
          {
            "name": "Fynd Store",
            "value": "fynd_store"
          },
          {
            "name": "Affiliate",
            "value": "affiliate"
          }
        ]
      },
      {
        "text": "Payment Methods",
        "value": "payment_methods",
        "type": "single_select",
        "options": [
          {
            "text": "COD",
            "value": "COD"
          },
          {
            "text": "Prepaid",
            "value": "PREPAID"
          }
        ]
      }
    ]
  }
}
```
</details>









---


#### createShipmentReport





```swift
client.order.createShipmentReport(fromDate: fromDate, toDate: toDate) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| fromDate | String? | no |  |   
| toDate | String? | no |  |  





*Returned Response:*




[Success](#Success)

We have accepted report generation request.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getReportsShipmentListing





```swift
client.order.getReportsShipmentListing(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |  





*Returned Response:*




[OmsReports](#OmsReports)

We have are getting the info.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### upsertJioCode





```swift
client.order.upsertJioCode(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | JioCodeUpsertPayload | yes | Request body |




*Returned Response:*




[JioCodeUpsertResponse](#JioCodeUpsertResponse)

We are processing the report!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getBulkInvoice





```swift
client.order.getBulkInvoice(batchId: batchId, docType: docType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| batchId | String | yes |  |   
| docType | String | yes |  |  





*Returned Response:*




[BulkInvoicingResponse](#BulkInvoicingResponse)

We are processing the file!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getBulkInvoiceLabel





```swift
client.order.getBulkInvoiceLabel(batchId: batchId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| batchId | String | yes |  |  





*Returned Response:*




[BulkInvoiceLabelResponse](#BulkInvoiceLabelResponse)

We are processing the file!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getBulkShipmentExcelFile





```swift
client.order.getBulkShipmentExcelFile(lane: lane, searchType: searchType, searchId: searchId, fromDate: fromDate, toDate: toDate, dpIds: dpIds, orderingCompanyId: orderingCompanyId, stores: stores, salesChannel: salesChannel, requestByExt: requestByExt, pageNo: pageNo, pageSize: pageSize, customerId: customerId, isPrioritySort: isPrioritySort) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| lane | String? | no |  |   
| searchType | String? | no |  |   
| searchId | String? | no |  |   
| fromDate | String? | no |  |   
| toDate | String? | no |  |   
| dpIds | String? | no |  |   
| orderingCompanyId | String? | no |  |   
| stores | String? | no |  |   
| salesChannel | String? | no |  |   
| requestByExt | String? | no |  |   
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |   
| customerId | String? | no |  |   
| isPrioritySort | Bool? | no |  |  





*Returned Response:*




[FileResponse](#FileResponse)

We are processing the file!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "file_name": "placed_352_1668856953.7936668.xlsx",
  "operation": "putObject",
  "size": 13245,
  "namespace": "misc",
  "content_type": "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
  "file_path": "/misc/general/free/original/0Ex0-zTyw-placed_352_1668856953.7936668.xlsx",
  "method": "PUT",
  "tags": [],
  "upload": {
    "url": "https://fynd-staging-assets.s3-accelerate.amazonaws.com/x0/misc/general/free/original/0Ex0-zTyw-placed_352_1668856953.7936668.xlsx?Content-Type=application%2Fvnd.openxmlformats-officedocument.spreadsheetml.sheet&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAJUADR2WMPQT6ZJ2Q%2F20221119%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20221119T112233Z&X-Amz-Expires=1800&X-Amz-Signature=3408400dbe95ff12d0ea5487846aab74b0f2ae6963a58ac980fb46c11cd0b7be&X-Amz-SignedHeaders=host%3Bx-amz-acl&x-amz-acl=public-read",
    "expiry": 1800
  },
  "cdn": {
    "url": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/x0/misc/general/free/original/0Ex0-zTyw-placed_352_1668856953.7936668.xlsx"
  }
}
```
</details>









---


#### getBulkList





```swift
client.order.getBulkList(lane: lane, searchType: searchType, searchId: searchId, fromDate: fromDate, toDate: toDate, dpIds: dpIds, orderingCompanyId: orderingCompanyId, stores: stores, salesChannel: salesChannel, requestByExt: requestByExt, pageNo: pageNo, pageSize: pageSize, customerId: customerId, isPrioritySort: isPrioritySort) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| lane | String? | no |  |   
| searchType | String? | no |  |   
| searchId | String? | no |  |   
| fromDate | String? | no |  |   
| toDate | String? | no |  |   
| dpIds | String? | no |  |   
| orderingCompanyId | String? | no |  |   
| stores | String? | no |  |   
| salesChannel | String? | no |  |   
| requestByExt | String? | no |  |   
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |   
| customerId | String? | no |  |   
| isPrioritySort | Bool? | no |  |  





*Returned Response:*




[BulkListingResponse](#BulkListingResponse)

We are processing the file!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{}
```
</details>









---


#### getManifestList





```swift
client.order.getManifestList(status: status, storeId: storeId, pageNo: pageNo, pageSize: pageSize, searchValue: searchValue, fromDate: fromDate, toDate: toDate) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| status | String? | no |  |   
| storeId | Int? | no |  |   
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |   
| searchValue | String? | no |  |   
| fromDate | String? | no |  |   
| toDate | String? | no |  |  





*Returned Response:*




[GeneratedManifestResponse](#GeneratedManifestResponse)

We are processing the file!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "is_active": true,
      "manifest_id": "5d1d753a-6af9-11ed-8b97-1a715b71f832",
      "company_id": 1,
      "created_at": "26-11-2022",
      "created_by": "nehashetye_gofynd_com_71847",
      "filters": {
        "lane": "ready_for_dispatch",
        "dp_ids": 30,
        "stores": 357,
        "dp_name": "Delhivery",
        "date_range": {
          "to_date": "18-11-2022",
          "from_date": "20-05-2022"
        },
        "store_name": "reliance",
        "sales_channels": "62186fce51e60369e2b093e6",
        "sales_channel_name": "fynd"
      },
      "status": "process"
    }
  ],
  "page": {
    "current": "1",
    "total": 1,
    "has_previous": false,
    "has_next": false,
    "type": "number",
    "size": "100"
  }
}
```
</details>









---


#### getManifestDetailsWithShipments





```swift
client.order.getManifestDetailsWithShipments(manifestId: manifestId, fromDate: fromDate, toDate: toDate, storeId: storeId, page: page, pageSize: pageSize, lane: lane, dpIds: dpIds, searchType: searchType, searchValue: searchValue) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| manifestId | String | yes |  |   
| fromDate | String? | no |  |   
| toDate | String? | no |  |   
| storeId | Int | yes |  |   
| page | Int? | no |  |   
| pageSize | Int? | no |  |   
| lane | String? | no |  |   
| dpIds | Int? | no |  |   
| searchType | String? | no |  |   
| searchValue | String? | no |  |  





*Returned Response:*




[ManifestDetailResponse](#ManifestDetailResponse)

We are processing the file!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "manifest_details": [
    {
      "is_active": true,
      "manifest_id": "5d1d753a-6af9-11ed-8b97-1a715b71f832",
      "company_id": 1,
      "created_at": "26-11-2022",
      "created_by": "nehashetye_gofynd_com_71847",
      "filters": {
        "lane": "ready_for_dispatch",
        "dp_ids": 30,
        "stores": 357,
        "dp_name": "Delhivery",
        "date_range": {
          "to_date": "18-11-2022",
          "from_date": "20-05-2022"
        },
        "store_name": "reliance",
        "sales_channels": "62186fce51e60369e2b093e6",
        "sales_channel_name": "fynd"
      },
      "meta": {
        "filters": {
          "lane": "ready_for_dispatch",
          "dp_ids": 30,
          "stores": 357,
          "dp_name": "Delhivery",
          "date_range": {
            "to_date": "18-11-2022",
            "from_date": "20-05-2022"
          },
          "store_name": "reliance",
          "sales_channels": "62186fce51e60369e2b093e6",
          "sales_channel_name": "fynd"
        },
        "total_shipment_prices_count": {
          "total_price": 4792,
          "shipment_count": 8
        }
      },
      "status": "process",
      "uid": 11,
      "user_id": "5f23c85bf4439a812561443a",
      "id": "6381ca603a81bc8a08f340de"
    }
  ],
  "items": [
    {
      "shipment_id": "16631665711791409923",
      "order_id": "FYMP6321E86B01D585CA",
      "invoice_id": "1111111111111112",
      "awb": null,
      "item_qty": 1
    }
  ],
  "page": {
    "current": 1,
    "total": 1,
    "has_previous": false,
    "has_next": false,
    "type": "number",
    "size": 10
  },
  "additional_shipment_count": 0
}
```
</details>









---


#### getBulkActionFailedReport





```swift
client.order.getBulkActionFailedReport(batchId: batchId, reportType: reportType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| batchId | String | yes |  |   
| reportType | String? | no |  |  





*Returned Response:*




[FileResponse](#FileResponse)

File Processed!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "file_name": "requirements.txt",
  "operation": "putObject",
  "size": 8493,
  "namespace": "misc",
  "content_type": "text/plain",
  "file_path": "/misc/general/free/original/CEQ64hj8--requirements.txt",
  "method": "PUT",
  "tags": [],
  "upload": {
    "url": "https://fynd-staging-assets.s3-accelerate.amazonaws.com/x0/misc/general/free/original/CEQ64hj8--requirements.txt?Content-Type=text%2Fplain&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAJUADR2WMPQT6ZJ2Q%2F20221118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20221118T064720Z&X-Amz-Expires=1800&X-Amz-Signature=088ae87da27ef49644176f751ad2e642ab6cfad015cf01564ab5201c404000ec&X-Amz-SignedHeaders=host%3Bx-amz-acl&x-amz-acl=public-read",
    "expiry": 1800
  },
  "cdn": {
    "url": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/x0/misc/general/free/original/CEQ64hj8--requirements.txt"
  }
}
```
</details>









---


#### getShipmentReasons
Get reasons behind full or partial cancellation of a shipment




```swift
client.order.getShipmentReasons(shipmentId: shipmentId, bagId: bagId, state: state) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |   
| bagId | String | yes | ID of the bag. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |   
| state | String | yes | State for which reasons are required. |  



Use this API to retrieve the issues that led to the cancellation of bags within a shipment.

*Returned Response:*




[PlatformShipmentReasonsResponse](#PlatformShipmentReasonsResponse)

Success. Check the example shown below or refer `PlatformShipmentReasonsResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "reasons": [
    {
      "id": 84,
      "display_name": "Not Available to accept the Order",
      "qc_type": [],
      "question_set": []
    },
    {
      "id": 85,
      "display_name": "Store Bulk Order",
      "qc_type": [],
      "question_set": []
    },
    {
      "id": 86,
      "display_name": "Cancelled due to delayed delivery",
      "qc_type": [],
      "question_set": []
    },
    {
      "id": 87,
      "display_name": "Others",
      "qc_type": [],
      "question_set": []
    }
  ]
}
```
</details>









---


#### bulkActionProcessXlsxFile
emits uuid to kafka topic.




```swift
client.order.bulkActionProcessXlsxFile(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | BulkActionPayload | yes | Request body |


Use this API to start processing Xlsx file.

*Returned Response:*




[BulkActionResponse](#BulkActionResponse)

Success to acknowledge the service was notified




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "status": true,
  "message": "Successful"
}
```
</details>









---


#### bulkActionDetails
Returns failed, processing and successfully processed shipments.




```swift
client.order.bulkActionDetails(batchId: batchId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| batchId | String | yes |  |  



Returns failed, processing and successfully processed shipments along with their counts and failed reasons.

*Returned Response:*




[BulkActionDetailsResponse](#BulkActionDetailsResponse)

Success to acknowledge the service was notified




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": [
    {
      "batch_id": "d219af50-d37d-421b-b804-db2c51fa554a",
      "company_id": "1",
      "total_shipment_count": 1,
      "successful_shipment_ids": [],
      "successful_shipments_count": 0,
      "failed_shipments_count": 0,
      "processing_shipments_count": 1
    }
  ],
  "error": [],
  "message": "",
  "failed_records": [],
  "uploaded_by": "Neha Shetye",
  "user_id": "5f23c85bf4439a812561443a",
  "uploaded_on": "08 Nov 2022, 01:09 PM",
  "status": false
}
```
</details>









---


#### getBagById





```swift
client.order.getBagById(bagId: bagId, channelBagId: channelBagId, channelId: channelId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| bagId | String? | no |  |   
| channelBagId | String? | no |  |   
| channelId | String? | no |  |  





*Returned Response:*




[BagDetailsPlatformResponse](#BagDetailsPlatformResponse)

Successfully retrived shipment details!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getBags





```swift
client.order.getBags(bagIds: bagIds, shipmentIds: shipmentIds, orderIds: orderIds, channelBagIds: channelBagIds, channelShipmentIds: channelShipmentIds, channelOrderIds: channelOrderIds, channelId: channelId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| bagIds | String? | no |  |   
| shipmentIds | String? | no |  |   
| orderIds | String? | no |  |   
| channelBagIds | String? | no |  |   
| channelShipmentIds | String? | no |  |   
| channelOrderIds | String? | no |  |   
| channelId | String? | no |  |   
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |  





*Returned Response:*




[GetBagsPlatformResponse](#GetBagsPlatformResponse)

Successfully retrived all the given shipments details!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### invalidateShipmentCache





```swift
client.order.invalidateShipmentCache(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | InvalidateShipmentCachePayload | yes | Request body |


Invalidate shipment Cache

*Returned Response:*




[InvalidateShipmentCacheResponse](#InvalidateShipmentCacheResponse)

Successfully updated shipment cache!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### reassignLocation





```swift
client.order.reassignLocation(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | StoreReassign | yes | Request body |


Reassign Location

*Returned Response:*




[StoreReassignResponse](#StoreReassignResponse)

Successfully reassigned location!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateShipmentLock





```swift
client.order.updateShipmentLock(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | UpdateShipmentLockPayload | yes | Request body |


update shipment lock

*Returned Response:*




[UpdateShipmentLockResponse](#UpdateShipmentLockResponse)

Successfully updated shipment cache!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getAnnouncements





```swift
client.order.getAnnouncements(date: date) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| date | String? | no |  |  





*Returned Response:*




[AnnouncementsResponse](#AnnouncementsResponse)

Announcements retrieved successfully




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateAddress





```swift
client.order.updateAddress(shipmentId: shipmentId, name: name, address: address, addressType: addressType, pincode: pincode, phone: phone, email: email, landmark: landmark, addressCategory: addressCategory, city: city, state: state, country: country) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes |  |   
| name | String? | no |  |   
| address | String? | no |  |   
| addressType | String? | no |  |   
| pincode | String? | no |  |   
| phone | String? | no |  |   
| email | String? | no |  |   
| landmark | String? | no |  |   
| addressCategory | String | yes |  |   
| city | String? | no |  |   
| state | String? | no |  |   
| country | String? | no |  |  





*Returned Response:*




[BaseResponse](#BaseResponse)

Update Address will be processed!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### click2Call





```swift
client.order.click2Call(caller: caller, receiver: receiver, bagId: bagId, callingTo: callingTo, callerId: callerId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| caller | String | yes |  |   
| receiver | String | yes |  |   
| bagId | String | yes |  |   
| callingTo | String? | no |  |   
| callerId | String? | no |  |  





*Returned Response:*




[Click2CallResponse](#Click2CallResponse)

Process call on request!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateShipmentStatus





```swift
client.order.updateShipmentStatus(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | UpdateShipmentStatusRequest | yes | Request body |


Update shipment status

*Returned Response:*




[UpdateShipmentStatusResponseBody](#UpdateShipmentStatusResponseBody)

Successfully reassigned location!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### processManifest





```swift
client.order.processManifest(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateOrderPayload | yes | Request body |




*Returned Response:*




[CreateOrderResponse](#CreateOrderResponse)

Manifest will be processed!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### dispatchManifest





```swift
client.order.dispatchManifest(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | DispatchManifest | yes | Request body |




*Returned Response:*




[SuccessResponse](#SuccessResponse)

Shipment Dispatched mapped with manifest!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getRoleBasedActions





```swift
client.order.getRoleBasedActions() { (response, error) in
    // Use response
}
```








*Returned Response:*




[GetActionsResponse](#GetActionsResponse)

You will get an array of actions allowed for that particular user based on their role




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getShipmentHistory





```swift
client.order.getShipmentHistory(shipmentId: shipmentId, bagId: bagId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | Int? | no |  |   
| bagId | Int? | no |  |  





*Returned Response:*




[ShipmentHistoryResponse](#ShipmentHistoryResponse)

It shows the journey of the shipment!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "activity_history": [
    {
      "message": {
        "message": "Bag status changed to pending",
        "store_id": 10,
        "store_code": "SF94",
        "store_name": "shub",
        "reason": {},
        "type": "activity_status"
      },
      "createdat": "01 Apr 2022, 17:57:PM",
      "user": "system",
      "type": "activity_status",
      "l1_detail": null,
      "l2_detail": null,
      "l3_detail": null,
      "ticket_id": null,
      "ticket_url": null
    },
    {
      "message": {
        "message": "Bag status changed to placed",
        "store_id": 10,
        "store_code": "SF94",
        "store_name": "shub",
        "reason": {},
        "type": "activity_status"
      },
      "createdat": "01 Apr 2022, 17:57:PM",
      "user": "system",
      "type": "activity_status",
      "l1_detail": null,
      "l2_detail": null,
      "l3_detail": null,
      "ticket_id": null,
      "ticket_url": null
    }
  ]
}
```
</details>









---


#### sendSmsNinja





```swift
client.order.sendSmsNinja(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | SendSmsPayload | yes | Request body |




*Returned Response:*




[OrderStatusResult](#OrderStatusResult)

Sms Sent successfully




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### platformManualAssignDPToShipment





```swift
client.order.platformManualAssignDPToShipment(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ManualAssignDPToShipment | yes | Request body |




*Returned Response:*




[ManualAssignDPToShipmentResponse](#ManualAssignDPToShipmentResponse)

DP Assigned for the given shipment Ids.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updatePackagingDimensions





```swift
client.order.updatePackagingDimensions(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateOrderPayload | yes | Request body |




*Returned Response:*




[CreateOrderResponse](#CreateOrderResponse)

Manifest will be processed!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### createOrder





```swift
client.order.createOrder(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateOrderAPI | yes | Request body |




*Returned Response:*




[CreateOrderResponse](#CreateOrderResponse)

Successfully created an order!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### createChannelConfig





```swift
client.order.createChannelConfig(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateChannelConfigData | yes | Request body |


createChannelConfig

*Returned Response:*




[CreateChannelConfigResponse](#CreateChannelConfigResponse)

Successfully updateShipmentStatus!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "data": {
    "acknowledged": true,
    "is_upserted": false,
    "is_inserted": false
  }
}
```
</details>









---


#### getChannelConfig





```swift
client.order.getChannelConfig() { (response, error) in
    // Use response
}
```






getChannelConfig

*Returned Response:*




[CreateChannelConfigData](#CreateChannelConfigData)

Successfully created the config data




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "config_data": {
    "payment_info": {
      "payment_methods": [
        {
          "mode": "COD",
          "collect_by": "gringotts",
          "refund_by": "gringotts"
        }
      ],
      "source": "fynd",
      "mode_of_payment": "COD"
    },
    "dp_configuration": {
      "shipping_by": "fynd"
    },
    "logo_url": {},
    "location_reassignment": false,
    "lock_states": [
      "bag_packed"
    ],
    "shipment_assignment": "16703096324891701814"
  }
}
```
</details>









---


#### uploadConsent





```swift
client.order.uploadConsent(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | UploadConsent | yes | Request body |




*Returned Response:*




[SuccessResponse](#SuccessResponse)

Successful Manifest upload!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### orderUpdate





```swift
client.order.orderUpdate(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PlatformOrderUpdate | yes | Request body |




*Returned Response:*




[ResponseDetail](#ResponseDetail)

We are processing the order!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### checkOrderStatus





```swift
client.order.checkOrderStatus(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | OrderStatus | yes | Request body |




*Returned Response:*




[OrderStatusResult](#OrderStatusResult)

Order Status retrieved successfully




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### sendSmsNinjaPlatform





```swift
client.order.sendSmsNinjaPlatform(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | SendSmsPayload | yes | Request body |




*Returned Response:*




[OrderStatusResult](#OrderStatusResult)

Sms Sent successfully




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---



### Schemas

 
 
 #### [FilterInfoOption](#FilterInfoOption)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |
 | name | String? |  yes  |  |
 | text | String |  no  |  |

---


 
 
 #### [FiltersInfo](#FiltersInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | options | [[FilterInfoOption](#FilterInfoOption)]? |  yes  |  |
 | value | String |  no  |  |
 | text | String |  no  |  |

---


 
 
 #### [PlatformItem](#PlatformItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | canCancel | Bool? |  yes  |  |
 | l3CategoryName | String? |  yes  |  |
 | name | String? |  yes  |  |
 | canReturn | Bool? |  yes  |  |
 | images | [String]? |  yes  |  |
 | id | Int? |  yes  |  |
 | size | String? |  yes  |  |
 | image | [String]? |  yes  |  |
 | color | String? |  yes  |  |
 | departmentId | Int? |  yes  |  |
 | l1Category | [String]? |  yes  |  |
 | l3Category | Int? |  yes  |  |
 | code | String? |  yes  |  |

---


 
 
 #### [Prices](#Prices)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cashbackApplied | Double? |  yes  |  |
 | cashback | Double? |  yes  |  |
 | codCharges | Double? |  yes  |  |
 | priceEffective | Double? |  yes  |  |
 | valueOfGood | Double? |  yes  |  |
 | amountPaidRoundoff | Double? |  yes  |  |
 | taxCollectedAtSource | Double? |  yes  |  |
 | refundAmount | Double? |  yes  |  |
 | amountPaid | Double? |  yes  |  |
 | couponValue | Double? |  yes  |  |
 | deliveryCharge | Double? |  yes  |  |
 | refundCredit | Double? |  yes  |  |
 | promotionEffectiveDiscount | Double? |  yes  |  |
 | fyndCredits | Double? |  yes  |  |
 | discount | Double? |  yes  |  |
 | priceMarked | Double? |  yes  |  |

---


 
 
 #### [GSTDetailsData](#GSTDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstFee | Double |  no  |  |
 | gstinCode | String |  no  |  |
 | valueOfGood | Double |  no  |  |
 | taxCollectedAtSource | Double |  no  |  |
 | brandCalculatedAmount | Double |  no  |  |

---


 
 
 #### [BagUnit](#BagUnit)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | item | [PlatformItem](#PlatformItem)? |  yes  |  |
 | canCancel | Bool? |  yes  |  |
 | parentPromoBags | [String: Any]? |  yes  |  |
 | bagId | Int |  no  |  |
 | canReturn | Bool? |  yes  |  |
 | totalShipmentBags | Int |  no  |  |
 | orderingChannel | String |  no  |  |
 | groupId | String? |  yes  |  |
 | appliedPromos | [String: Any]? |  yes  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | lineNumber | Int |  no  |  |
 | quantity | Int |  no  |  |
 | status | [String: Any] |  no  |  |
 | gst | [GSTDetailsData](#GSTDetailsData)? |  yes  |  |
 | identifier | String |  no  |  |
 | shipmentId | String |  no  |  |

---


 
 
 #### [PaymentModeInfo](#PaymentModeInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | logo | String |  no  |  |

---


 
 
 #### [UserDataInfo](#UserDataInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mobile | String? |  yes  |  |
 | isAnonymousUser | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | email | String? |  yes  |  |
 | gender | String? |  yes  |  |
 | avisUserId | String? |  yes  |  |
 | lastName | String? |  yes  |  |
 | firstName | String? |  yes  |  |

---


 
 
 #### [ShipmentStatus](#ShipmentStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | actualStatus | String |  no  |  |
 | opsStatus | String |  no  |  |
 | status | String |  no  |  |
 | hexCode | String |  no  |  |

---


 
 
 #### [ShipmentItemFulFillingStore](#ShipmentItemFulFillingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | code | String |  no  |  |

---


 
 
 #### [ShipmentItem](#ShipmentItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalBagsCount | Int |  no  |  |
 | bags | [[BagUnit](#BagUnit)]? |  yes  |  |
 | paymentModeInfo | [PaymentModeInfo](#PaymentModeInfo)? |  yes  |  |
 | sla | [String: Any]? |  yes  |  |
 | id | String |  no  |  |
 | createdAt | String |  no  |  |
 | totalShipmentsInOrder | Int |  no  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | user | [UserDataInfo](#UserDataInfo)? |  yes  |  |
 | channel | [String: Any]? |  yes  |  |
 | application | [String: Any]? |  yes  |  |
 | shipmentCreatedAt | Int |  no  |  |
 | shipmentStatus | [ShipmentStatus](#ShipmentStatus)? |  yes  |  |
 | fulfillingCentre | String |  no  |  |
 | paymentMethods | [String: Any]? |  yes  |  |
 | fulfillingStore | [ShipmentItemFulFillingStore](#ShipmentItemFulFillingStore)? |  yes  |  |

---


 
 
 #### [ShipmentInternalPlatformViewResponse](#ShipmentInternalPlatformViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appliedFilters | [String: Any]? |  yes  |  |
 | page | [String: Any]? |  yes  |  |
 | filters | [[FiltersInfo](#FiltersInfo)]? |  yes  |  |
 | items | [[ShipmentItem](#ShipmentItem)]? |  yes  |  |

---


 
 
 #### [Error](#Error)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [BagGST](#BagGST)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstFee | Int? |  yes  |  |
 | gstinCode | String? |  yes  |  |
 | gstTag | String? |  yes  |  |
 | hsnCode | String? |  yes  |  |
 | valueOfGood | Int? |  yes  |  |
 | gstTaxPercentage | Int? |  yes  |  |
 | brandCalculatedAmount | Int? |  yes  |  |
 | isDefaultHsnCode | Bool? |  yes  |  |

---


 
 
 #### [OrderBagArticle](#OrderBagArticle)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | identifiers | [String: Any]? |  yes  |  |
 | returnConfig | [String: Any]? |  yes  |  |
 | uid | String? |  yes  |  |

---


 
 
 #### [BagConfigs](#BagConfigs)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isCustomerReturnAllowed | Bool |  no  |  |
 | isActive | Bool |  no  |  |
 | canBeCancelled | Bool |  no  |  |
 | isReturnable | Bool |  no  |  |
 | enableTracking | Bool |  no  |  |
 | allowForceReturn | Bool |  no  |  |

---


 
 
 #### [Identifier](#Identifier)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ean | String? |  yes  |  |

---


 
 
 #### [FinancialBreakup](#FinancialBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cashback | Int |  no  |  |
 | cashbackApplied | Int |  no  |  |
 | pmPriceSplit | [String: Any] |  no  |  |
 | priceEffective | Int |  no  |  |
 | couponEffectiveDiscount | Int |  no  |  |
 | amountPaidRoundoff | Int? |  yes  |  |
 | size | String |  no  |  |
 | itemName | String |  no  |  |
 | deliveryCharge | Int |  no  |  |
 | promotionEffectiveDiscount | Int |  no  |  |
 | addedToFyndCash | Bool |  no  |  |
 | codCharges | Int |  no  |  |
 | gstTaxPercentage | Int |  no  |  |
 | brandCalculatedAmount | Int |  no  |  |
 | couponValue | Int |  no  |  |
 | refundCredit | Int |  no  |  |
 | identifiers | [Identifier](#Identifier) |  no  |  |
 | priceMarked | Int |  no  |  |
 | gstFee | String |  no  |  |
 | totalUnits | Int |  no  |  |
 | valueOfGood | Int |  no  |  |
 | taxCollectedAtSource | Int? |  yes  |  |
 | transferPrice | Int |  no  |  |
 | fyndCredits | Int |  no  |  |
 | gstTag | String |  no  |  |
 | hsnCode | String |  no  |  |
 | amountPaid | Int |  no  |  |
 | discount | Int |  no  |  |

---


 
 
 #### [OrderBrandName](#OrderBrandName)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdOn | Int |  no  |  |
 | modifiedOn | Int? |  yes  |  |
 | id | Int |  no  |  |
 | brandName | String |  no  |  |
 | logo | String |  no  |  |
 | company | String |  no  |  |

---


 
 
 #### [DiscountRules](#DiscountRules)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | value | Int? |  yes  |  |

---


 
 
 #### [ItemCriterias](#ItemCriterias)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemBrand | [Int]? |  yes  |  |

---


 
 
 #### [BuyRules](#BuyRules)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cartConditions | [String: Any]? |  yes  |  |
 | itemCriteria | [ItemCriterias](#ItemCriterias)? |  yes  |  |

---


 
 
 #### [AppliedPromos](#AppliedPromos)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | promotionName | String? |  yes  |  |
 | discountRules | [[DiscountRules](#DiscountRules)]? |  yes  |  |
 | amount | Double? |  yes  |  |
 | articleQuantity | Int? |  yes  |  |
 | promotionType | String? |  yes  |  |
 | promoId | String? |  yes  |  |
 | mrpPromotion | Bool? |  yes  |  |
 | buyRules | [[BuyRules](#BuyRules)]? |  yes  |  |

---


 
 
 #### [PlatformDeliveryAddress](#PlatformDeliveryAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | latitude | Int? |  yes  |  |
 | country | String? |  yes  |  |
 | pincode | String? |  yes  |  |
 | email | String? |  yes  |  |
 | landmark | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | state | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | version | String? |  yes  |  |
 | area | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | contactPerson | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | longitude | Int? |  yes  |  |
 | addressCategory | String? |  yes  |  |
 | city | String? |  yes  |  |

---


 
 
 #### [OrderBags](#OrderBags)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | canReturn | Bool? |  yes  |  |
 | gstDetails | [BagGST](#BagGST)? |  yes  |  |
 | displayName | String? |  yes  |  |
 | lineNumber | Int? |  yes  |  |
 | identifier | String? |  yes  |  |
 | currentStatus | String? |  yes  |  |
 | item | [PlatformItem](#PlatformItem)? |  yes  |  |
 | sellerIdentifier | String? |  yes  |  |
 | bagId | Int |  no  |  |
 | entityType | String? |  yes  |  |
 | article | [OrderBagArticle](#OrderBagArticle)? |  yes  |  |
 | bagConfigs | [BagConfigs](#BagConfigs)? |  yes  |  |
 | parentPromoBags | [String: Any]? |  yes  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | financialBreakup | [[FinancialBreakup](#FinancialBreakup)]? |  yes  |  |
 | brand | [OrderBrandName](#OrderBrandName)? |  yes  |  |
 | canCancel | Bool? |  yes  |  |
 | appliedPromos | [[AppliedPromos](#AppliedPromos)]? |  yes  |  |
 | deliveryAddress | [PlatformDeliveryAddress](#PlatformDeliveryAddress)? |  yes  |  |
 | quantity | Int? |  yes  |  |

---


 
 
 #### [OrderDetailsData](#OrderDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateId | String? |  yes  |  |
 | codCharges | String? |  yes  |  |
 | orderDate | String? |  yes  |  |
 | orderingChannel | String? |  yes  |  |
 | taxDetails | [String: Any]? |  yes  |  |
 | source | String? |  yes  |  |
 | orderValue | String? |  yes  |  |
 | orderingChannelLogo | [String: Any]? |  yes  |  |
 | fyndOrderId | String |  no  |  |

---


 
 
 #### [BagStateMapper](#BagStateMapper)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | notifyCustomer | Bool? |  yes  |  |
 | name | String |  no  |  |
 | isActive | Bool? |  yes  |  |
 | bsId | Int |  no  |  |
 | appFacing | Bool? |  yes  |  |
 | displayName | String |  no  |  |
 | appStateName | String? |  yes  |  |
 | journeyType | String |  no  |  |
 | stateType | String |  no  |  |
 | appDisplayName | String? |  yes  |  |

---


 
 
 #### [BagStatusHistory](#BagStatusHistory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | kafkaSync | Bool? |  yes  |  |
 | deliveryAwbNumber | String? |  yes  |  |
 | bagStateMapper | [BagStateMapper](#BagStateMapper) |  no  |  |
 | appDisplayName | Bool? |  yes  |  |
 | storeId | Int |  no  |  |
 | bagId | Int |  no  |  |
 | forward | Bool? |  yes  |  |
 | createdAt | String |  no  |  |
 | deliveryPartnerId | Int? |  yes  |  |
 | bshId | Int |  no  |  |
 | displayName | Bool? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | reasons | [[String: Any]]? |  yes  |  |
 | stateType | String? |  yes  |  |
 | status | String |  no  |  |
 | stateId | Int |  no  |  |
 | shipmentId | String |  no  |  |

---


 
 
 #### [ShipmentPayments](#ShipmentPayments)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | source | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | mode | String |  no  |  |

---


 
 
 #### [ShipmentStatusData](#ShipmentStatusData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdAt | String? |  yes  |  |
 | id | Int? |  yes  |  |
 | bagList | [Int]? |  yes  |  |
 | status | String? |  yes  |  |
 | shipmentId | String? |  yes  |  |

---


 
 
 #### [TrackingList](#TrackingList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String |  no  |  |
 | isPassed | Bool? |  yes  |  |
 | time | String? |  yes  |  |
 | isCurrent | Bool? |  yes  |  |
 | status | String |  no  |  |

---


 
 
 #### [DPDetailsData](#DPDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstTag | String? |  yes  |  |
 | name | String? |  yes  |  |
 | country | String? |  yes  |  |
 | ewayBillId | String? |  yes  |  |
 | pincode | String? |  yes  |  |
 | id | String? |  yes  |  |
 | trackUrl | String? |  yes  |  |
 | awbNo | String? |  yes  |  |

---


 
 
 #### [UserDetailsData](#UserDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | String |  no  |  |
 | name | String |  no  |  |
 | country | String |  no  |  |
 | email | String |  no  |  |
 | pincode | String |  no  |  |
 | state | String |  no  |  |
 | address | String |  no  |  |
 | city | String |  no  |  |

---


 
 
 #### [FulfillingStore](#FulfillingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fulfillmentChannel | String |  no  |  |
 | phone | String |  no  |  |
 | country | String |  no  |  |
 | pincode | String |  no  |  |
 | storeName | String |  no  |  |
 | id | String |  no  |  |
 | state | String |  no  |  |
 | meta | [String: Any] |  no  |  |
 | contactPerson | String |  no  |  |
 | address | String |  no  |  |
 | city | String |  no  |  |
 | code | String |  no  |  |

---


 
 
 #### [ShipmentInfoResponse](#ShipmentInfoResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bags | [[OrderBags](#OrderBags)]? |  yes  |  |
 | totalBags | Int? |  yes  |  |
 | currentShipmentStatus | [String: Any] |  no  |  |
 | items | [[String: Any]] |  no  |  |
 | canReturn | Bool? |  yes  |  |
 | gstDetails | [GSTDetailsData](#GSTDetailsData)? |  yes  |  |
 | order | [OrderDetailsData](#OrderDetailsData)? |  yes  |  |
 | isFyndStore | String? |  yes  |  |
 | totalItems | Int? |  yes  |  |
 | shipmentQuantity | Int? |  yes  |  |
 | isPackagingOrder | Bool |  no  |  |
 | userAgent | String? |  yes  |  |
 | refundText | String? |  yes  |  |
 | deliverySlot | [String: Any]? |  yes  |  |
 | invoice | [String: Any] |  no  |  |
 | statusProgress | Int |  no  |  |
 | journeyType | String? |  yes  |  |
 | bagStatusHistory | [[BagStatusHistory](#BagStatusHistory)]? |  yes  |  |
 | affiliateShipmentId | String |  no  |  |
 | childNodes | [String]? |  yes  |  |
 | fyndstoreEmp | [String: Any] |  no  |  |
 | refundDetails | [String: Any]? |  yes  |  |
 | priorityText | String? |  yes  |  |
 | lockStatus | String |  no  |  |
 | payButton | String? |  yes  |  |
 | orderCreatedTime | String? |  yes  |  |
 | pickedDate | String? |  yes  |  |
 | userInfo | [String: Any]? |  yes  |  |
 | isNotFyndSource | Bool |  no  |  |
 | orderStatus | [String: Any] |  no  |  |
 | emailId | String |  no  |  |
 | enableTracking | Bool? |  yes  |  |
 | creditNoteId | String |  no  |  |
 | shipmentImages | [String]? |  yes  |  |
 | escalation | [String: Any]? |  yes  |  |
 | deliveryStatus | [[String: Any]] |  no  |  |
 | paymentMode | String? |  yes  |  |
 | coupon | [String: Any]? |  yes  |  |
 | canBreak | String |  no  |  |
 | shipmentId | String |  no  |  |
 | forwardOrderStatus | [[String: Any]]? |  yes  |  |
 | forwardShipmentStatus | [[String: Any]]? |  yes  |  |
 | payments | [ShipmentPayments](#ShipmentPayments)? |  yes  |  |
 | platformLogo | Bool |  no  |  |
 | isPdsr | String? |  yes  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | forwardTrackingList | [[String: Any]]? |  yes  |  |
 | goGreen | Bool? |  yes  |  |
 | replacementDetails | String? |  yes  |  |
 | shipmentStatus | String? |  yes  |  |
 | trackingUrl | String |  no  |  |
 | status | [ShipmentStatusData](#ShipmentStatusData)? |  yes  |  |
 | trackingList | [[TrackingList](#TrackingList)]? |  yes  |  |
 | dpDetails | [DPDetailsData](#DPDetailsData)? |  yes  |  |
 | company | [String: Any] |  no  |  |
 | customMeta | [[String: Any]]? |  yes  |  |
 | beneficiaryDetails | Bool? |  yes  |  |
 | orderingStore | [String: Any] |  no  |  |
 | billingDetails | [UserDetailsData](#UserDetailsData)? |  yes  |  |
 | canCancel | Bool? |  yes  |  |
 | orderType | String |  no  |  |
 | kiranaStoreId | String? |  yes  |  |
 | bankData | [String: Any]? |  yes  |  |
 | dueDate | String? |  yes  |  |
 | userId | String |  no  |  |
 | packagingType | String? |  yes  |  |
 | vertical | String? |  yes  |  |
 | operationalStatus | String? |  yes  |  |
 | enableDpTracking | String? |  yes  |  |
 | isInvoiced | Bool |  no  |  |
 | mid | String? |  yes  |  |
 | isFyndCoupon | Bool |  no  |  |
 | fulfillingStore | [FulfillingStore](#FulfillingStore)? |  yes  |  |
 | deliveryDetails | [UserDetailsData](#UserDetailsData)? |  yes  |  |
 | securedDeliveryFlag | String? |  yes  |  |

---


 
 
 #### [PlatformShipment](#PlatformShipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bags | [[OrderBags](#OrderBags)]? |  yes  |  |
 | totalBags | Int? |  yes  |  |
 | gstDetails | [GSTDetailsData](#GSTDetailsData)? |  yes  |  |
 | order | [OrderDetailsData](#OrderDetailsData)? |  yes  |  |
 | totalItems | Int? |  yes  |  |
 | shipmentQuantity | Int? |  yes  |  |
 | userAgent | String? |  yes  |  |
 | deliverySlot | [String: Any]? |  yes  |  |
 | journeyType | String? |  yes  |  |
 | bagStatusHistory | [[BagStatusHistory](#BagStatusHistory)]? |  yes  |  |
 | priorityText | String? |  yes  |  |
 | pickedDate | String? |  yes  |  |
 | shipmentImages | [String]? |  yes  |  |
 | paymentMode | String? |  yes  |  |
 | shipmentId | String |  no  |  |
 | payments | [ShipmentPayments](#ShipmentPayments)? |  yes  |  |
 | platformLogo | String? |  yes  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | shipmentStatus | String? |  yes  |  |
 | status | [ShipmentStatusData](#ShipmentStatusData)? |  yes  |  |
 | trackingList | [[TrackingList](#TrackingList)]? |  yes  |  |
 | dpDetails | [DPDetailsData](#DPDetailsData)? |  yes  |  |
 | customMeta | [[String: Any]]? |  yes  |  |
 | billingDetails | [UserDetailsData](#UserDetailsData)? |  yes  |  |
 | packagingType | String? |  yes  |  |
 | vertical | String? |  yes  |  |
 | operationalStatus | String? |  yes  |  |
 | enableDpTracking | String? |  yes  |  |
 | fulfillingStore | [FulfillingStore](#FulfillingStore)? |  yes  |  |
 | deliveryDetails | [UserDetailsData](#UserDetailsData)? |  yes  |  |

---


 
 
 #### [OrderDict](#OrderDict)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderDate | String |  no  |  |
 | fyndOrderId | String |  no  |  |
 | shipmentCount | Int |  no  |  |

---


 
 
 #### [ShipmentDetailsResponse](#ShipmentDetailsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customMeta | [[String: Any]]? |  yes  |  |
 | shipments | [[PlatformShipment](#PlatformShipment)]? |  yes  |  |
 | success | Bool |  no  |  |
 | order | [OrderDict](#OrderDict)? |  yes  |  |

---


 
 
 #### [SubLane](#SubLane)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String? |  yes  |  |
 | actions | [[String: Any]]? |  yes  |  |
 | totalItems | Int? |  yes  |  |
 | value | String? |  yes  |  |
 | index | Int? |  yes  |  |

---


 
 
 #### [SuperLane](#SuperLane)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalItems | Int? |  yes  |  |
 | options | [[SubLane](#SubLane)]? |  yes  |  |
 | value | String |  no  |  |
 | text | String |  no  |  |

---


 
 
 #### [LaneConfigResponse](#LaneConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | superLanes | [[SuperLane](#SuperLane)]? |  yes  |  |

---


 
 
 #### [PlatformBreakupValues](#PlatformBreakupValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |
 | display | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [PlatformChannel](#PlatformChannel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logo | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [PlatformOrderItems](#PlatformOrderItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalOrderValue | Double? |  yes  |  |
 | orderId | String? |  yes  |  |
 | paymentMode | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | orderCreatedTime | String? |  yes  |  |
 | userInfo | [UserDataInfo](#UserDataInfo)? |  yes  |  |
 | breakupValues | [[PlatformBreakupValues](#PlatformBreakupValues)]? |  yes  |  |
 | channel | [PlatformChannel](#PlatformChannel)? |  yes  |  |
 | orderValue | Double? |  yes  |  |
 | shipments | [[PlatformShipment](#PlatformShipment)]? |  yes  |  |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | size | Int? |  yes  |  |
 | total | Int? |  yes  |  |
 | hasPrevious | Bool? |  yes  |  |
 | current | Int? |  yes  |  |

---


 
 
 #### [OrderListingResponse](#OrderListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[PlatformOrderItems](#PlatformOrderItems)]? |  yes  |  |
 | totalCount | Int? |  yes  |  |
 | success | Bool? |  yes  |  |
 | lane | String? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [Options](#Options)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | Int? |  yes  |  |
 | text | String? |  yes  |  |

---


 
 
 #### [MetricsCount](#MetricsCount)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String |  no  |  |
 | options | [[Options](#Options)]? |  yes  |  |
 | value | Int |  no  |  |
 | text | String |  no  |  |

---


 
 
 #### [MetricCountResponse](#MetricCountResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[MetricsCount](#MetricsCount)]? |  yes  |  |

---


 
 
 #### [PlatformTrack](#PlatformTrack)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentType | String? |  yes  |  |
 | reason | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | awb | String? |  yes  |  |
 | rawStatus | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | updatedTime | String? |  yes  |  |
 | accountName | String? |  yes  |  |
 | lastLocationRecievedAt | String? |  yes  |  |
 | status | String? |  yes  |  |

---


 
 
 #### [PlatformShipmentTrack](#PlatformShipmentTrack)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | results | [[PlatformTrack](#PlatformTrack)]? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [FiltersResponse](#FiltersResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | advance | [[String: Any]]? |  yes  |  |

---


 
 
 #### [Success](#Success)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [OmsReports](#OmsReports)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reportCreatedAt | String? |  yes  |  |
 | reportType | String? |  yes  |  |
 | requestDetails | [String: Any]? |  yes  |  |
 | reportName | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | reportRequestedAt | String? |  yes  |  |
 | reportId | String? |  yes  |  |
 | s3Key | String? |  yes  |  |
 | status | String? |  yes  |  |

---


 
 
 #### [JioCodeUpsertDataSet](#JioCodeUpsertDataSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | jioCode | String? |  yes  |  |
 | companyId | String? |  yes  |  |
 | articleId | String? |  yes  |  |
 | itemId | String? |  yes  |  |

---


 
 
 #### [JioCodeUpsertPayload](#JioCodeUpsertPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[JioCodeUpsertDataSet](#JioCodeUpsertDataSet)]? |  yes  |  |

---


 
 
 #### [NestedErrorSchemaDataSet](#NestedErrorSchemaDataSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | value | String? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [JioCodeUpsertResponse](#JioCodeUpsertResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[String: Any]]? |  yes  |  |
 | success | Bool? |  yes  |  |
 | error | [[NestedErrorSchemaDataSet](#NestedErrorSchemaDataSet)]? |  yes  |  |
 | traceId | String? |  yes  |  |
 | identifier | String? |  yes  |  |

---


 
 
 #### [BulkInvoicingResponse](#BulkInvoicingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [BulkInvoiceLabelResponse](#BulkInvoiceLabelResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | label | [String: Any]? |  yes  |  |
 | doInvoiceLabelGenerated | Bool |  no  |  |
 | companyId | String? |  yes  |  |
 | storeId | String? |  yes  |  |
 | storeName | String? |  yes  |  |
 | data | [String: Any]? |  yes  |  |
 | invoiceStatus | String? |  yes  |  |
 | batchId | String |  no  |  |
 | invoice | [String: Any]? |  yes  |  |
 | storeCode | String? |  yes  |  |

---


 
 
 #### [URL](#URL)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String? |  yes  |  |

---


 
 
 #### [FileUploadResponse](#FileUploadResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String? |  yes  |  |
 | expiry | Int? |  yes  |  |

---


 
 
 #### [FileResponse](#FileResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | method | String? |  yes  |  |
 | operation | String? |  yes  |  |
 | cdn | [URL](#URL)? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | contentType | String? |  yes  |  |
 | size | Int? |  yes  |  |
 | upload | [FileUploadResponse](#FileUploadResponse)? |  yes  |  |
 | fileName | String? |  yes  |  |
 | namespace | String? |  yes  |  |
 | filePath | String? |  yes  |  |

---


 
 
 #### [bulkListingData](#bulkListingData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeId | Int? |  yes  |  |
 | total | Int? |  yes  |  |
 | successful | Int? |  yes  |  |
 | batchId | String? |  yes  |  |
 | processing | Int? |  yes  |  |
 | failed | Int? |  yes  |  |
 | excelUrl | String? |  yes  |  |
 | processingShipments | [String]? |  yes  |  |
 | successfulShipments | [[String: Any]]? |  yes  |  |
 | storeName | String? |  yes  |  |
 | failedShipments | [[String: Any]]? |  yes  |  |
 | fileName | String? |  yes  |  |
 | status | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | userId | String? |  yes  |  |
 | id | String? |  yes  |  |
 | uploadedOn | String? |  yes  |  |
 | userName | String? |  yes  |  |
 | storeCode | String? |  yes  |  |

---


 
 
 #### [BulkListingPage](#BulkListingPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | size | Int? |  yes  |  |
 | total | Int? |  yes  |  |
 | hasPrevious | Bool? |  yes  |  |
 | current | Int? |  yes  |  |

---


 
 
 #### [BulkListingResponse](#BulkListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[bulkListingData](#bulkListingData)]? |  yes  |  |
 | success | Bool? |  yes  |  |
 | page | [BulkListingPage](#BulkListingPage)? |  yes  |  |
 | error | String? |  yes  |  |

---


 
 
 #### [ManifestPage](#ManifestPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | size | String? |  yes  |  |
 | total | Int? |  yes  |  |
 | hasPrevious | Bool? |  yes  |  |
 | current | String? |  yes  |  |

---


 
 
 #### [DateRange](#DateRange)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | toDate | String? |  yes  |  |
 | fromDate | String? |  yes  |  |

---


 
 
 #### [ManifestFilter](#ManifestFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dpName | String? |  yes  |  |
 | dateRange | [DateRange](#DateRange)? |  yes  |  |
 | salesChannelName | String? |  yes  |  |
 | storeName | String? |  yes  |  |
 | dpIds | String? |  yes  |  |
 | stores | String? |  yes  |  |
 | salesChannels | String? |  yes  |  |
 | lane | String? |  yes  |  |

---


 
 
 #### [GeneratedManifestItem](#GeneratedManifestItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | Int? |  yes  |  |
 | manifestId | String? |  yes  |  |
 | filters | [ManifestFilter](#ManifestFilter)? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | createdBy | String? |  yes  |  |
 | status | String? |  yes  |  |

---


 
 
 #### [GeneratedManifestResponse](#GeneratedManifestResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [ManifestPage](#ManifestPage)? |  yes  |  |
 | items | [[GeneratedManifestItem](#GeneratedManifestItem)]? |  yes  |  |

---


 
 
 #### [ManifestDetailTotalShipmentPricesCount](#ManifestDetailTotalShipmentPricesCount)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalPrice | Double? |  yes  |  |
 | shipmentCount | Int? |  yes  |  |

---


 
 
 #### [ManifestDetailMeta](#ManifestDetailMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filters | [ManifestFilter](#ManifestFilter)? |  yes  |  |
 | totalShipmentPricesCount | [ManifestDetailTotalShipmentPricesCount](#ManifestDetailTotalShipmentPricesCount)? |  yes  |  |

---


 
 
 #### [ManifestDetail](#ManifestDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | Int? |  yes  |  |
 | manifestId | String? |  yes  |  |
 | filters | [ManifestFilter](#ManifestFilter)? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | uid | Int? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | userId | Int? |  yes  |  |
 | id | Int? |  yes  |  |
 | meta | [ManifestDetailMeta](#ManifestDetailMeta)? |  yes  |  |
 | createdBy | String? |  yes  |  |
 | status | String? |  yes  |  |

---


 
 
 #### [ManifestDetailItem](#ManifestDetailItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderId | String? |  yes  |  |
 | itemQty | Int? |  yes  |  |
 | awb | String? |  yes  |  |
 | invoiceId | String? |  yes  |  |
 | shipmentId | String? |  yes  |  |

---


 
 
 #### [ManifestDetailResponse](#ManifestDetailResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | manifestDetails | [[ManifestDetail](#ManifestDetail)]? |  yes  |  |
 | page | [ManifestPage](#ManifestPage)? |  yes  |  |
 | additionalShipmentCount | Int? |  yes  |  |
 | items | [[ManifestDetailItem](#ManifestDetailItem)]? |  yes  |  |

---


 
 
 #### [QuestionSet](#QuestionSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | displayName | String? |  yes  |  |
 | id | Int? |  yes  |  |

---


 
 
 #### [Reason](#Reason)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | questionSet | [[QuestionSet](#QuestionSet)]? |  yes  |  |
 | displayName | String? |  yes  |  |
 | id | Int? |  yes  |  |
 | qcType | [String]? |  yes  |  |

---


 
 
 #### [PlatformShipmentReasonsResponse](#PlatformShipmentReasonsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasons | [[Reason](#Reason)]? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [BulkActionPayload](#BulkActionPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String |  no  |  |

---


 
 
 #### [BulkActionResponse](#BulkActionResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [BulkActionDetailsDataField](#BulkActionDetailsDataField)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | processingShipmentsCount | Int? |  yes  |  |
 | successfulShipmentIds | [String]? |  yes  |  |
 | companyId | String? |  yes  |  |
 | failedShipmentsCount | Int? |  yes  |  |
 | successfulShipmentsCount | Int? |  yes  |  |
 | batchId | String? |  yes  |  |
 | totalShipmentsCount | Int? |  yes  |  |

---


 
 
 #### [BulkActionDetailsResponse](#BulkActionDetailsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | failedRecords | [String]? |  yes  |  |
 | data | [[BulkActionDetailsDataField](#BulkActionDetailsDataField)]? |  yes  |  |
 | userId | String? |  yes  |  |
 | success | String? |  yes  |  |
 | uploadedOn | String? |  yes  |  |
 | uploadedBy | String? |  yes  |  |
 | error | [String]? |  yes  |  |
 | status | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [AffiliateMeta](#AffiliateMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sizeLevelTotalQty | Int? |  yes  |  |
 | channelOrderId | String? |  yes  |  |
 | couponCode | String? |  yes  |  |
 | dueDate | String? |  yes  |  |
 | channelShipmentId | String? |  yes  |  |
 | loyaltyDiscount | Double? |  yes  |  |
 | isPriority | Bool? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | employeeDiscount | Double? |  yes  |  |
 | orderItemId | String? |  yes  |  |
 | boxType | String? |  yes  |  |

---


 
 
 #### [AffiliateBagDetails](#AffiliateBagDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateOrderId | String |  no  |  |
 | loyaltyDiscount | Double? |  yes  |  |
 | affiliateBagId | String |  no  |  |
 | affiliateMeta | [AffiliateMeta](#AffiliateMeta) |  no  |  |
 | employeeDiscount | Double? |  yes  |  |

---


 
 
 #### [BagGSTDetails](#BagGSTDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstFee | Double |  no  |  |
 | gstinCode | String? |  yes  |  |
 | gstTag | String |  no  |  |
 | hsnCode | String |  no  |  |
 | sgstGstFee | String |  no  |  |
 | cgstTaxPercentage | Double |  no  |  |
 | valueOfGood | Double |  no  |  |
 | igstTaxPercentage | Double |  no  |  |
 | gstTaxPercentage | Double |  no  |  |
 | brandCalculatedAmount | Double |  no  |  |
 | taxCollectedAtSource | Double |  no  |  |
 | cgstGstFee | String |  no  |  |
 | hsnCodeId | String |  no  |  |
 | igstGstFee | String |  no  |  |
 | isDefaultHsnCode | Bool? |  yes  |  |
 | sgstTaxPercentage | Double |  no  |  |

---


 
 
 #### [Attributes](#Attributes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | primaryMaterial | String? |  yes  |  |
 | name | String? |  yes  |  |
 | essential | String? |  yes  |  |
 | marketerAddress | String? |  yes  |  |
 | gender | [String]? |  yes  |  |
 | brandName | String? |  yes  |  |
 | marketerName | String? |  yes  |  |
 | primaryColorHex | String? |  yes  |  |
 | primaryColor | String? |  yes  |  |

---


 
 
 #### [Item](#Item)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | canReturn | Bool? |  yes  |  |
 | size | String |  no  |  |
 | color | String? |  yes  |  |
 | departmentId | Int? |  yes  |  |
 | l3Category | Int? |  yes  |  |
 | l1CategoryId | Int? |  yes  |  |
 | itemId | Int |  no  |  |
 | meta | [String: Any]? |  yes  |  |
 | gender | String? |  yes  |  |
 | webstoreProductUrl | String? |  yes  |  |
 | l2Category | [String]? |  yes  |  |
 | branchUrl | String? |  yes  |  |
 | name | String |  no  |  |
 | l3CategoryName | String? |  yes  |  |
 | brand | String |  no  |  |
 | l2CategoryId | Int? |  yes  |  |
 | l1Category | [String]? |  yes  |  |
 | slugKey | String |  no  |  |
 | code | String? |  yes  |  |
 | lastUpdatedAt | String? |  yes  |  |
 | canCancel | Bool? |  yes  |  |
 | attributes | [Attributes](#Attributes) |  no  |  |
 | image | [String] |  no  |  |
 | brandId | Int |  no  |  |

---


 
 
 #### [Dates](#Dates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | deliveryDate | [String: Any]? |  yes  |  |
 | orderCreated | String? |  yes  |  |

---


 
 
 #### [Weight](#Weight)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isDefault | Bool? |  yes  |  |
 | shipping | Int? |  yes  |  |
 | unit | String? |  yes  |  |

---


 
 
 #### [ReturnConfig](#ReturnConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | time | Int? |  yes  |  |
 | unit | String? |  yes  |  |
 | returnable | Bool? |  yes  |  |

---


 
 
 #### [Dimensions](#Dimensions)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | width | Int? |  yes  |  |
 | length | Int? |  yes  |  |
 | unit | String? |  yes  |  |
 | isDefault | Bool? |  yes  |  |
 | height | Int? |  yes  |  |

---


 
 
 #### [Article](#Article)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sellerIdentifier | String |  no  |  |
 | aSet | [String: Any]? |  yes  |  |
 | id | String |  no  |  |
 | rawMeta | [String: Any]? |  yes  |  |
 | espModified | [String: Any]? |  yes  |  |
 | uid | String |  no  |  |
 | weight | [Weight](#Weight)? |  yes  |  |
 | size | String |  no  |  |
 | returnConfig | [ReturnConfig](#ReturnConfig)? |  yes  |  |
 | isSet | Bool? |  yes  |  |
 | childDetails | [String: Any]? |  yes  |  |
 | identifiers | [Identifier](#Identifier) |  no  |  |
 | dimensions | [Dimensions](#Dimensions)? |  yes  |  |
 | code | String? |  yes  |  |

---


 
 
 #### [B2BPODetails](#B2BPODetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | poLineAmount | Double? |  yes  |  |
 | partialCanRet | Bool? |  yes  |  |
 | poTaxAmount | Double? |  yes  |  |
 | itemBasePrice | Double? |  yes  |  |
 | dockerNumber | String? |  yes  |  |
 | totalGstPercentage | Double? |  yes  |  |

---


 
 
 #### [BagMeta](#BagMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | b2BPoDetails | [B2BPODetails](#B2BPODetails)? |  yes  |  |

---


 
 
 #### [Brand](#Brand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | creditNoteExpiryDays | Int? |  yes  |  |
 | invoicePrefix | String? |  yes  |  |
 | isVirtualInvoice | Bool? |  yes  |  |
 | creditNoteAllowed | Bool? |  yes  |  |
 | createdOn | Int? |  yes  |  |
 | modifiedOn | Int? |  yes  |  |
 | pickupLocation | String? |  yes  |  |
 | scriptLastRan | String? |  yes  |  |
 | brandName | String |  no  |  |
 | startDate | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | brandId | Int |  no  |  |
 | company | String |  no  |  |

---


 
 
 #### [ArticleDetails](#ArticleDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | [String: Any]? |  yes  |  |

---


 
 
 #### [BagReturnableCancelableStatus](#BagReturnableCancelableStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool |  no  |  |
 | isCustomerReturnAllowed | Bool |  no  |  |
 | canBeCancelled | Bool |  no  |  |
 | isReturnable | Bool |  no  |  |
 | enableTracking | Bool |  no  |  |

---


 
 
 #### [StoreAddress](#StoreAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | String |  no  |  |
 | pincode | Int |  no  |  |
 | state | String |  no  |  |
 | contactPerson | String |  no  |  |
 | landmark | String? |  yes  |  |
 | version | String? |  yes  |  |
 | area | String? |  yes  |  |
 | longitude | Double |  no  |  |
 | city | String |  no  |  |
 | addressType | String |  no  |  |
 | latitude | Double |  no  |  |
 | country | String |  no  |  |
 | email | String? |  yes  |  |
 | createdAt | String |  no  |  |
 | address2 | String? |  yes  |  |
 | countryCode | String |  no  |  |
 | updatedAt | String |  no  |  |
 | addressCategory | String |  no  |  |
 | address1 | String |  no  |  |

---


 
 
 #### [EInvoicePortalDetails](#EInvoicePortalDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | password | String? |  yes  |  |
 | user | String? |  yes  |  |
 | username | String? |  yes  |  |

---


 
 
 #### [StoreEinvoice](#StoreEinvoice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | password | String? |  yes  |  |
 | enabled | Bool |  no  |  |
 | username | String? |  yes  |  |
 | user | String? |  yes  |  |

---


 
 
 #### [StoreEwaybill](#StoreEwaybill)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [StoreGstCredentials](#StoreGstCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | eInvoice | [StoreEinvoice](#StoreEinvoice)? |  yes  |  |
 | eWaybill | [StoreEwaybill](#StoreEwaybill)? |  yes  |  |

---


 
 
 #### [Document](#Document)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dsType | String |  no  |  |
 | verified | Bool |  no  |  |
 | legalName | String |  no  |  |
 | value | String |  no  |  |
 | url | String? |  yes  |  |

---


 
 
 #### [StoreDocuments](#StoreDocuments)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gst | [Document](#Document)? |  yes  |  |

---


 
 
 #### [StoreMeta](#StoreMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timing | [[String: Any]]? |  yes  |  |
 | additionalContactDetails | [String: Any]? |  yes  |  |
 | einvoicePortalDetails | [EInvoicePortalDetails](#EInvoicePortalDetails)? |  yes  |  |
 | productReturnConfig | [String: Any]? |  yes  |  |
 | ewaybillPortalDetails | [String: Any]? |  yes  |  |
 | gstCredentials | [StoreGstCredentials](#StoreGstCredentials) |  no  |  |
 | stage | String |  no  |  |
 | displayName | String |  no  |  |
 | notificationEmails | [String]? |  yes  |  |
 | gstNumber | String? |  yes  |  |
 | documents | [StoreDocuments](#StoreDocuments)? |  yes  |  |

---


 
 
 #### [Store](#Store)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | Int |  no  |  |
 | brandStoreTags | [String]? |  yes  |  |
 | pincode | String |  no  |  |
 | isArchived | Bool? |  yes  |  |
 | locationType | String |  no  |  |
 | state | String |  no  |  |
 | contactPerson | String |  no  |  |
 | loginUsername | String |  no  |  |
 | storeAddressJson | [StoreAddress](#StoreAddress)? |  yes  |  |
 | mallName | String? |  yes  |  |
 | meta | [StoreMeta](#StoreMeta) |  no  |  |
 | longitude | Double |  no  |  |
 | city | String |  no  |  |
 | latitude | Double |  no  |  |
 | country | String |  no  |  |
 | alohomoraUserId | Int? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | name | String |  no  |  |
 | createdAt | String |  no  |  |
 | vatNo | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | orderIntegrationId | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | storeActiveFrom | String? |  yes  |  |
 | storeEmail | String |  no  |  |
 | parentStoreId | Int? |  yes  |  |
 | code | String? |  yes  |  |
 | fulfillmentChannel | String |  no  |  |
 | companyId | Int |  no  |  |
 | address1 | String |  no  |  |
 | isEnabledForRecon | Bool? |  yes  |  |
 | brandId | [String: Any]? |  yes  |  |
 | packagingMaterialCount | Int? |  yes  |  |
 | sId | String |  no  |  |
 | mallArea | String? |  yes  |  |

---


 
 
 #### [EInvoice](#EInvoice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | errorMessage | String? |  yes  |  |
 | acknowledgeNo | Int? |  yes  |  |
 | signedInvoice | String? |  yes  |  |
 | irn | String? |  yes  |  |
 | acknowledgeDate | String? |  yes  |  |
 | signedQrCode | String? |  yes  |  |
 | errorCode | String? |  yes  |  |

---


 
 
 #### [EinvoiceInfo](#EinvoiceInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | creditNote | [EInvoice](#EInvoice)? |  yes  |  |
 | invoice | [EInvoice](#EInvoice)? |  yes  |  |

---


 
 
 #### [ShipmentTimeStamp](#ShipmentTimeStamp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tMin | String? |  yes  |  |
 | tMax | String? |  yes  |  |

---


 
 
 #### [BuyerDetails](#BuyerDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstin | String |  no  |  |
 | name | String |  no  |  |
 | pincode | Int |  no  |  |
 | state | String |  no  |  |
 | address | String |  no  |  |
 | city | String |  no  |  |
 | ajioSiteId | String? |  yes  |  |

---


 
 
 #### [Formatted](#Formatted)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fMin | String? |  yes  |  |
 | fMax | String? |  yes  |  |

---


 
 
 #### [LockData](#LockData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lockMessage | String? |  yes  |  |
 | mto | Bool? |  yes  |  |
 | locked | Bool? |  yes  |  |

---


 
 
 #### [DebugInfo](#DebugInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stormbreakerUuid | String? |  yes  |  |

---


 
 
 #### [ShipmentMeta](#ShipmentMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | autoTriggerDpAssignmentAcf | Bool |  no  |  |
 | dpSortKey | String? |  yes  |  |
 | einvoiceInfo | [EinvoiceInfo](#EinvoiceInfo)? |  yes  |  |
 | assignDpFromSb | Bool? |  yes  |  |
 | returnStoreNode | Int? |  yes  |  |
 | shipmentVolumetricWeight | Double? |  yes  |  |
 | dpOptions | [String: Any]? |  yes  |  |
 | dpId | String? |  yes  |  |
 | boxType | String? |  yes  |  |
 | returnAffiliateShipmentId | String? |  yes  |  |
 | shipmentWeight | Double? |  yes  |  |
 | packagingName | String? |  yes  |  |
 | weight | Int |  no  |  |
 | storeInvoiceUpdatedDate | String? |  yes  |  |
 | poNumber | String? |  yes  |  |
 | dpName | String? |  yes  |  |
 | timestamp | [ShipmentTimeStamp](#ShipmentTimeStamp)? |  yes  |  |
 | external | [String: Any]? |  yes  |  |
 | sameStoreAvailable | Bool |  no  |  |
 | ewaybillInfo | [String: Any]? |  yes  |  |
 | returnDetails | [String: Any]? |  yes  |  |
 | awbNumber | String? |  yes  |  |
 | returnAwbNumber | String? |  yes  |  |
 | bagWeight | [String: Any]? |  yes  |  |
 | fulfilmentPriorityText | String? |  yes  |  |
 | forwardAffiliateShipmentId | String? |  yes  |  |
 | forwardAffiliateOrderId | String? |  yes  |  |
 | b2BBuyerDetails | [BuyerDetails](#BuyerDetails)? |  yes  |  |
 | orderType | String? |  yes  |  |
 | dueDate | String? |  yes  |  |
 | formatted | [Formatted](#Formatted)? |  yes  |  |
 | lockData | [LockData](#LockData)? |  yes  |  |
 | b2CBuyerDetails | [String: Any]? |  yes  |  |
 | returnAffiliateOrderId | String? |  yes  |  |
 | marketplaceStoreId | String? |  yes  |  |
 | debugInfo | [DebugInfo](#DebugInfo)? |  yes  |  |

---


 
 
 #### [PDFLinks](#PDFLinks)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | label | String? |  yes  |  |
 | invoiceA4 | String? |  yes  |  |
 | invoiceA6 | String? |  yes  |  |
 | labelPos | String? |  yes  |  |
 | b2B | String? |  yes  |  |
 | labelType | String |  no  |  |
 | invoicePos | String? |  yes  |  |
 | labelA6 | String? |  yes  |  |
 | labelA4 | String? |  yes  |  |
 | creditNoteUrl | String? |  yes  |  |
 | invoice | String? |  yes  |  |
 | invoiceType | String |  no  |  |
 | poInvoice | String? |  yes  |  |

---


 
 
 #### [AffiliateDetails](#AffiliateDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateId | String? |  yes  |  |
 | companyAffiliateTag | String? |  yes  |  |
 | affiliateStoreId | String |  no  |  |
 | affiliateOrderId | String |  no  |  |
 | shipmentMeta | [ShipmentMeta](#ShipmentMeta) |  no  |  |
 | affiliateShipmentId | String |  no  |  |
 | pdfLinks | [PDFLinks](#PDFLinks)? |  yes  |  |
 | affiliateBagId | String |  no  |  |
 | affiliateMeta | [AffiliateMeta](#AffiliateMeta) |  no  |  |
 | adId | String? |  yes  |  |

---


 
 
 #### [BagDetailsPlatformResponse](#BagDetailsPlatformResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateBagDetails | [AffiliateBagDetails](#AffiliateBagDetails) |  no  |  |
 | bagStatus | [[BagStatusHistory](#BagStatusHistory)] |  no  |  |
 | restorePromos | [String: Any]? |  yes  |  |
 | gstDetails | [BagGSTDetails](#BagGSTDetails) |  no  |  |
 | currentOperationalStatus | [BagStatusHistory](#BagStatusHistory) |  no  |  |
 | displayName | String? |  yes  |  |
 | originalBagList | [Int]? |  yes  |  |
 | lineNumber | Int? |  yes  |  |
 | identifier | String? |  yes  |  |
 | journeyType | String |  no  |  |
 | currentStatus | [BagStatusHistory](#BagStatusHistory) |  no  |  |
 | item | [Item](#Item) |  no  |  |
 | dates | [Dates](#Dates)? |  yes  |  |
 | bagStatusHistory | [BagStatusHistory](#BagStatusHistory)? |  yes  |  |
 | sellerIdentifier | String? |  yes  |  |
 | noOfBagsOrder | Int? |  yes  |  |
 | entityType | String? |  yes  |  |
 | article | [Article](#Article) |  no  |  |
 | meta | [BagMeta](#BagMeta)? |  yes  |  |
 | qcRequired | [String: Any]? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | parentPromoBags | [String: Any]? |  yes  |  |
 | bId | Int |  no  |  |
 | bagUpdateTime | Double? |  yes  |  |
 | orderIntegrationId | String? |  yes  |  |
 | brand | [Brand](#Brand) |  no  |  |
 | financialBreakup | [[FinancialBreakup](#FinancialBreakup)] |  no  |  |
 | prices | [Prices](#Prices) |  no  |  |
 | articleDetails | [ArticleDetails](#ArticleDetails)? |  yes  |  |
 | bType | String? |  yes  |  |
 | status | [BagReturnableCancelableStatus](#BagReturnableCancelableStatus) |  no  |  |
 | orderingStore | [Store](#Store)? |  yes  |  |
 | restoreCoupon | Bool? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | appliedPromos | [[String: Any]]? |  yes  |  |
 | operationalStatus | String? |  yes  |  |
 | quantity | Double? |  yes  |  |
 | reasons | [[String: Any]]? |  yes  |  |
 | affiliateDetails | [AffiliateDetails](#AffiliateDetails)? |  yes  |  |

---


 
 
 #### [ErrorResponse](#ErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | String |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [Page1](#Page1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hasNext | Bool |  no  |  |
 | size | Int |  no  |  |
 | itemTotal | Int |  no  |  |
 | pageType | String |  no  |  |
 | current | Int |  no  |  |

---


 
 
 #### [GetBagsPlatformResponse](#GetBagsPlatformResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page1](#Page1) |  no  |  |
 | items | [[BagDetailsPlatformResponse](#BagDetailsPlatformResponse)] |  no  |  |

---


 
 
 #### [InvalidateShipmentCachePayload](#InvalidateShipmentCachePayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentIds | [String] |  no  |  |

---


 
 
 #### [InvalidateShipmentCacheNestedResponse](#InvalidateShipmentCacheNestedResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | String? |  yes  |  |
 | status | Int? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [InvalidateShipmentCacheResponse](#InvalidateShipmentCacheResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | response | [[InvalidateShipmentCacheNestedResponse](#InvalidateShipmentCacheNestedResponse)]? |  yes  |  |

---


 
 
 #### [ErrorResponse1](#ErrorResponse1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | Int |  no  |  |
 | errorTrace | String? |  yes  |  |
 | message | String |  no  |  |

---


 
 
 #### [StoreReassign](#StoreReassign)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateId | String? |  yes  |  |
 | bagId | Int? |  yes  |  |
 | storeId | Int |  no  |  |
 | mongoArticleId | String? |  yes  |  |
 | reasonIds | [Int]? |  yes  |  |
 | fyndOrderId | String? |  yes  |  |
 | itemId | String? |  yes  |  |
 | setId | String? |  yes  |  |
 | affiliateBagId | String? |  yes  |  |
 | affiliateOrderId | String? |  yes  |  |

---


 
 
 #### [StoreReassignResponse](#StoreReassignResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [Entities](#Entities)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateId | String? |  yes  |  |
 | affiliateShipmentId | String? |  yes  |  |
 | reasonText | String |  no  |  |
 | id | String? |  yes  |  |
 | affiliateBagId | String? |  yes  |  |
 | affiliateOrderId | String? |  yes  |  |

---


 
 
 #### [UpdateShipmentLockPayload](#UpdateShipmentLockPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | entityType | String |  no  |  |
 | entities | [[Entities](#Entities)] |  no  |  |
 | actionType | String |  no  |  |
 | action | String |  no  |  |

---


 
 
 #### [OriginalFilter](#OriginalFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateShipmentId | String? |  yes  |  |
 | affiliateId | String? |  yes  |  |

---


 
 
 #### [Bags](#Bags)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateBagId | String? |  yes  |  |
 | bagId | Int? |  yes  |  |
 | isLocked | Bool? |  yes  |  |
 | affiliateOrderId | String? |  yes  |  |

---


 
 
 #### [CheckResponse](#CheckResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | originalFilter | [OriginalFilter](#OriginalFilter)? |  yes  |  |
 | isShipmentLocked | Bool? |  yes  |  |
 | lockStatus | Bool? |  yes  |  |
 | affiliateId | String? |  yes  |  |
 | status | String? |  yes  |  |
 | affiliateShipmentId | String? |  yes  |  |
 | bags | [[Bags](#Bags)]? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | isBagLocked | Bool? |  yes  |  |

---


 
 
 #### [UpdateShipmentLockResponse](#UpdateShipmentLockResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | checkResponse | [[CheckResponse](#CheckResponse)]? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [AnnouncementResponse](#AnnouncementResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fromDatetime | String? |  yes  |  |
 | logoUrl | String? |  yes  |  |
 | platformName | String? |  yes  |  |
 | description | String? |  yes  |  |
 | toDatetime | String? |  yes  |  |
 | id | Int |  no  |  |
 | createdAt | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | platformId | String? |  yes  |  |
 | title | String? |  yes  |  |

---


 
 
 #### [AnnouncementsResponse](#AnnouncementsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | announcements | [[AnnouncementResponse](#AnnouncementResponse)]? |  yes  |  |

---


 
 
 #### [BaseResponse](#BaseResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [Click2CallResponse](#Click2CallResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | callId | String |  no  |  |
 | status | Bool |  no  |  |

---


 
 
 #### [Products](#Products)

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


 
 
 #### [ProductsReasonsFilters](#ProductsReasonsFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lineNumber | Int? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | identifier | String? |  yes  |  |

---


 
 
 #### [ProductsReasons](#ProductsReasons)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [ProductsReasonsData](#ProductsReasonsData)? |  yes  |  |
 | filters | [[ProductsReasonsFilters](#ProductsReasonsFilters)]? |  yes  |  |

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
 | data | [EntityReasonData](#EntityReasonData)? |  yes  |  |
 | filters | [[String: Any]]? |  yes  |  |

---


 
 
 #### [ReasonsData](#ReasonsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | products | [[ProductsReasons](#ProductsReasons)]? |  yes  |  |
 | entities | [[EntitiesReasons](#EntitiesReasons)]? |  yes  |  |

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
 | data | [String: Any]? |  yes  |  |
 | filters | [[ProductsDataUpdatesFilters](#ProductsDataUpdatesFilters)]? |  yes  |  |

---


 
 
 #### [EntitiesDataUpdates](#EntitiesDataUpdates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [String: Any]? |  yes  |  |
 | filters | [[String: Any]]? |  yes  |  |

---


 
 
 #### [DataUpdates](#DataUpdates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | products | [[ProductsDataUpdates](#ProductsDataUpdates)]? |  yes  |  |
 | entities | [[EntitiesDataUpdates](#EntitiesDataUpdates)]? |  yes  |  |

---


 
 
 #### [ShipmentsRequest](#ShipmentsRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | products | [[Products](#Products)]? |  yes  |  |
 | identifier | String |  no  |  |
 | reasons | [ReasonsData](#ReasonsData)? |  yes  |  |
 | dataUpdates | [DataUpdates](#DataUpdates)? |  yes  |  |

---


 
 
 #### [StatuesRequest](#StatuesRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  |  |
 | shipments | [[ShipmentsRequest](#ShipmentsRequest)]? |  yes  |  |
 | excludeBagsNextState | String? |  yes  |  |

---


 
 
 #### [UpdateShipmentStatusRequest](#UpdateShipmentStatusRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | unlockBeforeTransition | Bool? |  yes  |  |
 | statuses | [[StatuesRequest](#StatuesRequest)]? |  yes  |  |
 | forceTransition | Bool? |  yes  |  |
 | lockAfterTransition | Bool? |  yes  |  |
 | task | Bool? |  yes  |  |

---


 
 
 #### [ShipmentsResponse](#ShipmentsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | Int? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | identifier | String? |  yes  |  |
 | message | String? |  yes  |  |
 | stackTrace | String? |  yes  |  |
 | code | String? |  yes  |  |
 | exception | String? |  yes  |  |
 | finalState | [String: Any]? |  yes  |  |

---


 
 
 #### [StatuesResponse](#StatuesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipments | [[ShipmentsResponse](#ShipmentsResponse)]? |  yes  |  |

---


 
 
 #### [UpdateShipmentStatusResponseBody](#UpdateShipmentStatusResponseBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | statuses | [[StatuesResponse](#StatuesResponse)]? |  yes  |  |

---


 
 
 #### [AffiliateStoreIdMapping](#AffiliateStoreIdMapping)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marketplaceStoreId | String |  no  |  |
 | storeId | Int |  no  |  |

---


 
 
 #### [AffiliateAppConfigMeta](#AffiliateAppConfigMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [AffiliateAppConfig](#AffiliateAppConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [[AffiliateAppConfigMeta](#AffiliateAppConfigMeta)]? |  yes  |  |
 | updatedAt | String |  no  |  |
 | name | String |  no  |  |
 | description | String? |  yes  |  |
 | secret | String |  no  |  |
 | id | String |  no  |  |
 | owner | String |  no  |  |
 | token | String |  no  |  |
 | createdAt | String |  no  |  |

---


 
 
 #### [AffiliateInventoryStoreConfig](#AffiliateInventoryStoreConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | store | [String: Any]? |  yes  |  |

---


 
 
 #### [AffiliateInventoryPaymentConfig](#AffiliateInventoryPaymentConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | source | String? |  yes  |  |
 | modeOfPayment | String? |  yes  |  |

---


 
 
 #### [AffiliateInventoryArticleAssignmentConfig](#AffiliateInventoryArticleAssignmentConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | postOrderReassignment | Bool? |  yes  |  |

---


 
 
 #### [AffiliateInventoryLogisticsConfig](#AffiliateInventoryLogisticsConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dpAssignment | Bool? |  yes  |  |

---


 
 
 #### [AffiliateInventoryOrderConfig](#AffiliateInventoryOrderConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | forceReassignment | Bool? |  yes  |  |

---


 
 
 #### [AffiliateInventoryConfig](#AffiliateInventoryConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | inventory | [AffiliateInventoryStoreConfig](#AffiliateInventoryStoreConfig)? |  yes  |  |
 | payment | [AffiliateInventoryPaymentConfig](#AffiliateInventoryPaymentConfig)? |  yes  |  |
 | articleAssignment | [AffiliateInventoryArticleAssignmentConfig](#AffiliateInventoryArticleAssignmentConfig)? |  yes  |  |
 | logistics | [AffiliateInventoryLogisticsConfig](#AffiliateInventoryLogisticsConfig)? |  yes  |  |
 | order | [AffiliateInventoryOrderConfig](#AffiliateInventoryOrderConfig)? |  yes  |  |

---


 
 
 #### [AffiliateConfig](#AffiliateConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app | [AffiliateAppConfig](#AffiliateAppConfig)? |  yes  |  |
 | inventory | [AffiliateInventoryConfig](#AffiliateInventoryConfig)? |  yes  |  |

---


 
 
 #### [Affiliate](#Affiliate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | config | [AffiliateConfig](#AffiliateConfig)? |  yes  |  |
 | token | String |  no  |  |

---


 
 
 #### [OrderConfig](#OrderConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | articleLookup | String? |  yes  |  |
 | storeLookup | String? |  yes  |  |
 | createUser | Bool? |  yes  |  |
 | affiliateStoreIdMapping | [[AffiliateStoreIdMapping](#AffiliateStoreIdMapping)] |  no  |  |
 | affiliate | [Affiliate](#Affiliate) |  no  |  |
 | bagEndState | String? |  yes  |  |

---


 
 
 #### [OrderPriority](#OrderPriority)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliatePriorityCode | String? |  yes  |  |
 | fulfilmentPriority | Int? |  yes  |  |
 | fulfilmentPriorityText | String? |  yes  |  |

---


 
 
 #### [OrderUser](#OrderUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String |  no  |  |
 | address2 | String? |  yes  |  |
 | mobile | Int |  no  |  |
 | city | String |  no  |  |
 | country | String |  no  |  |
 | state | String |  no  |  |
 | phone | Int |  no  |  |
 | pincode | String |  no  |  |
 | address1 | String? |  yes  |  |
 | lastName | String |  no  |  |
 | firstName | String |  no  |  |

---


 
 
 #### [UserData](#UserData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shippingUser | [OrderUser](#OrderUser)? |  yes  |  |
 | billingUser | [OrderUser](#OrderUser)? |  yes  |  |

---


 
 
 #### [MarketPlacePdf](#MarketPlacePdf)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | invoice | String? |  yes  |  |
 | label | String? |  yes  |  |

---


 
 
 #### [AffiliateBag](#AffiliateBag)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | amountPaid | Double |  no  |  |
 | affiliateStoreId | String |  no  |  |
 | transferPrice | Int |  no  |  |
 | sellerIdentifier | String |  no  |  |
 | deliveryCharge | Double |  no  |  |
 | priceMarked | Double |  no  |  |
 | avlQty | Int |  no  |  |
 | affiliateMeta | [String: Any] |  no  |  |
 | fyndStoreId | String |  no  |  |
 | sku | String |  no  |  |
 | priceEffective | Double |  no  |  |
 | unitPrice | Double |  no  |  |
 | companyId | Int |  no  |  |
 | quantity | Int |  no  |  |
 | identifier | [String: Any] |  no  |  |
 | itemSize | String |  no  |  |
 | pdfLinks | [MarketPlacePdf](#MarketPlacePdf)? |  yes  |  |
 | storeId | Int |  no  |  |
 | hsnCodeId | String |  no  |  |
 | modifiedOn | String |  no  |  |
 | discount | Double |  no  |  |
 | itemId | Int |  no  |  |

---


 
 
 #### [ArticleDetails1](#ArticleDetails1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | [String: Any] |  no  |  |
 | id | String |  no  |  |
 | attributes | [String: Any] |  no  |  |
 | dimension | [String: Any] |  no  |  |
 | quantity | Int |  no  |  |
 | weight | [String: Any] |  no  |  |
 | brandId | Int |  no  |  |

---


 
 
 #### [LocationDetails](#LocationDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | articles | [[ArticleDetails1](#ArticleDetails1)] |  no  |  |
 | fulfillmentId | Int |  no  |  |
 | fulfillmentType | String |  no  |  |

---


 
 
 #### [ShipmentDetails](#ShipmentDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dpId | Int? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | fulfillmentId | Int |  no  |  |
 | affiliateShipmentId | String |  no  |  |
 | shipments | Int |  no  |  |
 | boxType | String? |  yes  |  |
 | articles | [[ArticleDetails1](#ArticleDetails1)] |  no  |  |

---


 
 
 #### [ShipmentConfig](#ShipmentConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | locationDetails | [LocationDetails](#LocationDetails)? |  yes  |  |
 | identifier | String |  no  |  |
 | toPincode | String |  no  |  |
 | paymentMode | String |  no  |  |
 | shipment | [[ShipmentDetails](#ShipmentDetails)] |  no  |  |
 | journey | String |  no  |  |
 | source | String |  no  |  |
 | action | String |  no  |  |

---


 
 
 #### [ShipmentData](#ShipmentData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentData | [ShipmentConfig](#ShipmentConfig) |  no  |  |

---


 
 
 #### [OrderInfo](#OrderInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderPriority | [OrderPriority](#OrderPriority)? |  yes  |  |
 | codCharges | Double |  no  |  |
 | user | [UserData](#UserData) |  no  |  |
 | payment | [String: Any]? |  yes  |  |
 | coupon | String? |  yes  |  |
 | discount | Double |  no  |  |
 | bags | [[AffiliateBag](#AffiliateBag)] |  no  |  |
 | paymentMode | String |  no  |  |
 | items | [String: Any] |  no  |  |
 | orderValue | Double |  no  |  |
 | deliveryCharges | Double |  no  |  |
 | shipment | [ShipmentData](#ShipmentData)? |  yes  |  |
 | billingAddress | [OrderUser](#OrderUser) |  no  |  |
 | affiliateOrderId | String? |  yes  |  |
 | shippingAddress | [OrderUser](#OrderUser) |  no  |  |

---


 
 
 #### [CreateOrderPayload](#CreateOrderPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderConfig | [OrderConfig](#OrderConfig) |  no  |  |
 | affiliateId | String |  no  |  |
 | orderInfo | [OrderInfo](#OrderInfo) |  no  |  |

---


 
 
 #### [CreateOrderResponse](#CreateOrderResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fyndOrderId | String |  no  |  |

---


 
 
 #### [DispatchManifest](#DispatchManifest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | manifestId | String |  no  |  |

---


 
 
 #### [SuccessResponse](#SuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [ActionInfo](#ActionInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |
 | slug | String |  no  |  |
 | description | String |  no  |  |
 | displayText | String |  no  |  |

---


 
 
 #### [GetActionsResponse](#GetActionsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | permissions | [ActionInfo](#ActionInfo) |  no  |  |

---


 
 
 #### [HistoryDict](#HistoryDict)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdat | String |  no  |  |
 | l1Detail | String? |  yes  |  |
 | bagId | Int? |  yes  |  |
 | message | String |  no  |  |
 | user | String |  no  |  |
 | type | String |  no  |  |
 | ticketUrl | String? |  yes  |  |
 | ticketId | String? |  yes  |  |
 | l3Detail | String? |  yes  |  |
 | l2Detail | String? |  yes  |  |

---


 
 
 #### [ShipmentHistoryResponse](#ShipmentHistoryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | activityHistory | [[HistoryDict](#HistoryDict)]? |  yes  |  |

---


 
 
 #### [ErrorDetail](#ErrorDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [SmsDataPayload](#SmsDataPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phoneNumber | Int |  no  |  |
 | message | String |  no  |  |
 | amountPaid | Int |  no  |  |
 | customerName | String |  no  |  |
 | countryCode | String |  no  |  |
 | orderId | String |  no  |  |
 | paymentMode | String |  no  |  |
 | shipmentId | Int |  no  |  |
 | brandName | String |  no  |  |

---


 
 
 #### [SendSmsPayload](#SendSmsPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [SmsDataPayload](#SmsDataPayload)? |  yes  |  |
 | slug | String |  no  |  |
 | bagId | Int |  no  |  |

---


 
 
 #### [Meta](#Meta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stateManagerUsed | String? |  yes  |  |
 | kafkaEmissionStatus | Int? |  yes  |  |

---


 
 
 #### [ShipmentDetail](#ShipmentDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  |  |
 | meta | [Meta](#Meta) |  no  |  |
 | bagList | [Int]? |  yes  |  |
 | remarks | String? |  yes  |  |
 | id | Int |  no  |  |
 | shipmentId | String? |  yes  |  |

---


 
 
 #### [OrderDetails](#OrderDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdAt | String? |  yes  |  |
 | fyndOrderId | String? |  yes  |  |

---


 
 
 #### [OrderStatusData](#OrderStatusData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentDetails | [[ShipmentDetail](#ShipmentDetail)]? |  yes  |  |
 | errors | [String]? |  yes  |  |
 | orderDetails | [OrderDetails](#OrderDetails) |  no  |  |

---


 
 
 #### [OrderStatusResult](#OrderStatusResult)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | result | [[OrderStatusData](#OrderStatusData)]? |  yes  |  |
 | success | String |  no  |  |

---


 
 
 #### [ManualAssignDPToShipment](#ManualAssignDPToShipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderType | String |  no  |  |
 | dpId | Int |  no  |  |
 | shipmentIds | [String]? |  yes  |  |
 | qcRequired | String |  no  |  |

---


 
 
 #### [ManualAssignDPToShipmentResponse](#ManualAssignDPToShipmentResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | String |  no  |  |
 | errors | [String]? |  yes  |  |

---


 
 
 #### [ShippingInfo](#ShippingInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stateCode | String |  no  |  |
 | primaryMobileNumber | String |  no  |  |
 | city | String |  no  |  |
 | countryCode | String |  no  |  |
 | landmark | String? |  yes  |  |
 | geoLocation | [String: Any]? |  yes  |  |
 | customerCode | String? |  yes  |  |
 | floorNo | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | gender | String? |  yes  |  |
 | houseNo | String? |  yes  |  |
 | slot | [[String: Any]]? |  yes  |  |
 | shippingType | String? |  yes  |  |
 | pincode | String |  no  |  |
 | lastName | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | title | String? |  yes  |  |
 | middleName | String? |  yes  |  |
 | alternateEmail | String? |  yes  |  |
 | externalCustomerCode | String? |  yes  |  |
 | country | String |  no  |  |
 | primaryEmail | String |  no  |  |
 | address1 | String |  no  |  |
 | alternateMobileNumber | String? |  yes  |  |
 | firstName | String |  no  |  |
 | state | String |  no  |  |

---


 
 
 #### [BillingInfo](#BillingInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stateCode | String |  no  |  |
 | primaryMobileNumber | String |  no  |  |
 | city | String |  no  |  |
 | countryCode | String |  no  |  |
 | customerCode | String? |  yes  |  |
 | floorNo | String |  no  |  |
 | address2 | String? |  yes  |  |
 | gender | String? |  yes  |  |
 | houseNo | String |  no  |  |
 | pincode | String |  no  |  |
 | lastName | String? |  yes  |  |
 | title | String? |  yes  |  |
 | middleName | String? |  yes  |  |
 | alternateEmail | String? |  yes  |  |
 | externalCustomerCode | String? |  yes  |  |
 | country | String |  no  |  |
 | primaryEmail | String |  no  |  |
 | alternateMobileNumber | String? |  yes  |  |
 | address1 | String |  no  |  |
 | firstName | String |  no  |  |
 | state | String |  no  |  |

---


 
 
 #### [PaymentMethod](#PaymentMethod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [String: Any]? |  yes  |  |
 | name | String |  no  |  |
 | amount | Double |  no  |  |
 | refundBy | String |  no  |  |
 | mode | String |  no  |  |
 | transactionData | [String: Any]? |  yes  |  |
 | collectBy | String |  no  |  |

---


 
 
 #### [PaymentInfo](#PaymentInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentMethods | [[PaymentMethod](#PaymentMethod)]? |  yes  |  |
 | primaryMode | String |  no  |  |

---


 
 
 #### [ProcessingDates](#ProcessingDates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dpPickupSlot | [String: Any]? |  yes  |  |
 | dispatchByDate | String? |  yes  |  |
 | packByDate | String? |  yes  |  |
 | dispatchAfterDate | String? |  yes  |  |
 | customerPickupSlot | [String: Any]? |  yes  |  |
 | confirmByDate | String? |  yes  |  |

---


 
 
 #### [Tax](#Tax)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | breakup | [[String: Any]] |  no  |  |
 | amount | [String: Any] |  no  |  |
 | name | String |  no  |  |
 | taxExempt | Bool |  no  |  |

---


 
 
 #### [Charge](#Charge)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | type | String |  no  |  |
 | code | String? |  yes  |  |
 | amount | [String: Any] |  no  |  |
 | tax | [Tax](#Tax) |  no  |  |

---


 
 
 #### [LineItem](#LineItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | externalLineId | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | sellerIdentifier | String |  no  |  |
 | charges | [[Charge](#Charge)] |  no  |  |
 | customMessasge | String? |  yes  |  |
 | quantity | Int? |  yes  |  |

---


 
 
 #### [Shipment](#Shipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | locationId | Int |  no  |  |
 | meta | [String: Any]? |  yes  |  |
 | priority | Int? |  yes  |  |
 | processingDates | [ProcessingDates](#ProcessingDates)? |  yes  |  |
 | lineItems | [[LineItem](#LineItem)] |  no  |  |
 | externalShipmentId | Double? |  yes  |  |

---


 
 
 #### [TaxInfo](#TaxInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstin | String? |  yes  |  |
 | b2BGstinNumber | String? |  yes  |  |

---


 
 
 #### [CreateOrderAPI](#CreateOrderAPI)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shippingInfo | [ShippingInfo](#ShippingInfo) |  no  |  |
 | externalOrderId | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | billingInfo | [BillingInfo](#BillingInfo) |  no  |  |
 | paymentInfo | [PaymentInfo](#PaymentInfo) |  no  |  |
 | applicationId | String? |  yes  |  |
 | currencyInfo | [String: Any] |  no  |  |
 | externalCreationDate | String? |  yes  |  |
 | shipments | [[Shipment](#Shipment)] |  no  |  |
 | taxInfo | [TaxInfo](#TaxInfo)? |  yes  |  |
 | charges | [[Charge](#Charge)] |  no  |  |

---


 
 
 #### [CreateOrderErrorReponse](#CreateOrderErrorReponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | info | [String: Any]? |  yes  |  |
 | status | Int |  no  |  |
 | meta | String? |  yes  |  |
 | message | String |  no  |  |
 | stackTrace | String? |  yes  |  |
 | code | String? |  yes  |  |
 | exception | String? |  yes  |  |
 | requestId | String? |  yes  |  |

---


 
 
 #### [DpConfiguration](#DpConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shippingBy | String? |  yes  |  |

---


 
 
 #### [PaymentMethods](#PaymentMethods)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mode | String? |  yes  |  |
 | refundBy | String? |  yes  |  |
 | collectBy | String? |  yes  |  |

---


 
 
 #### [CreateChannelPaymentInfo](#CreateChannelPaymentInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentMethods | [[PaymentMethods](#PaymentMethods)]? |  yes  |  |
 | source | String? |  yes  |  |
 | modeOfPayment | String? |  yes  |  |

---


 
 
 #### [CreateChannelConfig](#CreateChannelConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dpConfiguration | [DpConfiguration](#DpConfiguration)? |  yes  |  |
 | lockStates | [String]? |  yes  |  |
 | logoUrl | [String: Any]? |  yes  |  |
 | shipmentAssignment | String? |  yes  |  |
 | paymentInfo | [CreateChannelPaymentInfo](#CreateChannelPaymentInfo)? |  yes  |  |
 | locationReassignment | Bool? |  yes  |  |

---


 
 
 #### [CreateChannelConfigData](#CreateChannelConfigData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | configData | [CreateChannelConfig](#CreateChannelConfig)? |  yes  |  |

---


 
 
 #### [CreateChannelConfigResponse](#CreateChannelConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isUpserted | Bool? |  yes  |  |
 | acknowledged | Bool? |  yes  |  |
 | isInserted | Bool? |  yes  |  |

---


 
 
 #### [CreateChannelConifgErrorResponse](#CreateChannelConifgErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | String? |  yes  |  |

---


 
 
 #### [UploadConsent](#UploadConsent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | consentUrl | String |  no  |  |
 | manifestId | String |  no  |  |

---


 
 
 #### [PlatformOrderUpdate](#PlatformOrderUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderId | String |  no  |  |

---


 
 
 #### [ResponseDetail](#ResponseDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | [String]? |  yes  |  |

---


 
 
 #### [FyndOrderIdList](#FyndOrderIdList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fyndOrderId | [String]? |  yes  |  |

---


 
 
 #### [OrderStatus](#OrderStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | endDate | String |  no  |  |
 | startDate | String |  no  |  |
 | orderDetails | [[FyndOrderIdList](#FyndOrderIdList)]? |  yes  |  |
 | mobile | Int |  no  |  |

---



