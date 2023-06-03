



##### [Back to Platform docs](./README.md)

## Order Methods
Handles all platform order and shipment api(s)
* [getShipments](#getshipments)
* [getShipmentById](#getshipmentbyid)
* [getAssetByShipmentIds](#getassetbyshipmentids)
* [getOrderById](#getorderbyid)
* [getLaneConfig](#getlaneconfig)
* [getApplicationShipments](#getapplicationshipments)
* [getOrders](#getorders)
* [getMetricCount](#getmetriccount)
* [getAppOrderShipmentDetails](#getappordershipmentdetails)
* [trackShipmentPlatform](#trackshipmentplatform)
* [getfilters](#getfilters)
* [createShipmentReport](#createshipmentreport)
* [getReportsShipmentListing](#getreportsshipmentlisting)
* [upsertJioCode](#upsertjiocode)
* [getBulkShipmentExcelFile](#getbulkshipmentexcelfile)
* [getBulkActionTemplate](#getbulkactiontemplate)
* [downloadBulkActionTemplate](#downloadbulkactiontemplate)
* [getShipmentReasons](#getshipmentreasons)
* [getBagById](#getbagbyid)
* [getBags](#getbags)
* [generatePOSReceiptByOrderId](#generateposreceiptbyorderid)
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
* [fetchCreditBalanceDetail](#fetchcreditbalancedetail)
* [fetchRefundModeConfig](#fetchrefundmodeconfig)
* [attachOrderUser](#attachorderuser)
* [sendUserMobileOTP](#sendusermobileotp)
* [verifyMobileOTP](#verifymobileotp)



## Methods with example and description


#### getShipments





```swift
platformClient.order.getShipments(lane: lane, bagStatus: bagStatus, statusOverrideLane: statusOverrideLane, timeToDispatch: timeToDispatch, searchType: searchType, searchValue: searchValue, searchId: searchId, fromDate: fromDate, toDate: toDate, dpIds: dpIds, orderingCompanyId: orderingCompanyId, stores: stores, salesChannels: salesChannels, requestByExt: requestByExt, pageNo: pageNo, pageSize: pageSize, isPrioritySort: isPrioritySort, fetchActiveShipment: fetchActiveShipment, excludeLockedShipments: excludeLockedShipments, paymentMethods: paymentMethods, channelShipmentId: channelShipmentId, channelOrderId: channelOrderId, customMeta: customMeta, orderingChannel: orderingChannel, companyAffiliateTag: companyAffiliateTag) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| lane | String? | no |  |   
| bagStatus | String? | no |  |   
| statusOverrideLane | Bool? | no |  |   
| timeToDispatch | String? | no |  |   
| searchType | String? | no |  |   
| searchValue | String? | no |  |   
| searchId | String? | no |  |   
| fromDate | String? | no |  |   
| toDate | String? | no |  |   
| dpIds | String? | no |  |   
| orderingCompanyId | String? | no |  |   
| stores | String? | no |  |   
| salesChannels | String? | no |  |   
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


#### getAssetByShipmentIds
Get Invoice or Label or Pos of a shipment




```swift
platformClient.order.getAssetByShipmentIds(shipmentIds: shipmentIds, invoice: invoice, expiresIn: expiresIn) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentIds | String | yes |  |   
| invoice | Bool? | no |  |   
| expiresIn | String? | no |  |  



Use this API to retrieve shipments invoice, label and pos.

*Returned Response:*




[ResponseGetAssetShipment](#ResponseGetAssetShipment)

Success. Check the example shown below or refer `ShipmentByIds` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

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




[OrderDetailsResponse](#OrderDetailsResponse)

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
platformClient.order.getLaneConfig(superLane: superLane, groupEntity: groupEntity, fromDate: fromDate, toDate: toDate, dpIds: dpIds, stores: stores, salesChannels: salesChannels, paymentMode: paymentMode, bagStatus: bagStatus, searchType: searchType, searchValue: searchValue, tags: tags, timeToDispatch: timeToDispatch, paymentMethods: paymentMethods) { (response, error) in
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
| salesChannels | String? | no |  |   
| paymentMode | String? | no |  |   
| bagStatus | String? | no |  |   
| searchType | String? | no |  |   
| searchValue | String? | no |  |   
| tags | String? | no |  |   
| timeToDispatch | String? | no |  |   
| paymentMethods | String? | no |  |  





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
platformClient.order.getOrders(lane: lane, searchType: searchType, bagStatus: bagStatus, timeToDispatch: timeToDispatch, paymentMethods: paymentMethods, tags: tags, searchValue: searchValue, fromDate: fromDate, toDate: toDate, dpIds: dpIds, pageNo: pageNo, pageSize: pageSize, isPrioritySort: isPrioritySort, customMeta: customMeta) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| lane | String? | no | lane refers to a section where orders are assigned, indicating its grouping |   
| searchType | String? | no | search_type refers to the specific field that will be used as the target for the search operation |   
| bagStatus | String? | no | bag_status refers to status of the entity. Filters orders based on the status. |   
| timeToDispatch | String? | no | time_to_dispatch refers to estimated SLA time. |   
| paymentMethods | String? | no |  |   
| tags | String? | no | tags refers to additional descriptive labels associated with the order |   
| searchValue | String? | no | search_value is matched against the field specified by the search_type |   
| fromDate | String? | no |  |   
| toDate | String? | no |  |   
| dpIds | String? | no | Delivery Partner IDs to which shipments are assigned. |   
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




[OrderDetailsResponse](#OrderDetailsResponse)

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


#### trackShipmentPlatform
Track shipment




```swift
platformClient.application("<APPLICATION_ID>").order.trackShipmentPlatform(shipmentId: shipmentId) { (response, error) in
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
| view | String | yes | Name of View |   
| groupEntity | String? | no | Group Entity Name |  





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
          "placeholder_text": "Search by Shipment ID, Order ID or Customer Email",
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
          "text": "Bag ID",
          "value": "bag_id",
          "placeholder_text": "Search by Bag ID",
          "min_search_size": 4,
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
          "text": "External Order ID",
          "value": "external_order_id",
          "placeholder_text": "Search by External Order ID",
          "min_search_size": 6,
          "show_ui": true
        },
        {
          "text": "External Bag ID",
          "value": "external_bag_id",
          "placeholder_text": "Search by External Bag ID",
          "min_search_size": 6,
          "show_ui": true
        },
        {
          "text": "External Shipment ID",
          "value": "external_shipment_id",
          "placeholder_text": "Search by External Shipment ID",
          "min_search_size": 6,
          "show_ui": true
        },
        {
          "text": "Channel Shipment ID",
          "value": "channel_shipment_id",
          "placeholder_text": "Search by Channel Shipment ID",
          "min_search_size": 6,
          "show_ui": true
        },
        {
          "text": "Invoice",
          "value": "invoice_id",
          "placeholder_text": "Search by Invoice",
          "min_search_size": 5,
          "show_ui": true
        },
        {
          "text": "AWB",
          "value": "awb_no",
          "placeholder_text": "Search by AWB",
          "min_search_size": 10,
          "show_ui": true
        },
        {
          "text": "SKU",
          "value": "sku",
          "placeholder_text": "Search by SKU",
          "min_search_size": 3,
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
          "text": "ALU",
          "value": "alu",
          "placeholder_text": "Search by ALU",
          "min_search_size": 3,
          "show_ui": true
        },
        {
          "text": "UPC",
          "value": "upc",
          "placeholder_text": "Search by UPC",
          "min_search_size": 3,
          "show_ui": true
        },
        {
          "text": "Customer Registered Phone",
          "value": "registered_phone",
          "placeholder_text": "Search by Customer Registered Phone",
          "min_search_size": 3,
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
          "text": "Customer Phone",
          "value": "phone",
          "placeholder_text": "Search by Customer Phone",
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
          "text": "Return ID",
          "value": "return_id",
          "placeholder_text": "Search by Return ID",
          "min_search_size": 5,
          "show_ui": true
        }
      ]
    }
  ],
  "advance": {
    "Unfulfilled": [
      {
        "text": "Tags",
        "value": "tags",
        "type": "multi_select",
        "placeholder_text": "Select tags",
        "required": false,
        "options": []
      },
      {
        "text": "Sales Channel",
        "value": "sales_channels",
        "placeholder_text": "Select sales channels",
        "type": "multi_select",
        "required": false,
        "options": []
      },
      {
        "text": "Delivery Partner",
        "value": "dp_ids",
        "type": "multi_select",
        "placeholder_text": "Select delivery partners",
        "required": true,
        "options": []
      },
      {
        "text": "Shipment Status",
        "value": "bag_status",
        "type": "multi_select",
        "options": [
          {
            "text": "Assigning DP",
            "value": "assigning_dp"
          },
          {
            "text": "Packed",
            "value": "bag_packed"
          },
          {
            "text": "Invoiced",
            "value": "bag_invoiced"
          },
          {
            "text": "Cancelled At DP",
            "value": "cancelled_at_dp"
          },
          {
            "text": "Not Picked",
            "value": "bag_not_picked"
          },
          {
            "text": "Placed",
            "value": "placed"
          },
          {
            "text": "Verified",
            "value": "bag_verified"
          },
          {
            "text": "Store Reassigned",
            "value": "store_reassigned"
          },
          {
            "text": "DP Assigned",
            "value": "dp_assigned"
          },
          {
            "text": "Ready For DP Assignment",
            "value": "ready_for_dp_assignment"
          },
          {
            "text": "Out For Pickup",
            "value": "out_for_pickup"
          },
          {
            "text": "DP Not Assigned",
            "value": "dp_not_assigned"
          },
          {
            "text": "Confirmed",
            "value": "bag_confirmed"
          }
        ]
      },
      {
        "text": "Time to Dispatch",
        "value": "time_to_dispatch",
        "type": "single_select",
        "placeholder_text": "Select time to dispatch",
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
        "placeholder_text": "Select payment methods",
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
        "text": "Tags",
        "value": "tags",
        "type": "multi_select",
        "placeholder_text": "Select tags",
        "required": false,
        "options": []
      },
      {
        "text": "Sales Channel",
        "value": "sales_channels",
        "placeholder_text": "Select sales channels",
        "type": "multi_select",
        "required": false,
        "options": []
      },
      {
        "text": "Delivery Partner",
        "value": "dp_ids",
        "type": "multi_select",
        "placeholder_text": "Select delivery partners",
        "required": true,
        "options": []
      },
      {
        "text": "Shipment Status",
        "value": "bag_status",
        "type": "multi_select",
        "options": [
          {
            "text": "Delivered",
            "value": "delivery_done"
          },
          {
            "text": "Return Request Rejected",
            "value": "return_request_cancelled"
          },
          {
            "text": "Cancelled Operations",
            "value": "cancelled_operations"
          },
          {
            "text": "Out for Delivery",
            "value": "out_for_delivery"
          },
          {
            "text": "Delivery Attempt Failed",
            "value": "delivery_attempt_failed"
          },
          {
            "text": "Handed Over To DG",
            "value": "handed_over_to_dg"
          },
          {
            "text": "Handed Over To Customer",
            "value": "handed_over_to_customer"
          },
          {
            "text": "Cancelled Seller",
            "value": "cancelled_seller"
          },
          {
            "text": "Cancelled Customer",
            "value": "cancelled_customer"
          },
          {
            "text": "Rejected By Customer",
            "value": "rejected_by_customer"
          },
          {
            "text": "Return Requested",
            "value": "return_pre_qc"
          },
          {
            "text": "Refund Without Return",
            "value": "refund_without_return"
          },
          {
            "text": "Cancelled",
            "value": "cancelled_fynd"
          },
          {
            "text": "Lost",
            "value": "bag_lost"
          },
          {
            "text": "Picked",
            "value": "bag_picked"
          }
        ]
      },
      {
        "text": "Time to Dispatch",
        "value": "time_to_dispatch",
        "type": "single_select",
        "placeholder_text": "Select time to dispatch",
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
        "placeholder_text": "Select payment methods",
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
        "text": "Tags",
        "value": "tags",
        "type": "multi_select",
        "placeholder_text": "Select tags",
        "required": false,
        "options": []
      },
      {
        "text": "Sales Channel",
        "value": "sales_channels",
        "placeholder_text": "Select sales channels",
        "type": "multi_select",
        "required": false,
        "options": []
      },
      {
        "text": "Delivery Partner",
        "value": "dp_ids",
        "type": "multi_select",
        "placeholder_text": "Select delivery partners",
        "required": true,
        "options": []
      },
      {
        "text": "Shipment Status",
        "value": "bag_status",
        "type": "multi_select",
        "options": [
          {
            "text": "Rto In Transit",
            "value": "rto_in_transit"
          },
          {
            "text": "Return DP Out For Pickup",
            "value": "return_dp_out_for_pickup"
          },
          {
            "text": "Return Cancelled Failed At DP",
            "value": "return_cancelled_failed_at_dp"
          },
          {
            "text": "Return Lost",
            "value": "return_bag_lost"
          },
          {
            "text": "Credit Note Generated",
            "value": "credit_note_generated"
          },
          {
            "text": "Return Initiated",
            "value": "return_initiated"
          },
          {
            "text": "Return Packed",
            "value": "return_bag_packed"
          },
          {
            "text": "Rto Out For Delivery",
            "value": "rto_bag_out_for_delivery"
          },
          {
            "text": "Return Not Picked",
            "value": "return_bag_not_picked"
          },
          {
            "text": "Return Rejected By DP",
            "value": "return_rejected_by_dp"
          },
          {
            "text": "Assigning_return DP",
            "value": "assigning_return_dp"
          },
          {
            "text": "Return To Origin",
            "value": "return_to_origin"
          },
          {
            "text": "Return DP Assigned",
            "value": "return_dp_assigned"
          },
          {
            "text": "Return Delivered",
            "value": "return_bag_delivered"
          },
          {
            "text": "Return Out For Delivery",
            "value": "return_bag_out_for_delivery"
          },
          {
            "text": "Return DP Not Assigned",
            "value": "return_dp_not_assigned"
          },
          {
            "text": "Return Picked",
            "value": "return_bag_picked"
          },
          {
            "text": "Return Completed",
            "value": "return_completed"
          },
          {
            "text": "Return DP Cancelled",
            "value": "return_dp_cancelled"
          },
          {
            "text": "Rto Accepted",
            "value": "rto_bag_accepted"
          },
          {
            "text": "Return Cancelled At DP",
            "value": "return_cancelled_at_dp"
          },
          {
            "text": "Return Assigning DP",
            "value": "return_assigning_dp"
          },
          {
            "text": "Deadstock",
            "value": "deadstock"
          },
          {
            "text": "Rto Delivered",
            "value": "rto_bag_delivered"
          },
          {
            "text": "Rto Initiated",
            "value": "rto_initiated"
          },
          {
            "text": "Return In Transit",
            "value": "return_bag_in_transit"
          },
          {
            "text": "Return Not Delivered",
            "value": "return_bag_not_delivered"
          },
          {
            "text": "Return Accepted",
            "value": "return_accepted"
          }
        ]
      },
      {
        "text": "Time to Dispatch",
        "value": "time_to_dispatch",
        "type": "single_select",
        "placeholder_text": "Select time to dispatch",
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
        "placeholder_text": "Select payment methods",
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
        "text": "Tags",
        "value": "tags",
        "type": "multi_select",
        "placeholder_text": "Select tags",
        "required": false,
        "options": []
      },
      {
        "text": "Sales Channel",
        "value": "sales_channels",
        "placeholder_text": "Select sales channels",
        "type": "multi_select",
        "required": false,
        "options": []
      },
      {
        "text": "Delivery Partner",
        "value": "dp_ids",
        "type": "multi_select",
        "placeholder_text": "Select delivery partners",
        "required": true,
        "options": []
      },
      {
        "text": "Shipment Status",
        "value": "bag_status",
        "type": "multi_select",
        "options": [
          {
            "text": "Placed",
            "value": "placed"
          },
          {
            "text": "Bag Confirmed",
            "value": "bag_confirmed"
          },
          {
            "text": "Bag Invoiced",
            "value": "bag_invoiced"
          },
          {
            "text": "DP Assigned",
            "value": "dp_assigned"
          },
          {
            "text": "DP Not Assigned",
            "value": "dp_not_assigned"
          },
          {
            "text": "Assigning DP",
            "value": "assigning_dp"
          },
          {
            "text": "Bag Picked",
            "value": "bag_picked"
          },
          {
            "text": "Out for delivery",
            "value": "out_for_delivery"
          },
          {
            "text": "Handed Over To Dg",
            "value": "handed_over_to_dg"
          },
          {
            "text": "Bag Lost",
            "value": "bag_lost"
          },
          {
            "text": "Rejected By Customer",
            "value": "rejected_by_customer"
          },
          {
            "text": "Delivery Attempt Failed",
            "value": "delivery_attempt_failed"
          },
          {
            "text": "Delivered",
            "value": "delivery_done"
          },
          {
            "text": "Return Request Cancelled",
            "value": "return_request_cancelled"
          },
          {
            "text": "Handed over to customer",
            "value": "handed_over_to_customer"
          },
          {
            "text": "Refund without Return",
            "value": "refund_without_return"
          },
          {
            "text": "Return Initiated",
            "value": "return_initiated"
          },
          {
            "text": "RTO Initiated",
            "value": "rto_initiated"
          },
          {
            "text": "Return DP Assigned",
            "value": "return_dp_assigned"
          },
          {
            "text": "Return Rejected By DP",
            "value": "return_rejected_by_dp"
          },
          {
            "text": "Return Bag Picked",
            "value": "return_bag_picked"
          },
          {
            "text": "Return Bag Out for Delivery",
            "value": "return_bag_out_for_delivery"
          },
          {
            "text": "Return DP not Assigned",
            "value": "return_dp_not_assigned"
          },
          {
            "text": "Return Bag Not Delivered",
            "value": "return_bag_not_delivered"
          },
          {
            "text": "Return To Origin",
            "value": "return_to_origin"
          },
          {
            "text": "RTO In Transit",
            "value": "rto_in_transit"
          },
          {
            "text": "Return Bag In Transit",
            "value": "return_bag_in_transit"
          },
          {
            "text": "Return DP Cancelled",
            "value": "return_dp_cancelled"
          },
          {
            "text": "Return Bag Lost",
            "value": "return_bag_lost"
          },
          {
            "text": "Assigning DP Return",
            "value": "assigning_return_dp"
          },
          {
            "text": "Return Cancelled At DP",
            "value": "return_cancelled_at_dp"
          },
          {
            "text": "Return DP Out for Pickup",
            "value": "return_dp_out_for_pickup"
          },
          {
            "text": "Return Cancelled Failed at DP",
            "value": "return_cancelled_failed_at_dp"
          },
          {
            "text": "RTO Initiated",
            "value": "rto_initiated"
          },
          {
            "text": "RTO Bag Out for Delivery",
            "value": "rto_bag_out_for_delivery"
          },
          {
            "text": "Return Assigning DP",
            "value": "return_assigning_dp"
          },
          {
            "text": "Return Bag Packed",
            "value": "return_bag_packed"
          },
          {
            "text": "Return Bag Not Picked",
            "value": "return_bag_not_picked"
          },
          {
            "text": "Return Accepted",
            "value": "return_accepted"
          },
          {
            "text": "Return Completed",
            "value": "refund_initiated"
          },
          {
            "text": "Return Rejected By Store",
            "value": "return_rejected_by_store"
          },
          {
            "text": "Return Bag Delivered",
            "value": "return_bag_delivered"
          },
          {
            "text": "Rto Bag Delivered",
            "value": "rto_bag_delivered"
          },
          {
            "text": "Rto Bag Accepted",
            "value": "rto_bag_accepted"
          },
          {
            "text": "Return Accepted",
            "value": "return_accepted"
          },
          {
            "text": "Return Completed",
            "value": "refund_initiated"
          },
          {
            "text": "Return Rejected By Store",
            "value": "return_rejected_by_store"
          },
          {
            "text": "Return Bag Delivered",
            "value": "return_bag_delivered"
          },
          {
            "text": "Rto Bag Delivered",
            "value": "rto_bag_delivered"
          },
          {
            "text": "Rto Bag Accepted",
            "value": "rto_bag_accepted"
          }
        ]
      },
      {
        "text": "Payment Methods",
        "value": "payment_methods",
        "type": "single_select",
        "placeholder_text": "Select payment methods",
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
  },
  "advance_filter": {
    "unfulfilled": [
      {
        "text": "Tags",
        "value": "tags",
        "type": "multi_select",
        "placeholder_text": "Select tags",
        "required": false,
        "options": []
      },
      {
        "text": "Sales Channel",
        "value": "sales_channels",
        "placeholder_text": "Select sales channels",
        "type": "multi_select",
        "required": false,
        "options": []
      },
      {
        "text": "Delivery Partner",
        "value": "dp_ids",
        "type": "multi_select",
        "placeholder_text": "Select delivery partners",
        "required": true,
        "options": []
      },
      {
        "text": "Shipment Status",
        "value": "bag_status",
        "type": "multi_select",
        "options": [
          {
            "text": "Assigning DP",
            "value": "assigning_dp"
          },
          {
            "text": "Packed",
            "value": "bag_packed"
          },
          {
            "text": "Invoiced",
            "value": "bag_invoiced"
          },
          {
            "text": "Cancelled At DP",
            "value": "cancelled_at_dp"
          },
          {
            "text": "Not Picked",
            "value": "bag_not_picked"
          },
          {
            "text": "Placed",
            "value": "placed"
          },
          {
            "text": "Verified",
            "value": "bag_verified"
          },
          {
            "text": "Store Reassigned",
            "value": "store_reassigned"
          },
          {
            "text": "DP Assigned",
            "value": "dp_assigned"
          },
          {
            "text": "Ready For DP Assignment",
            "value": "ready_for_dp_assignment"
          },
          {
            "text": "Out For Pickup",
            "value": "out_for_pickup"
          },
          {
            "text": "DP Not Assigned",
            "value": "dp_not_assigned"
          },
          {
            "text": "Confirmed",
            "value": "bag_confirmed"
          }
        ]
      },
      {
        "text": "Time to Dispatch",
        "value": "time_to_dispatch",
        "type": "single_select",
        "placeholder_text": "Select time to dispatch",
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
        "placeholder_text": "Select payment methods",
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
    "processed": [
      {
        "text": "Tags",
        "value": "tags",
        "type": "multi_select",
        "placeholder_text": "Select tags",
        "required": false,
        "options": []
      },
      {
        "text": "Sales Channel",
        "value": "sales_channels",
        "placeholder_text": "Select sales channels",
        "type": "multi_select",
        "required": false,
        "options": []
      },
      {
        "text": "Delivery Partner",
        "value": "dp_ids",
        "type": "multi_select",
        "placeholder_text": "Select delivery partners",
        "required": true,
        "options": []
      },
      {
        "text": "Shipment Status",
        "value": "bag_status",
        "type": "multi_select",
        "options": [
          {
            "text": "Delivered",
            "value": "delivery_done"
          },
          {
            "text": "Return Request Rejected",
            "value": "return_request_cancelled"
          },
          {
            "text": "Cancelled Operations",
            "value": "cancelled_operations"
          },
          {
            "text": "Out for Delivery",
            "value": "out_for_delivery"
          },
          {
            "text": "Delivery Attempt Failed",
            "value": "delivery_attempt_failed"
          },
          {
            "text": "Handed Over To DG",
            "value": "handed_over_to_dg"
          },
          {
            "text": "Handed Over To Customer",
            "value": "handed_over_to_customer"
          },
          {
            "text": "Cancelled Seller",
            "value": "cancelled_seller"
          },
          {
            "text": "Cancelled Customer",
            "value": "cancelled_customer"
          },
          {
            "text": "Rejected By Customer",
            "value": "rejected_by_customer"
          },
          {
            "text": "Return Requested",
            "value": "return_pre_qc"
          },
          {
            "text": "Refund Without Return",
            "value": "refund_without_return"
          },
          {
            "text": "Cancelled",
            "value": "cancelled_fynd"
          },
          {
            "text": "Lost",
            "value": "bag_lost"
          },
          {
            "text": "Picked",
            "value": "bag_picked"
          }
        ]
      },
      {
        "text": "Time to Dispatch",
        "value": "time_to_dispatch",
        "type": "single_select",
        "placeholder_text": "Select time to dispatch",
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
        "placeholder_text": "Select payment methods",
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
    "returned": [
      {
        "text": "Tags",
        "value": "tags",
        "type": "multi_select",
        "placeholder_text": "Select tags",
        "required": false,
        "options": []
      },
      {
        "text": "Sales Channel",
        "value": "sales_channels",
        "placeholder_text": "Select sales channels",
        "type": "multi_select",
        "required": false,
        "options": []
      },
      {
        "text": "Delivery Partner",
        "value": "dp_ids",
        "type": "multi_select",
        "placeholder_text": "Select delivery partners",
        "required": true,
        "options": []
      },
      {
        "text": "Shipment Status",
        "value": "bag_status",
        "type": "multi_select",
        "options": [
          {
            "text": "Rto In Transit",
            "value": "rto_in_transit"
          },
          {
            "text": "Return DP Out For Pickup",
            "value": "return_dp_out_for_pickup"
          },
          {
            "text": "Return Cancelled Failed At DP",
            "value": "return_cancelled_failed_at_dp"
          },
          {
            "text": "Return Lost",
            "value": "return_bag_lost"
          },
          {
            "text": "Credit Note Generated",
            "value": "credit_note_generated"
          },
          {
            "text": "Return Initiated",
            "value": "return_initiated"
          },
          {
            "text": "Return Packed",
            "value": "return_bag_packed"
          },
          {
            "text": "Rto Out For Delivery",
            "value": "rto_bag_out_for_delivery"
          },
          {
            "text": "Return Not Picked",
            "value": "return_bag_not_picked"
          },
          {
            "text": "Return Rejected By DP",
            "value": "return_rejected_by_dp"
          },
          {
            "text": "Assigning_return DP",
            "value": "assigning_return_dp"
          },
          {
            "text": "Return To Origin",
            "value": "return_to_origin"
          },
          {
            "text": "Return DP Assigned",
            "value": "return_dp_assigned"
          },
          {
            "text": "Return Delivered",
            "value": "return_bag_delivered"
          },
          {
            "text": "Return Out For Delivery",
            "value": "return_bag_out_for_delivery"
          },
          {
            "text": "Return DP Not Assigned",
            "value": "return_dp_not_assigned"
          },
          {
            "text": "Return Picked",
            "value": "return_bag_picked"
          },
          {
            "text": "Return Completed",
            "value": "return_completed"
          },
          {
            "text": "Return DP Cancelled",
            "value": "return_dp_cancelled"
          },
          {
            "text": "Rto Accepted",
            "value": "rto_bag_accepted"
          },
          {
            "text": "Return Cancelled At DP",
            "value": "return_cancelled_at_dp"
          },
          {
            "text": "Return Assigning DP",
            "value": "return_assigning_dp"
          },
          {
            "text": "Deadstock",
            "value": "deadstock"
          },
          {
            "text": "Rto Delivered",
            "value": "rto_bag_delivered"
          },
          {
            "text": "Rto Initiated",
            "value": "rto_initiated"
          },
          {
            "text": "Return In Transit",
            "value": "return_bag_in_transit"
          },
          {
            "text": "Return Not Delivered",
            "value": "return_bag_not_delivered"
          },
          {
            "text": "Return Accepted",
            "value": "return_accepted"
          }
        ]
      },
      {
        "text": "Time to Dispatch",
        "value": "time_to_dispatch",
        "type": "single_select",
        "placeholder_text": "Select time to dispatch",
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
        "placeholder_text": "Select payment methods",
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
    "action_centre": [
      {
        "text": "Tags",
        "value": "tags",
        "type": "multi_select",
        "placeholder_text": "Select tags",
        "required": false,
        "options": []
      },
      {
        "text": "Sales Channel",
        "value": "sales_channels",
        "placeholder_text": "Select sales channels",
        "type": "multi_select",
        "required": false,
        "options": []
      },
      {
        "text": "Delivery Partner",
        "value": "dp_ids",
        "type": "multi_select",
        "placeholder_text": "Select delivery partners",
        "required": true,
        "options": []
      },
      {
        "text": "Shipment Status",
        "value": "bag_status",
        "type": "multi_select",
        "options": [
          {
            "text": "Placed",
            "value": "placed"
          },
          {
            "text": "Bag Confirmed",
            "value": "bag_confirmed"
          },
          {
            "text": "Bag Invoiced",
            "value": "bag_invoiced"
          },
          {
            "text": "DP Assigned",
            "value": "dp_assigned"
          },
          {
            "text": "DP Not Assigned",
            "value": "dp_not_assigned"
          },
          {
            "text": "Assigning DP",
            "value": "assigning_dp"
          },
          {
            "text": "Bag Picked",
            "value": "bag_picked"
          },
          {
            "text": "Out for delivery",
            "value": "out_for_delivery"
          },
          {
            "text": "Handed Over To Dg",
            "value": "handed_over_to_dg"
          },
          {
            "text": "Bag Lost",
            "value": "bag_lost"
          },
          {
            "text": "Rejected By Customer",
            "value": "rejected_by_customer"
          },
          {
            "text": "Delivery Attempt Failed",
            "value": "delivery_attempt_failed"
          },
          {
            "text": "Delivered",
            "value": "delivery_done"
          },
          {
            "text": "Return Request Cancelled",
            "value": "return_request_cancelled"
          },
          {
            "text": "Handed over to customer",
            "value": "handed_over_to_customer"
          },
          {
            "text": "Refund without Return",
            "value": "refund_without_return"
          },
          {
            "text": "Return Initiated",
            "value": "return_initiated"
          },
          {
            "text": "RTO Initiated",
            "value": "rto_initiated"
          },
          {
            "text": "Return DP Assigned",
            "value": "return_dp_assigned"
          },
          {
            "text": "Return Rejected By DP",
            "value": "return_rejected_by_dp"
          },
          {
            "text": "Return Bag Picked",
            "value": "return_bag_picked"
          },
          {
            "text": "Return Bag Out for Delivery",
            "value": "return_bag_out_for_delivery"
          },
          {
            "text": "Return DP not Assigned",
            "value": "return_dp_not_assigned"
          },
          {
            "text": "Return Bag Not Delivered",
            "value": "return_bag_not_delivered"
          },
          {
            "text": "Return To Origin",
            "value": "return_to_origin"
          },
          {
            "text": "RTO In Transit",
            "value": "rto_in_transit"
          },
          {
            "text": "Return Bag In Transit",
            "value": "return_bag_in_transit"
          },
          {
            "text": "Return DP Cancelled",
            "value": "return_dp_cancelled"
          },
          {
            "text": "Return Bag Lost",
            "value": "return_bag_lost"
          },
          {
            "text": "Assigning DP Return",
            "value": "assigning_return_dp"
          },
          {
            "text": "Return Cancelled At DP",
            "value": "return_cancelled_at_dp"
          },
          {
            "text": "Return DP Out for Pickup",
            "value": "return_dp_out_for_pickup"
          },
          {
            "text": "Return Cancelled Failed at DP",
            "value": "return_cancelled_failed_at_dp"
          },
          {
            "text": "RTO Initiated",
            "value": "rto_initiated"
          },
          {
            "text": "RTO Bag Out for Delivery",
            "value": "rto_bag_out_for_delivery"
          },
          {
            "text": "Return Assigning DP",
            "value": "return_assigning_dp"
          },
          {
            "text": "Return Bag Packed",
            "value": "return_bag_packed"
          },
          {
            "text": "Return Bag Not Picked",
            "value": "return_bag_not_picked"
          },
          {
            "text": "Return Accepted",
            "value": "return_accepted"
          },
          {
            "text": "Return Completed",
            "value": "refund_initiated"
          },
          {
            "text": "Return Rejected By Store",
            "value": "return_rejected_by_store"
          },
          {
            "text": "Return Bag Delivered",
            "value": "return_bag_delivered"
          },
          {
            "text": "Rto Bag Delivered",
            "value": "rto_bag_delivered"
          },
          {
            "text": "Rto Bag Accepted",
            "value": "rto_bag_accepted"
          },
          {
            "text": "Return Accepted",
            "value": "return_accepted"
          },
          {
            "text": "Return Completed",
            "value": "refund_initiated"
          },
          {
            "text": "Return Rejected By Store",
            "value": "return_rejected_by_store"
          },
          {
            "text": "Return Bag Delivered",
            "value": "return_bag_delivered"
          },
          {
            "text": "Rto Bag Delivered",
            "value": "rto_bag_delivered"
          },
          {
            "text": "Rto Bag Accepted",
            "value": "rto_bag_accepted"
          }
        ]
      },
      {
        "text": "Payment Methods",
        "value": "payment_methods",
        "type": "single_select",
        "placeholder_text": "Select payment methods",
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
  },
  "global_filter": [
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
          "placeholder_text": "Search by Shipment ID, Order ID or Customer Email",
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
          "text": "Bag ID",
          "value": "bag_id",
          "placeholder_text": "Search by Bag ID",
          "min_search_size": 4,
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
          "text": "External Order ID",
          "value": "external_order_id",
          "placeholder_text": "Search by External Order ID",
          "min_search_size": 6,
          "show_ui": true
        },
        {
          "text": "External Bag ID",
          "value": "external_bag_id",
          "placeholder_text": "Search by External Bag ID",
          "min_search_size": 6,
          "show_ui": true
        },
        {
          "text": "External Shipment ID",
          "value": "external_shipment_id",
          "placeholder_text": "Search by External Shipment ID",
          "min_search_size": 6,
          "show_ui": true
        },
        {
          "text": "Channel Shipment ID",
          "value": "channel_shipment_id",
          "placeholder_text": "Search by Channel Shipment ID",
          "min_search_size": 6,
          "show_ui": true
        },
        {
          "text": "Invoice",
          "value": "invoice_id",
          "placeholder_text": "Search by Invoice",
          "min_search_size": 5,
          "show_ui": true
        },
        {
          "text": "AWB",
          "value": "awb_no",
          "placeholder_text": "Search by AWB",
          "min_search_size": 10,
          "show_ui": true
        },
        {
          "text": "SKU",
          "value": "sku",
          "placeholder_text": "Search by SKU",
          "min_search_size": 3,
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
          "text": "ALU",
          "value": "alu",
          "placeholder_text": "Search by ALU",
          "min_search_size": 3,
          "show_ui": true
        },
        {
          "text": "UPC",
          "value": "upc",
          "placeholder_text": "Search by UPC",
          "min_search_size": 3,
          "show_ui": true
        },
        {
          "text": "Customer Registered Phone",
          "value": "registered_phone",
          "placeholder_text": "Search by Customer Registered Phone",
          "min_search_size": 3,
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
          "text": "Customer Phone",
          "value": "phone",
          "placeholder_text": "Search by Customer Phone",
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
          "text": "Return ID",
          "value": "return_id",
          "placeholder_text": "Search by Return ID",
          "min_search_size": 5,
          "show_ui": true
        }
      ]
    }
  ]
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


#### getBulkShipmentExcelFile





```swift
platformClient.order.getBulkShipmentExcelFile(salesChannels: salesChannels, dpIds: dpIds, fromDate: fromDate, toDate: toDate, stores: stores, tags: tags, bagStatus: bagStatus, paymentMethods: paymentMethods, fileType: fileType, timeToDispatch: timeToDispatch, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| salesChannels | String? | no | Comma seperated values of sales channel ids |   
| dpIds | String? | no | Comma seperated values of delivery partner ids |   
| fromDate | String? | no | Start Date in DD-MM-YYYY format |   
| toDate | String? | no | End Date in DD-MM-YYYY format |   
| stores | String? | no | Comma seperated values of store ids |   
| tags | String? | no | Comma seperated values of tags |   
| bagStatus | String? | no | Comma seperated values of bag statuses |   
| paymentMethods | String? | no | Comma seperated values of payment methods |   
| fileType | String? | no | File type to be downloaded |   
| timeToDispatch | Int? | no | Sla breached or not breached |   
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |  





*Returned Response:*




[FileResponse](#FileResponse)

We are processing the file!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "file_name": "placed_352_1668856953.7936668.xlsx",
  "cdn": {
    "url": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/x0/misc/general/free/original/0Ex0-zTyw-placed_352_1668856953.7936668.xlsx"
  }
}
```
</details>









---


#### getBulkActionTemplate





```swift
platformClient.order.getBulkActionTemplate() { (response, error) in
    // Use response
}
```








*Returned Response:*




[BulkActionTemplateResponse](#BulkActionTemplateResponse)

Slug names




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "template_x_slug": [
    {
      "text": "Partial Cancellation",
      "value": "PARTIAL_CANCELLATION"
    }
  ]
}
```
</details>









---


#### downloadBulkActionTemplate





```swift
platformClient.order.downloadBulkActionTemplate(templateSlug: templateSlug) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| templateSlug | String? | no | Slug name of template to be downloaded |  





*Returned Response:*




[FileResponse](#FileResponse)

We are processing the file!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "file_name": "placed_352_1668856953.7936668.xlsx",
  "cdn": {
    "url": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/x0/misc/general/free/original/0Ex0-zTyw-placed_352_1668856953.7936668.xlsx"
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


#### generatePOSReceiptByOrderId





```swift
platformClient.order.generatePOSReceiptByOrderId(orderId: orderId, documentType: documentType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String | yes |  |   
| documentType | String? | no |  |  





*Returned Response:*




[GeneratePosOrderReceiptResponse](#GeneratePosOrderReceiptResponse)

We are processing the request!




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
| body | UpdatePackagingDimensionsPayload | yes | Request body |




*Returned Response:*




[UpdatePackagingDimensionsResponse](#UpdatePackagingDimensionsResponse)

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


#### fetchCreditBalanceDetail





```swift
platformClient.order.fetchCreditBalanceDetail(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | FetchCreditBalanceRequestPayload | yes | Request body |




*Returned Response:*




[FetchCreditBalanceResponsePayload](#FetchCreditBalanceResponsePayload)

Credit Balance will be fetched




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### fetchRefundModeConfig





```swift
platformClient.order.fetchRefundModeConfig(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | RefundModeConfigRequestPayload | yes | Request body |




*Returned Response:*




[RefundModeConfigResponsePayload](#RefundModeConfigResponsePayload)

Refund mode config is returned based on input parameter




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### attachOrderUser





```swift
platformClient.order.attachOrderUser(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | AttachOrderUser | yes | Request body |




*Returned Response:*




[AttachOrderUserResponse](#AttachOrderUserResponse)

Attach user to order




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### sendUserMobileOTP





```swift
platformClient.order.sendUserMobileOTP(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | SendUserMobileOTP | yes | Request body |




*Returned Response:*




[SendUserMobileOtpResponse](#SendUserMobileOtpResponse)

Send OTP to user mobile




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": {
    "request_id": "112312312",
    "message": "Text",
    "resend_timer": "600",
    "mobile": 99990000
  },
  "message": "Text"
}
```
</details>









---


#### verifyMobileOTP





```swift
platformClient.order.verifyMobileOTP(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | VerifyMobileOTP | yes | Request body |




*Returned Response:*




[PointBlankOtpData](#PointBlankOtpData)

Verify OTP




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---



### Schemas

 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | current | Int? |  yes  |  |
 | hasPrevious | Bool? |  yes  |  |
 | type | String? |  yes  |  |
 | size | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | total | Int? |  yes  |  |

---


 
 
 #### [ShipmentStatus](#ShipmentStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String |  no  |  |
 | title | String |  no  |  |
 | shipmentId | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | currentShipmentStatus | String? |  yes  |  |
 | bagList | [String]? |  yes  |  |
 | shipmentStatusId | Int? |  yes  |  |
 | statusCreatedAt | String? |  yes  |  |
 | createdAt | String? |  yes  |  |

---


 
 
 #### [Weight](#Weight)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | unit | String? |  yes  |  |
 | shipping | Int? |  yes  |  |
 | isDefault | Bool? |  yes  |  |

---


 
 
 #### [ReturnConfig](#ReturnConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | returnable | Bool? |  yes  |  |
 | unit | String? |  yes  |  |
 | time | Int? |  yes  |  |

---


 
 
 #### [Dimensions](#Dimensions)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | height | Double? |  yes  |  |
 | isDefault | Bool? |  yes  |  |
 | width | Double? |  yes  |  |
 | unit | String? |  yes  |  |
 | length | Double? |  yes  |  |

---


 
 
 #### [Article](#Article)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rawMeta | String? |  yes  |  |
 | espModified | Bool? |  yes  |  |
 | childDetails | [String: Any]? |  yes  |  |
 | weight | [Weight](#Weight)? |  yes  |  |
 | uid | String |  no  |  |
 | currency | [String: Any]? |  yes  |  |
 | sellerIdentifier | String |  no  |  |
 | isSet | Bool? |  yes  |  |
 | returnConfig | [ReturnConfig](#ReturnConfig)? |  yes  |  |
 | aSet | [String: Any]? |  yes  |  |
 | id | String |  no  |  |
 | code | String? |  yes  |  |
 | dimensions | [Dimensions](#Dimensions)? |  yes  |  |
 | identifiers | [String: Any] |  no  |  |
 | size | String |  no  |  |

---


 
 
 #### [BagStateMapper](#BagStateMapper)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | journeyType | String |  no  |  |
 | name | String |  no  |  |
 | stateType | String |  no  |  |
 | notifyCustomer | Bool? |  yes  |  |
 | appDisplayName | String? |  yes  |  |
 | appFacing | Bool? |  yes  |  |
 | displayName | String |  no  |  |
 | appStateName | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | id | Int |  no  |  |

---


 
 
 #### [BagStatusHistory](#BagStatusHistory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | deliveryPartnerId | Int? |  yes  |  |
 | bshId | Int? |  yes  |  |
 | status | String |  no  |  |
 | stateType | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | reasons | [[String: Any]]? |  yes  |  |
 | appDisplayName | String? |  yes  |  |
 | bagId | Int? |  yes  |  |
 | deliveryAwbNumber | String? |  yes  |  |
 | kafkaSync | Bool? |  yes  |  |
 | displayName | String? |  yes  |  |
 | forward | Bool? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | stateId | Int? |  yes  |  |
 | storeId | Int? |  yes  |  |
 | bagStateMapper | [BagStateMapper](#BagStateMapper)? |  yes  |  |
 | shipmentId | String? |  yes  |  |

---


 
 
 #### [PlatformArticleAttributes](#PlatformArticleAttributes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currency | String? |  yes  |  |

---


 
 
 #### [PlatformItem](#PlatformItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | color | String? |  yes  |  |
 | departmentId | Int? |  yes  |  |
 | id | Int? |  yes  |  |
 | attributes | [PlatformArticleAttributes](#PlatformArticleAttributes)? |  yes  |  |
 | brand | String? |  yes  |  |
 | images | [String]? |  yes  |  |
 | canCancel | Bool? |  yes  |  |
 | l3CategoryName | String? |  yes  |  |
 | brandId | Int? |  yes  |  |
 | branchUrl | String? |  yes  |  |
 | l2Category | [String]? |  yes  |  |
 | lastUpdatedAt | String? |  yes  |  |
 | code | String? |  yes  |  |
 | l3Category | Int? |  yes  |  |
 | slugKey | String? |  yes  |  |
 | l1Category | [String]? |  yes  |  |
 | name | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | canReturn | Bool? |  yes  |  |
 | image | [String]? |  yes  |  |
 | size | String? |  yes  |  |

---


 
 
 #### [ReplacementDetails](#ReplacementDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | replacementType | String? |  yes  |  |
 | originalAffiliateOrderId | String? |  yes  |  |

---


 
 
 #### [AffiliateMeta](#AffiliateMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | channelOrderId | String? |  yes  |  |
 | replacementDetails | [ReplacementDetails](#ReplacementDetails)? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | sizeLevelTotalQty | Int? |  yes  |  |
 | couponCode | String? |  yes  |  |
 | loyaltyDiscount | Double? |  yes  |  |
 | isPriority | Bool? |  yes  |  |
 | boxType | String? |  yes  |  |
 | channelShipmentId | String? |  yes  |  |
 | employeeDiscount | Double? |  yes  |  |
 | dueDate | String? |  yes  |  |
 | orderItemId | String? |  yes  |  |
 | marketplaceInvoiceId | String? |  yes  |  |

---


 
 
 #### [AffiliateBagDetails](#AffiliateBagDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateMeta | [AffiliateMeta](#AffiliateMeta) |  no  |  |
 | loyaltyDiscount | Double? |  yes  |  |
 | affiliateBagId | String |  no  |  |
 | employeeDiscount | Double? |  yes  |  |
 | affiliateOrderId | String |  no  |  |

---


 
 
 #### [GSTDetailsData](#GSTDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstinCode | String |  no  |  |
 | cgstTaxPercentage | Double? |  yes  |  |
 | brandCalculatedAmount | Double |  no  |  |
 | igstTaxPercentage | Double? |  yes  |  |
 | gstFee | Double |  no  |  |
 | hsnCode | String? |  yes  |  |
 | valueOfGood | Double |  no  |  |
 | igstGstFee | String? |  yes  |  |
 | gstTaxPercentage | Double? |  yes  |  |
 | isDefaultHsnCode | Bool? |  yes  |  |
 | sgstTaxPercentage | Double? |  yes  |  |
 | sgstGstFee | String? |  yes  |  |
 | gstTag | String? |  yes  |  |
 | taxCollectedAtSource | Double |  no  |  |
 | hsnCodeId | String? |  yes  |  |
 | cgstGstFee | String? |  yes  |  |

---


 
 
 #### [ShipmentListingBrand](#ShipmentListingBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdOn | String? |  yes  |  |
 | logoBase64 | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [Identifier](#Identifier)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | upc | String? |  yes  |  |
 | skuCode | String? |  yes  |  |
 | isbn | String? |  yes  |  |
 | alu | String? |  yes  |  |
 | ean | String? |  yes  |  |

---


 
 
 #### [FinancialBreakup](#FinancialBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstFee | Double |  no  |  |
 | couponEffectiveDiscount | Double |  no  |  |
 | amountPaidRoundoff | Int? |  yes  |  |
 | refundCredit | Int |  no  |  |
 | deliveryCharge | Int |  no  |  |
 | itemName | String |  no  |  |
 | brandCalculatedAmount | Double |  no  |  |
 | cashback | Int |  no  |  |
 | gstTaxPercentage | Int |  no  |  |
 | promotionEffectiveDiscount | Double |  no  |  |
 | couponValue | Double |  no  |  |
 | taxCollectedAtSource | Int? |  yes  |  |
 | identifiers | [Identifier](#Identifier) |  no  |  |
 | discount | Int |  no  |  |
 | transferPrice | Int |  no  |  |
 | hsnCode | String |  no  |  |
 | priceMarked | Int |  no  |  |
 | valueOfGood | Double |  no  |  |
 | fyndCredits | Int |  no  |  |
 | gstTag | String |  no  |  |
 | amountPaid | Double |  no  |  |
 | priceEffective | Int |  no  |  |
 | totalUnits | Int |  no  |  |
 | addedToFyndCash | Bool |  no  |  |
 | cashbackApplied | Int |  no  |  |
 | codCharges | Int |  no  |  |
 | size | String |  no  |  |

---


 
 
 #### [Prices](#Prices)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amountPaidRoundoff | Double? |  yes  |  |
 | couponEffectiveDiscount | Double? |  yes  |  |
 | refundCredit | Double? |  yes  |  |
 | deliveryCharge | Double? |  yes  |  |
 | giftPrice | Double? |  yes  |  |
 | brandCalculatedAmount | Double? |  yes  |  |
 | cashback | Double? |  yes  |  |
 | promotionEffectiveDiscount | Double? |  yes  |  |
 | couponValue | Double? |  yes  |  |
 | taxCollectedAtSource | Double? |  yes  |  |
 | discount | Double? |  yes  |  |
 | refundAmount | Double? |  yes  |  |
 | transferPrice | Double? |  yes  |  |
 | priceMarked | Double? |  yes  |  |
 | valueOfGood | Double? |  yes  |  |
 | pmPriceSplit | Double? |  yes  |  |
 | fyndCredits | Double? |  yes  |  |
 | amountPaid | Double? |  yes  |  |
 | priceEffective | Double? |  yes  |  |
 | cashbackApplied | Double? |  yes  |  |
 | codCharges | Double? |  yes  |  |

---


 
 
 #### [BagReturnableCancelableStatus](#BagReturnableCancelableStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isCustomerReturnAllowed | Bool |  no  |  |
 | canBeCancelled | Bool |  no  |  |
 | isActive | Bool |  no  |  |
 | isReturnable | Bool |  no  |  |
 | enableTracking | Bool |  no  |  |

---


 
 
 #### [Dates](#Dates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | deliveryDate | String? |  yes  |  |
 | orderCreated | String? |  yes  |  |

---


 
 
 #### [BagUnit](#BagUnit)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | article | [Article](#Article)? |  yes  |  |
 | entityType | String? |  yes  |  |
 | productQuantity | Int |  no  |  |
 | lineNumber | Int? |  yes  |  |
 | currentStatus | [BagStatusHistory](#BagStatusHistory) |  no  |  |
 | item | [PlatformItem](#PlatformItem)? |  yes  |  |
 | affiliateBagDetails | [AffiliateBagDetails](#AffiliateBagDetails)? |  yes  |  |
 | gst | [GSTDetailsData](#GSTDetailsData)? |  yes  |  |
 | reasons | [[String: Any]]? |  yes  |  |
 | brand | [ShipmentListingBrand](#ShipmentListingBrand)? |  yes  |  |
 | bagId | Int |  no  |  |
 | displayName | String? |  yes  |  |
 | canCancel | Bool? |  yes  |  |
 | financialBreakup | [[FinancialBreakup](#FinancialBreakup)] |  no  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | status | [BagReturnableCancelableStatus](#BagReturnableCancelableStatus) |  no  |  |
 | bagType | String? |  yes  |  |
 | currentOperationalStatus | [BagStatusHistory](#BagStatusHistory) |  no  |  |
 | dates | [Dates](#Dates)? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | bagExpiryDate | String? |  yes  |  |
 | canReturn | Bool? |  yes  |  |
 | bagStatus | [[BagStatusHistory](#BagStatusHistory)]? |  yes  |  |
 | size | String? |  yes  |  |

---


 
 
 #### [PlatformDeliveryAddress](#PlatformDeliveryAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | longitude | Int? |  yes  |  |
 | address2 | String? |  yes  |  |
 | latitude | Int? |  yes  |  |
 | state | String? |  yes  |  |
 | landmark | String? |  yes  |  |
 | country | String? |  yes  |  |
 | city | String? |  yes  |  |
 | version | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | addressCategory | String? |  yes  |  |
 | contactPerson | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | pincode | String? |  yes  |  |
 | area | String? |  yes  |  |
 | email | String? |  yes  |  |
 | createdAt | String? |  yes  |  |

---


 
 
 #### [ShipmentItemFulFillingStore](#ShipmentItemFulFillingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | String? |  yes  |  |
 | locationType | String? |  yes  |  |
 | name | String? |  yes  |  |
 | state | String? |  yes  |  |
 | city | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | storeEmail | String? |  yes  |  |
 | brandStoreTags | String? |  yes  |  |
 | code | String |  no  |  |
 | phone | String? |  yes  |  |
 | fulfillingStoreId | Int |  no  |  |
 | pincode | String? |  yes  |  |

---


 
 
 #### [ShipmentListingChannel](#ShipmentListingChannel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logo | String? |  yes  |  |
 | isAffiliate | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | channelShipmentId | String? |  yes  |  |

---


 
 
 #### [Formatted](#Formatted)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | String? |  yes  |  |
 | max | String? |  yes  |  |

---


 
 
 #### [ShipmentTimeStamp](#ShipmentTimeStamp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | Int? |  yes  |  |
 | max | Int? |  yes  |  |

---


 
 
 #### [LockData](#LockData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | locked | Bool? |  yes  |  |
 | lockMessage | String? |  yes  |  |
 | mto | Bool? |  yes  |  |

---


 
 
 #### [ShipmentTags](#ShipmentTags)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | entityType | String? |  yes  |  |
 | displayText | String? |  yes  |  |
 | slug | String? |  yes  |  |

---


 
 
 #### [ShipmentItemMeta](#ShipmentItemMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentChargeableWeight | Double? |  yes  |  |
 | shipmentVolumetricWeight | Double? |  yes  |  |
 | orderType | String? |  yes  |  |
 | assignDpFromSb | Bool? |  yes  |  |
 | shippingZone | String? |  yes  |  |
 | parentDpId | String? |  yes  |  |
 | weight | Double? |  yes  |  |
 | pdfMedia | [[String: Any]]? |  yes  |  |
 | debugInfo | [String: Any]? |  yes  |  |
 | existingDpList | [String]? |  yes  |  |
 | activityComment | String? |  yes  |  |
 | formatted | [Formatted](#Formatted)? |  yes  |  |
 | shipmentWeight | Double? |  yes  |  |
 | autoTriggerDpAssignmentAcf | Bool? |  yes  |  |
 | storeInvoiceUpdatedDate | String? |  yes  |  |
 | sla | Double? |  yes  |  |
 | dpOptions | [String: Any]? |  yes  |  |
 | timestamp | [ShipmentTimeStamp](#ShipmentTimeStamp)? |  yes  |  |
 | isInternational | Bool? |  yes  |  |
 | bagWeight | [String: Any]? |  yes  |  |
 | lockData | [LockData](#LockData)? |  yes  |  |
 | fulfilmentPriorityText | String? |  yes  |  |
 | dpSortKey | String? |  yes  |  |
 | external | [String: Any]? |  yes  |  |
 | packagingName | String? |  yes  |  |
 | shipmentTags | [[ShipmentTags](#ShipmentTags)]? |  yes  |  |
 | tags | [[String: Any]]? |  yes  |  |
 | ewaybillInfo | [String: Any]? |  yes  |  |
 | sameStoreAvailable | Bool? |  yes  |  |

---


 
 
 #### [UserDataInfo](#UserDataInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | avisUserId | String? |  yes  |  |
 | name | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | isAnonymousUser | Bool? |  yes  |  |
 | firstName | String? |  yes  |  |
 | mobile | String? |  yes  |  |
 | lastName | String? |  yes  |  |
 | gender | String? |  yes  |  |
 | email | String? |  yes  |  |

---


 
 
 #### [ShipmentItem](#ShipmentItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | canProcess | Bool? |  yes  |  |
 | orderId | String |  no  |  |
 | previousShipmentId | String? |  yes  |  |
 | shipmentStatus | [ShipmentStatus](#ShipmentStatus)? |  yes  |  |
 | lockStatus | Bool? |  yes  |  |
 | customerNote | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | bags | [[BagUnit](#BagUnit)]? |  yes  |  |
 | paymentMode | String? |  yes  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | estimatedSlaTime | String? |  yes  |  |
 | deliveryAddress | [PlatformDeliveryAddress](#PlatformDeliveryAddress)? |  yes  |  |
 | orderingChannnel | String? |  yes  |  |
 | orderDate | String? |  yes  |  |
 | shipmentCreatedAt | String |  no  |  |
 | statusCreatedAt | String? |  yes  |  |
 | fulfillingStore | [ShipmentItemFulFillingStore](#ShipmentItemFulFillingStore)? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | paymentMethods | [String: Any]? |  yes  |  |
 | channel | [ShipmentListingChannel](#ShipmentListingChannel)? |  yes  |  |
 | meta | [ShipmentItemMeta](#ShipmentItemMeta)? |  yes  |  |
 | invoiceId | String? |  yes  |  |
 | user | [UserDataInfo](#UserDataInfo)? |  yes  |  |
 | totalBags | Int |  no  |  |

---


 
 
 #### [ShipmentInternalPlatformViewResponse](#ShipmentInternalPlatformViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | totalCount | Int? |  yes  |  |
 | success | Bool? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |
 | lane | String? |  yes  |  |
 | items | [[ShipmentItem](#ShipmentItem)]? |  yes  |  |

---


 
 
 #### [Error](#Error)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [OrderingStoreDetails](#OrderingStoreDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeName | String? |  yes  |  |
 | address | String? |  yes  |  |
 | state | String |  no  |  |
 | country | String |  no  |  |
 | city | String |  no  |  |
 | meta | [String: Any] |  no  |  |
 | contactPerson | String |  no  |  |
 | code | String |  no  |  |
 | phone | String |  no  |  |
 | id | Int |  no  |  |
 | pincode | String |  no  |  |

---


 
 
 #### [PDFLinks](#PDFLinks)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | labelA6 | String? |  yes  |  |
 | labelType | String |  no  |  |
 | creditNoteUrl | String? |  yes  |  |
 | labelA4 | String? |  yes  |  |
 | invoice | String? |  yes  |  |
 | invoiceA4 | String? |  yes  |  |
 | invoiceA6 | String? |  yes  |  |
 | label | String? |  yes  |  |
 | labelPos | String? |  yes  |  |
 | invoiceType | String |  no  |  |
 | b2B | String? |  yes  |  |
 | invoicePos | String? |  yes  |  |
 | deliveryChallanA4 | String? |  yes  |  |
 | poInvoice | String? |  yes  |  |

---


 
 
 #### [DebugInfo](#DebugInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stormbreakerUuid | String? |  yes  |  |

---


 
 
 #### [EinvoiceInfo](#EinvoiceInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | invoice | [String: Any]? |  yes  |  |
 | creditNote | [String: Any]? |  yes  |  |

---


 
 
 #### [BuyerDetails](#BuyerDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | String |  no  |  |
 | state | String |  no  |  |
 | name | String |  no  |  |
 | city | String |  no  |  |
 | gstin | String |  no  |  |
 | ajioSiteId | String? |  yes  |  |
 | pincode | Int |  no  |  |

---


 
 
 #### [ShipmentMeta](#ShipmentMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | forwardAffiliateShipmentId | String? |  yes  |  |
 | returnAffiliateOrderId | String? |  yes  |  |
 | returnAffiliateShipmentId | String? |  yes  |  |
 | shipmentVolumetricWeight | Double? |  yes  |  |
 | orderType | String? |  yes  |  |
 | assignDpFromSb | Bool? |  yes  |  |
 | parentDpId | String? |  yes  |  |
 | dueDate | String? |  yes  |  |
 | dpId | String? |  yes  |  |
 | returnAwbNumber | String? |  yes  |  |
 | weight | Int |  no  |  |
 | returnDetails | [String: Any]? |  yes  |  |
 | debugInfo | [DebugInfo](#DebugInfo)? |  yes  |  |
 | dimension | [Dimensions](#Dimensions)? |  yes  |  |
 | formatted | [Formatted](#Formatted)? |  yes  |  |
 | shipmentWeight | Double? |  yes  |  |
 | autoTriggerDpAssignmentAcf | Bool |  no  |  |
 | einvoiceInfo | [EinvoiceInfo](#EinvoiceInfo)? |  yes  |  |
 | storeInvoiceUpdatedDate | String? |  yes  |  |
 | dpOptions | [String: Any]? |  yes  |  |
 | timestamp | [ShipmentTimeStamp](#ShipmentTimeStamp)? |  yes  |  |
 | lockData | [LockData](#LockData)? |  yes  |  |
 | bagWeight | [String: Any]? |  yes  |  |
 | fulfilmentPriorityText | String? |  yes  |  |
 | dpSortKey | String? |  yes  |  |
 | boxType | String? |  yes  |  |
 | b2CBuyerDetails | [String: Any]? |  yes  |  |
 | external | [String: Any]? |  yes  |  |
 | packagingName | String? |  yes  |  |
 | awbNumber | String? |  yes  |  |
 | shipmentTags | [[ShipmentTags](#ShipmentTags)]? |  yes  |  |
 | returnStoreNode | Int? |  yes  |  |
 | b2BBuyerDetails | [BuyerDetails](#BuyerDetails)? |  yes  |  |
 | dpName | String? |  yes  |  |
 | forwardAffiliateOrderId | String? |  yes  |  |
 | ewaybillInfo | [String: Any]? |  yes  |  |
 | sameStoreAvailable | Bool |  no  |  |
 | marketplaceStoreId | String? |  yes  |  |
 | poNumber | String? |  yes  |  |

---


 
 
 #### [AffiliateDetails](#AffiliateDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pdfLinks | [PDFLinks](#PDFLinks)? |  yes  |  |
 | affiliateId | String? |  yes  |  |
 | shipmentMeta | [ShipmentMeta](#ShipmentMeta) |  no  |  |
 | affiliateMeta | [AffiliateMeta](#AffiliateMeta) |  no  |  |
 | adId | String? |  yes  |  |
 | affiliateShipmentId | String |  no  |  |
 | affiliateStoreId | String |  no  |  |
 | affiliateBagId | String |  no  |  |
 | companyAffiliateTag | String? |  yes  |  |
 | affiliateOrderId | String |  no  |  |

---


 
 
 #### [UserDetailsData](#UserDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | String |  no  |  |
 | name | String |  no  |  |
 | state | String |  no  |  |
 | country | String |  no  |  |
 | city | String |  no  |  |
 | landmark | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | phone | String |  no  |  |
 | address1 | String? |  yes  |  |
 | pincode | String |  no  |  |
 | area | String? |  yes  |  |
 | email | String? |  yes  |  |

---


 
 
 #### [ReturnConfig1](#ReturnConfig1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | returnable | Bool? |  yes  |  |
 | unit | String? |  yes  |  |
 | time | Double? |  yes  |  |

---


 
 
 #### [OrderBagArticle](#OrderBagArticle)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | String? |  yes  |  |
 | identifiers | [String: Any]? |  yes  |  |
 | size | String? |  yes  |  |
 | returnConfig | [ReturnConfig1](#ReturnConfig1)? |  yes  |  |

---


 
 
 #### [CurrentStatus](#CurrentStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | deliveryPartnerId | Int? |  yes  |  |
 | status | String? |  yes  |  |
 | stateType | String? |  yes  |  |
 | updatedAt | Int? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | bagId | Int? |  yes  |  |
 | deliveryAwbNumber | String? |  yes  |  |
 | kafkaSync | Bool? |  yes  |  |
 | id | Int |  no  |  |
 | stateId | Int? |  yes  |  |
 | storeId | Int? |  yes  |  |
 | bagStateMapper | [BagStateMapper](#BagStateMapper)? |  yes  |  |
 | createdAt | String? |  yes  |  |

---


 
 
 #### [AffiliateBagsDetails](#AffiliateBagsDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | couponCode | String? |  yes  |  |
 | affiliateBagId | String? |  yes  |  |

---


 
 
 #### [BagGST](#BagGST)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstinCode | String? |  yes  |  |
 | cgstTaxPercentage | Double? |  yes  |  |
 | brandCalculatedAmount | Double? |  yes  |  |
 | igstTaxPercentage | Double? |  yes  |  |
 | gstFee | Double? |  yes  |  |
 | hsnCode | String? |  yes  |  |
 | valueOfGood | Double? |  yes  |  |
 | igstGstFee | String? |  yes  |  |
 | gstTaxPercentage | Int? |  yes  |  |
 | isDefaultHsnCode | Bool? |  yes  |  |
 | sgstTaxPercentage | Double? |  yes  |  |
 | sgstGstFee | String? |  yes  |  |
 | gstTag | String? |  yes  |  |
 | taxCollectedAtSource | Double? |  yes  |  |
 | hsnCodeId | String? |  yes  |  |
 | cgstGstFee | String? |  yes  |  |

---


 
 
 #### [OrderBrandName](#OrderBrandName)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logo | String? |  yes  |  |
 | brandName | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | id | Int |  no  |  |
 | modifiedOn | String? |  yes  |  |
 | company | String |  no  |  |

---


 
 
 #### [B2BPODetails](#B2BPODetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemBasePrice | Double? |  yes  |  |
 | dockerNumber | String? |  yes  |  |
 | totalGstPercentage | Double? |  yes  |  |
 | poTaxAmount | Double? |  yes  |  |
 | poLineAmount | Double? |  yes  |  |
 | partialCanRet | Bool? |  yes  |  |

---


 
 
 #### [GiftCard](#GiftCard)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | giftMessage | String? |  yes  |  |
 | displayText | String? |  yes  |  |
 | giftPrice | Int? |  yes  |  |
 | isGiftApplied | Bool? |  yes  |  |

---


 
 
 #### [BagMeta](#BagMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | extraMeta | [String: Any]? |  yes  |  |
 | docketNumber | String? |  yes  |  |
 | customMessage | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | b2BPoDetails | [B2BPODetails](#B2BPODetails)? |  yes  |  |
 | giftCard | [GiftCard](#GiftCard)? |  yes  |  |
 | groupId | String? |  yes  |  |
 | partialCanRet | Bool? |  yes  |  |

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
 | promoId | String? |  yes  |  |
 | amount | Double? |  yes  |  |
 | mrpPromotion | Bool? |  yes  |  |
 | promotionType | String? |  yes  |  |
 | discountRules | [[DiscountRules](#DiscountRules)]? |  yes  |  |
 | buyRules | [[BuyRules](#BuyRules)]? |  yes  |  |
 | articleQuantity | Int? |  yes  |  |
 | promotionName | String? |  yes  |  |

---


 
 
 #### [BagConfigs](#BagConfigs)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isCustomerReturnAllowed | Bool |  no  |  |
 | canBeCancelled | Bool |  no  |  |
 | isActive | Bool |  no  |  |
 | allowForceReturn | Bool |  no  |  |
 | isReturnable | Bool |  no  |  |
 | enableTracking | Bool |  no  |  |

---


 
 
 #### [OrderBags](#OrderBags)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | article | [OrderBagArticle](#OrderBagArticle)? |  yes  |  |
 | entityType | String? |  yes  |  |
 | lineNumber | Int? |  yes  |  |
 | currentStatus | [CurrentStatus](#CurrentStatus)? |  yes  |  |
 | item | [PlatformItem](#PlatformItem)? |  yes  |  |
 | affiliateBagDetails | [AffiliateBagsDetails](#AffiliateBagsDetails)? |  yes  |  |
 | gstDetails | [BagGST](#BagGST)? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | brand | [OrderBrandName](#OrderBrandName)? |  yes  |  |
 | bagId | Int |  no  |  |
 | sellerIdentifier | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | parentPromoBags | [String: Any]? |  yes  |  |
 | canCancel | Bool? |  yes  |  |
 | financialBreakup | [FinancialBreakup](#FinancialBreakup)? |  yes  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | deliveryAddress | [PlatformDeliveryAddress](#PlatformDeliveryAddress)? |  yes  |  |
 | groupId | String? |  yes  |  |
 | identifier | String? |  yes  |  |
 | meta | [BagMeta](#BagMeta)? |  yes  |  |
 | canReturn | Bool? |  yes  |  |
 | appliedPromos | [[AppliedPromos](#AppliedPromos)]? |  yes  |  |
 | bagConfigs | [BagConfigs](#BagConfigs)? |  yes  |  |

---


 
 
 #### [ShipmentPayments](#ShipmentPayments)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mode | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | source | String? |  yes  |  |

---


 
 
 #### [PhoneDetails](#PhoneDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | Int? |  yes  |  |
 | number | String? |  yes  |  |

---


 
 
 #### [ContactDetails](#ContactDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | emails | [String]? |  yes  |  |
 | phone | [[PhoneDetails](#PhoneDetails)]? |  yes  |  |

---


 
 
 #### [CompanyDetails](#CompanyDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyName | String? |  yes  |  |
 | address | [String: Any]? |  yes  |  |
 | companyContact | [ContactDetails](#ContactDetails)? |  yes  |  |
 | companyGst | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | companyCin | String? |  yes  |  |

---


 
 
 #### [OrderDetailsData](#OrderDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fyndOrderId | String |  no  |  |
 | affiliateId | String? |  yes  |  |
 | taxDetails | [String: Any]? |  yes  |  |
 | orderingChannel | String? |  yes  |  |
 | orderDate | String? |  yes  |  |
 | orderValue | String? |  yes  |  |
 | orderingChannelLogo | [String: Any]? |  yes  |  |
 | codCharges | String? |  yes  |  |
 | source | String? |  yes  |  |

---


 
 
 #### [ShipmentStatusData](#ShipmentStatusData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | bagList | [String]? |  yes  |  |
 | displayName | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | id | Int? |  yes  |  |
 | shipmentId | String? |  yes  |  |

---


 
 
 #### [InvoiceInfo](#InvoiceInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | creditNoteId | String? |  yes  |  |
 | updatedDate | String? |  yes  |  |
 | labelUrl | String? |  yes  |  |
 | invoiceUrl | String? |  yes  |  |
 | externalInvoiceId | String? |  yes  |  |
 | storeInvoiceId | String? |  yes  |  |

---


 
 
 #### [DPDetailsData](#DPDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ewayBillId | String? |  yes  |  |
 | name | String? |  yes  |  |
 | trackUrl | String? |  yes  |  |
 | country | String? |  yes  |  |
 | awbNo | String? |  yes  |  |
 | id | Int? |  yes  |  |
 | gstTag | String? |  yes  |  |
 | pincode | String? |  yes  |  |

---


 
 
 #### [FulfillingStore](#FulfillingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeName | String |  no  |  |
 | address | String |  no  |  |
 | state | String |  no  |  |
 | country | String |  no  |  |
 | city | String |  no  |  |
 | fulfillmentChannel | String |  no  |  |
 | meta | [String: Any] |  no  |  |
 | contactPerson | String |  no  |  |
 | code | String |  no  |  |
 | id | Int |  no  |  |
 | phone | String |  no  |  |
 | pincode | String |  no  |  |

---


 
 
 #### [TrackingList](#TrackingList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String |  no  |  |
 | status | String |  no  |  |
 | isCurrent | Bool? |  yes  |  |
 | isPassed | Bool? |  yes  |  |
 | time | String? |  yes  |  |

---


 
 
 #### [Meta](#Meta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | merchantCode | String? |  yes  |  |
 | paymentId | String? |  yes  |  |
 | paymentGateway | String? |  yes  |  |
 | paymentIdentifier | String? |  yes  |  |
 | logoUrl | [String: String]? |  yes  |  |

---


 
 
 #### [PaymentMethod](#PaymentMethod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | collectBy | String? |  yes  |  |
 | refundBy | String? |  yes  |  |
 | name | String? |  yes  |  |
 | amount | Double? |  yes  |  |
 | meta | [Meta](#Meta)? |  yes  |  |
 | mode | String? |  yes  |  |

---


 
 
 #### [ShipmentDetails](#ShipmentDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lockMessage | String? |  yes  |  |
 | actionToStatus | [String: Any]? |  yes  |  |
 | lockStatus | Bool? |  yes  |  |

---


 
 
 #### [PlatformShipment](#PlatformShipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | journeyType | String? |  yes  |  |
 | customMessage | String? |  yes  |  |
 | fulfilmentPriority | Int? |  yes  |  |
 | isDpAssignEnabled | Bool? |  yes  |  |
 | orderingStore | [OrderingStoreDetails](#OrderingStoreDetails)? |  yes  |  |
 | coupon | [String: Any]? |  yes  |  |
 | canUpdateDimension | Bool? |  yes  |  |
 | affiliateDetails | [AffiliateDetails](#AffiliateDetails)? |  yes  |  |
 | shipmentStatus | String? |  yes  |  |
 | deliverySlot | [String: Any]? |  yes  |  |
 | lockStatus | Bool? |  yes  |  |
 | vertical | String? |  yes  |  |
 | dpAssignment | Bool? |  yes  |  |
 | gstDetails | [GSTDetailsData](#GSTDetailsData)? |  yes  |  |
 | userAgent | String? |  yes  |  |
 | billingDetails | [UserDetailsData](#UserDetailsData)? |  yes  |  |
 | bags | [[OrderBags](#OrderBags)]? |  yes  |  |
 | payments | [ShipmentPayments](#ShipmentPayments)? |  yes  |  |
 | companyDetails | [CompanyDetails](#CompanyDetails)? |  yes  |  |
 | totalItems | Int? |  yes  |  |
 | paymentMode | String? |  yes  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | order | [OrderDetailsData](#OrderDetailsData)? |  yes  |  |
 | packagingType | String? |  yes  |  |
 | status | [ShipmentStatusData](#ShipmentStatusData)? |  yes  |  |
 | forwardShipmentId | String? |  yes  |  |
 | enableDpTracking | Bool? |  yes  |  |
 | priorityText | String? |  yes  |  |
 | invoice | [InvoiceInfo](#InvoiceInfo)? |  yes  |  |
 | deliveryDetails | [UserDetailsData](#UserDetailsData)? |  yes  |  |
 | dpDetails | [DPDetailsData](#DPDetailsData)? |  yes  |  |
 | estimatedSlaTime | String? |  yes  |  |
 | operationalStatus | String? |  yes  |  |
 | shipmentCreatedAt | String? |  yes  |  |
 | fulfillingStore | [FulfillingStore](#FulfillingStore)? |  yes  |  |
 | bagStatusHistory | [[BagStatusHistory](#BagStatusHistory)]? |  yes  |  |
 | trackingList | [[TrackingList](#TrackingList)]? |  yes  |  |
 | shipmentId | String |  no  |  |
 | customMeta | [[String: Any]]? |  yes  |  |
 | paymentMethods | [String: [PaymentMethod](#PaymentMethod)]? |  yes  |  |
 | meta | [ShipmentMeta](#ShipmentMeta)? |  yes  |  |
 | invoiceId | String? |  yes  |  |
 | shipmentQuantity | Int? |  yes  |  |
 | user | [UserDataInfo](#UserDataInfo)? |  yes  |  |
 | totalBags | Int? |  yes  |  |
 | pickedDate | String? |  yes  |  |
 | shipmentImages | [String]? |  yes  |  |
 | shipmentDetails | [ShipmentDetails](#ShipmentDetails)? |  yes  |  |
 | platformLogo | String? |  yes  |  |

---


 
 
 #### [ShipmentInfoResponse](#ShipmentInfoResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | shipments | [[PlatformShipment](#PlatformShipment)]? |  yes  |  |
 | success | Bool |  no  |  |

---


 
 
 #### [AssetByShipment](#AssetByShipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | expiresIn | String |  no  |  |
 | assets | [String: String]? |  yes  |  |
 | shipmentId | String |  no  |  |

---


 
 
 #### [ResponseGetAssetShipment](#ResponseGetAssetShipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | presignedType | String |  no  |  |
 | success | Bool |  no  |  |
 | result | [[AssetByShipment](#AssetByShipment)] |  no  |  |

---


 
 
 #### [TransactionData](#TransactionData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  |  |
 | currency | String? |  yes  |  |
 | entity | String? |  yes  |  |
 | paymentId | String? |  yes  |  |
 | transactionId | String? |  yes  |  |
 | terminalId | String? |  yes  |  |
 | amountPaid | Double? |  yes  |  |
 | uniqueReferenceNumber | String? |  yes  |  |

---


 
 
 #### [PlatformUserDetails](#PlatformUserDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | platformUserFirstName | String? |  yes  |  |
 | platformUserId | String? |  yes  |  |
 | platformUserEmployeeCode | String? |  yes  |  |
 | platformUserLastName | String? |  yes  |  |

---


 
 
 #### [BillingStaffDetails](#BillingStaffDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | employeeCode | String? |  yes  |  |
 | user | String? |  yes  |  |
 | firstName | String? |  yes  |  |
 | staffId | Int? |  yes  |  |
 | lastName | String? |  yes  |  |

---


 
 
 #### [OrderMeta](#OrderMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | comment | String? |  yes  |  |
 | orderType | String? |  yes  |  |
 | paymentType | String? |  yes  |  |
 | orderingStore | Int? |  yes  |  |
 | companyLogo | String? |  yes  |  |
 | transactionData | [TransactionData](#TransactionData)? |  yes  |  |
 | orderChildEntities | [String]? |  yes  |  |
 | staff | [String: Any]? |  yes  |  |
 | customerNote | String? |  yes  |  |
 | cartId | Int? |  yes  |  |
 | platformUserDetails | [PlatformUserDetails](#PlatformUserDetails)? |  yes  |  |
 | billingStaffDetails | [BillingStaffDetails](#BillingStaffDetails)? |  yes  |  |
 | currencySymbol | String? |  yes  |  |
 | files | [[String: Any]]? |  yes  |  |
 | orderPlatform | String? |  yes  |  |
 | extraMeta | [String: Any]? |  yes  |  |
 | mongoCartId | Int? |  yes  |  |
 | employeeId | Int? |  yes  |  |
 | orderTags | [[String: Any]]? |  yes  |  |

---


 
 
 #### [TaxDetails](#TaxDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstin | String? |  yes  |  |
 | panNo | String? |  yes  |  |

---


 
 
 #### [OrderData](#OrderData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | prices | [Prices](#Prices)? |  yes  |  |
 | fyndOrderId | String |  no  |  |
 | paymentMethods | [String: [PaymentMethod](#PaymentMethod)]? |  yes  |  |
 | meta | [OrderMeta](#OrderMeta)? |  yes  |  |
 | taxDetails | [TaxDetails](#TaxDetails)? |  yes  |  |
 | orderDate | String |  no  |  |

---


 
 
 #### [OrderDetailsResponse](#OrderDetailsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | order | [OrderData](#OrderData)? |  yes  |  |
 | shipments | [[PlatformShipment](#PlatformShipment)]? |  yes  |  |
 | success | Bool |  no  |  |

---


 
 
 #### [SubLane](#SubLane)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |
 | text | String? |  yes  |  |
 | actions | [[String: Any]]? |  yes  |  |
 | totalItems | Int? |  yes  |  |
 | index | Int? |  yes  |  |

---


 
 
 #### [SuperLane](#SuperLane)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | options | [[SubLane](#SubLane)]? |  yes  |  |
 | totalItems | Int? |  yes  |  |
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
 | display | String? |  yes  |  |
 | value | String? |  yes  |  |
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
 | userInfo | [UserDataInfo](#UserDataInfo)? |  yes  |  |
 | shipments | [[PlatformShipment](#PlatformShipment)]? |  yes  |  |
 | breakupValues | [[PlatformBreakupValues](#PlatformBreakupValues)]? |  yes  |  |
 | channel | [PlatformChannel](#PlatformChannel)? |  yes  |  |
 | orderId | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | totalOrderValue | Double? |  yes  |  |
 | orderValue | Double? |  yes  |  |
 | orderCreatedTime | String? |  yes  |  |
 | paymentMode | String? |  yes  |  |

---


 
 
 #### [OrderListingResponse](#OrderListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | totalCount | Int? |  yes  |  |
 | success | Bool? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |
 | lane | String? |  yes  |  |
 | items | [[PlatformOrderItems](#PlatformOrderItems)]? |  yes  |  |

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
 | options | [[Options](#Options)]? |  yes  |  |
 | key | String |  no  |  |
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
 | updatedTime | String? |  yes  |  |
 | status | String? |  yes  |  |
 | rawStatus | String? |  yes  |  |
 | accountName | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | reason | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | lastLocationRecievedAt | String? |  yes  |  |
 | shipmentType | String? |  yes  |  |
 | awb | String? |  yes  |  |

---


 
 
 #### [PlatformShipmentTrack](#PlatformShipmentTrack)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [String: Any]? |  yes  |  |
 | results | [[PlatformTrack](#PlatformTrack)]? |  yes  |  |

---


 
 
 #### [FilterInfoOption](#FilterInfoOption)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | [String: Any]? |  yes  |  |
 | text | String |  no  |  |
 | name | String? |  yes  |  |
 | minSearchSize | Int? |  yes  |  |
 | showUi | Bool? |  yes  |  |
 | placeholderText | String? |  yes  |  |

---


 
 
 #### [FiltersInfo](#FiltersInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String |  no  |  |
 | text | String |  no  |  |
 | options | [[FilterInfoOption](#FilterInfoOption)]? |  yes  |  |
 | type | String |  no  |  |
 | required | Bool? |  yes  |  |
 | placeholderText | String? |  yes  |  |

---


 
 
 #### [AdvanceFilterInfo](#AdvanceFilterInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filters | [[FiltersInfo](#FiltersInfo)]? |  yes  |  |
 | actionCentre | [[FiltersInfo](#FiltersInfo)]? |  yes  |  |
 | processed | [[FiltersInfo](#FiltersInfo)]? |  yes  |  |
 | appliedFilters | [String: Any]? |  yes  |  |
 | page | [String: Any]? |  yes  |  |
 | returned | [[FiltersInfo](#FiltersInfo)]? |  yes  |  |
 | unfulfilled | [[FiltersInfo](#FiltersInfo)]? |  yes  |  |

---


 
 
 #### [FiltersResponse](#FiltersResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | advanceFilter | [AdvanceFilterInfo](#AdvanceFilterInfo)? |  yes  |  |
 | globalFilter | [[FiltersInfo](#FiltersInfo)]? |  yes  |  |

---


 
 
 #### [Success](#Success)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [OmsReports](#OmsReports)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reportCreatedAt | String? |  yes  |  |
 | status | String? |  yes  |  |
 | requestDetails | [String: Any]? |  yes  |  |
 | reportType | String? |  yes  |  |
 | reportName | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | s3Key | String? |  yes  |  |
 | reportRequestedAt | String? |  yes  |  |
 | reportId | String? |  yes  |  |

---


 
 
 #### [JioCodeUpsertDataSet](#JioCodeUpsertDataSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemId | String? |  yes  |  |
 | articleId | String? |  yes  |  |
 | companyId | String? |  yes  |  |
 | jioCode | String? |  yes  |  |

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
 | identifier | String? |  yes  |  |
 | error | [[NestedErrorSchemaDataSet](#NestedErrorSchemaDataSet)]? |  yes  |  |
 | success | Bool? |  yes  |  |
 | traceId | String? |  yes  |  |

---


 
 
 #### [URL](#URL)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String? |  yes  |  |

---


 
 
 #### [FileResponse](#FileResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fileName | String? |  yes  | Name of the file |
 | cdn | [URL](#URL)? |  yes  |  |

---


 
 
 #### [BulkActionTemplate](#BulkActionTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |
 | text | String? |  yes  |  |

---


 
 
 #### [BulkActionTemplateResponse](#BulkActionTemplateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | templateXSlug | [[BulkActionTemplate](#BulkActionTemplate)]? |  yes  | Allowed bulk action template slugs |

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
 | displayName | String? |  yes  |  |
 | qcType | [String]? |  yes  |  |
 | questionSet | [[QuestionSet](#QuestionSet)]? |  yes  |  |
 | id | Int? |  yes  |  |

---


 
 
 #### [PlatformShipmentReasonsResponse](#PlatformShipmentReasonsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | reasons | [[Reason](#Reason)]? |  yes  |  |

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
 | value | String |  no  |  |
 | legalName | String |  no  |  |
 | dsType | String |  no  |  |
 | verified | Bool |  no  |  |
 | url | String? |  yes  |  |

---


 
 
 #### [StoreDocuments](#StoreDocuments)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gst | [Document](#Document)? |  yes  |  |

---


 
 
 #### [EInvoicePortalDetails](#EInvoicePortalDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | String? |  yes  |  |
 | password | String? |  yes  |  |
 | username | String? |  yes  |  |

---


 
 
 #### [StoreMeta](#StoreMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | notificationEmails | [String]? |  yes  |  |
 | gstCredentials | [StoreGstCredentials](#StoreGstCredentials) |  no  |  |
 | additionalContactDetails | [String: Any]? |  yes  |  |
 | productReturnConfig | [String: Any]? |  yes  |  |
 | gstNumber | String? |  yes  |  |
 | displayName | String |  no  |  |
 | documents | [StoreDocuments](#StoreDocuments)? |  yes  |  |
 | timing | [[String: Any]]? |  yes  |  |
 | stage | String |  no  |  |
 | ewaybillPortalDetails | [String: Any]? |  yes  |  |
 | einvoicePortalDetails | [EInvoicePortalDetails](#EInvoicePortalDetails)? |  yes  |  |

---


 
 
 #### [StoreAddress](#StoreAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | city | String |  no  |  |
 | phone | String |  no  |  |
 | area | String? |  yes  |  |
 | longitude | Double |  no  |  |
 | address2 | String? |  yes  |  |
 | country | String |  no  |  |
 | address1 | String |  no  |  |
 | pincode | Int |  no  |  |
 | createdAt | String |  no  |  |
 | latitude | Double |  no  |  |
 | landmark | String? |  yes  |  |
 | contactPerson | String |  no  |  |
 | countryCode | String |  no  |  |
 | state | String |  no  |  |
 | updatedAt | String |  no  |  |
 | version | String? |  yes  |  |
 | addressType | String |  no  |  |
 | addressCategory | String |  no  |  |
 | email | String? |  yes  |  |

---


 
 
 #### [Store](#Store)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeActiveFrom | String? |  yes  |  |
 | isEnabledForRecon | Bool? |  yes  |  |
 | city | String |  no  |  |
 | vatNo | String? |  yes  |  |
 | mallName | String? |  yes  |  |
 | alohomoraUserId | Int? |  yes  |  |
 | phone | Int |  no  |  |
 | companyId | Int |  no  |  |
 | longitude | Double |  no  |  |
 | address2 | String? |  yes  |  |
 | orderIntegrationId | String? |  yes  |  |
 | country | String |  no  |  |
 | packagingMaterialCount | Int? |  yes  |  |
 | address1 | String |  no  |  |
 | parentStoreId | Int? |  yes  |  |
 | pincode | String |  no  |  |
 | sId | String |  no  |  |
 | createdAt | String |  no  |  |
 | brandId | [String: Any]? |  yes  |  |
 | latitude | Double |  no  |  |
 | fulfillmentChannel | String |  no  |  |
 | storeEmail | String |  no  |  |
 | brandStoreTags | [String]? |  yes  |  |
 | contactPerson | String |  no  |  |
 | code | String? |  yes  |  |
 | isArchived | Bool? |  yes  |  |
 | locationType | String |  no  |  |
 | name | String |  no  |  |
 | state | String |  no  |  |
 | updatedAt | String? |  yes  |  |
 | meta | [StoreMeta](#StoreMeta) |  no  |  |
 | loginUsername | String |  no  |  |
 | storeAddressJson | [StoreAddress](#StoreAddress)? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | mallArea | String? |  yes  |  |

---


 
 
 #### [Attributes](#Attributes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandName | String? |  yes  |  |
 | name | String? |  yes  |  |
 | primaryColor | String? |  yes  |  |
 | marketerAddress | String? |  yes  |  |
 | primaryMaterial | String? |  yes  |  |
 | essential | String? |  yes  |  |
 | primaryColorHex | String? |  yes  |  |
 | marketerName | String? |  yes  |  |
 | gender | [String]? |  yes  |  |

---


 
 
 #### [Item](#Item)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | color | String? |  yes  |  |
 | l1CategoryId | Int? |  yes  |  |
 | departmentId | Int? |  yes  |  |
 | itemId | Int |  no  |  |
 | l2CategoryId | Int? |  yes  |  |
 | attributes | [Attributes](#Attributes) |  no  |  |
 | brand | String |  no  |  |
 | canCancel | Bool? |  yes  |  |
 | l3CategoryName | String? |  yes  |  |
 | brandId | Int |  no  |  |
 | branchUrl | String? |  yes  |  |
 | l2Category | [String]? |  yes  |  |
 | lastUpdatedAt | String? |  yes  |  |
 | l3Category | Int? |  yes  |  |
 | code | String? |  yes  |  |
 | slugKey | String |  no  |  |
 | webstoreProductUrl | String? |  yes  |  |
 | l1Category | [String]? |  yes  |  |
 | name | String |  no  |  |
 | meta | [String: Any]? |  yes  |  |
 | canReturn | Bool? |  yes  |  |
 | image | [String] |  no  |  |
 | gender | String? |  yes  |  |
 | size | String |  no  |  |

---


 
 
 #### [BagGSTDetails](#BagGSTDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstinCode | String? |  yes  |  |
 | cgstTaxPercentage | Double |  no  |  |
 | brandCalculatedAmount | Double |  no  |  |
 | igstTaxPercentage | Double |  no  |  |
 | gstFee | Double |  no  |  |
 | hsnCode | String |  no  |  |
 | valueOfGood | Double |  no  |  |
 | sgstTaxPercentage | Double |  no  |  |
 | gstTaxPercentage | Double |  no  |  |
 | isDefaultHsnCode | Bool? |  yes  |  |
 | igstGstFee | String |  no  |  |
 | sgstGstFee | String |  no  |  |
 | gstTag | String |  no  |  |
 | taxCollectedAtSource | Double |  no  |  |
 | hsnCodeId | String |  no  |  |
 | cgstGstFee | String |  no  |  |

---


 
 
 #### [Brand](#Brand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandId | Int |  no  |  |
 | logo | String? |  yes  |  |
 | brandName | String |  no  |  |
 | creditNoteExpiryDays | Int? |  yes  |  |
 | pickupLocation | String? |  yes  |  |
 | isVirtualInvoice | Bool? |  yes  |  |
 | createdOn | Int? |  yes  |  |
 | invoicePrefix | String? |  yes  |  |
 | creditNoteAllowed | Bool? |  yes  |  |
 | startDate | String? |  yes  |  |
 | scriptLastRan | String? |  yes  |  |
 | modifiedOn | Int? |  yes  |  |
 | company | String |  no  |  |

---


 
 
 #### [ArticleDetails](#ArticleDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | [String: Any]? |  yes  |  |

---


 
 
 #### [BagReturnableCancelableStatus1](#BagReturnableCancelableStatus1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isCustomerReturnAllowed | Bool |  no  |  |
 | canBeCancelled | Bool |  no  |  |
 | isActive | Bool |  no  |  |
 | isReturnable | Bool |  no  |  |
 | enableTracking | Bool |  no  |  |

---


 
 
 #### [BagDetailsPlatformResponse](#BagDetailsPlatformResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | journeyType | String |  no  |  |
 | restoreCoupon | Bool? |  yes  |  |
 | article | [Article](#Article) |  no  |  |
 | orderingStore | [Store](#Store)? |  yes  |  |
 | entityType | String? |  yes  |  |
 | affiliateDetails | [AffiliateDetails](#AffiliateDetails)? |  yes  |  |
 | lineNumber | Int? |  yes  |  |
 | currentStatus | [BagStatusHistory](#BagStatusHistory) |  no  |  |
 | item | [Item](#Item) |  no  |  |
 | affiliateBagDetails | [AffiliateBagDetails](#AffiliateBagDetails) |  no  |  |
 | qcRequired | [String: Any]? |  yes  |  |
 | gstDetails | [BagGSTDetails](#BagGSTDetails) |  no  |  |
 | orderIntegrationId | String? |  yes  |  |
 | reasons | [[String: Any]]? |  yes  |  |
 | quantity | Double? |  yes  |  |
 | brand | [Brand](#Brand) |  no  |  |
 | sellerIdentifier | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | originalBagList | [Int]? |  yes  |  |
 | parentPromoBags | [String: Any]? |  yes  |  |
 | articleDetails | [ArticleDetails](#ArticleDetails)? |  yes  |  |
 | financialBreakup | [[FinancialBreakup](#FinancialBreakup)] |  no  |  |
 | prices | [Prices](#Prices) |  no  |  |
 | status | [BagReturnableCancelableStatus1](#BagReturnableCancelableStatus1) |  no  |  |
 | bType | String? |  yes  |  |
 | noOfBagsOrder | Int? |  yes  |  |
 | operationalStatus | String? |  yes  |  |
 | currentOperationalStatus | [BagStatusHistory](#BagStatusHistory) |  no  |  |
 | bagStatusHistory | [BagStatusHistory](#BagStatusHistory)? |  yes  |  |
 | restorePromos | [String: Any]? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | bagUpdateTime | Double? |  yes  |  |
 | dates | [Dates](#Dates)? |  yes  |  |
 | identifier | String? |  yes  |  |
 | bId | Int |  no  |  |
 | meta | [BagMeta](#BagMeta)? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | bagStatus | [[BagStatusHistory](#BagStatusHistory)] |  no  |  |
 | appliedPromos | [[String: Any]]? |  yes  |  |

---


 
 
 #### [ErrorResponse](#ErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | String |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [BagsPage](#BagsPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | current | Int |  no  |  |
 | hasNext | Bool |  no  |  |
 | pageType | String |  no  |  |
 | itemTotal | Int |  no  |  |
 | size | Int |  no  |  |

---


 
 
 #### [GetBagsPlatformResponse](#GetBagsPlatformResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[BagDetailsPlatformResponse](#BagDetailsPlatformResponse)] |  no  |  |
 | page | [BagsPage](#BagsPage) |  no  |  |

---


 
 
 #### [GeneratePosOrderReceiptResponse](#GeneratePosOrderReceiptResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentReceipt | String? |  yes  |  |
 | orderId | String? |  yes  |  |
 | success | Bool? |  yes  |  |
 | invoiceReceipt | String? |  yes  |  |

---


 
 
 #### [InvalidateShipmentCachePayload](#InvalidateShipmentCachePayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateBagIds | [String]? |  yes  | Affiliate Bag Ids to clear cache of shipment Ids mapped to it |
 | shipmentIds | [String]? |  yes  | Shipment Ids to clear cache |
 | bagIds | [String]? |  yes  | Bag Ids to clear cache of shipment Ids mapped to it |

---


 
 
 #### [InvalidateShipmentCacheNestedResponse](#InvalidateShipmentCacheNestedResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentId | String? |  yes  |  |
 | message | String? |  yes  |  |
 | error | String? |  yes  |  |
 | status | Int? |  yes  |  |

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
 | message | String? |  yes  |  |
 | status | Int? |  yes  |  |

---


 
 
 #### [StoreReassign](#StoreReassign)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | setId | String? |  yes  |  |
 | itemId | String? |  yes  |  |
 | storeId | Int |  no  |  |
 | affiliateId | String? |  yes  |  |
 | affiliateOrderId | String? |  yes  |  |
 | mongoArticleId | String? |  yes  |  |
 | fyndOrderId | String? |  yes  |  |
 | bagId | Int? |  yes  |  |
 | reasonIds | [Int]? |  yes  |  |
 | affiliateBagId | String? |  yes  |  |

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
 | affiliateShipmentId | String? |  yes  | Application/Affiliate Shipment ID, Required if the ID is missing |
 | reasonText | String |  no  | Reason For Shipment/Bag Action |
 | affiliateId | String? |  yes  | Application/Affiliate ID, Required if the ID is missing |
 | affiliateOrderId | String? |  yes  | Application/Affiliate Order ID, Required if the ID is missing |
 | id | String? |  yes  | Shipment ID if 'entity_type': shipments | Bag Id if 'entity_type': bags |
 | affiliateBagId | String? |  yes  | Application/Affiliate Bag ID, Required if the ID is missing |

---


 
 
 #### [UpdateShipmentLockPayload](#UpdateShipmentLockPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | entityType | String |  no  | Expected entity_type: [bags, shipments] |
 | actionType | String |  no  | Expected action_type: [complete, operational, financial] |
 | entities | [[Entities](#Entities)] |  no  | Shipment/Entity |
 | action | String |  no  | Expected Actions: [lock, unlock, check] |

---


 
 
 #### [OriginalFilter](#OriginalFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateId | String? |  yes  | Affiliate ID |
 | affiliateShipmentId | String? |  yes  | Affiliate Shipment ID |

---


 
 
 #### [Bags](#Bags)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateOrderId | String? |  yes  | Application/Affiliate Order ID, Required if the ID is missing |
 | bagId | Int? |  yes  | Bag Id |
 | isLocked | Bool? |  yes  | Is Bag Locked |
 | affiliateBagId | String? |  yes  | Application/Affiliate Bag ID, Required if the ID is missing |

---


 
 
 #### [CheckResponse](#CheckResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateShipmentId | String? |  yes  | Affiliate Shipment ID |
 | lockStatus | String? |  yes  | Lock Status: Expected lock_status: [complete, operational, financial] |
 | originalFilter | [OriginalFilter](#OriginalFilter)? |  yes  | Filter |
 | isBagLocked | Bool? |  yes  | Is Bag Locked |
 | affiliateId | String? |  yes  | Affiliate ID |
 | bags | [[Bags](#Bags)]? |  yes  |  |
 | shipmentId | String? |  yes  | Shipment ID |
 | status | String? |  yes  | Status |
 | isShipmentLocked | Bool? |  yes  | Is Shipment Locked |

---


 
 
 #### [UpdateShipmentLockResponse](#UpdateShipmentLockResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | checkResponse | [[CheckResponse](#CheckResponse)]? |  yes  | Entity Lock Status, If the action input as 'check' |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [AnnouncementResponse](#AnnouncementResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdAt | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | id | Int |  no  |  |
 | platformName | String? |  yes  |  |
 | fromDatetime | String? |  yes  |  |
 | platformId | String? |  yes  |  |
 | logoUrl | String? |  yes  |  |
 | title | String? |  yes  |  |
 | description | String? |  yes  |  |
 | toDatetime | String? |  yes  |  |

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
 | callId | String |  no  |  |
 | status | Bool |  no  |  |

---


 
 
 #### [ErrorDetail](#ErrorDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [Products](#Products)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lineNumber | Int? |  yes  | Product/Bag Line number for the Product/Bag Identifier |
 | identifier | String? |  yes  | Product/Bag Article/Item Identifier |
 | quantity | Int? |  yes  |  |

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
 | filters | [[ProductsDataUpdatesFilters](#ProductsDataUpdatesFilters)]? |  yes  | Filter for the Product/Bag |
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


 
 
 #### [ProductsReasonsFilters](#ProductsReasonsFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lineNumber | Int? |  yes  | Product/Bag Line number for the Product/Bag Identifier |
 | identifier | String? |  yes  | Product/Bag Article/Item Identifier |
 | quantity | Int? |  yes  |  |

---


 
 
 #### [ProductsReasonsData](#ProductsReasonsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasonId | Int? |  yes  |  |
 | reasonText | String? |  yes  |  |

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
 | reasonId | Int? |  yes  |  |
 | reasonText | String? |  yes  |  |

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
 | products | [[Products](#Products)]? |  yes  | Product/Bag to be updated |
 | dataUpdates | [DataUpdates](#DataUpdates)? |  yes  |  |
 | identifier | String |  no  | Shipment ID |
 | reasons | [ReasonsData](#ReasonsData)? |  yes  |  |

---


 
 
 #### [StatuesRequest](#StatuesRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | excludeBagsNextState | String? |  yes  | State to be change for Remaining Bag/Products |
 | shipments | [[ShipmentsRequest](#ShipmentsRequest)]? |  yes  |  |
 | status | String? |  yes  |  |

---


 
 
 #### [UpdateShipmentStatusRequest](#UpdateShipmentStatusRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | statuses | [[StatuesRequest](#StatuesRequest)]? |  yes  |  |
 | lockAfterTransition | Bool? |  yes  | Lock Shipment After Transition |
 | unlockBeforeTransition | Bool? |  yes  | Unlock Shipment After Transition |
 | forceTransition | Bool? |  yes  | Force Transition |
 | task | Bool? |  yes  | To Run Status Update as a background Task |

---


 
 
 #### [ShipmentsResponse](#ShipmentsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | finalState | [String: Any]? |  yes  |  |
 | identifier | String? |  yes  |  |
 | message | String? |  yes  |  |
 | exception | String? |  yes  |  |
 | stackTrace | String? |  yes  |  |
 | code | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | status | Int? |  yes  |  |

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
 | modeOfPayment | String? |  yes  |  |
 | source | String? |  yes  |  |

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


 
 
 #### [AffiliateInventoryConfig](#AffiliateInventoryConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | order | [AffiliateInventoryOrderConfig](#AffiliateInventoryOrderConfig)? |  yes  |  |
 | inventory | [AffiliateInventoryStoreConfig](#AffiliateInventoryStoreConfig)? |  yes  |  |
 | payment | [AffiliateInventoryPaymentConfig](#AffiliateInventoryPaymentConfig)? |  yes  |  |
 | articleAssignment | [AffiliateInventoryArticleAssignmentConfig](#AffiliateInventoryArticleAssignmentConfig)? |  yes  |  |
 | logistics | [AffiliateInventoryLogisticsConfig](#AffiliateInventoryLogisticsConfig)? |  yes  |  |

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
 | name | String |  no  |  |
 | createdAt | String |  no  |  |
 | id | String |  no  |  |
 | secret | String |  no  |  |
 | owner | String |  no  |  |
 | token | String |  no  |  |
 | updatedAt | String |  no  |  |
 | description | String? |  yes  |  |
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
 | id | String |  no  |  |
 | token | String |  no  |  |

---


 
 
 #### [OrderConfig](#OrderConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateStoreIdMapping | [[AffiliateStoreIdMapping](#AffiliateStoreIdMapping)] |  no  |  |
 | createUser | Bool? |  yes  |  |
 | bagEndState | String? |  yes  |  |
 | storeLookup | String? |  yes  |  |
 | articleLookup | String? |  yes  |  |
 | affiliate | [Affiliate](#Affiliate) |  no  |  |

---


 
 
 #### [OrderPriority](#OrderPriority)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fulfilmentPriorityText | String? |  yes  |  |
 | fulfilmentPriority | Int? |  yes  |  |
 | affiliatePriorityCode | String? |  yes  |  |

---


 
 
 #### [ArticleDetails1](#ArticleDetails1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attributes | [String: Any] |  no  |  |
 | id | String |  no  |  |
 | brandId | Int |  no  |  |
 | dimension | [String: Any] |  no  |  |
 | weight | [String: Any] |  no  |  |
 | category | [String: Any] |  no  |  |
 | quantity | Int |  no  |  |

---


 
 
 #### [LocationDetails](#LocationDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fulfillmentType | String |  no  |  |
 | fulfillmentId | Int |  no  |  |
 | articles | [[ArticleDetails1](#ArticleDetails1)] |  no  |  |

---


 
 
 #### [ShipmentDetails1](#ShipmentDetails1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateShipmentId | String |  no  |  |
 | articles | [[ArticleDetails1](#ArticleDetails1)] |  no  |  |
 | boxType | String? |  yes  |  |
 | dpId | Int? |  yes  |  |
 | fulfillmentId | Int |  no  |  |
 | shipments | Int |  no  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [ShipmentConfig](#ShipmentConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | journey | String |  no  |  |
 | toPincode | String |  no  |  |
 | source | String |  no  |  |
 | locationDetails | [LocationDetails](#LocationDetails)? |  yes  |  |
 | shipment | [[ShipmentDetails1](#ShipmentDetails1)] |  no  |  |
 | identifier | String |  no  |  |
 | paymentMode | String |  no  |  |
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
 | pincode | String |  no  |  |
 | firstName | String |  no  |  |
 | state | String |  no  |  |
 | address2 | String? |  yes  |  |
 | phone | Int |  no  |  |
 | lastName | String |  no  |  |
 | city | String |  no  |  |
 | country | String |  no  |  |
 | mobile | Int |  no  |  |
 | address1 | String? |  yes  |  |
 | email | String |  no  |  |

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
 | unitPrice | Double |  no  |  |
 | itemId | Int |  no  |  |
 | hsnCodeId | String |  no  |  |
 | discount | Double |  no  |  |
 | avlQty | Int |  no  |  |
 | quantity | Int |  no  |  |
 | deliveryCharge | Double |  no  |  |
 | sellerIdentifier | String |  no  |  |
 | affiliateMeta | [String: Any] |  no  |  |
 | companyId | Int |  no  |  |
 | modifiedOn | String |  no  |  |
 | itemSize | String |  no  |  |
 | priceEffective | Double |  no  |  |
 | pdfLinks | [MarketPlacePdf](#MarketPlacePdf)? |  yes  |  |
 | identifier | [String: Any] |  no  |  |
 | id | String |  no  |  |
 | storeId | Int |  no  |  |
 | transferPrice | Int |  no  |  |
 | sku | String |  no  |  |
 | amountPaid | Double |  no  |  |
 | affiliateStoreId | String |  no  |  |
 | fyndStoreId | String |  no  |  |
 | priceMarked | Double |  no  |  |

---


 
 
 #### [UserData](#UserData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shippingUser | [OrderUser](#OrderUser)? |  yes  |  |
 | billingUser | [OrderUser](#OrderUser)? |  yes  |  |

---


 
 
 #### [OrderInfo](#OrderInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderPriority | [OrderPriority](#OrderPriority)? |  yes  |  |
 | affiliateOrderId | String? |  yes  |  |
 | shipment | [ShipmentData](#ShipmentData)? |  yes  |  |
 | orderValue | Double |  no  |  |
 | codCharges | Double |  no  |  |
 | shippingAddress | [OrderUser](#OrderUser) |  no  |  |
 | bags | [[AffiliateBag](#AffiliateBag)] |  no  |  |
 | billingAddress | [OrderUser](#OrderUser) |  no  |  |
 | deliveryCharges | Double |  no  |  |
 | user | [UserData](#UserData) |  no  |  |
 | discount | Double |  no  |  |
 | payment | [String: Any]? |  yes  |  |
 | items | [String: Any] |  no  |  |
 | coupon | String? |  yes  |  |
 | paymentMode | String |  no  |  |

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
 | displayText | String |  no  |  |
 | id | Int |  no  |  |
 | slug | String |  no  |  |
 | description | String |  no  |  |

---


 
 
 #### [GetActionsResponse](#GetActionsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | permissions | [ActionInfo](#ActionInfo) |  no  |  |

---


 
 
 #### [HistoryDict](#HistoryDict)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | l3Detail | String? |  yes  |  |
 | displayMessage | String? |  yes  |  |
 | createdat | String |  no  |  |
 | user | String |  no  |  |
 | l2Detail | String? |  yes  |  |
 | ticketId | String? |  yes  |  |
 | message | String |  no  |  |
 | bagId | Int? |  yes  |  |
 | l1Detail | String? |  yes  |  |
 | assignedAgent | String? |  yes  |  |
 | type | String |  no  |  |
 | meta | [String: Any]? |  yes  |  |
 | ticketUrl | String? |  yes  |  |

---


 
 
 #### [ShipmentHistoryResponse](#ShipmentHistoryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | activityHistory | [[HistoryDict](#HistoryDict)] |  no  |  |

---


 
 
 #### [PostHistoryFilters](#PostHistoryFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lineNumber | String? |  yes  |  |
 | shipmentId | String |  no  |  |
 | identifier | String? |  yes  |  |

---


 
 
 #### [PostHistoryData](#PostHistoryData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userName | String |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [PostActivityHistory](#PostActivityHistory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filters | [[PostHistoryFilters](#PostHistoryFilters)] |  no  |  |
 | data | [PostHistoryData](#PostHistoryData) |  no  |  |

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
 | amountPaid | Int |  no  |  |
 | phoneNumber | Int |  no  |  |
 | countryCode | String |  no  |  |
 | orderId | String |  no  |  |
 | customerName | String |  no  |  |
 | shipmentId | Int |  no  |  |
 | message | String |  no  |  |
 | brandName | String |  no  |  |
 | paymentMode | String |  no  |  |

---


 
 
 #### [SendSmsPayload](#SendSmsPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String |  no  |  |
 | data | [SmsDataPayload](#SmsDataPayload)? |  yes  |  |
 | bagId | Int |  no  |  |

---


 
 
 #### [OrderDetails](#OrderDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdAt | String? |  yes  |  |
 | fyndOrderId | String? |  yes  |  |

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
 | id | Int |  no  |  |
 | shipmentId | String? |  yes  |  |
 | bagList | [Int]? |  yes  |  |
 | remarks | String? |  yes  |  |
 | meta | [Meta1](#Meta1) |  no  |  |
 | status | String? |  yes  |  |

---


 
 
 #### [OrderStatusData](#OrderStatusData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderDetails | [OrderDetails](#OrderDetails) |  no  |  |
 | shipmentDetails | [[ShipmentDetail](#ShipmentDetail)]? |  yes  |  |
 | errors | [String]? |  yes  |  |

---


 
 
 #### [OrderStatusResult](#OrderStatusResult)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | result | [[OrderStatusData](#OrderStatusData)]? |  yes  |  |
 | success | String |  no  |  |

---


 
 
 #### [Dimension](#Dimension)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | length | Double? |  yes  |  |
 | packagingType | String? |  yes  |  |
 | height | String? |  yes  |  |
 | weight | String? |  yes  |  |
 | width | Double? |  yes  |  |

---


 
 
 #### [UpdatePackagingDimensionsPayload](#UpdatePackagingDimensionsPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentId | String |  no  |  |
 | currentStatus | String |  no  |  |
 | dimension | [[Dimension](#Dimension)] |  no  |  |

---


 
 
 #### [UpdatePackagingDimensionsResponse](#UpdatePackagingDimensionsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [Tax](#Tax)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | breakup | [[String: Any]]? |  yes  |  |
 | amount | [String: Any] |  no  |  |
 | rate | Double |  no  |  |

---


 
 
 #### [Charge](#Charge)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | amount | [String: Any] |  no  |  |
 | tax | [Tax](#Tax)? |  yes  |  |
 | code | String? |  yes  |  |
 | type | String |  no  |  |

---


 
 
 #### [PaymentMethod1](#PaymentMethod1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | amount | Double |  no  |  |
 | transactionData | [String: Any]? |  yes  |  |
 | refundBy | String |  no  |  |
 | meta | [String: Any]? |  yes  |  |
 | collectBy | String |  no  |  |
 | mode | String |  no  |  |

---


 
 
 #### [PaymentInfo](#PaymentInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentMethods | [[PaymentMethod1](#PaymentMethod1)]? |  yes  |  |
 | primaryMode | String |  no  |  |

---


 
 
 #### [ShippingInfo](#ShippingInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slot | [[String: Any]]? |  yes  |  |
 | houseNo | String? |  yes  |  |
 | floorNo | String? |  yes  |  |
 | gender | String? |  yes  |  |
 | pincode | String |  no  |  |
 | address2 | String? |  yes  |  |
 | shippingType | String? |  yes  |  |
 | geoLocation | [String: Any]? |  yes  |  |
 | landmark | String? |  yes  |  |
 | alternateMobileNumber | String? |  yes  |  |
 | firstName | String |  no  |  |
 | state | String |  no  |  |
 | primaryEmail | String |  no  |  |
 | countryCode | String? |  yes  |  |
 | middleName | String? |  yes  |  |
 | address1 | String |  no  |  |
 | primaryMobileNumber | String |  no  |  |
 | alternateEmail | String? |  yes  |  |
 | stateCode | String? |  yes  |  |
 | city | String |  no  |  |
 | country | String |  no  |  |
 | title | String? |  yes  |  |
 | externalCustomerCode | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | customerCode | String? |  yes  |  |
 | lastName | String? |  yes  |  |

---


 
 
 #### [LineItem](#LineItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | charges | [[Charge](#Charge)]? |  yes  |  |
 | sellerIdentifier | String |  no  |  |
 | externalLineId | String? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | customMessasge | String? |  yes  |  |

---


 
 
 #### [ProcessingDates](#ProcessingDates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | packByDate | String? |  yes  |  |
 | dpPickupSlot | [String: Any]? |  yes  |  |
 | customerPickupSlot | [String: Any]? |  yes  |  |
 | dispatchByDate | String? |  yes  |  |
 | dispatchAfterDate | String? |  yes  |  |
 | confirmByDate | String? |  yes  |  |

---


 
 
 #### [Shipment](#Shipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lineItems | [[LineItem](#LineItem)] |  no  |  |
 | externalShipmentId | String? |  yes  |  |
 | locationId | Int |  no  |  |
 | processingDates | [ProcessingDates](#ProcessingDates)? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | priority | Int? |  yes  |  |

---


 
 
 #### [BillingInfo](#BillingInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | houseNo | String? |  yes  |  |
 | floorNo | String? |  yes  |  |
 | gender | String? |  yes  |  |
 | pincode | String |  no  |  |
 | address2 | String? |  yes  |  |
 | alternateMobileNumber | String? |  yes  |  |
 | firstName | String |  no  |  |
 | state | String |  no  |  |
 | primaryEmail | String |  no  |  |
 | countryCode | String? |  yes  |  |
 | middleName | String? |  yes  |  |
 | address1 | String |  no  |  |
 | primaryMobileNumber | String |  no  |  |
 | alternateEmail | String? |  yes  |  |
 | stateCode | String? |  yes  |  |
 | city | String |  no  |  |
 | country | String |  no  |  |
 | title | String? |  yes  |  |
 | externalCustomerCode | String? |  yes  |  |
 | customerCode | String? |  yes  |  |
 | lastName | String? |  yes  |  |

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
 | externalCreationDate | String? |  yes  |  |
 | charges | [[Charge](#Charge)]? |  yes  |  |
 | paymentInfo | [PaymentInfo](#PaymentInfo) |  no  |  |
 | shippingInfo | [ShippingInfo](#ShippingInfo) |  no  |  |
 | currencyInfo | [String: Any]? |  yes  |  |
 | config | [String: Any]? |  yes  |  |
 | shipments | [[Shipment](#Shipment)] |  no  |  |
 | billingInfo | [BillingInfo](#BillingInfo) |  no  |  |
 | taxInfo | [TaxInfo](#TaxInfo)? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | externalOrderId | String? |  yes  |  |

---


 
 
 #### [CreateOrderErrorReponse](#CreateOrderErrorReponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | info | [String: Any]? |  yes  |  |
 | requestId | String? |  yes  |  |
 | message | String |  no  |  |
 | exception | String? |  yes  |  |
 | stackTrace | String? |  yes  |  |
 | code | String? |  yes  |  |
 | meta | String? |  yes  |  |
 | status | Int |  no  |  |

---


 
 
 #### [PaymentMethods](#PaymentMethods)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | collectBy | String? |  yes  |  |
 | mode | String? |  yes  |  |
 | refundBy | String? |  yes  |  |

---


 
 
 #### [CreateChannelPaymentInfo](#CreateChannelPaymentInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | modeOfPayment | String? |  yes  |  |
 | paymentMethods | [[PaymentMethods](#PaymentMethods)]? |  yes  |  |
 | source | String? |  yes  |  |

---


 
 
 #### [DpConfiguration](#DpConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shippingBy | String? |  yes  |  |

---


 
 
 #### [CreateChannelConfig](#CreateChannelConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentAssignment | String? |  yes  |  |
 | paymentInfo | [CreateChannelPaymentInfo](#CreateChannelPaymentInfo)? |  yes  |  |
 | dpConfiguration | [DpConfiguration](#DpConfiguration)? |  yes  |  |
 | locationReassignment | Bool? |  yes  |  |
 | logoUrl | [String: Any]? |  yes  |  |
 | lockStates | [String]? |  yes  |  |

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
 | acknowledged | Bool? |  yes  |  |
 | isUpserted | Bool? |  yes  |  |
 | isInserted | Bool? |  yes  |  |

---


 
 
 #### [UploadConsent](#UploadConsent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | manifestId | String |  no  |  |
 | consentUrl | String |  no  |  |

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
 | orderDetails | [[FyndOrderIdList](#FyndOrderIdList)]? |  yes  |  |
 | endDate | String |  no  |  |
 | startDate | String |  no  |  |
 | mobile | Int |  no  |  |

---


 
 
 #### [BagStateTransitionMap](#BagStateTransitionMap)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fynd | [String: Any]? |  yes  |  |
 | affiliate | [String: Any]? |  yes  |  |

---


 
 
 #### [FetchCreditBalanceRequestPayload](#FetchCreditBalanceRequestPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customerMobileNumber | String |  no  |  |
 | affiliateId | String |  no  |  |
 | sellerId | String |  no  |  |

---


 
 
 #### [CreditBalanceInfo](#CreditBalanceInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customerMobileNumber | String? |  yes  |  |
 | totalCreditedBalance | String? |  yes  |  |
 | reason | String? |  yes  |  |

---


 
 
 #### [FetchCreditBalanceResponsePayload](#FetchCreditBalanceResponsePayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [CreditBalanceInfo](#CreditBalanceInfo) |  no  |  |
 | success | Bool |  no  |  |

---


 
 
 #### [RefundModeConfigRequestPayload](#RefundModeConfigRequestPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customerMobileNumber | String? |  yes  |  |
 | affiliateId | String |  no  |  |
 | orderingChannel | String |  no  |  |
 | sellerId | String |  no  |  |
 | fyndOrderId | String |  no  |  |

---


 
 
 #### [SingleRefundModeInfo](#SingleRefundModeInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | displayName | String? |  yes  |  |

---


 
 
 #### [RefundModeInfo](#RefundModeInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | refundModeName | [SingleRefundModeInfo](#SingleRefundModeInfo)? |  yes  |  |

---


 
 
 #### [RefundModeConfigResponsePayload](#RefundModeConfigResponsePayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [RefundModeInfo](#RefundModeInfo) |  no  |  |
 | success | Bool |  no  |  |

---


 
 
 #### [AttachUserOtpData](#AttachUserOtpData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | requestId | String |  no  |  |

---


 
 
 #### [AttachUserInfo](#AttachUserInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String |  no  |  |
 | countryCode | String? |  yes  |  |
 | lastName | String |  no  |  |
 | mobile | Int |  no  |  |

---


 
 
 #### [AttachOrderUser](#AttachOrderUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | otpData | [AttachUserOtpData](#AttachUserOtpData) |  no  |  |
 | userInfo | [AttachUserInfo](#AttachUserInfo) |  no  |  |
 | fyndOrderId | String |  no  |  |

---


 
 
 #### [AttachOrderUserResponse](#AttachOrderUserResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [SendUserMobileOTP](#SendUserMobileOTP)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | String? |  yes  |  |
 | mobile | Int |  no  |  |

---


 
 
 #### [PointBlankOtpData](#PointBlankOtpData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | resendTimer | Int? |  yes  |  |
 | message | String? |  yes  |  |
 | mobile | Int? |  yes  |  |
 | requestId | String? |  yes  |  |

---


 
 
 #### [SendUserMobileOtpResponse](#SendUserMobileOtpResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [PointBlankOtpData](#PointBlankOtpData)? |  yes  |  |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [VerifyOtpData](#VerifyOtpData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | otpCode | Int |  no  |  |
 | requestId | String |  no  |  |

---


 
 
 #### [VerifyMobileOTP](#VerifyMobileOTP)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | otpData | [VerifyOtpData](#VerifyOtpData) |  no  |  |
 | fyndOrderId | String |  no  |  |

---



