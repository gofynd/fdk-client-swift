



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
* [postShipmentHistory](#postshipmenthistory)
* [sendSmsNinja](#sendsmsninja)
* [updatePackagingDimensions](#updatepackagingdimensions)
* [createOrder](#createorder)
* [getChannelConfig](#getchannelconfig)
* [createChannelConfig](#createchannelconfig)
* [uploadConsent](#uploadconsent)
* [orderUpdate](#orderupdate)
* [checkOrderStatus](#checkorderstatus)
* [getStateTransitionMap](#getstatetransitionmap)



## Methods with example and description


#### getShipments





```swift
platformClient.order.getShipments(lane: lane, bagStatus: bagStatus, statusOverrideLane: statusOverrideLane, searchType: searchType, searchValue: searchValue, searchId: searchId, fromDate: fromDate, toDate: toDate, dpIds: dpIds, orderingCompanyId: orderingCompanyId, stores: stores, salesChannel: salesChannel, requestByExt: requestByExt, pageNo: pageNo, pageSize: pageSize, isPrioritySort: isPrioritySort, fetchActiveShipment: fetchActiveShipment, excludeLockedShipments: excludeLockedShipments, paymentMethods: paymentMethods, channelShipmentId: channelShipmentId, channelOrderId: channelOrderId, customMeta: customMeta, orderingChannel: orderingChannel, companyAffiliateTag: companyAffiliateTag) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| lane | String? | no |  |   
| bagStatus | String? | no |  |   
| statusOverrideLane | Bool? | no |  |   
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
| fetchActiveShipment | Bool? | no |  |   
| excludeLockedShipments | Bool? | no |  |   
| paymentMethods | String? | no |  |   
| channelShipmentId | String? | no |  |   
| channelOrderId | String? | no |  |   
| customMeta | String? | no |  |   
| orderingChannel | String? | no |  |   
| companyAffiliateTag | String? | no |  |  





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
platformClient.order.getShipmentById(channelShipmentId: channelShipmentId, shipmentId: shipmentId, orderingCompanyId: orderingCompanyId, requestByExt: requestByExt) { (response, error) in
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
platformClient.order.getOrderById(orderId: orderId) { (response, error) in
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
platformClient.order.getLaneConfig(superLane: superLane, groupEntity: groupEntity, fromDate: fromDate, toDate: toDate, dpIds: dpIds, stores: stores, salesChannel: salesChannel, paymentMode: paymentMode, bagStatus: bagStatus) { (response, error) in
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
platformClient.application("<APPLICATION_ID>").order.getApplicationShipments(lane: lane, searchType: searchType, searchId: searchId, fromDate: fromDate, toDate: toDate, dpIds: dpIds, orderingCompanyId: orderingCompanyId, stores: stores, salesChannel: salesChannel, requestByExt: requestByExt, pageNo: pageNo, pageSize: pageSize, customerId: customerId, isPrioritySort: isPrioritySort) { (response, error) in
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
platformClient.order.getOrders(lane: lane, searchType: searchType, bagStatus: bagStatus, timeToDispatch: timeToDispatch, paymentMethods: paymentMethods, tags: tags, searchValue: searchValue, fromDate: fromDate, toDate: toDate, dpIds: dpIds, stores: stores, salesChannels: salesChannels, pageNo: pageNo, pageSize: pageSize, isPrioritySort: isPrioritySort, customMeta: customMeta) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| lane | String? | no |  |   
| searchType | String? | no |  |   
| bagStatus | String? | no |  |   
| timeToDispatch | String? | no |  |   
| paymentMethods | String? | no |  |   
| tags | String? | no |  |   
| searchValue | String? | no |  |   
| fromDate | String? | no |  |   
| toDate | String? | no |  |   
| dpIds | String? | no |  |   
| stores | String? | no |  |   
| salesChannels | String? | no |  |   
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
platformClient.order.getMetricCount(fromDate: fromDate, toDate: toDate) { (response, error) in
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
platformClient.application("<APPLICATION_ID>").order.getAppOrderShipmentDetails(orderId: orderId) { (response, error) in
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
platformClient.application("<APPLICATION_ID>").order.trackPlatformShipment(shipmentId: shipmentId) { (response, error) in
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
platformClient.order.getfilters(view: view, groupEntity: groupEntity) { (response, error) in
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
platformClient.order.createShipmentReport(fromDate: fromDate, toDate: toDate) { (response, error) in
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
platformClient.order.getReportsShipmentListing(pageNo: pageNo, pageSize: pageSize) { (response, error) in
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
platformClient.order.upsertJioCode(body: body) { (response, error) in
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
platformClient.order.getBulkInvoice(batchId: batchId, docType: docType) { (response, error) in
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
platformClient.order.getBulkInvoiceLabel(batchId: batchId) { (response, error) in
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
platformClient.order.getBulkShipmentExcelFile(lane: lane, searchType: searchType, searchId: searchId, fromDate: fromDate, toDate: toDate, dpIds: dpIds, orderingCompanyId: orderingCompanyId, stores: stores, salesChannel: salesChannel, requestByExt: requestByExt, pageNo: pageNo, pageSize: pageSize, customerId: customerId, isPrioritySort: isPrioritySort) { (response, error) in
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
platformClient.order.getBulkList(lane: lane, searchType: searchType, searchId: searchId, fromDate: fromDate, toDate: toDate, dpIds: dpIds, orderingCompanyId: orderingCompanyId, stores: stores, salesChannel: salesChannel, requestByExt: requestByExt, pageNo: pageNo, pageSize: pageSize, customerId: customerId, isPrioritySort: isPrioritySort) { (response, error) in
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


#### getBulkActionFailedReport





```swift
platformClient.order.getBulkActionFailedReport(batchId: batchId, reportType: reportType) { (response, error) in
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
platformClient.order.getShipmentReasons(shipmentId: shipmentId, bagId: bagId, state: state) { (response, error) in
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
platformClient.order.bulkActionProcessXlsxFile(body: body) { (response, error) in
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
platformClient.order.bulkActionDetails(batchId: batchId) { (response, error) in
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
platformClient.order.getBagById(bagId: bagId, channelBagId: channelBagId, channelId: channelId) { (response, error) in
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
platformClient.order.getBags(bagIds: bagIds, shipmentIds: shipmentIds, orderIds: orderIds, channelBagIds: channelBagIds, channelShipmentIds: channelShipmentIds, channelOrderIds: channelOrderIds, channelId: channelId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
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
platformClient.order.invalidateShipmentCache(body: body) { (response, error) in
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
{
  "response": [
    {
      "message": "Shipment sync initiated",
      "status": 200,
      "shipment_id": "16838049724111283577",
      "error": ""
    },
    {
      "message": "Cannot update cache if shipment in pending, payment_failed or awaiting_payment_confirmation",
      "status": 400,
      "shipment_id": "16836368409661507353",
      "error": ""
    },
    {
      "message": "Problem while deleting the cache",
      "status": 500,
      "shipment_id": "16838049724111283577",
      "error": "Internal Exception"
    }
  ]
}
```
</details>









---


#### reassignLocation





```swift
platformClient.order.reassignLocation(body: body) { (response, error) in
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
platformClient.order.updateShipmentLock(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | UpdateShipmentLockPayload | yes | Request body |


update shipment/bag lock and check status

*Returned Response:*




[UpdateShipmentLockResponse](#UpdateShipmentLockResponse)

Successfully update the Lock and get check status of the shipment/Bag




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "shipments checked successfully",
  "check_response": [
    {
      "bags": [
        {
          "bag_id": 175644,
          "is_locked": false,
          "affiliate_bag_id": "def134",
          "affiliate_order_id": "def134"
        }
      ],
      "lock_status": "complete",
      "is_bag_locked": false,
      "is_shipment_locked": true,
      "shipment_id": "16189206454951802898",
      "affiliate_id": "5c764a6534add21972ef7b08",
      "affiliate_shipment_id": "def134",
      "original_filter": {
        "shipment_id": "16189206454951802898"
      },
      "status": "dp_assigned"
    }
  ]
}
```
</details>









---


#### getAnnouncements





```swift
platformClient.order.getAnnouncements(date: date) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| date | String? | no | Date On which the announcement is Active (Date should in ISO Datetime format IST Time) |  





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
platformClient.order.updateAddress(shipmentId: shipmentId, name: name, address: address, addressType: addressType, pincode: pincode, phone: phone, email: email, landmark: landmark, addressCategory: addressCategory, city: city, state: state, country: country) { (response, error) in
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
platformClient.order.click2Call(caller: caller, receiver: receiver, bagId: bagId, callerId: callerId, method: method) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| caller | String | yes | Call Number |   
| receiver | String | yes | Receiver Number |   
| bagId | String | yes | Bag Id for the query |   
| callerId | String? | no | Caller Id |   
| method | String? | no | Provider Method to Call |  





*Returned Response:*




[Click2CallResponse](#Click2CallResponse)

Process call on request!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "call_id": "c2c_646b00bc-984c-4c10-bb8d-0e850a1e0022"
}
```
</details>









---


#### updateShipmentStatus





```swift
platformClient.order.updateShipmentStatus(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | UpdateShipmentStatusRequest | yes | Request body |


This API is for Shipment State transition or Shipment data update or both below example is for partial state transition with data update

*Returned Response:*




[UpdateShipmentStatusResponseBody](#UpdateShipmentStatusResponseBody)

NOTE success response can contains success and failed result as well




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "statuses": [
    {
      "shipments": [
        {
          "status": 200,
          "final_state": {
            "bag_confirmed": "bag_confirmed",
            "shipment_id": "16836279770211860494"
          },
          "identifier": "16836279770211860494"
        }
      ]
    },
    {
      "shipments": [
        {
          "status": 400,
          "message": "Invalid State Transition bag_confirmed detected for given entity",
          "code": null,
          "exception": "ValidationError",
          "stack_trace": null,
          "meta": null,
          "identifier": "16836279770211860494"
        }
      ]
    }
  ]
}
```
</details>









---


#### processManifest





```swift
platformClient.order.processManifest(body: body) { (response, error) in
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
platformClient.order.dispatchManifest(body: body) { (response, error) in
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
platformClient.order.getRoleBasedActions() { (response, error) in
    // Use response
}
```








*Returned Response:*




[GetActionsResponse](#GetActionsResponse)

You will get an array of actions allowed for that particular user based on their role




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "permissions": [
    {
      "slug": "create_invoice_s3",
      "display_text": "Create Invoice (s3)",
      "id": 2,
      "description": "Create Invoice (s3)"
    },
    {
      "slug": "call",
      "display_text": "Call",
      "id": 3,
      "description": "Call"
    }
  ]
}
```
</details>









---


#### getShipmentHistory





```swift
platformClient.order.getShipmentHistory(shipmentId: shipmentId, bagId: bagId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String? | no | Shipment Id |   
| bagId | Int? | no | Bag/Product Id |  





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


#### postShipmentHistory





```swift
platformClient.order.postShipmentHistory(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PostShipmentHistory | yes | Request body |




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
  ],
  "success": true
}
```
</details>









---


#### sendSmsNinja





```swift
platformClient.order.sendSmsNinja(body: body) { (response, error) in
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
{
  "success": true,
  "message": "Successfully emitted aldaviz-delayed-shipment-event"
}
```
</details>









---


#### updatePackagingDimensions





```swift
platformClient.order.updatePackagingDimensions(body: body) { (response, error) in
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
platformClient.order.createOrder(body: body) { (response, error) in
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


#### getChannelConfig





```swift
platformClient.order.getChannelConfig() { (response, error) in
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


#### createChannelConfig





```swift
platformClient.order.createChannelConfig(body: body) { (response, error) in
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


#### uploadConsent





```swift
platformClient.order.uploadConsent(body: body) { (response, error) in
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
platformClient.order.orderUpdate(body: body) { (response, error) in
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
platformClient.order.checkOrderStatus(body: body) { (response, error) in
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


#### getStateTransitionMap





```swift
platformClient.order.getStateTransitionMap() { (response, error) in
    // Use response
}
```








*Returned Response:*




[BagStateTransitionMap](#BagStateTransitionMap)

State Transition Mapping, for next possible state




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "fynd": {
    "placed": [
      "bag_not_confirmed",
      "cancelled_customer",
      "cancelled_fynd",
      "bag_confirmed",
      "store_reassigned"
    ],
    "bag_confirmed": [
      "handed_over_to_customer",
      "bag_invoiced"
    ],
    "dp_assigned": [
      "handed_over_to_customer",
      "bag_packed"
    ],
    "bag_packed": [
      "bag_not_picked",
      "cancelled_customer"
    ],
    "handed_over_to_dg": [
      "cancelled_at_dp",
      "credit_note_generated"
    ],
    "out_for_delivery": [
      "delivery_done"
    ],
    "delivery_done": [
      "bag_lost",
      "return_initiated"
    ],
    "return_initiated": [
      "return_accepted"
    ],
    "bag_picked": [
      "refund_completed",
      "out_for_delivery",
      "delivery_done"
    ],
    "pending": [
      "pending",
      "placed",
      "payment_failed",
      "manual_refund"
    ],
    "payment_failed": [
      "awaiting_payment_confirmation",
      "placed",
      "manual_refund"
    ],
    "return_pre_qc": [
      "return_initiated",
      "return_request_cancelled",
      "manual_refund"
    ],
    "bag_not_packed": [
      "manual_refund"
    ],
    "bag_rescheduled": [
      "manual_refund"
    ],
    "fluid_state": [
      "manual_refund"
    ],
    "handed_over_to_customer": [
      "manual_refund",
      "return_initiated"
    ],
    "hold": [
      "manual_refund"
    ],
    "product_not_available": [
      "manual_refund"
    ],
    "qc_fail": [
      "manual_refund"
    ],
    "qc_pass": [
      "manual_refund"
    ],
    "refund_done": [
      "manual_refund"
    ],
    "refund_processing": [
      "manual_refund"
    ],
    "return_assigning_dp": [
      "manual_refund"
    ],
    "return_bag_packed": [
      "manual_refund"
    ],
    "return_dp_cancelled": [
      "manual_refund"
    ],
    "unhold": [
      "manual_refund"
    ],
    "web_store_rescheduled": [
      "manual_refund"
    ],
    "credit_note_cancelled": [
      "refund_initiated"
    ]
  },
  "affiliate": {
    "placed": [
      "bag_not_confirmed",
      "store_reassigned",
      "product_not_available"
    ],
    "store_reassigned": [
      "bag_not_confirmed"
    ],
    "bag_confirmed": [
      "bag_invoiced",
      "cancelled_fynd"
    ],
    "dp_assigned": [
      "bag_packed"
    ],
    "pending": [
      "payment_failed",
      "placed",
      "manual_refund"
    ],
    "ready_for_dp_assignment": [
      "dp_assigned"
    ],
    "credit_note_generated": [
      "refund_pending",
      "refund_initiated"
    ],
    "assigning_return_dp": [
      "manual_refund"
    ],
    "bag_not_packed": [
      "manual_refund"
    ],
    "bag_rescheduled": [
      "manual_refund"
    ],
    "fluid_state": [
      "manual_refund"
    ],
    "handed_over_to_customer": [
      "manual_refund",
      "return_initiated"
    ],
    "hold": [
      "manual_refund"
    ],
    "product_not_available": [
      "manual_refund"
    ],
    "qc_fail": [
      "manual_refund"
    ],
    "qc_pass": [
      "manual_refund"
    ],
    "refund_done": [
      "manual_refund"
    ],
    "refund_processing": [
      "manual_refund"
    ],
    "return_assigning_dp": [
      "manual_refund"
    ],
    "return_bag_packed": [
      "manual_refund"
    ],
    "return_dp_cancelled": [
      "manual_refund"
    ],
    "unhold": [
      "manual_refund"
    ],
    "web_store_rescheduled": [
      "manual_refund"
    ],
    "credit_note_cancelled": [
      "refund_initiated"
    ]
  }
}
```
</details>









---



### Schemas

 
 
 #### [FilterInfoOption](#FilterInfoOption)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String |  no  |  |
 | name | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [FiltersInfo](#FiltersInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | options | [[FilterInfoOption](#FilterInfoOption)]? |  yes  |  |
 | text | String |  no  |  |
 | type | String |  no  |  |
 | value | String |  no  |  |

---


 
 
 #### [ShipmentItemFulFillingStore](#ShipmentItemFulFillingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String |  no  |  |
 | id | String |  no  |  |

---


 
 
 #### [Prices](#Prices)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | refundCredit | Double? |  yes  |  |
 | valueOfGood | Double? |  yes  |  |
 | promotionEffectiveDiscount | Double? |  yes  |  |
 | fyndCredits | Double? |  yes  |  |
 | couponValue | Double? |  yes  |  |
 | amountPaid | Double? |  yes  |  |
 | amountPaidRoundoff | Double? |  yes  |  |
 | priceMarked | Double? |  yes  |  |
 | deliveryCharge | Double? |  yes  |  |
 | refundAmount | Double? |  yes  |  |
 | discount | Double? |  yes  |  |
 | cashback | Double? |  yes  |  |
 | transferPrice | Double? |  yes  |  |
 | codCharges | Double? |  yes  |  |
 | priceEffective | Double? |  yes  |  |
 | cashbackApplied | Double? |  yes  |  |
 | taxCollectedAtSource | Double? |  yes  |  |

---


 
 
 #### [ShipmentStatus](#ShipmentStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String |  no  |  |
 | title | String |  no  |  |
 | hexCode | String |  no  |  |
 | opsStatus | String |  no  |  |
 | actualStatus | String |  no  |  |

---


 
 
 #### [PaymentModeInfo](#PaymentModeInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logo | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [UserDataInfo](#UserDataInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isAnonymousUser | Bool? |  yes  |  |
 | avisUserId | String? |  yes  |  |
 | name | String? |  yes  |  |
 | firstName | String? |  yes  |  |
 | gender | String? |  yes  |  |
 | lastName | String? |  yes  |  |
 | email | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | mobile | String? |  yes  |  |

---


 
 
 #### [PlatformItem](#PlatformItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | canCancel | Bool? |  yes  |  |
 | code | String? |  yes  |  |
 | l1Category | [String]? |  yes  |  |
 | name | String? |  yes  |  |
 | image | [String]? |  yes  |  |
 | l3Category | Int? |  yes  |  |
 | departmentId | Int? |  yes  |  |
 | l3CategoryName | String? |  yes  |  |
 | color | String? |  yes  |  |
 | size | String? |  yes  |  |
 | canReturn | Bool? |  yes  |  |
 | id | Int? |  yes  |  |
 | images | [String]? |  yes  |  |

---


 
 
 #### [GSTDetailsData](#GSTDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstFee | Double |  no  |  |
 | valueOfGood | Double |  no  |  |
 | brandCalculatedAmount | Double |  no  |  |
 | gstinCode | String |  no  |  |
 | taxCollectedAtSource | Double |  no  |  |

---


 
 
 #### [BagUnit](#BagUnit)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | item | [PlatformItem](#PlatformItem)? |  yes  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | orderingChannel | String |  no  |  |
 | totalShipmentBags | Int |  no  |  |
 | canCancel | Bool? |  yes  |  |
 | shipmentId | String |  no  |  |
 | status | [String: Any] |  no  |  |
 | itemQuantity | Int |  no  |  |
 | gst | [GSTDetailsData](#GSTDetailsData)? |  yes  |  |
 | canReturn | Bool? |  yes  |  |
 | bagId | Int |  no  |  |

---


 
 
 #### [ShipmentItem](#ShipmentItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fulfillingStore | [ShipmentItemFulFillingStore](#ShipmentItemFulFillingStore)? |  yes  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | fulfillingCentre | String |  no  |  |
 | shipmentCreatedAt | String |  no  |  |
 | totalBagsCount | Int |  no  |  |
 | createdAt | String |  no  |  |
 | shipmentStatus | [ShipmentStatus](#ShipmentStatus)? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | paymentModeInfo | [PaymentModeInfo](#PaymentModeInfo)? |  yes  |  |
 | company | [String: Any]? |  yes  |  |
 | user | [UserDataInfo](#UserDataInfo)? |  yes  |  |
 | channel | [String: Any]? |  yes  |  |
 | bags | [[BagUnit](#BagUnit)]? |  yes  |  |
 | totalShipmentsInOrder | Int |  no  |  |
 | paymentMethods | [String: Any]? |  yes  |  |
 | application | [String: Any]? |  yes  |  |
 | id | String |  no  |  |
 | sla | [String: Any]? |  yes  |  |

---


 
 
 #### [ShipmentInternalPlatformViewResponse](#ShipmentInternalPlatformViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filters | [[FiltersInfo](#FiltersInfo)]? |  yes  |  |
 | page | [String: Any]? |  yes  |  |
 | appliedFilters | [String: Any]? |  yes  |  |
 | items | [[ShipmentItem](#ShipmentItem)]? |  yes  |  |

---


 
 
 #### [Error](#Error)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [UserDetailsData](#UserDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | city | String |  no  |  |
 | phone | String |  no  |  |
 | address1 | String? |  yes  |  |
 | country | String |  no  |  |
 | area | String? |  yes  |  |
 | address | String |  no  |  |
 | name | String |  no  |  |
 | state | String |  no  |  |
 | pincode | String |  no  |  |
 | landmark | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | email | String? |  yes  |  |

---


 
 
 #### [InvoiceInfo](#InvoiceInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | invoiceUrl | String? |  yes  |  |
 | updatedDate | String? |  yes  |  |
 | creditNoteId | String? |  yes  |  |
 | storeInvoiceId | String? |  yes  |  |
 | labelUrl | String? |  yes  |  |

---


 
 
 #### [DPDetailsData](#DPDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String? |  yes  |  |
 | name | String? |  yes  |  |
 | awbNo | String? |  yes  |  |
 | gstTag | String? |  yes  |  |
 | ewayBillId | String? |  yes  |  |
 | pincode | String? |  yes  |  |
 | trackUrl | String? |  yes  |  |
 | id | Int? |  yes  |  |

---


 
 
 #### [PhoneDetails](#PhoneDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mobileNumber | String? |  yes  |  |
 | countryCode | Int? |  yes  |  |

---


 
 
 #### [ContactDetails](#ContactDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | [[PhoneDetails](#PhoneDetails)]? |  yes  |  |
 | emails | [String]? |  yes  |  |

---


 
 
 #### [CompanyDetails](#CompanyDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | Int? |  yes  |  |
 | address | [String: Any]? |  yes  |  |
 | companyContact | [ContactDetails](#ContactDetails)? |  yes  |  |
 | companyCin | String? |  yes  |  |
 | companyGst | String? |  yes  |  |
 | companyName | String? |  yes  |  |

---


 
 
 #### [OrderDetailsData](#OrderDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateId | String? |  yes  |  |
 | orderValue | String? |  yes  |  |
 | source | String? |  yes  |  |
 | taxDetails | [String: Any]? |  yes  |  |
 | orderingChannelLogo | [String: Any]? |  yes  |  |
 | fyndOrderId | String |  no  |  |
 | orderDate | String? |  yes  |  |
 | codCharges | String? |  yes  |  |
 | orderingChannel | String? |  yes  |  |

---


 
 
 #### [ShipmentPayments](#ShipmentPayments)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | source | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | mode | String? |  yes  |  |

---


 
 
 #### [BagStateMapper](#BagStateMapper)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stateType | String |  no  |  |
 | name | String |  no  |  |
 | notifyCustomer | Bool? |  yes  |  |
 | journeyType | String |  no  |  |
 | appFacing | Bool? |  yes  |  |
 | displayName | String |  no  |  |
 | appDisplayName | String? |  yes  |  |
 | appStateName | String? |  yes  |  |
 | bsId | Int |  no  |  |
 | isActive | Bool? |  yes  |  |

---


 
 
 #### [BagStatusHistory](#BagStatusHistory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stateType | String? |  yes  |  |
 | deliveryPartnerId | Int? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | storeId | Int? |  yes  |  |
 | reasons | [[String: Any]]? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | status | String |  no  |  |
 | deliveryAwbNumber | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | kafkaSync | Bool? |  yes  |  |
 | displayName | String? |  yes  |  |
 | bshId | Int? |  yes  |  |
 | bagStateMapper | [BagStateMapper](#BagStateMapper)? |  yes  |  |
 | appDisplayName | String? |  yes  |  |
 | stateId | Int? |  yes  |  |
 | bagId | Int? |  yes  |  |
 | forward | Bool? |  yes  |  |

---


 
 
 #### [FulfillingStore](#FulfillingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | contactPerson | String |  no  |  |
 | meta | [String: Any] |  no  |  |
 | city | String |  no  |  |
 | phone | String |  no  |  |
 | fulfillmentChannel | String |  no  |  |
 | country | String |  no  |  |
 | code | String |  no  |  |
 | storeName | String |  no  |  |
 | address | String |  no  |  |
 | state | String |  no  |  |
 | pincode | String |  no  |  |
 | id | Int |  no  |  |

---


 
 
 #### [Dimensions](#Dimensions)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | length | Int? |  yes  |  |
 | isDefault | Bool? |  yes  |  |
 | width | Int? |  yes  |  |
 | height | Int? |  yes  |  |
 | unit | String? |  yes  |  |

---


 
 
 #### [Meta](#Meta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dimension | [Dimensions](#Dimensions)? |  yes  |  |

---


 
 
 #### [OrderingStoreDetails](#OrderingStoreDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | contactPerson | String |  no  |  |
 | meta | [String: Any] |  no  |  |
 | city | String |  no  |  |
 | phone | String |  no  |  |
 | country | String |  no  |  |
 | code | String |  no  |  |
 | storeName | String |  no  |  |
 | orderingStoreId | Int |  no  |  |
 | address | String |  no  |  |
 | state | String |  no  |  |
 | pincode | String |  no  |  |

---


 
 
 #### [ShipmentStatusData](#ShipmentStatusData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdAt | String? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | status | String? |  yes  |  |
 | bagList | [String]? |  yes  |  |
 | id | Int? |  yes  |  |

---


 
 
 #### [TrackingList](#TrackingList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isCurrent | Bool? |  yes  |  |
 | time | String? |  yes  |  |
 | status | String |  no  |  |
 | isPassed | Bool? |  yes  |  |
 | text | String |  no  |  |

---


 
 
 #### [ShipmentTimeStamp](#ShipmentTimeStamp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tMax | String? |  yes  |  |
 | tMin | String? |  yes  |  |

---


 
 
 #### [LockData](#LockData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | locked | Bool? |  yes  |  |
 | lockMessage | String? |  yes  |  |
 | mto | Bool? |  yes  |  |

---


 
 
 #### [EinvoiceInfo](#EinvoiceInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | creditNote | [String: Any]? |  yes  |  |
 | invoice | [String: Any]? |  yes  |  |

---


 
 
 #### [DebugInfo](#DebugInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stormbreakerUuid | String? |  yes  |  |

---


 
 
 #### [Formatted](#Formatted)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fMax | String? |  yes  |  |
 | fMin | String? |  yes  |  |

---


 
 
 #### [BuyerDetails](#BuyerDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | city | String |  no  |  |
 | gstin | String |  no  |  |
 | address | String |  no  |  |
 | name | String |  no  |  |
 | ajioSiteId | String? |  yes  |  |
 | state | String |  no  |  |
 | pincode | Int |  no  |  |

---


 
 
 #### [ShipmentMeta](#ShipmentMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | awbNumber | String? |  yes  |  |
 | ewaybillInfo | [String: Any]? |  yes  |  |
 | returnDetails | [String: Any]? |  yes  |  |
 | dpId | String? |  yes  |  |
 | shipmentVolumetricWeight | Double? |  yes  |  |
 | marketplaceStoreId | String? |  yes  |  |
 | sameStoreAvailable | Bool |  no  |  |
 | forwardAffiliateOrderId | String? |  yes  |  |
 | dpOptions | [String: Any]? |  yes  |  |
 | autoTriggerDpAssignmentAcf | Bool |  no  |  |
 | timestamp | [ShipmentTimeStamp](#ShipmentTimeStamp)? |  yes  |  |
 | external | [String: Any]? |  yes  |  |
 | returnAffiliateShipmentId | String? |  yes  |  |
 | dueDate | String? |  yes  |  |
 | lockData | [LockData](#LockData)? |  yes  |  |
 | einvoiceInfo | [EinvoiceInfo](#EinvoiceInfo)? |  yes  |  |
 | forwardAffiliateShipmentId | String? |  yes  |  |
 | boxType | String? |  yes  |  |
 | assignDpFromSb | Bool? |  yes  |  |
 | bagWeight | [String: Any]? |  yes  |  |
 | returnStoreNode | Int? |  yes  |  |
 | debugInfo | [DebugInfo](#DebugInfo)? |  yes  |  |
 | returnAwbNumber | String? |  yes  |  |
 | formatted | [Formatted](#Formatted)? |  yes  |  |
 | weight | Int |  no  |  |
 | shipmentWeight | Double? |  yes  |  |
 | orderType | String? |  yes  |  |
 | storeInvoiceUpdatedDate | String? |  yes  |  |
 | poNumber | String? |  yes  |  |
 | b2CBuyerDetails | [String: Any]? |  yes  |  |
 | packagingName | String? |  yes  |  |
 | fulfilmentPriorityText | String? |  yes  |  |
 | dpName | String? |  yes  |  |
 | b2BBuyerDetails | [BuyerDetails](#BuyerDetails)? |  yes  |  |
 | returnAffiliateOrderId | String? |  yes  |  |
 | dpSortKey | String? |  yes  |  |

---


 
 
 #### [ReplacementDetails](#ReplacementDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | originalAffiliateOrderId | String? |  yes  |  |
 | replacementType | String? |  yes  |  |

---


 
 
 #### [AffiliateMeta](#AffiliateMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderItemId | String? |  yes  |  |
 | dueDate | String? |  yes  |  |
 | loyaltyDiscount | Double? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | replacementDetails | [ReplacementDetails](#ReplacementDetails) |  no  |  |
 | sizeLevelTotalQty | Int? |  yes  |  |
 | channelShipmentId | String? |  yes  |  |
 | marketplaceInvoiceId | String? |  yes  |  |
 | isPriority | Bool? |  yes  |  |
 | boxType | String? |  yes  |  |
 | channelOrderId | String? |  yes  |  |
 | employeeDiscount | Double? |  yes  |  |
 | couponCode | String? |  yes  |  |

---


 
 
 #### [PDFLinks](#PDFLinks)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | invoiceA6 | String? |  yes  |  |
 | creditNoteUrl | String? |  yes  |  |
 | poInvoice | String? |  yes  |  |
 | deliveryChallanA4 | String? |  yes  |  |
 | invoice | String? |  yes  |  |
 | labelA4 | String? |  yes  |  |
 | labelPos | String? |  yes  |  |
 | label | String? |  yes  |  |
 | labelA6 | String? |  yes  |  |
 | invoiceType | String |  no  |  |
 | invoicePos | String? |  yes  |  |
 | labelType | String |  no  |  |
 | b2B | String? |  yes  |  |
 | invoiceA4 | String? |  yes  |  |

---


 
 
 #### [AffiliateDetails](#AffiliateDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateId | String? |  yes  |  |
 | adId | String? |  yes  |  |
 | shipmentMeta | [ShipmentMeta](#ShipmentMeta) |  no  |  |
 | affiliateBagId | String |  no  |  |
 | affiliateOrderId | String |  no  |  |
 | affiliateMeta | [AffiliateMeta](#AffiliateMeta) |  no  |  |
 | affiliateShipmentId | String |  no  |  |
 | companyAffiliateTag | String? |  yes  |  |
 | affiliateStoreId | String |  no  |  |
 | pdfLinks | [PDFLinks](#PDFLinks)? |  yes  |  |

---


 
 
 #### [BagGST](#BagGST)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstFee | Double? |  yes  |  |
 | valueOfGood | Double? |  yes  |  |
 | brandCalculatedAmount | Double? |  yes  |  |
 | gstinCode | String? |  yes  |  |
 | gstTag | String? |  yes  |  |
 | isDefaultHsnCode | Bool? |  yes  |  |
 | gstTaxPercentage | Int? |  yes  |  |
 | hsnCode | String? |  yes  |  |

---


 
 
 #### [OrderBrandName](#OrderBrandName)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdOn | String |  no  |  |
 | company | String |  no  |  |
 | brandName | String |  no  |  |
 | logo | String |  no  |  |
 | id | Int |  no  |  |
 | modifiedOn | String? |  yes  |  |

---


 
 
 #### [BagConfigs](#BagConfigs)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | canBeCancelled | Bool |  no  |  |
 | allowForceReturn | Bool |  no  |  |
 | enableTracking | Bool |  no  |  |
 | isCustomerReturnAllowed | Bool |  no  |  |
 | isReturnable | Bool |  no  |  |
 | isActive | Bool |  no  |  |

---


 
 
 #### [Identifier](#Identifier)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ean | String? |  yes  |  |

---


 
 
 #### [FinancialBreakup](#FinancialBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | couponValue | Double |  no  |  |
 | totalUnits | Int |  no  |  |
 | brandCalculatedAmount | Double |  no  |  |
 | discount | Int |  no  |  |
 | size | String |  no  |  |
 | hsnCode | String |  no  |  |
 | taxCollectedAtSource | Int? |  yes  |  |
 | refundCredit | Int |  no  |  |
 | amountPaid | Double |  no  |  |
 | priceEffective | Int |  no  |  |
 | gstFee | Double |  no  |  |
 | valueOfGood | Double |  no  |  |
 | promotionEffectiveDiscount | Double |  no  |  |
 | fyndCredits | Int |  no  |  |
 | itemName | String |  no  |  |
 | identifiers | [Identifier](#Identifier) |  no  |  |
 | gstTag | String |  no  |  |
 | addedToFyndCash | Bool |  no  |  |
 | gstTaxPercentage | Int |  no  |  |
 | cashbackApplied | Int |  no  |  |
 | transferPrice | Int |  no  |  |
 | amountPaidRoundoff | Int? |  yes  |  |
 | priceMarked | Int |  no  |  |
 | deliveryCharge | Int |  no  |  |
 | cashback | Int |  no  |  |
 | codCharges | Int |  no  |  |
 | couponEffectiveDiscount | Double |  no  |  |

---


 
 
 #### [OrderBagArticle](#OrderBagArticle)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | returnConfig | [String: Any]? |  yes  |  |
 | identifiers | [String: Any]? |  yes  |  |
 | uid | String? |  yes  |  |

---


 
 
 #### [CurrentStatus](#CurrentStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stateType | String? |  yes  |  |
 | deliveryPartnerId | Int? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | currentStatusId | Int |  no  |  |
 | storeId | Int? |  yes  |  |
 | status | String? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | deliveryAwbNumber | String? |  yes  |  |
 | kafkaSync | Bool? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | bagStateMapper | [BagStateMapper](#BagStateMapper)? |  yes  |  |
 | stateId | Int? |  yes  |  |
 | bagId | Int? |  yes  |  |

---


 
 
 #### [DiscountRules](#DiscountRules)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | Int? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [ItemCriterias](#ItemCriterias)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemBrand | [Int]? |  yes  |  |

---


 
 
 #### [BuyRules](#BuyRules)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemCriteria | [ItemCriterias](#ItemCriterias)? |  yes  |  |
 | cartConditions | [String: Any]? |  yes  |  |

---


 
 
 #### [AppliedPromos](#AppliedPromos)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mrpPromotion | Bool? |  yes  |  |
 | promoId | String? |  yes  |  |
 | articleQuantity | Int? |  yes  |  |
 | discountRules | [[DiscountRules](#DiscountRules)]? |  yes  |  |
 | amount | Double? |  yes  |  |
 | buyRules | [[BuyRules](#BuyRules)]? |  yes  |  |
 | promotionType | String? |  yes  |  |
 | promotionName | String? |  yes  |  |

---


 
 
 #### [PlatformDeliveryAddress](#PlatformDeliveryAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | contactPerson | String? |  yes  |  |
 | version | String? |  yes  |  |
 | city | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | country | String? |  yes  |  |
 | area | String? |  yes  |  |
 | addressCategory | String? |  yes  |  |
 | latitude | Int? |  yes  |  |
 | longitude | Int? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | state | String? |  yes  |  |
 | pincode | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | landmark | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | email | String? |  yes  |  |

---


 
 
 #### [OrderBags](#OrderBags)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | item | [PlatformItem](#PlatformItem)? |  yes  |  |
 | gstDetails | [BagGST](#BagGST)? |  yes  |  |
 | brand | [OrderBrandName](#OrderBrandName)? |  yes  |  |
 | canCancel | Bool? |  yes  |  |
 | bagConfigs | [BagConfigs](#BagConfigs)? |  yes  |  |
 | entityType | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | financialBreakup | [FinancialBreakup](#FinancialBreakup)? |  yes  |  |
 | canReturn | Bool? |  yes  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | article | [OrderBagArticle](#OrderBagArticle)? |  yes  |  |
 | identifier | String? |  yes  |  |
 | bagId | Int |  no  |  |
 | sellerIdentifier | String? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | currentStatus | [CurrentStatus](#CurrentStatus)? |  yes  |  |
 | parentPromoBags | [String: Any]? |  yes  |  |
 | lineNumber | Int? |  yes  |  |
 | appliedPromos | [[AppliedPromos](#AppliedPromos)]? |  yes  |  |
 | deliveryAddress | [PlatformDeliveryAddress](#PlatformDeliveryAddress)? |  yes  |  |

---


 
 
 #### [PlatformShipment](#PlatformShipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | billingDetails | [UserDetailsData](#UserDetailsData)? |  yes  |  |
 | invoice | [InvoiceInfo](#InvoiceInfo)? |  yes  |  |
 | forwardShipmentId | String? |  yes  |  |
 | journeyType | String? |  yes  |  |
 | priorityText | String? |  yes  |  |
 | totalItems | Int? |  yes  |  |
 | dpDetails | [DPDetailsData](#DPDetailsData)? |  yes  |  |
 | companyDetails | [CompanyDetails](#CompanyDetails)? |  yes  |  |
 | invoiceId | String? |  yes  |  |
 | paymentMethods | [String: Any]? |  yes  |  |
 | coupon | [String: Any]? |  yes  |  |
 | gstDetails | [GSTDetailsData](#GSTDetailsData)? |  yes  |  |
 | deliverySlot | [String: Any]? |  yes  |  |
 | order | [OrderDetailsData](#OrderDetailsData)? |  yes  |  |
 | payments | [ShipmentPayments](#ShipmentPayments)? |  yes  |  |
 | shipmentImages | [String]? |  yes  |  |
 | bagStatusHistory | [[BagStatusHistory](#BagStatusHistory)]? |  yes  |  |
 | lockStatus | Bool? |  yes  |  |
 | paymentMode | String? |  yes  |  |
 | userAgent | String? |  yes  |  |
 | fulfillingStore | [FulfillingStore](#FulfillingStore)? |  yes  |  |
 | meta | [Meta](#Meta)? |  yes  |  |
 | deliveryDetails | [UserDetailsData](#UserDetailsData)? |  yes  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | fulfilmentPriority | Int? |  yes  |  |
 | orderingStore | [OrderingStoreDetails](#OrderingStoreDetails)? |  yes  |  |
 | platformLogo | String? |  yes  |  |
 | shipmentId | String |  no  |  |
 | status | [ShipmentStatusData](#ShipmentStatusData)? |  yes  |  |
 | operationalStatus | String? |  yes  |  |
 | user | [UserDataInfo](#UserDataInfo)? |  yes  |  |
 | enableDpTracking | Bool? |  yes  |  |
 | totalBags | Int? |  yes  |  |
 | trackingList | [[TrackingList](#TrackingList)]? |  yes  |  |
 | shipmentStatus | String? |  yes  |  |
 | pickedDate | String? |  yes  |  |
 | vertical | String? |  yes  |  |
 | shipmentQuantity | Int? |  yes  |  |
 | customMeta | [[String: Any]]? |  yes  |  |
 | affiliateDetails | [AffiliateDetails](#AffiliateDetails)? |  yes  |  |
 | packagingType | String? |  yes  |  |
 | bags | [[OrderBags](#OrderBags)]? |  yes  |  |

---


 
 
 #### [ShipmentInfoResponse](#ShipmentInfoResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | message | String? |  yes  |  |
 | shipments | [[PlatformShipment](#PlatformShipment)]? |  yes  |  |

---


 
 
 #### [TransactionData](#TransactionData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | entity | String? |  yes  |  |
 | transactionId | String? |  yes  |  |
 | amountPaid | String? |  yes  |  |
 | status | String? |  yes  |  |
 | uniqueReferenceNumber | String? |  yes  |  |
 | terminalId | String? |  yes  |  |
 | paymentId | String? |  yes  |  |
 | currency | String? |  yes  |  |

---


 
 
 #### [PlatformUserDetails](#PlatformUserDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | platformUserEmployeeCode | String? |  yes  |  |
 | platformUserFirstName | String? |  yes  |  |
 | platformUserId | String? |  yes  |  |
 | platformUserLastName | String? |  yes  |  |

---


 
 
 #### [BillingStaffDetails](#BillingStaffDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String? |  yes  |  |
 | lastName | String? |  yes  |  |
 | user | String? |  yes  |  |
 | staffId | Int? |  yes  |  |
 | employeeCode | String? |  yes  |  |

---


 
 
 #### [OrderMeta](#OrderMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mongoCartId | Int? |  yes  |  |
 | orderPlatform | String? |  yes  |  |
 | orderChildEntities | [String]? |  yes  |  |
 | customerNote | String? |  yes  |  |
 | companyLogo | String? |  yes  |  |
 | extraMeta | [String: Any]? |  yes  |  |
 | orderTags | [[String: Any]]? |  yes  |  |
 | staff | [String: Any]? |  yes  |  |
 | transactionData | [TransactionData](#TransactionData)? |  yes  |  |
 | platformUserDetails | [PlatformUserDetails](#PlatformUserDetails)? |  yes  |  |
 | employeeId | Int? |  yes  |  |
 | orderingStore | Int? |  yes  |  |
 | paymentType | String? |  yes  |  |
 | orderType | String? |  yes  |  |
 | billingStaffDetails | [BillingStaffDetails](#BillingStaffDetails)? |  yes  |  |
 | files | [[String: Any]]? |  yes  |  |
 | currencySymbol | String? |  yes  |  |
 | comment | String? |  yes  |  |
 | cartId | Int? |  yes  |  |

---


 
 
 #### [TaxDetails](#TaxDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstin | String? |  yes  |  |
 | panNo | String? |  yes  |  |

---


 
 
 #### [OrderDict](#OrderDict)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [OrderMeta](#OrderMeta)? |  yes  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | taxDetails | [TaxDetails](#TaxDetails)? |  yes  |  |
 | orderDate | String |  no  |  |
 | fyndOrderId | String |  no  |  |
 | paymentMethods | [String: Any]? |  yes  |  |

---


 
 
 #### [ShipmentDetailsResponse](#ShipmentDetailsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | shipments | [[PlatformShipment](#PlatformShipment)]? |  yes  |  |
 | order | [OrderDict](#OrderDict)? |  yes  |  |

---


 
 
 #### [SubLane](#SubLane)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | actions | [[String: Any]]? |  yes  |  |
 | totalItems | Int? |  yes  |  |
 | index | Int? |  yes  |  |
 | text | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [SuperLane](#SuperLane)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | options | [[SubLane](#SubLane)]? |  yes  |  |
 | text | String |  no  |  |
 | totalItems | Int? |  yes  |  |
 | value | String |  no  |  |

---


 
 
 #### [LaneConfigResponse](#LaneConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | superLanes | [[SuperLane](#SuperLane)]? |  yes  |  |

---


 
 
 #### [PlatformBreakupValues](#PlatformBreakupValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | name | String? |  yes  |  |
 | value | String? |  yes  |  |

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
 | meta | [String: Any]? |  yes  |  |
 | orderValue | Double? |  yes  |  |
 | orderCreatedTime | String? |  yes  |  |
 | totalOrderValue | Double? |  yes  |  |
 | orderId | String? |  yes  |  |
 | breakupValues | [[PlatformBreakupValues](#PlatformBreakupValues)]? |  yes  |  |
 | channel | [PlatformChannel](#PlatformChannel)? |  yes  |  |
 | shipments | [[PlatformShipment](#PlatformShipment)]? |  yes  |  |
 | userInfo | [UserDataInfo](#UserDataInfo)? |  yes  |  |
 | paymentMode | String? |  yes  |  |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hasPrevious | Bool? |  yes  |  |
 | total | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | type | String? |  yes  |  |
 | size | Int? |  yes  |  |
 | current | Int? |  yes  |  |

---


 
 
 #### [OrderListingResponse](#OrderListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | lane | String? |  yes  |  |
 | message | String? |  yes  |  |
 | items | [[PlatformOrderItems](#PlatformOrderItems)]? |  yes  |  |
 | totalCount | Int? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [Options](#Options)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String? |  yes  |  |
 | value | Int? |  yes  |  |

---


 
 
 #### [MetricsCount](#MetricsCount)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | options | [[Options](#Options)]? |  yes  |  |
 | key | String |  no  |  |
 | text | String |  no  |  |
 | value | Int |  no  |  |

---


 
 
 #### [MetricCountResponse](#MetricCountResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[MetricsCount](#MetricsCount)]? |  yes  |  |

---


 
 
 #### [PlatformTrack](#PlatformTrack)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [String: Any]? |  yes  |  |
 | rawStatus | String? |  yes  |  |
 | status | String? |  yes  |  |
 | updatedTime | String? |  yes  |  |
 | awb | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | lastLocationRecievedAt | String? |  yes  |  |
 | accountName | String? |  yes  |  |
 | reason | String? |  yes  |  |
 | shipmentType | String? |  yes  |  |

---


 
 
 #### [PlatformShipmentTrack](#PlatformShipmentTrack)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [String: Any]? |  yes  |  |
 | results | [[PlatformTrack](#PlatformTrack)]? |  yes  |  |

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
 | reportId | String? |  yes  |  |
 | status | String? |  yes  |  |
 | requestDetails | [String: Any]? |  yes  |  |
 | reportRequestedAt | String? |  yes  |  |
 | reportCreatedAt | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | reportType | String? |  yes  |  |
 | s3Key | String? |  yes  |  |
 | reportName | String? |  yes  |  |

---


 
 
 #### [JioCodeUpsertDataSet](#JioCodeUpsertDataSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | String? |  yes  |  |
 | jioCode | String? |  yes  |  |
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
 | message | String? |  yes  |  |
 | value | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [JioCodeUpsertResponse](#JioCodeUpsertResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | identifier | String? |  yes  |  |
 | traceId | String? |  yes  |  |
 | error | [[NestedErrorSchemaDataSet](#NestedErrorSchemaDataSet)]? |  yes  |  |
 | data | [[String: Any]]? |  yes  |  |

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
 | companyId | String? |  yes  |  |
 | storeId | String? |  yes  |  |
 | doInvoiceLabelGenerated | Bool |  no  |  |
 | invoice | [String: Any]? |  yes  |  |
 | storeCode | String? |  yes  |  |
 | storeName | String? |  yes  |  |
 | label | [String: Any]? |  yes  |  |
 | batchId | String |  no  |  |
 | invoiceStatus | String? |  yes  |  |
 | data | [String: Any]? |  yes  |  |

---


 
 
 #### [FileUploadResponse](#FileUploadResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | expiry | Int? |  yes  |  |
 | url | String? |  yes  |  |

---


 
 
 #### [URL](#URL)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String? |  yes  |  |

---


 
 
 #### [FileResponse](#FileResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | contentType | String? |  yes  |  |
 | operation | String? |  yes  |  |
 | filePath | String? |  yes  |  |
 | fileName | String? |  yes  |  |
 | method | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | namespace | String? |  yes  |  |
 | upload | [FileUploadResponse](#FileUploadResponse)? |  yes  |  |
 | size | Int? |  yes  |  |
 | cdn | [URL](#URL)? |  yes  |  |

---


 
 
 #### [BulkListingPage](#BulkListingPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hasPrevious | Bool? |  yes  |  |
 | total | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | type | String? |  yes  |  |
 | size | Int? |  yes  |  |
 | current | Int? |  yes  |  |

---


 
 
 #### [bulkListingData](#bulkListingData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | failed | Int? |  yes  |  |
 | batchId | String? |  yes  |  |
 | processingShipments | [String]? |  yes  |  |
 | processing | Int? |  yes  |  |
 | successful | Int? |  yes  |  |
 | id | String? |  yes  |  |
 | total | Int? |  yes  |  |
 | storeId | Int? |  yes  |  |
 | fileName | String? |  yes  |  |
 | failedShipments | [[String: Any]]? |  yes  |  |
 | userName | String? |  yes  |  |
 | uploadedOn | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | status | String? |  yes  |  |
 | excelUrl | String? |  yes  |  |
 | userId | String? |  yes  |  |
 | storeCode | String? |  yes  |  |
 | storeName | String? |  yes  |  |
 | successfulShipments | [[String: Any]]? |  yes  |  |

---


 
 
 #### [BulkListingResponse](#BulkListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | page | [BulkListingPage](#BulkListingPage)? |  yes  |  |
 | data | [[bulkListingData](#bulkListingData)]? |  yes  |  |
 | error | String? |  yes  |  |

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
 | success | Bool? |  yes  |  |
 | reasons | [[Reason](#Reason)]? |  yes  |  |

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
 | failedShipmentsCount | Int? |  yes  |  |
 | processingShipmentsCount | Int? |  yes  |  |
 | companyId | String? |  yes  |  |
 | batchId | String? |  yes  |  |
 | successfulShipmentIds | [String]? |  yes  |  |
 | successfulShipmentsCount | Int? |  yes  |  |
 | totalShipmentsCount | Int? |  yes  |  |

---


 
 
 #### [BulkActionDetailsResponse](#BulkActionDetailsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uploadedOn | String? |  yes  |  |
 | success | String? |  yes  |  |
 | status | Bool? |  yes  |  |
 | message | String? |  yes  |  |
 | failedRecords | [String]? |  yes  |  |
 | error | [String]? |  yes  |  |
 | userId | String? |  yes  |  |
 | data | [[BulkActionDetailsDataField](#BulkActionDetailsDataField)]? |  yes  |  |
 | uploadedBy | String? |  yes  |  |

---


 
 
 #### [Attributes](#Attributes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | gender | [String]? |  yes  |  |
 | brandName | String? |  yes  |  |
 | primaryMaterial | String? |  yes  |  |
 | primaryColor | String? |  yes  |  |
 | marketerAddress | String? |  yes  |  |
 | marketerName | String? |  yes  |  |
 | primaryColorHex | String? |  yes  |  |
 | essential | String? |  yes  |  |

---


 
 
 #### [Item](#Item)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | branchUrl | String? |  yes  |  |
 | l1Category | [String]? |  yes  |  |
 | name | String |  no  |  |
 | image | [String] |  no  |  |
 | brandId | Int |  no  |  |
 | lastUpdatedAt | String? |  yes  |  |
 | attributes | [Attributes](#Attributes) |  no  |  |
 | size | String |  no  |  |
 | itemId | Int |  no  |  |
 | brand | String |  no  |  |
 | canCancel | Bool? |  yes  |  |
 | gender | String? |  yes  |  |
 | l1CategoryId | Int? |  yes  |  |
 | slugKey | String |  no  |  |
 | color | String? |  yes  |  |
 | canReturn | Bool? |  yes  |  |
 | webstoreProductUrl | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | l2CategoryId | Int? |  yes  |  |
 | l2Category | [String]? |  yes  |  |
 | code | String? |  yes  |  |
 | l3Category | Int? |  yes  |  |
 | departmentId | Int? |  yes  |  |
 | l3CategoryName | String? |  yes  |  |

---


 
 
 #### [BagGSTDetails](#BagGSTDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstFee | Double |  no  |  |
 | valueOfGood | Double |  no  |  |
 | hsnCodeId | String |  no  |  |
 | brandCalculatedAmount | Double |  no  |  |
 | sgstTaxPercentage | Double |  no  |  |
 | sgstGstFee | String |  no  |  |
 | igstGstFee | String |  no  |  |
 | cgstGstFee | String |  no  |  |
 | gstinCode | String? |  yes  |  |
 | gstTag | String |  no  |  |
 | cgstTaxPercentage | Double |  no  |  |
 | isDefaultHsnCode | Bool? |  yes  |  |
 | gstTaxPercentage | Double |  no  |  |
 | igstTaxPercentage | Double |  no  |  |
 | hsnCode | String |  no  |  |
 | taxCollectedAtSource | Double |  no  |  |

---


 
 
 #### [Brand](#Brand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | startDate | String? |  yes  |  |
 | invoicePrefix | String? |  yes  |  |
 | creditNoteAllowed | Bool? |  yes  |  |
 | creditNoteExpiryDays | Int? |  yes  |  |
 | createdOn | Int? |  yes  |  |
 | company | String |  no  |  |
 | isVirtualInvoice | Bool? |  yes  |  |
 | pickupLocation | String? |  yes  |  |
 | brandId | Int |  no  |  |
 | brandName | String |  no  |  |
 | scriptLastRan | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | modifiedOn | Int? |  yes  |  |

---


 
 
 #### [AffiliateBagDetails](#AffiliateBagDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | loyaltyDiscount | Double? |  yes  |  |
 | affiliateBagId | String |  no  |  |
 | affiliateMeta | [AffiliateMeta](#AffiliateMeta) |  no  |  |
 | affiliateOrderId | String |  no  |  |
 | employeeDiscount | Double? |  yes  |  |

---


 
 
 #### [B2BPODetails](#B2BPODetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dockerNumber | String? |  yes  |  |
 | poLineAmount | Double? |  yes  |  |
 | totalGstPercentage | Double? |  yes  |  |
 | itemBasePrice | Double? |  yes  |  |
 | poTaxAmount | Double? |  yes  |  |
 | partialCanRet | Bool? |  yes  |  |

---


 
 
 #### [BagMeta](#BagMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | b2BPoDetails | [B2BPODetails](#B2BPODetails)? |  yes  |  |

---


 
 
 #### [ReturnConfig](#ReturnConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | time | Int? |  yes  |  |
 | unit | String? |  yes  |  |
 | returnable | Bool? |  yes  |  |

---


 
 
 #### [Weight](#Weight)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isDefault | Bool? |  yes  |  |
 | unit | String? |  yes  |  |
 | shipping | Int? |  yes  |  |

---


 
 
 #### [Article](#Article)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | espModified | [String: Any]? |  yes  |  |
 | returnConfig | [ReturnConfig](#ReturnConfig)? |  yes  |  |
 | aSet | [String: Any]? |  yes  |  |
 | id | String |  no  |  |
 | code | String? |  yes  |  |
 | rawMeta | [String: Any]? |  yes  |  |
 | weight | [Weight](#Weight)? |  yes  |  |
 | childDetails | [String: Any]? |  yes  |  |
 | identifiers | [Identifier](#Identifier) |  no  |  |
 | dimensions | [Dimensions](#Dimensions)? |  yes  |  |
 | size | String |  no  |  |
 | isSet | Bool? |  yes  |  |
 | uid | String |  no  |  |
 | sellerIdentifier | String |  no  |  |

---


 
 
 #### [StoreAddress](#StoreAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String |  no  |  |
 | updatedAt | String |  no  |  |
 | addressType | String |  no  |  |
 | landmark | String? |  yes  |  |
 | address1 | String |  no  |  |
 | latitude | Double |  no  |  |
 | version | String? |  yes  |  |
 | email | String? |  yes  |  |
 | phone | String |  no  |  |
 | longitude | Double |  no  |  |
 | state | String |  no  |  |
 | address2 | String? |  yes  |  |
 | contactPerson | String |  no  |  |
 | city | String |  no  |  |
 | createdAt | String |  no  |  |
 | countryCode | String |  no  |  |
 | area | String? |  yes  |  |
 | addressCategory | String |  no  |  |
 | pincode | Int |  no  |  |

---


 
 
 #### [EInvoicePortalDetails](#EInvoicePortalDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | String? |  yes  |  |
 | username | String? |  yes  |  |
 | password | String? |  yes  |  |

---


 
 
 #### [StoreEinvoice](#StoreEinvoice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | String? |  yes  |  |
 | username | String? |  yes  |  |
 | password | String? |  yes  |  |
 | enabled | Bool |  no  |  |

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
 | url | String? |  yes  |  |
 | verified | Bool |  no  |  |
 | dsType | String |  no  |  |
 | legalName | String |  no  |  |
 | value | String |  no  |  |

---


 
 
 #### [StoreDocuments](#StoreDocuments)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gst | [Document](#Document)? |  yes  |  |

---


 
 
 #### [StoreMeta](#StoreMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | einvoicePortalDetails | [EInvoicePortalDetails](#EInvoicePortalDetails)? |  yes  |  |
 | gstCredentials | [StoreGstCredentials](#StoreGstCredentials) |  no  |  |
 | ewaybillPortalDetails | [String: Any]? |  yes  |  |
 | additionalContactDetails | [String: Any]? |  yes  |  |
 | documents | [StoreDocuments](#StoreDocuments)? |  yes  |  |
 | gstNumber | String? |  yes  |  |
 | displayName | String |  no  |  |
 | timing | [[String: Any]]? |  yes  |  |
 | notificationEmails | [String]? |  yes  |  |
 | productReturnConfig | [String: Any]? |  yes  |  |
 | stage | String |  no  |  |

---


 
 
 #### [Store](#Store)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeEmail | String |  no  |  |
 | mallName | String? |  yes  |  |
 | country | String |  no  |  |
 | name | String |  no  |  |
 | brandId | [String: Any]? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | brandStoreTags | [String]? |  yes  |  |
 | address1 | String |  no  |  |
 | fulfillmentChannel | String |  no  |  |
 | alohomoraUserId | Int? |  yes  |  |
 | latitude | Double |  no  |  |
 | vatNo | String? |  yes  |  |
 | loginUsername | String |  no  |  |
 | isEnabledForRecon | Bool? |  yes  |  |
 | locationType | String |  no  |  |
 | packagingMaterialCount | Int? |  yes  |  |
 | storeAddressJson | [StoreAddress](#StoreAddress)? |  yes  |  |
 | mallArea | String? |  yes  |  |
 | meta | [StoreMeta](#StoreMeta) |  no  |  |
 | sId | String |  no  |  |
 | companyId | Int |  no  |  |
 | parentStoreId | Int? |  yes  |  |
 | phone | Int |  no  |  |
 | code | String? |  yes  |  |
 | longitude | Double |  no  |  |
 | isArchived | Bool? |  yes  |  |
 | state | String |  no  |  |
 | address2 | String? |  yes  |  |
 | orderIntegrationId | String? |  yes  |  |
 | contactPerson | String |  no  |  |
 | city | String |  no  |  |
 | createdAt | String |  no  |  |
 | pincode | String |  no  |  |
 | storeActiveFrom | String? |  yes  |  |

---


 
 
 #### [BagReturnableCancelableStatus](#BagReturnableCancelableStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | canBeCancelled | Bool |  no  |  |
 | enableTracking | Bool |  no  |  |
 | isCustomerReturnAllowed | Bool |  no  |  |
 | isReturnable | Bool |  no  |  |
 | isActive | Bool |  no  |  |

---


 
 
 #### [Dates](#Dates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderCreated | String? |  yes  |  |
 | deliveryDate | [String: Any]? |  yes  |  |

---


 
 
 #### [ArticleDetails](#ArticleDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | [String: Any]? |  yes  |  |

---


 
 
 #### [BagDetailsPlatformResponse](#BagDetailsPlatformResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | item | [Item](#Item) |  no  |  |
 | journeyType | String |  no  |  |
 | tags | [String]? |  yes  |  |
 | bagStatus | [[BagStatusHistory](#BagStatusHistory)] |  no  |  |
 | bId | Int |  no  |  |
 | restorePromos | [String: Any]? |  yes  |  |
 | noOfBagsOrder | Int? |  yes  |  |
 | gstDetails | [BagGSTDetails](#BagGSTDetails) |  no  |  |
 | brand | [Brand](#Brand) |  no  |  |
 | bagUpdateTime | Double? |  yes  |  |
 | entityType | String? |  yes  |  |
 | bagStatusHistory | [BagStatusHistory](#BagStatusHistory)? |  yes  |  |
 | affiliateBagDetails | [AffiliateBagDetails](#AffiliateBagDetails) |  no  |  |
 | displayName | String? |  yes  |  |
 | financialBreakup | [[FinancialBreakup](#FinancialBreakup)] |  no  |  |
 | currentOperationalStatus | [BagStatusHistory](#BagStatusHistory) |  no  |  |
 | meta | [BagMeta](#BagMeta)? |  yes  |  |
 | bType | String? |  yes  |  |
 | prices | [Prices](#Prices) |  no  |  |
 | qcRequired | [String: Any]? |  yes  |  |
 | article | [Article](#Article) |  no  |  |
 | orderingStore | [Store](#Store)? |  yes  |  |
 | status | [BagReturnableCancelableStatus](#BagReturnableCancelableStatus) |  no  |  |
 | shipmentId | String? |  yes  |  |
 | dates | [Dates](#Dates)? |  yes  |  |
 | operationalStatus | String? |  yes  |  |
 | restoreCoupon | Bool? |  yes  |  |
 | identifier | String? |  yes  |  |
 | orderIntegrationId | String? |  yes  |  |
 | originalBagList | [Int]? |  yes  |  |
 | sellerIdentifier | String? |  yes  |  |
 | articleDetails | [ArticleDetails](#ArticleDetails)? |  yes  |  |
 | quantity | Double? |  yes  |  |
 | currentStatus | [BagStatusHistory](#BagStatusHistory) |  no  |  |
 | reasons | [[String: Any]]? |  yes  |  |
 | parentPromoBags | [String: Any]? |  yes  |  |
 | lineNumber | Int? |  yes  |  |
 | appliedPromos | [[String: Any]]? |  yes  |  |
 | affiliateDetails | [AffiliateDetails](#AffiliateDetails)? |  yes  |  |

---


 
 
 #### [ErrorResponse](#ErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |
 | error | String |  no  |  |

---


 
 
 #### [Page1](#Page1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pageType | String |  no  |  |
 | hasNext | Bool |  no  |  |
 | itemTotal | Int |  no  |  |
 | size | Int |  no  |  |
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
 | affiliateBagIds | [String]? |  yes  | Affiliate Bag Ids to clear cache of shipment Ids mapped to it |
 | bagIds | [String]? |  yes  | Bag Ids to clear cache of shipment Ids mapped to it |
 | shipmentIds | [String]? |  yes  | Shipment Ids to clear cache |

---


 
 
 #### [InvalidateShipmentCacheNestedResponse](#InvalidateShipmentCacheNestedResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | Int? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | message | String? |  yes  |  |
 | error | String? |  yes  |  |

---


 
 
 #### [InvalidateShipmentCacheResponse](#InvalidateShipmentCacheResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | response | [[InvalidateShipmentCacheNestedResponse](#InvalidateShipmentCacheNestedResponse)]? |  yes  |  |

---


 
 
 #### [ErrorResponse1](#ErrorResponse1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | errorTrace | String? |  yes  |  |
 | success | Bool? |  yes  |  |
 | status | Int? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [StoreReassign](#StoreReassign)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeId | Int |  no  |  |
 | mongoArticleId | String? |  yes  |  |
 | affiliateOrderId | String? |  yes  |  |
 | reasonIds | [Int]? |  yes  |  |
 | fyndOrderId | String? |  yes  |  |
 | affiliateId | String? |  yes  |  |
 | itemId | String? |  yes  |  |
 | setId | String? |  yes  |  |
 | affiliateBagId | String? |  yes  |  |
 | bagId | Int? |  yes  |  |

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
 | reasonText | String |  no  | Reason For Shipment/Bag Action |
 | affiliateShipmentId | String? |  yes  | Application/Affiliate Shipment ID, Required if the ID is missing |
 | affiliateOrderId | String? |  yes  | Application/Affiliate Order ID, Required if the ID is missing |
 | id | String? |  yes  | Shipment ID if 'entity_type': shipments | Bag Id if 'entity_type': bags |
 | affiliateId | String? |  yes  | Application/Affiliate ID, Required if the ID is missing |
 | affiliateBagId | String? |  yes  | Application/Affiliate Bag ID, Required if the ID is missing |

---


 
 
 #### [UpdateShipmentLockPayload](#UpdateShipmentLockPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | action | String |  no  | Expected Actions: [lock, unlock, check] |
 | entities | [[Entities](#Entities)] |  no  | Shipment/Entity |
 | actionType | String |  no  | Expected action_type: [complete, operational, financial] |
 | entityType | String |  no  | Expected entity_type: [bags, shipments] |

---


 
 
 #### [Bags](#Bags)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateBagId | String? |  yes  | Application/Affiliate Bag ID, Required if the ID is missing |
 | isLocked | Bool? |  yes  | Is Bag Locked |
 | affiliateOrderId | String? |  yes  | Application/Affiliate Order ID, Required if the ID is missing |
 | bagId | Int? |  yes  | Bag Id |

---


 
 
 #### [OriginalFilter](#OriginalFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateId | String? |  yes  | Affiliate ID |
 | affiliateShipmentId | String? |  yes  | Affiliate Shipment ID |

---


 
 
 #### [CheckResponse](#CheckResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lockStatus | String? |  yes  | Lock Status: Expected lock_status: [complete, operational, financial] |
 | bags | [[Bags](#Bags)]? |  yes  |  |
 | isShipmentLocked | Bool? |  yes  | Is Shipment Locked |
 | affiliateShipmentId | String? |  yes  | Affiliate Shipment ID |
 | status | String? |  yes  | Status |
 | isBagLocked | Bool? |  yes  | Is Bag Locked |
 | affiliateId | String? |  yes  | Affiliate ID |
 | shipmentId | String? |  yes  | Shipment ID |
 | originalFilter | [OriginalFilter](#OriginalFilter)? |  yes  | Filter |

---


 
 
 #### [UpdateShipmentLockResponse](#UpdateShipmentLockResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |
 | checkResponse | [[CheckResponse](#CheckResponse)]? |  yes  | Entity Lock Status, If the action input as 'check' |

---


 
 
 #### [AnnouncementResponse](#AnnouncementResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fromDatetime | String? |  yes  |  |
 | description | String? |  yes  |  |
 | logoUrl | String? |  yes  |  |
 | platformId | String? |  yes  |  |
 | id | Int |  no  |  |
 | toDatetime | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | title | String? |  yes  |  |
 | platformName | String? |  yes  |  |

---


 
 
 #### [AnnouncementsResponse](#AnnouncementsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | announcements | [[AnnouncementResponse](#AnnouncementResponse)]? |  yes  |  |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [BaseResponse](#BaseResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [Click2CallResponse](#Click2CallResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  | Success |
 | callId | String |  no  | Call ID from the provider |

---


 
 
 #### [ErrorDetail](#ErrorDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [EntityReasonData](#EntityReasonData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasonId | Int? |  yes  |  |
 | reasonText | String? |  yes  |  |

---


 
 
 #### [EntitiesReasons](#EntitiesReasons)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [EntityReasonData](#EntityReasonData)? |  yes  |  |
 | filters | [[String: Any]]? |  yes  |  |

---


 
 
 #### [ProductsReasonsData](#ProductsReasonsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasonId | Int? |  yes  |  |
 | reasonText | String? |  yes  |  |

---


 
 
 #### [ProductsReasonsFilters](#ProductsReasonsFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lineNumber | Int? |  yes  | Product/Bag Line number for the Product/Bag Identifier |
 | identifier | String? |  yes  | Product/Bag Article/Item Identifier |
 | quantity | Int? |  yes  |  |

---


 
 
 #### [ProductsReasons](#ProductsReasons)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [ProductsReasonsData](#ProductsReasonsData)? |  yes  |  |
 | filters | [[ProductsReasonsFilters](#ProductsReasonsFilters)]? |  yes  |  |

---


 
 
 #### [ReasonsData](#ReasonsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | entities | [[EntitiesReasons](#EntitiesReasons)]? |  yes  |  |
 | products | [[ProductsReasons](#ProductsReasons)]? |  yes  |  |

---


 
 
 #### [Products](#Products)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lineNumber | Int? |  yes  | Product/Bag Line number for the Product/Bag Identifier |
 | identifier | String? |  yes  | Product/Bag Article/Item Identifier |
 | quantity | Int? |  yes  |  |

---


 
 
 #### [EntitiesDataUpdates](#EntitiesDataUpdates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [String: Any]? |  yes  |  |
 | filters | [[String: Any]]? |  yes  |  |

---


 
 
 #### [ProductsDataUpdatesFilters](#ProductsDataUpdatesFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lineNumber | Int? |  yes  | Product/Bag Line number for the Product/Bag Identifier |
 | identifier | String? |  yes  | Product/Bag Article/Item Identifier |

---


 
 
 #### [ProductsDataUpdates](#ProductsDataUpdates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [String: Any]? |  yes  |  |
 | filters | [[ProductsDataUpdatesFilters](#ProductsDataUpdatesFilters)]? |  yes  | Filter for the Product/Bag |

---


 
 
 #### [DataUpdates](#DataUpdates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | entities | [[EntitiesDataUpdates](#EntitiesDataUpdates)]? |  yes  |  |
 | products | [[ProductsDataUpdates](#ProductsDataUpdates)]? |  yes  |  |

---


 
 
 #### [ShipmentsRequest](#ShipmentsRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | identifier | String |  no  | Shipment ID |
 | reasons | [ReasonsData](#ReasonsData)? |  yes  |  |
 | products | [[Products](#Products)]? |  yes  | Product/Bag to be updated |
 | dataUpdates | [DataUpdates](#DataUpdates)? |  yes  |  |

---


 
 
 #### [StatuesRequest](#StatuesRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  |  |
 | shipments | [[ShipmentsRequest](#ShipmentsRequest)]? |  yes  |  |
 | excludeBagsNextState | String? |  yes  | State to be change for Remaining Bag/Products |

---


 
 
 #### [UpdateShipmentStatusRequest](#UpdateShipmentStatusRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lockAfterTransition | Bool? |  yes  | Lock Shipment After Transition |
 | statuses | [[StatuesRequest](#StatuesRequest)]? |  yes  |  |
 | unlockBeforeTransition | Bool? |  yes  | Unlock Shipment After Transition |
 | task | Bool? |  yes  | To Run Status Update as a background Task |
 | forceTransition | Bool? |  yes  | Force Transition |

---


 
 
 #### [ShipmentsResponse](#ShipmentsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | identifier | String? |  yes  |  |
 | message | String? |  yes  |  |
 | stackTrace | String? |  yes  |  |
 | finalState | [String: Any]? |  yes  |  |
 | status | Int? |  yes  |  |
 | exception | String? |  yes  |  |
 | code | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

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


 
 
 #### [AffiliateInventoryConfig](#AffiliateInventoryConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logistics | [AffiliateInventoryLogisticsConfig](#AffiliateInventoryLogisticsConfig)? |  yes  |  |
 | order | [AffiliateInventoryOrderConfig](#AffiliateInventoryOrderConfig)? |  yes  |  |
 | inventory | [AffiliateInventoryStoreConfig](#AffiliateInventoryStoreConfig)? |  yes  |  |
 | payment | [AffiliateInventoryPaymentConfig](#AffiliateInventoryPaymentConfig)? |  yes  |  |
 | articleAssignment | [AffiliateInventoryArticleAssignmentConfig](#AffiliateInventoryArticleAssignmentConfig)? |  yes  |  |

---


 
 
 #### [AffiliateAppConfigMeta](#AffiliateAppConfigMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | value | String |  no  |  |

---


 
 
 #### [AffiliateAppConfig](#AffiliateAppConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | owner | String |  no  |  |
 | description | String? |  yes  |  |
 | token | String |  no  |  |
 | name | String |  no  |  |
 | id | String |  no  |  |
 | secret | String |  no  |  |
 | updatedAt | String |  no  |  |
 | createdAt | String |  no  |  |
 | meta | [[AffiliateAppConfigMeta](#AffiliateAppConfigMeta)]? |  yes  |  |

---


 
 
 #### [AffiliateConfig](#AffiliateConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | inventory | [AffiliateInventoryConfig](#AffiliateInventoryConfig)? |  yes  |  |
 | app | [AffiliateAppConfig](#AffiliateAppConfig)? |  yes  |  |

---


 
 
 #### [Affiliate](#Affiliate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | config | [AffiliateConfig](#AffiliateConfig)? |  yes  |  |
 | token | String |  no  |  |
 | id | String |  no  |  |

---


 
 
 #### [AffiliateStoreIdMapping](#AffiliateStoreIdMapping)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marketplaceStoreId | String |  no  |  |
 | storeId | Int |  no  |  |

---


 
 
 #### [OrderConfig](#OrderConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | articleLookup | String? |  yes  |  |
 | createUser | Bool? |  yes  |  |
 | bagEndState | String? |  yes  |  |
 | affiliate | [Affiliate](#Affiliate) |  no  |  |
 | storeLookup | String? |  yes  |  |
 | affiliateStoreIdMapping | [[AffiliateStoreIdMapping](#AffiliateStoreIdMapping)] |  no  |  |

---


 
 
 #### [MarketPlacePdf](#MarketPlacePdf)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | label | String? |  yes  |  |
 | invoice | String? |  yes  |  |

---


 
 
 #### [AffiliateBag](#AffiliateBag)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sku | String |  no  |  |
 | itemSize | String |  no  |  |
 | unitPrice | Double |  no  |  |
 | affiliateMeta | [String: Any] |  no  |  |
 | amountPaid | Double |  no  |  |
 | hsnCodeId | String |  no  |  |
 | deliveryCharge | Double |  no  |  |
 | transferPrice | Int |  no  |  |
 | itemId | Int |  no  |  |
 | pdfLinks | [MarketPlacePdf](#MarketPlacePdf)? |  yes  |  |
 | storeId | Int |  no  |  |
 | identifier | [String: Any] |  no  |  |
 | fyndStoreId | String |  no  |  |
 | modifiedOn | String |  no  |  |
 | sellerIdentifier | String |  no  |  |
 | priceMarked | Double |  no  |  |
 | id | String |  no  |  |
 | discount | Double |  no  |  |
 | priceEffective | Double |  no  |  |
 | quantity | Int |  no  |  |
 | avlQty | Int |  no  |  |
 | companyId | Int |  no  |  |
 | affiliateStoreId | String |  no  |  |

---


 
 
 #### [ArticleDetails1](#ArticleDetails1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | weight | [String: Any] |  no  |  |
 | dimension | [String: Any] |  no  |  |
 | category | [String: Any] |  no  |  |
 | attributes | [String: Any] |  no  |  |
 | brandId | Int |  no  |  |
 | quantity | Int |  no  |  |
 | id | String |  no  |  |

---


 
 
 #### [ShipmentDetails](#ShipmentDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipments | Int |  no  |  |
 | affiliateShipmentId | String |  no  |  |
 | fulfillmentId | Int |  no  |  |
 | articles | [[ArticleDetails1](#ArticleDetails1)] |  no  |  |
 | meta | [String: Any]? |  yes  |  |
 | boxType | String? |  yes  |  |
 | dpId | Int? |  yes  |  |

---


 
 
 #### [LocationDetails](#LocationDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fulfillmentId | Int |  no  |  |
 | fulfillmentType | String |  no  |  |
 | articles | [[ArticleDetails1](#ArticleDetails1)] |  no  |  |

---


 
 
 #### [ShipmentConfig](#ShipmentConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | source | String |  no  |  |
 | identifier | String |  no  |  |
 | paymentMode | String |  no  |  |
 | shipment | [[ShipmentDetails](#ShipmentDetails)] |  no  |  |
 | journey | String |  no  |  |
 | toPincode | String |  no  |  |
 | locationDetails | [LocationDetails](#LocationDetails)? |  yes  |  |
 | action | String |  no  |  |

---


 
 
 #### [ShipmentData](#ShipmentData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentData | [ShipmentConfig](#ShipmentConfig) |  no  |  |

---


 
 
 #### [OrderUser](#OrderUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | Int |  no  |  |
 | address2 | String? |  yes  |  |
 | city | String |  no  |  |
 | email | String |  no  |  |
 | state | String |  no  |  |
 | firstName | String |  no  |  |
 | mobile | Int |  no  |  |
 | lastName | String |  no  |  |
 | country | String |  no  |  |
 | pincode | String |  no  |  |
 | address1 | String? |  yes  |  |

---


 
 
 #### [UserData](#UserData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | billingUser | [OrderUser](#OrderUser)? |  yes  |  |
 | shippingUser | [OrderUser](#OrderUser)? |  yes  |  |

---


 
 
 #### [OrderPriority](#OrderPriority)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliatePriorityCode | String? |  yes  |  |
 | fulfilmentPriorityText | String? |  yes  |  |
 | fulfilmentPriority | Int? |  yes  |  |

---


 
 
 #### [OrderInfo](#OrderInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bags | [[AffiliateBag](#AffiliateBag)] |  no  |  |
 | paymentMode | String |  no  |  |
 | shipment | [ShipmentData](#ShipmentData)? |  yes  |  |
 | coupon | String? |  yes  |  |
 | orderValue | Double |  no  |  |
 | affiliateOrderId | String? |  yes  |  |
 | shippingAddress | [OrderUser](#OrderUser) |  no  |  |
 | payment | [String: Any]? |  yes  |  |
 | user | [UserData](#UserData) |  no  |  |
 | items | [String: Any] |  no  |  |
 | orderPriority | [OrderPriority](#OrderPriority)? |  yes  |  |
 | discount | Double |  no  |  |
 | codCharges | Double |  no  |  |
 | billingAddress | [OrderUser](#OrderUser) |  no  |  |
 | deliveryCharges | Double |  no  |  |

---


 
 
 #### [CreateOrderPayload](#CreateOrderPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateId | String |  no  |  |
 | orderConfig | [OrderConfig](#OrderConfig) |  no  |  |
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
 | description | String |  no  |  |
 | displayText | String |  no  |  |
 | id | Int |  no  |  |
 | slug | String |  no  |  |

---


 
 
 #### [GetActionsResponse](#GetActionsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | permissions | [ActionInfo](#ActionInfo) |  no  |  |

---


 
 
 #### [HistoryDict](#HistoryDict)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ticketUrl | String? |  yes  | Ticket URL |
 | assignedAgent | String? |  yes  | Assigned Agent |
 | l2Detail | String? |  yes  | L2 details of bag |
 | message | String |  no  | History Message or comment |
 | user | String |  no  | User who created the history |
 | type | String |  no  | type of history, Expected Values:             [ activity_status, activity_escalation, activity_comment, outbound_notification, outbound_voice ] |
 | displayMessage | String? |  yes  | Display Message |
 | l3Detail | String? |  yes  | L3 details of bag |
 | ticketId | String? |  yes  | Ticket ID |
 | l1Detail | String? |  yes  | L1 details of bag |
 | createdat | String |  no  | Create date |
 | meta | [String: Any]? |  yes  | meta |
 | bagId | Int? |  yes  | Bag ID |

---


 
 
 #### [ShipmentHistoryResponse](#ShipmentHistoryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | activityHistory | [[HistoryDict](#HistoryDict)] |  no  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [PostHistoryData](#PostHistoryData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |
 | userName | String |  no  |  |

---


 
 
 #### [PostHistoryFilters](#PostHistoryFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lineNumber | String? |  yes  |  |
 | identifier | String? |  yes  |  |
 | shipmentId | String |  no  |  |

---


 
 
 #### [PostActivityHistory](#PostActivityHistory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [PostHistoryData](#PostHistoryData) |  no  |  |
 | filters | [[PostHistoryFilters](#PostHistoryFilters)] |  no  |  |

---


 
 
 #### [PostHistoryDict](#PostHistoryDict)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | activityHistory | [PostActivityHistory](#PostActivityHistory) |  no  |  |

---


 
 
 #### [PostShipmentHistory](#PostShipmentHistory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | activityHistory | [[PostHistoryDict](#PostHistoryDict)]? |  yes  |  |

---


 
 
 #### [SmsDataPayload](#SmsDataPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderId | String |  no  | orderId |
 | message | String |  no  | message to be send in SMS |
 | paymentMode | String? |  yes  | Data mapped in Communication template: payment_mode |
 | phoneNumber | Int |  no  | phone number for communication |
 | amountPaid | Int? |  yes  | Data mapped in Communication template: amount_paid |
 | shipmentId | Int |  no  | ShipmentId |
 | customerName | String? |  yes  | Data mapped in Communication template: customer_name |
 | countryCode | String |  no  | country code for SMS |
 | brandName | String? |  yes  | Data mapped in Communication template: brand_name |

---


 
 
 #### [SendSmsPayload](#SendSmsPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [SmsDataPayload](#SmsDataPayload)? |  yes  | SMS Data |
 | slug | String |  no  | slug name for the template mapped in pointblank |
 | bagId | Int |  no  | bag_id for the activity history track |

---


 
 
 #### [Meta1](#Meta1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | kafkaEmissionStatus | Int? |  yes  |  |
 | stateManagerUsed | String? |  yes  |  |

---


 
 
 #### [ShipmentDetail](#ShipmentDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  |  |
 | id | Int |  no  |  |
 | bagList | [Int]? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | remarks | String? |  yes  |  |
 | meta | [Meta1](#Meta1) |  no  |  |

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


 
 
 #### [PaymentMethod](#PaymentMethod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | collectBy | String |  no  |  |
 | amount | Double |  no  |  |
 | name | String |  no  |  |
 | transactionData | [String: Any]? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | mode | String |  no  |  |
 | refundBy | String |  no  |  |

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
 | confirmByDate | String? |  yes  |  |
 | dispatchByDate | String? |  yes  |  |
 | packByDate | String? |  yes  |  |
 | customerPickupSlot | [String: Any]? |  yes  |  |
 | dispatchAfterDate | String? |  yes  |  |

---


 
 
 #### [Tax](#Tax)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | [String: Any] |  no  |  |
 | rate | Double |  no  |  |
 | breakup | [[String: Any]]? |  yes  |  |
 | name | String |  no  |  |

---


 
 
 #### [Charge](#Charge)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | code | String? |  yes  |  |
 | tax | [Tax](#Tax)? |  yes  |  |
 | type | String |  no  |  |
 | amount | [String: Any] |  no  |  |

---


 
 
 #### [LineItem](#LineItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sellerIdentifier | String |  no  |  |
 | externalLineId | String? |  yes  |  |
 | customMessasge | String? |  yes  |  |
 | charges | [[Charge](#Charge)]? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [Shipment](#Shipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | processingDates | [ProcessingDates](#ProcessingDates)? |  yes  |  |
 | priority | Int? |  yes  |  |
 | externalShipmentId | String? |  yes  |  |
 | locationId | Int |  no  |  |
 | lineItems | [[LineItem](#LineItem)] |  no  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [TaxInfo](#TaxInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstin | String? |  yes  |  |
 | b2BGstinNumber | String? |  yes  |  |

---


 
 
 #### [BillingInfo](#BillingInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customerCode | String? |  yes  |  |
 | middleName | String? |  yes  |  |
 | floorNo | String? |  yes  |  |
 | state | String |  no  |  |
 | firstName | String |  no  |  |
 | countryCode | String? |  yes  |  |
 | country | String |  no  |  |
 | title | String? |  yes  |  |
 | externalCustomerCode | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | houseNo | String? |  yes  |  |
 | primaryMobileNumber | String |  no  |  |
 | primaryEmail | String |  no  |  |
 | address1 | String |  no  |  |
 | alternateMobileNumber | String? |  yes  |  |
 | stateCode | String? |  yes  |  |
 | alternateEmail | String? |  yes  |  |
 | gender | String? |  yes  |  |
 | city | String |  no  |  |
 | lastName | String? |  yes  |  |
 | pincode | String |  no  |  |

---


 
 
 #### [ShippingInfo](#ShippingInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customerCode | String? |  yes  |  |
 | middleName | String? |  yes  |  |
 | floorNo | String? |  yes  |  |
 | state | String |  no  |  |
 | firstName | String |  no  |  |
 | addressType | String? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | country | String |  no  |  |
 | title | String? |  yes  |  |
 | externalCustomerCode | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | houseNo | String? |  yes  |  |
 | landmark | String? |  yes  |  |
 | primaryMobileNumber | String |  no  |  |
 | primaryEmail | String |  no  |  |
 | slot | [[String: Any]]? |  yes  |  |
 | address1 | String |  no  |  |
 | stateCode | String? |  yes  |  |
 | alternateMobileNumber | String? |  yes  |  |
 | alternateEmail | String? |  yes  |  |
 | gender | String? |  yes  |  |
 | shippingType | String? |  yes  |  |
 | city | String |  no  |  |
 | geoLocation | [String: Any]? |  yes  |  |
 | lastName | String? |  yes  |  |
 | pincode | String |  no  |  |

---


 
 
 #### [CreateOrderAPI](#CreateOrderAPI)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentInfo | [PaymentInfo](#PaymentInfo) |  no  |  |
 | shipments | [[Shipment](#Shipment)] |  no  |  |
 | externalOrderId | String? |  yes  |  |
 | config | [String: Any]? |  yes  |  |
 | taxInfo | [TaxInfo](#TaxInfo)? |  yes  |  |
 | charges | [[Charge](#Charge)]? |  yes  |  |
 | currencyInfo | [String: Any]? |  yes  |  |
 | billingInfo | [BillingInfo](#BillingInfo) |  no  |  |
 | shippingInfo | [ShippingInfo](#ShippingInfo) |  no  |  |
 | externalCreationDate | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [CreateOrderErrorReponse](#CreateOrderErrorReponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | requestId | String? |  yes  |  |
 | message | String |  no  |  |
 | stackTrace | String? |  yes  |  |
 | status | Int |  no  |  |
 | exception | String? |  yes  |  |
 | code | String? |  yes  |  |
 | info | [String: Any]? |  yes  |  |
 | meta | String? |  yes  |  |

---


 
 
 #### [PaymentMethods](#PaymentMethods)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mode | String? |  yes  |  |
 | collectBy | String? |  yes  |  |
 | refundBy | String? |  yes  |  |

---


 
 
 #### [CreateChannelPaymentInfo](#CreateChannelPaymentInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | source | String? |  yes  |  |
 | paymentMethods | [[PaymentMethods](#PaymentMethods)]? |  yes  |  |
 | modeOfPayment | String? |  yes  |  |

---


 
 
 #### [DpConfiguration](#DpConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shippingBy | String? |  yes  |  |

---


 
 
 #### [CreateChannelConfig](#CreateChannelConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentInfo | [CreateChannelPaymentInfo](#CreateChannelPaymentInfo)? |  yes  |  |
 | lockStates | [String]? |  yes  |  |
 | dpConfiguration | [DpConfiguration](#DpConfiguration)? |  yes  |  |
 | logoUrl | [String: Any]? |  yes  |  |
 | shipmentAssignment | String? |  yes  |  |
 | locationReassignment | Bool? |  yes  |  |

---


 
 
 #### [CreateChannelConfigData](#CreateChannelConfigData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | configData | [CreateChannelConfig](#CreateChannelConfig)? |  yes  |  |

---


 
 
 #### [CreateChannelConifgErrorResponse](#CreateChannelConifgErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | String? |  yes  |  |

---


 
 
 #### [CreateChannelConfigResponse](#CreateChannelConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isUpserted | Bool? |  yes  |  |
 | acknowledged | Bool? |  yes  |  |
 | isInserted | Bool? |  yes  |  |

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
 | mobile | Int |  no  |  |
 | startDate | String |  no  |  |
 | endDate | String |  no  |  |
 | orderDetails | [[FyndOrderIdList](#FyndOrderIdList)]? |  yes  |  |

---


 
 
 #### [BagStateTransitionMap](#BagStateTransitionMap)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliate | [String: Any]? |  yes  |  |
 | fynd | [String: Any]? |  yes  |  |

---



