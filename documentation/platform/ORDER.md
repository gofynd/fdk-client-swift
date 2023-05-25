



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
* [postShipmentHistory](#postshipmenthistory)
* [getShipmentHistory](#getshipmenthistory)
* [sendSmsNinja](#sendsmsninja)
* [updatePackagingDimensions](#updatepackagingdimensions)
* [createOrder](#createorder)
* [createChannelConfig](#createchannelconfig)
* [getChannelConfig](#getchannelconfig)
* [uploadConsent](#uploadconsent)
* [orderUpdate](#orderupdate)
* [checkOrderStatus](#checkorderstatus)
* [getStateTransitionMap](#getstatetransitionmap)
* [fetchCreditBalanceDetail](#fetchcreditbalancedetail)
* [fetchRefundModeConfig](#fetchrefundmodeconfig)
* [attachOrderUser](#attachorderuser)
* [sendUserMobileOTP](#sendusermobileotp)
* [verifyMobileOTP](#verifymobileotp)
* [eInvoiceRetry](#einvoiceretry)



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
| view | String | yes |  |   
| groupEntity | String? | no |  |  





*Returned Response:*




[FiltersResponse](#FiltersResponse)

List of filters




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
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
  "advance_filter": {
    "unfulfilled": [
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
    "processed": [
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
    "returned": [
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
    "action_centre": [
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


#### getShipmentHistory





```swift
platformClient.order.getShipmentHistory(shipmentId: shipmentId, bagId: bagId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | Int? | no | Shipment Id |   
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


#### eInvoiceRetry





```swift
platformClient.order.eInvoiceRetry(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | EInvoiceRetry | yes | Request body |




*Returned Response:*




[EInvoiceRetryResponse](#EInvoiceRetryResponse)

Manifest will be processed!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---



### Schemas

 
 
 #### [UserDataInfo](#UserDataInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  |  |
 | name | String? |  yes  |  |
 | gender | String? |  yes  |  |
 | isAnonymousUser | Bool? |  yes  |  |
 | avisUserId | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | firstName | String? |  yes  |  |
 | mobile | String? |  yes  |  |
 | lastName | String? |  yes  |  |

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
 | lockMessage | String? |  yes  |  |
 | locked | Bool? |  yes  |  |
 | mto | Bool? |  yes  |  |

---


 
 
 #### [Formatted](#Formatted)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fMax | String? |  yes  |  |
 | fMin | String? |  yes  |  |

---


 
 
 #### [ShipmentTags](#ShipmentTags)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | displayText | String? |  yes  |  |
 | entityType | String? |  yes  |  |

---


 
 
 #### [ShipmentItemMeta](#ShipmentItemMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | packagingName | String? |  yes  |  |
 | shippingZone | String? |  yes  |  |
 | timestamp | [ShipmentTimeStamp](#ShipmentTimeStamp)? |  yes  |  |
 | tags | [[String: Any]]? |  yes  |  |
 | shipmentWeight | Double? |  yes  |  |
 | orderType | String? |  yes  |  |
 | dpOptions | [String: Any]? |  yes  |  |
 | weight | Double? |  yes  |  |
 | shipmentChargeableWeight | Double? |  yes  |  |
 | dpSortKey | String? |  yes  |  |
 | lockData | [LockData](#LockData)? |  yes  |  |
 | assignDpFromSb | Bool? |  yes  |  |
 | parentDpId | String? |  yes  |  |
 | debugInfo | [String: Any]? |  yes  |  |
 | external | [String: Any]? |  yes  |  |
 | bagWeight | [String: Any]? |  yes  |  |
 | activityComment | String? |  yes  |  |
 | ewaybillInfo | [String: Any]? |  yes  |  |
 | formatted | [Formatted](#Formatted)? |  yes  |  |
 | shipmentVolumetricWeight | Double? |  yes  |  |
 | sameStoreAvailable | Bool? |  yes  |  |
 | fulfilmentPriorityText | String? |  yes  |  |
 | shipmentTags | [[ShipmentTags](#ShipmentTags)]? |  yes  |  |
 | isInternational | Bool? |  yes  |  |
 | pdfMedia | [[String: Any]]? |  yes  |  |
 | sla | Double? |  yes  |  |
 | storeInvoiceUpdatedDate | String? |  yes  |  |
 | autoTriggerDpAssignmentAcf | Bool? |  yes  |  |
 | existingDpList | [String]? |  yes  |  |

---


 
 
 #### [PlatformDeliveryAddress](#PlatformDeliveryAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | latitude | Int? |  yes  |  |
 | longitude | Int? |  yes  |  |
 | area | String? |  yes  |  |
 | state | String? |  yes  |  |
 | email | String? |  yes  |  |
 | pincode | String? |  yes  |  |
 | version | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | city | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | contactPerson | String? |  yes  |  |
 | addressCategory | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | country | String? |  yes  |  |
 | landmark | String? |  yes  |  |

---


 
 
 #### [Prices](#Prices)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fyndCredits | Double? |  yes  |  |
 | transferPrice | Double? |  yes  |  |
 | refundCredit | Double? |  yes  |  |
 | refundAmount | Double? |  yes  |  |
 | codCharges | Double? |  yes  |  |
 | couponEffectiveDiscount | Double? |  yes  |  |
 | taxCollectedAtSource | Double? |  yes  |  |
 | brandCalculatedAmount | Double? |  yes  |  |
 | giftPrice | Double? |  yes  |  |
 | deliveryCharge | Double? |  yes  |  |
 | cashback | Double? |  yes  |  |
 | cashbackApplied | Double? |  yes  |  |
 | priceMarked | Double? |  yes  |  |
 | priceEffective | Double? |  yes  |  |
 | valueOfGood | Double? |  yes  |  |
 | promotionEffectiveDiscount | Double? |  yes  |  |
 | pmPriceSplit | Double? |  yes  |  |
 | discount | Double? |  yes  |  |
 | amountPaidRoundoff | Double? |  yes  |  |
 | couponValue | Double? |  yes  |  |
 | amountPaid | Double? |  yes  |  |

---


 
 
 #### [ShipmentStatus](#ShipmentStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bagList | [String]? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | title | String |  no  |  |
 | shipmentId | String? |  yes  |  |
 | currentShipmentStatus | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | status | String |  no  |  |
 | statusCreatedAt | String? |  yes  |  |
 | shipmentStatusId | Int? |  yes  |  |

---


 
 
 #### [BagStateMapper](#BagStateMapper)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | displayName | String |  no  |  |
 | bsId | Int |  no  |  |
 | appStateName | String? |  yes  |  |
 | name | String |  no  |  |
 | appDisplayName | String? |  yes  |  |
 | appFacing | Bool? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | notifyCustomer | Bool? |  yes  |  |
 | stateType | String |  no  |  |
 | journeyType | String |  no  |  |

---


 
 
 #### [BagStatusHistory](#BagStatusHistory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | updatedAt | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | bagStateMapper | [BagStateMapper](#BagStateMapper)? |  yes  |  |
 | deliveryPartnerId | Int? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | appDisplayName | String? |  yes  |  |
 | bagId | Int? |  yes  |  |
 | forward | Bool? |  yes  |  |
 | kafkaSync | Bool? |  yes  |  |
 | reasons | [[String: Any]]? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | stateType | String? |  yes  |  |
 | status | String |  no  |  |
 | storeId | Int? |  yes  |  |
 | stateId | Int? |  yes  |  |
 | bshId | Int? |  yes  |  |
 | deliveryAwbNumber | String? |  yes  |  |

---


 
 
 #### [GSTDetailsData](#GSTDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstFee | Double |  no  |  |
 | gstinCode | String |  no  |  |
 | taxCollectedAtSource | Double |  no  |  |
 | cgstTaxPercentage | Double? |  yes  |  |
 | isDefaultHsnCode | Bool? |  yes  |  |
 | brandCalculatedAmount | Double |  no  |  |
 | sgstTaxPercentage | Double? |  yes  |  |
 | valueOfGood | Double |  no  |  |
 | igstGstFee | String? |  yes  |  |
 | sgstGstFee | String? |  yes  |  |
 | cgstGstFee | String? |  yes  |  |
 | gstTaxPercentage | Double? |  yes  |  |
 | gstTag | String? |  yes  |  |
 | hsnCode | String? |  yes  |  |
 | hsnCodeId | String? |  yes  |  |
 | igstTaxPercentage | Double? |  yes  |  |

---


 
 
 #### [BagReturnableCancelableStatus](#BagReturnableCancelableStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | canBeCancelled | Bool |  no  |  |
 | isCustomerReturnAllowed | Bool |  no  |  |
 | isActive | Bool |  no  |  |
 | enableTracking | Bool |  no  |  |
 | isReturnable | Bool |  no  |  |

---


 
 
 #### [Identifier](#Identifier)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ean | String? |  yes  |  |

---


 
 
 #### [FinancialBreakup](#FinancialBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | addedToFyndCash | Bool |  no  |  |
 | fyndCredits | Int |  no  |  |
 | transferPrice | Int |  no  |  |
 | refundCredit | Int |  no  |  |
 | gstTaxPercentage | Int |  no  |  |
 | hsnCode | String |  no  |  |
 | codCharges | Int |  no  |  |
 | couponEffectiveDiscount | Double |  no  |  |
 | itemName | String |  no  |  |
 | taxCollectedAtSource | Int? |  yes  |  |
 | brandCalculatedAmount | Double |  no  |  |
 | deliveryCharge | Int |  no  |  |
 | cashback | Int |  no  |  |
 | identifiers | [Identifier](#Identifier) |  no  |  |
 | cashbackApplied | Int |  no  |  |
 | priceEffective | Int |  no  |  |
 | valueOfGood | Double |  no  |  |
 | priceMarked | Int |  no  |  |
 | promotionEffectiveDiscount | Double |  no  |  |
 | gstTag | String |  no  |  |
 | discount | Int |  no  |  |
 | gstFee | Double |  no  |  |
 | totalUnits | Int |  no  |  |
 | size | String |  no  |  |
 | amountPaidRoundoff | Int? |  yes  |  |
 | couponValue | Double |  no  |  |
 | amountPaid | Double |  no  |  |

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
 | length | Double? |  yes  |  |
 | width | Double? |  yes  |  |
 | isDefault | Bool? |  yes  |  |
 | height | Double? |  yes  |  |
 | unit | String? |  yes  |  |

---


 
 
 #### [Weight](#Weight)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | unit | String? |  yes  |  |
 | shipping | Int? |  yes  |  |
 | isDefault | Bool? |  yes  |  |

---


 
 
 #### [Article](#Article)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aSet | [String: Any]? |  yes  |  |
 | size | String |  no  |  |
 | sellerIdentifier | String |  no  |  |
 | childDetails | [String: Any]? |  yes  |  |
 | identifiers | [Identifier](#Identifier) |  no  |  |
 | returnConfig | [ReturnConfig](#ReturnConfig)? |  yes  |  |
 | isSet | Bool? |  yes  |  |
 | id | String |  no  |  |
 | uid | String |  no  |  |
 | espModified | Bool? |  yes  |  |
 | dimensions | [Dimensions](#Dimensions)? |  yes  |  |
 | currency | [String: Any]? |  yes  |  |
 | rawMeta | String? |  yes  |  |
 | weight | [Weight](#Weight)? |  yes  |  |
 | code | String? |  yes  |  |

---


 
 
 #### [AffiliateMeta](#AffiliateMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dueDate | String? |  yes  |  |
 | boxType | String? |  yes  |  |
 | isPriority | Bool? |  yes  |  |
 | marketplaceInvoiceId | String? |  yes  |  |
 | couponCode | String? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | channelShipmentId | String? |  yes  |  |
 | sizeLevelTotalQty | Int? |  yes  |  |
 | loyaltyDiscount | Double? |  yes  |  |
 | orderItemId | String? |  yes  |  |
 | channelOrderId | String? |  yes  |  |
 | employeeDiscount | Double? |  yes  |  |

---


 
 
 #### [AffiliateBagDetails](#AffiliateBagDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateMeta | [AffiliateMeta](#AffiliateMeta) |  no  |  |
 | affiliateBagId | String |  no  |  |
 | affiliateOrderId | String |  no  |  |
 | loyaltyDiscount | Double? |  yes  |  |
 | employeeDiscount | Double? |  yes  |  |

---


 
 
 #### [ShipmentListingBrand](#ShipmentListingBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | logoBase64 | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | logo | String? |  yes  |  |

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
 | lastUpdatedAt | String? |  yes  |  |
 | code | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | l3CategoryName | String? |  yes  |  |
 | l1Category | [String]? |  yes  |  |
 | canReturn | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | image | [String]? |  yes  |  |
 | departmentId | Int? |  yes  |  |
 | canCancel | Bool? |  yes  |  |
 | brandId | Int? |  yes  |  |
 | l3Category | Int? |  yes  |  |
 | attributes | [PlatformArticleAttributes](#PlatformArticleAttributes)? |  yes  |  |
 | brand | String? |  yes  |  |
 | branchUrl | String? |  yes  |  |
 | images | [String]? |  yes  |  |
 | size | String? |  yes  |  |
 | slugKey | String? |  yes  |  |
 | l2Category | [String]? |  yes  |  |
 | id | Int? |  yes  |  |

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
 | displayName | String? |  yes  |  |
 | currentOperationalStatus | [BagStatusHistory](#BagStatusHistory) |  no  |  |
 | meta | [String: Any]? |  yes  |  |
 | bagStatus | [[BagStatusHistory](#BagStatusHistory)]? |  yes  |  |
 | canReturn | Bool? |  yes  |  |
 | bagId | Int |  no  |  |
 | bagType | String? |  yes  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | canCancel | Bool? |  yes  |  |
 | gst | [GSTDetailsData](#GSTDetailsData)? |  yes  |  |
 | currentStatus | [BagStatusHistory](#BagStatusHistory) |  no  |  |
 | status | [BagReturnableCancelableStatus](#BagReturnableCancelableStatus) |  no  |  |
 | financialBreakup | [[FinancialBreakup](#FinancialBreakup)] |  no  |  |
 | article | [Article](#Article)? |  yes  |  |
 | affiliateBagDetails | [AffiliateBagDetails](#AffiliateBagDetails)? |  yes  |  |
 | entityType | String? |  yes  |  |
 | bagExpiryDate | String? |  yes  |  |
 | reasons | [[String: Any]]? |  yes  |  |
 | brand | [ShipmentListingBrand](#ShipmentListingBrand)? |  yes  |  |
 | item | [PlatformItem](#PlatformItem)? |  yes  |  |
 | productQuantity | Int |  no  |  |
 | size | String? |  yes  |  |
 | dates | [Dates](#Dates)? |  yes  |  |

---


 
 
 #### [ShipmentItemFulFillingStore](#ShipmentItemFulFillingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeEmail | String? |  yes  |  |
 | pincode | String? |  yes  |  |
 | state | String? |  yes  |  |
 | name | String? |  yes  |  |
 | city | String? |  yes  |  |
 | fulfillingStoreId | Int |  no  |  |
 | locationType | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | phone | String? |  yes  |  |
 | brandStoreTags | String? |  yes  |  |
 | code | String |  no  |  |
 | address | String? |  yes  |  |

---


 
 
 #### [ShipmentListingChannel](#ShipmentListingChannel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | channelShipmentId | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | isAffiliate | Bool? |  yes  |  |

---


 
 
 #### [ShipmentItem](#ShipmentItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | displayName | String? |  yes  |  |
 | user | [UserDataInfo](#UserDataInfo)? |  yes  |  |
 | meta | [ShipmentItemMeta](#ShipmentItemMeta)? |  yes  |  |
 | paymentMode | String? |  yes  |  |
 | deliveryAddress | [PlatformDeliveryAddress](#PlatformDeliveryAddress)? |  yes  |  |
 | orderId | String |  no  |  |
 | statusCreatedAt | String? |  yes  |  |
 | lockStatus | Bool? |  yes  |  |
 | orderDate | String? |  yes  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | paymentMethods | [String: Any]? |  yes  |  |
 | customerNote | String? |  yes  |  |
 | shipmentCreatedAt | String |  no  |  |
 | orderingChannnel | String? |  yes  |  |
 | shipmentStatus | [ShipmentStatus](#ShipmentStatus)? |  yes  |  |
 | bags | [[BagUnit](#BagUnit)]? |  yes  |  |
 | fulfillingStore | [ShipmentItemFulFillingStore](#ShipmentItemFulFillingStore)? |  yes  |  |
 | previousShipmentId | String? |  yes  |  |
 | channel | [ShipmentListingChannel](#ShipmentListingChannel)? |  yes  |  |
 | invoiceId | String? |  yes  |  |
 | estimatedSlaTime | String? |  yes  |  |
 | totalBags | Int |  no  |  |
 | shipmentId | String? |  yes  |  |
 | canProcess | Bool? |  yes  |  |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | Int? |  yes  |  |
 | type | String? |  yes  |  |
 | current | Int? |  yes  |  |
 | total | Int? |  yes  |  |
 | hasPrevious | Bool? |  yes  |  |
 | hasNext | Bool? |  yes  |  |

---


 
 
 #### [ShipmentInternalPlatformViewResponse](#ShipmentInternalPlatformViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |
 | totalCount | Int? |  yes  |  |
 | lane | String? |  yes  |  |
 | items | [[ShipmentItem](#ShipmentItem)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

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
 | area | String? |  yes  |  |
 | state | String |  no  |  |
 | email | String? |  yes  |  |
 | pincode | String |  no  |  |
 | name | String |  no  |  |
 | city | String |  no  |  |
 | address1 | String? |  yes  |  |
 | phone | String |  no  |  |
 | addressType | String? |  yes  |  |
 | country | String |  no  |  |
 | address | String |  no  |  |
 | landmark | String? |  yes  |  |

---


 
 
 #### [DebugInfo](#DebugInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stormbreakerUuid | String? |  yes  |  |

---


 
 
 #### [BuyerDetails](#BuyerDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | state | String |  no  |  |
 | pincode | Int |  no  |  |
 | name | String |  no  |  |
 | ajioSiteId | String? |  yes  |  |
 | city | String |  no  |  |
 | address | String |  no  |  |
 | gstin | String |  no  |  |

---


 
 
 #### [EinvoiceInfo](#EinvoiceInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | creditNote | [String: Any]? |  yes  |  |
 | invoice | [String: Any]? |  yes  |  |

---


 
 
 #### [ShipmentMeta](#ShipmentMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | awbNumber | String? |  yes  |  |
 | packagingName | String? |  yes  |  |
 | timestamp | [ShipmentTimeStamp](#ShipmentTimeStamp)? |  yes  |  |
 | shipmentWeight | Double? |  yes  |  |
 | orderType | String? |  yes  |  |
 | dpOptions | [String: Any]? |  yes  |  |
 | weight | Int |  no  |  |
 | returnDetails | [String: Any]? |  yes  |  |
 | dpName | String? |  yes  |  |
 | returnAffiliateShipmentId | String? |  yes  |  |
 | dpSortKey | String? |  yes  |  |
 | forwardAffiliateOrderId | String? |  yes  |  |
 | returnAwbNumber | String? |  yes  |  |
 | lockData | [LockData](#LockData)? |  yes  |  |
 | assignDpFromSb | Bool? |  yes  |  |
 | parentDpId | String? |  yes  |  |
 | debugInfo | [DebugInfo](#DebugInfo)? |  yes  |  |
 | external | [String: Any]? |  yes  |  |
 | dpId | String? |  yes  |  |
 | bagWeight | [String: Any]? |  yes  |  |
 | b2BBuyerDetails | [BuyerDetails](#BuyerDetails)? |  yes  |  |
 | forwardAffiliateShipmentId | String? |  yes  |  |
 | dueDate | String? |  yes  |  |
 | ewaybillInfo | [String: Any]? |  yes  |  |
 | formatted | [Formatted](#Formatted)? |  yes  |  |
 | shipmentVolumetricWeight | Double? |  yes  |  |
 | poNumber | String? |  yes  |  |
 | sameStoreAvailable | Bool |  no  |  |
 | b2CBuyerDetails | [String: Any]? |  yes  |  |
 | fulfilmentPriorityText | String? |  yes  |  |
 | shipmentTags | [[ShipmentTags](#ShipmentTags)]? |  yes  |  |
 | boxType | String? |  yes  |  |
 | returnStoreNode | Int? |  yes  |  |
 | storeInvoiceUpdatedDate | String? |  yes  |  |
 | autoTriggerDpAssignmentAcf | Bool |  no  |  |
 | marketplaceStoreId | String? |  yes  |  |
 | einvoiceInfo | [EinvoiceInfo](#EinvoiceInfo)? |  yes  |  |
 | dimension | [Dimensions](#Dimensions)? |  yes  |  |
 | returnAffiliateOrderId | String? |  yes  |  |

---


 
 
 #### [InvoiceInfo](#InvoiceInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | invoiceUrl | String? |  yes  |  |
 | updatedDate | String? |  yes  |  |
 | storeInvoiceId | String? |  yes  |  |
 | labelUrl | String? |  yes  |  |
 | creditNoteId | String? |  yes  |  |
 | externalInvoiceId | String? |  yes  |  |

---


 
 
 #### [OrderDetailsData](#OrderDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | source | String? |  yes  |  |
 | affiliateId | String? |  yes  |  |
 | orderValue | String? |  yes  |  |
 | orderDate | String? |  yes  |  |
 | orderingChannelLogo | [String: Any]? |  yes  |  |
 | orderingChannel | String? |  yes  |  |
 | taxDetails | [String: Any]? |  yes  |  |
 | fyndOrderId | String |  no  |  |
 | codCharges | String? |  yes  |  |

---


 
 
 #### [DPDetailsData](#DPDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | awbNo | String? |  yes  |  |
 | id | Int? |  yes  |  |
 | pincode | String? |  yes  |  |
 | name | String? |  yes  |  |
 | country | String? |  yes  |  |
 | trackUrl | String? |  yes  |  |
 | gstTag | String? |  yes  |  |
 | ewayBillId | String? |  yes  |  |

---


 
 
 #### [ShipmentStatusData](#ShipmentStatusData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bagList | [String]? |  yes  |  |
 | displayName | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | status | String? |  yes  |  |
 | id | Int? |  yes  |  |

---


 
 
 #### [OrderingStoreDetails](#OrderingStoreDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeName | String |  no  |  |
 | state | String |  no  |  |
 | pincode | String |  no  |  |
 | city | String |  no  |  |
 | contactPerson | String |  no  |  |
 | meta | [String: Any] |  no  |  |
 | phone | String |  no  |  |
 | orderingStoreId | Int |  no  |  |
 | country | String |  no  |  |
 | code | String |  no  |  |
 | address | String |  no  |  |

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
 | companyGst | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | companyCin | String? |  yes  |  |
 | companyName | String? |  yes  |  |
 | address | [String: Any]? |  yes  |  |
 | companyContact | [ContactDetails](#ContactDetails)? |  yes  |  |

---


 
 
 #### [ShipmentPayments](#ShipmentPayments)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mode | String? |  yes  |  |
 | source | String? |  yes  |  |
 | logo | String? |  yes  |  |

---


 
 
 #### [PDFLinks](#PDFLinks)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | labelPos | String? |  yes  |  |
 | labelA4 | String? |  yes  |  |
 | labelA6 | String? |  yes  |  |
 | invoiceType | String |  no  |  |
 | invoicePos | String? |  yes  |  |
 | labelType | String |  no  |  |
 | invoiceA4 | String? |  yes  |  |
 | label | String? |  yes  |  |
 | deliveryChallanA4 | String? |  yes  |  |
 | creditNoteUrl | String? |  yes  |  |
 | invoiceA6 | String? |  yes  |  |
 | b2B | String? |  yes  |  |
 | poInvoice | String? |  yes  |  |
 | invoice | String? |  yes  |  |

---


 
 
 #### [AffiliateDetails](#AffiliateDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateStoreId | String |  no  |  |
 | shipmentMeta | [ShipmentMeta](#ShipmentMeta) |  no  |  |
 | affiliateId | String? |  yes  |  |
 | companyAffiliateTag | String? |  yes  |  |
 | affiliateMeta | [AffiliateMeta](#AffiliateMeta) |  no  |  |
 | affiliateBagId | String |  no  |  |
 | affiliateShipmentId | String |  no  |  |
 | adId | String? |  yes  |  |
 | affiliateOrderId | String |  no  |  |
 | pdfLinks | [PDFLinks](#PDFLinks)? |  yes  |  |

---


 
 
 #### [ShipmentDetails](#ShipmentDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lockMessage | String? |  yes  |  |
 | actionToStatus | [String: Any]? |  yes  |  |
 | lockStatus | Bool? |  yes  |  |

---


 
 
 #### [B2BPODetails](#B2BPODetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemBasePrice | Double? |  yes  |  |
 | partialCanRet | Bool? |  yes  |  |
 | dockerNumber | String? |  yes  |  |
 | totalGstPercentage | Double? |  yes  |  |
 | poTaxAmount | Double? |  yes  |  |
 | poLineAmount | Double? |  yes  |  |

---


 
 
 #### [GiftCard](#GiftCard)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | giftMessage | String? |  yes  |  |
 | giftPrice | Int? |  yes  |  |
 | isGiftApplied | Bool? |  yes  |  |
 | displayText | String? |  yes  |  |

---


 
 
 #### [BagMeta](#BagMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | docketNumber | String? |  yes  |  |
 | customMessage | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | partialCanRet | Bool? |  yes  |  |
 | b2BPoDetails | [B2BPODetails](#B2BPODetails)? |  yes  |  |
 | extraMeta | [String: Any]? |  yes  |  |
 | groupId | String? |  yes  |  |
 | giftCard | [GiftCard](#GiftCard)? |  yes  |  |

---


 
 
 #### [CurrentStatus](#CurrentStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | updatedAt | String? |  yes  |  |
 | bagStateMapper | [BagStateMapper](#BagStateMapper)? |  yes  |  |
 | deliveryPartnerId | Int? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | bagId | Int? |  yes  |  |
 | kafkaSync | Bool? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | stateType | String? |  yes  |  |
 | status | String? |  yes  |  |
 | storeId | Int? |  yes  |  |
 | stateId | Int? |  yes  |  |
 | currentStatusId | Int |  no  |  |
 | deliveryAwbNumber | String? |  yes  |  |

---


 
 
 #### [OrderBagArticle](#OrderBagArticle)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | identifiers | [String: Any]? |  yes  |  |
 | returnConfig | [String: Any]? |  yes  |  |
 | uid | String? |  yes  |  |

---


 
 
 #### [BagGST](#BagGST)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstFee | Double? |  yes  |  |
 | gstinCode | String? |  yes  |  |
 | taxCollectedAtSource | Double? |  yes  |  |
 | isDefaultHsnCode | Bool? |  yes  |  |
 | cgstTaxPercentage | Double? |  yes  |  |
 | brandCalculatedAmount | Double? |  yes  |  |
 | sgstTaxPercentage | Double? |  yes  |  |
 | valueOfGood | Double? |  yes  |  |
 | igstGstFee | String? |  yes  |  |
 | sgstGstFee | String? |  yes  |  |
 | cgstGstFee | String? |  yes  |  |
 | gstTaxPercentage | Int? |  yes  |  |
 | gstTag | String? |  yes  |  |
 | hsnCode | String? |  yes  |  |
 | hsnCodeId | String? |  yes  |  |
 | igstTaxPercentage | String? |  yes  |  |

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
 | itemCriteria | [ItemCriterias](#ItemCriterias)? |  yes  |  |
 | cartConditions | [String: Any]? |  yes  |  |

---


 
 
 #### [AppliedPromos](#AppliedPromos)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | promoId | String? |  yes  |  |
 | discountRules | [[DiscountRules](#DiscountRules)]? |  yes  |  |
 | amount | Double? |  yes  |  |
 | buyRules | [[BuyRules](#BuyRules)]? |  yes  |  |
 | articleQuantity | Int? |  yes  |  |
 | mrpPromotion | Bool? |  yes  |  |
 | promotionName | String? |  yes  |  |
 | promotionType | String? |  yes  |  |

---


 
 
 #### [OrderBrandName](#OrderBrandName)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |
 | company | String |  no  |  |
 | createdOn | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | brandName | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |

---


 
 
 #### [BagConfigs](#BagConfigs)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | canBeCancelled | Bool |  no  |  |
 | allowForceReturn | Bool |  no  |  |
 | isCustomerReturnAllowed | Bool |  no  |  |
 | isActive | Bool |  no  |  |
 | enableTracking | Bool |  no  |  |
 | isReturnable | Bool |  no  |  |

---


 
 
 #### [OrderBags](#OrderBags)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | displayName | String? |  yes  |  |
 | meta | [BagMeta](#BagMeta)? |  yes  |  |
 | deliveryAddress | [PlatformDeliveryAddress](#PlatformDeliveryAddress)? |  yes  |  |
 | canReturn | Bool? |  yes  |  |
 | sellerIdentifier | String? |  yes  |  |
 | bagId | Int |  no  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | canCancel | Bool? |  yes  |  |
 | currentStatus | [CurrentStatus](#CurrentStatus)? |  yes  |  |
 | identifier | String? |  yes  |  |
 | financialBreakup | [FinancialBreakup](#FinancialBreakup)? |  yes  |  |
 | entityType | String? |  yes  |  |
 | article | [OrderBagArticle](#OrderBagArticle)? |  yes  |  |
 | gstDetails | [BagGST](#BagGST)? |  yes  |  |
 | lineNumber | Int? |  yes  |  |
 | appliedPromos | [[AppliedPromos](#AppliedPromos)]? |  yes  |  |
 | brand | [OrderBrandName](#OrderBrandName)? |  yes  |  |
 | bagConfigs | [BagConfigs](#BagConfigs)? |  yes  |  |
 | item | [PlatformItem](#PlatformItem)? |  yes  |  |
 | groupId | String? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | parentPromoBags | [String: Any]? |  yes  |  |

---


 
 
 #### [TrackingList](#TrackingList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String |  no  |  |
 | isCurrent | Bool? |  yes  |  |
 | isPassed | Bool? |  yes  |  |
 | time | String? |  yes  |  |
 | status | String |  no  |  |

---


 
 
 #### [FulfillingStore](#FulfillingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeName | String |  no  |  |
 | state | String |  no  |  |
 | pincode | String |  no  |  |
 | city | String |  no  |  |
 | contactPerson | String |  no  |  |
 | fulfillmentChannel | String |  no  |  |
 | meta | [String: Any] |  no  |  |
 | phone | String |  no  |  |
 | country | String |  no  |  |
 | code | String |  no  |  |
 | address | String |  no  |  |
 | id | Int |  no  |  |

---


 
 
 #### [PlatformShipment](#PlatformShipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fulfilmentPriority | Int? |  yes  |  |
 | billingDetails | [UserDetailsData](#UserDetailsData)? |  yes  |  |
 | user | [UserDataInfo](#UserDataInfo)? |  yes  |  |
 | enableDpTracking | Bool? |  yes  |  |
 | deliverySlot | [String: Any]? |  yes  |  |
 | userAgent | String? |  yes  |  |
 | meta | [ShipmentMeta](#ShipmentMeta)? |  yes  |  |
 | paymentMode | String? |  yes  |  |
 | pickedDate | String? |  yes  |  |
 | invoice | [InvoiceInfo](#InvoiceInfo)? |  yes  |  |
 | customMessage | String? |  yes  |  |
 | order | [OrderDetailsData](#OrderDetailsData)? |  yes  |  |
 | coupon | [String: Any]? |  yes  |  |
 | vertical | String? |  yes  |  |
 | lockStatus | Bool? |  yes  |  |
 | packagingType | String? |  yes  |  |
 | dpDetails | [DPDetailsData](#DPDetailsData)? |  yes  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | paymentMethods | [String: Any]? |  yes  |  |
 | totalItems | Int? |  yes  |  |
 | customMeta | [[String: Any]]? |  yes  |  |
 | status | [ShipmentStatusData](#ShipmentStatusData)? |  yes  |  |
 | orderingStore | [OrderingStoreDetails](#OrderingStoreDetails)? |  yes  |  |
 | journeyType | String? |  yes  |  |
 | shipmentCreatedAt | String? |  yes  |  |
 | companyDetails | [CompanyDetails](#CompanyDetails)? |  yes  |  |
 | gstDetails | [GSTDetailsData](#GSTDetailsData)? |  yes  |  |
 | payments | [ShipmentPayments](#ShipmentPayments)? |  yes  |  |
 | deliveryDetails | [UserDetailsData](#UserDetailsData)? |  yes  |  |
 | affiliateDetails | [AffiliateDetails](#AffiliateDetails)? |  yes  |  |
 | bagStatusHistory | [[BagStatusHistory](#BagStatusHistory)]? |  yes  |  |
 | shipmentImages | [String]? |  yes  |  |
 | shipmentDetails | [ShipmentDetails](#ShipmentDetails)? |  yes  |  |
 | shipmentStatus | String? |  yes  |  |
 | operationalStatus | String? |  yes  |  |
 | bags | [[OrderBags](#OrderBags)]? |  yes  |  |
 | trackingList | [[TrackingList](#TrackingList)]? |  yes  |  |
 | fulfillingStore | [FulfillingStore](#FulfillingStore)? |  yes  |  |
 | platformLogo | String? |  yes  |  |
 | invoiceId | String? |  yes  |  |
 | estimatedSlaTime | String? |  yes  |  |
 | totalBags | Int? |  yes  |  |
 | shipmentId | String |  no  |  |
 | forwardShipmentId | String? |  yes  |  |
 | shipmentQuantity | Int? |  yes  |  |
 | priorityText | String? |  yes  |  |

---


 
 
 #### [ShipmentInfoResponse](#ShipmentInfoResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | shipments | [[PlatformShipment](#PlatformShipment)]? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [AssetByShipment](#AssetByShipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentId | String |  no  |  |
 | assets | [String: String]? |  yes  |  |
 | expiresIn | String |  no  |  |

---


 
 
 #### [ResponseGetAssetShipment](#ResponseGetAssetShipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | presignedType | String |  no  |  |
 | result | [[AssetByShipment](#AssetByShipment)] |  no  |  |

---


 
 
 #### [TransactionData](#TransactionData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | transactionId | String? |  yes  |  |
 | terminalId | String? |  yes  |  |
 | currency | String? |  yes  |  |
 | paymentId | String? |  yes  |  |
 | status | String? |  yes  |  |
 | uniqueReferenceNumber | String? |  yes  |  |
 | amountPaid | String? |  yes  |  |
 | entity | String? |  yes  |  |

---


 
 
 #### [BillingStaffDetails](#BillingStaffDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | employeeCode | String? |  yes  |  |
 | user | String? |  yes  |  |
 | staffId | Int? |  yes  |  |
 | firstName | String? |  yes  |  |
 | lastName | String? |  yes  |  |

---


 
 
 #### [PlatformUserDetails](#PlatformUserDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | platformUserId | String? |  yes  |  |
 | platformUserEmployeeCode | String? |  yes  |  |
 | platformUserFirstName | String? |  yes  |  |
 | platformUserLastName | String? |  yes  |  |

---


 
 
 #### [OrderMeta](#OrderMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderChildEntities | [String]? |  yes  |  |
 | orderType | String? |  yes  |  |
 | staff | [String: Any]? |  yes  |  |
 | paymentType | String? |  yes  |  |
 | mongoCartId | Int? |  yes  |  |
 | comment | String? |  yes  |  |
 | orderTags | [[String: Any]]? |  yes  |  |
 | currencySymbol | String? |  yes  |  |
 | customerNote | String? |  yes  |  |
 | orderingStore | Int? |  yes  |  |
 | companyLogo | String? |  yes  |  |
 | transactionData | [TransactionData](#TransactionData)? |  yes  |  |
 | extraMeta | [String: Any]? |  yes  |  |
 | billingStaffDetails | [BillingStaffDetails](#BillingStaffDetails)? |  yes  |  |
 | files | [[String: Any]]? |  yes  |  |
 | platformUserDetails | [PlatformUserDetails](#PlatformUserDetails)? |  yes  |  |
 | orderPlatform | String? |  yes  |  |
 | employeeId | Int? |  yes  |  |
 | cartId | Int? |  yes  |  |

---


 
 
 #### [TaxDetails](#TaxDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | panNo | String? |  yes  |  |
 | gstin | String? |  yes  |  |

---


 
 
 #### [OrderDict](#OrderDict)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderDate | String |  no  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | paymentMethods | [String: Any]? |  yes  |  |
 | meta | [OrderMeta](#OrderMeta)? |  yes  |  |
 | taxDetails | [TaxDetails](#TaxDetails)? |  yes  |  |
 | fyndOrderId | String |  no  |  |

---


 
 
 #### [ShipmentDetailsResponse](#ShipmentDetailsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | order | [OrderDict](#OrderDict)? |  yes  |  |
 | shipments | [[PlatformShipment](#PlatformShipment)]? |  yes  |  |

---


 
 
 #### [SubLane](#SubLane)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | actions | [[String: Any]]? |  yes  |  |
 | text | String? |  yes  |  |
 | index | Int? |  yes  |  |
 | totalItems | Int? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [SuperLane](#SuperLane)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | options | [[SubLane](#SubLane)]? |  yes  |  |
 | value | String |  no  |  |
 | text | String |  no  |  |
 | totalItems | Int? |  yes  |  |

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
 | breakupValues | [[PlatformBreakupValues](#PlatformBreakupValues)]? |  yes  |  |
 | channel | [PlatformChannel](#PlatformChannel)? |  yes  |  |
 | orderCreatedTime | String? |  yes  |  |
 | totalOrderValue | Double? |  yes  |  |
 | shipments | [[PlatformShipment](#PlatformShipment)]? |  yes  |  |
 | orderValue | Double? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | paymentMode | String? |  yes  |  |
 | userInfo | [UserDataInfo](#UserDataInfo)? |  yes  |  |
 | orderId | String? |  yes  |  |

---


 
 
 #### [OrderListingResponse](#OrderListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |
 | totalCount | Int? |  yes  |  |
 | lane | String? |  yes  |  |
 | items | [[PlatformOrderItems](#PlatformOrderItems)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

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
 | updatedAt | String? |  yes  |  |
 | accountName | String? |  yes  |  |
 | shipmentType | String? |  yes  |  |
 | reason | String? |  yes  |  |
 | rawStatus | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | status | String? |  yes  |  |
 | updatedTime | String? |  yes  |  |
 | awb | String? |  yes  |  |
 | lastLocationRecievedAt | String? |  yes  |  |

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
 | value | String? |  yes  |  |
 | text | String |  no  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [FiltersInfo](#FiltersInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | options | [[FilterInfoOption](#FilterInfoOption)]? |  yes  |  |
 | value | String |  no  |  |
 | text | String |  no  |  |

---


 
 
 #### [AdvanceFilterInfo](#AdvanceFilterInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | actionCentre | [[FiltersInfo](#FiltersInfo)]? |  yes  |  |
 | returned | [[FiltersInfo](#FiltersInfo)]? |  yes  |  |
 | filters | [[FiltersInfo](#FiltersInfo)]? |  yes  |  |
 | appliedFilters | [String: Any]? |  yes  |  |
 | processed | [[FiltersInfo](#FiltersInfo)]? |  yes  |  |
 | unfulfilled | [[FiltersInfo](#FiltersInfo)]? |  yes  |  |
 | page | [String: Any]? |  yes  |  |

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
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [OmsReports](#OmsReports)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reportCreatedAt | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | reportId | String? |  yes  |  |
 | requestDetails | [String: Any]? |  yes  |  |
 | reportType | String? |  yes  |  |
 | reportRequestedAt | String? |  yes  |  |
 | reportName | String? |  yes  |  |
 | s3Key | String? |  yes  |  |
 | status | String? |  yes  |  |

---


 
 
 #### [JioCodeUpsertDataSet](#JioCodeUpsertDataSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemId | String? |  yes  |  |
 | companyId | String? |  yes  |  |
 | jioCode | String? |  yes  |  |
 | articleId | String? |  yes  |  |

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
 | type | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [JioCodeUpsertResponse](#JioCodeUpsertResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | identifier | String? |  yes  |  |
 | success | Bool? |  yes  |  |
 | error | [[NestedErrorSchemaDataSet](#NestedErrorSchemaDataSet)]? |  yes  |  |
 | data | [[String: Any]]? |  yes  |  |
 | traceId | String? |  yes  |  |

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
 | upload | [FileUploadResponse](#FileUploadResponse)? |  yes  |  |
 | namespace | String? |  yes  |  |
 | size | Int? |  yes  |  |
 | fileName | String? |  yes  |  |
 | filePath | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | cdn | [URL](#URL)? |  yes  |  |
 | operation | String? |  yes  |  |
 | contentType | String? |  yes  |  |
 | method | String? |  yes  |  |

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
 | templateXSlug | [[BulkActionTemplate](#BulkActionTemplate)]? |  yes  |  |

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


 
 
 #### [BagReturnableCancelableStatus1](#BagReturnableCancelableStatus1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | canBeCancelled | Bool |  no  |  |
 | isCustomerReturnAllowed | Bool |  no  |  |
 | isActive | Bool |  no  |  |
 | enableTracking | Bool |  no  |  |
 | isReturnable | Bool |  no  |  |

---


 
 
 #### [EInvoicePortalDetails](#EInvoicePortalDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | user | String? |  yes  |  |
 | password | String? |  yes  |  |

---


 
 
 #### [Document](#Document)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dsType | String |  no  |  |
 | url | String? |  yes  |  |
 | verified | Bool |  no  |  |
 | value | String |  no  |  |
 | legalName | String |  no  |  |

---


 
 
 #### [StoreDocuments](#StoreDocuments)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gst | [Document](#Document)? |  yes  |  |

---


 
 
 #### [StoreEinvoice](#StoreEinvoice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |
 | username | String? |  yes  |  |
 | password | String? |  yes  |  |
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


 
 
 #### [StoreMeta](#StoreMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | displayName | String |  no  |  |
 | productReturnConfig | [String: Any]? |  yes  |  |
 | einvoicePortalDetails | [EInvoicePortalDetails](#EInvoicePortalDetails)? |  yes  |  |
 | documents | [StoreDocuments](#StoreDocuments)? |  yes  |  |
 | notificationEmails | [String]? |  yes  |  |
 | stage | String |  no  |  |
 | gstCredentials | [StoreGstCredentials](#StoreGstCredentials) |  no  |  |
 | additionalContactDetails | [String: Any]? |  yes  |  |
 | gstNumber | String? |  yes  |  |
 | ewaybillPortalDetails | [String: Any]? |  yes  |  |
 | timing | [[String: Any]]? |  yes  |  |

---


 
 
 #### [StoreAddress](#StoreAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | latitude | Double |  no  |  |
 | area | String? |  yes  |  |
 | address1 | String |  no  |  |
 | addressCategory | String |  no  |  |
 | addressType | String |  no  |  |
 | countryCode | String |  no  |  |
 | updatedAt | String |  no  |  |
 | longitude | Double |  no  |  |
 | pincode | Int |  no  |  |
 | createdAt | String |  no  |  |
 | city | String |  no  |  |
 | phone | String |  no  |  |
 | state | String |  no  |  |
 | email | String? |  yes  |  |
 | version | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | contactPerson | String |  no  |  |
 | country | String |  no  |  |
 | landmark | String? |  yes  |  |

---


 
 
 #### [Store](#Store)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | latitude | Double |  no  |  |
 | isArchived | Bool? |  yes  |  |
 | orderIntegrationId | String? |  yes  |  |
 | isEnabledForRecon | Bool? |  yes  |  |
 | mallArea | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | code | String? |  yes  |  |
 | meta | [StoreMeta](#StoreMeta) |  no  |  |
 | mallName | String? |  yes  |  |
 | name | String |  no  |  |
 | parentStoreId | Int? |  yes  |  |
 | address1 | String |  no  |  |
 | loginUsername | String |  no  |  |
 | vatNo | String? |  yes  |  |
 | brandId | [String: Any]? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | longitude | Double |  no  |  |
 | pincode | String |  no  |  |
 | createdAt | String |  no  |  |
 | city | String |  no  |  |
 | companyId | Int |  no  |  |
 | sId | String |  no  |  |
 | locationType | String |  no  |  |
 | phone | Int |  no  |  |
 | brandStoreTags | [String]? |  yes  |  |
 | storeEmail | String |  no  |  |
 | state | String |  no  |  |
 | storeActiveFrom | String? |  yes  |  |
 | packagingMaterialCount | Int? |  yes  |  |
 | alohomoraUserId | Int? |  yes  |  |
 | address2 | String? |  yes  |  |
 | contactPerson | String |  no  |  |
 | fulfillmentChannel | String |  no  |  |
 | storeAddressJson | [StoreAddress](#StoreAddress)? |  yes  |  |
 | country | String |  no  |  |

---


 
 
 #### [BagGSTDetails](#BagGSTDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstFee | Double |  no  |  |
 | gstinCode | String? |  yes  |  |
 | taxCollectedAtSource | Double |  no  |  |
 | isDefaultHsnCode | Bool? |  yes  |  |
 | cgstTaxPercentage | Double |  no  |  |
 | brandCalculatedAmount | Double |  no  |  |
 | sgstTaxPercentage | Double |  no  |  |
 | valueOfGood | Double |  no  |  |
 | igstGstFee | String |  no  |  |
 | sgstGstFee | String |  no  |  |
 | cgstGstFee | String |  no  |  |
 | gstTaxPercentage | Double |  no  |  |
 | gstTag | String |  no  |  |
 | hsnCode | String |  no  |  |
 | hsnCodeId | String |  no  |  |
 | igstTaxPercentage | Double |  no  |  |

---


 
 
 #### [Brand](#Brand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | scriptLastRan | String? |  yes  |  |
 | company | String |  no  |  |
 | invoicePrefix | String? |  yes  |  |
 | createdOn | Int? |  yes  |  |
 | creditNoteExpiryDays | Int? |  yes  |  |
 | startDate | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | brandName | String |  no  |  |
 | isVirtualInvoice | Bool? |  yes  |  |
 | pickupLocation | String? |  yes  |  |
 | brandId | Int |  no  |  |
 | creditNoteAllowed | Bool? |  yes  |  |
 | modifiedOn | Int? |  yes  |  |

---


 
 
 #### [Attributes](#Attributes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gender | [String]? |  yes  |  |
 | name | String? |  yes  |  |
 | primaryColorHex | String? |  yes  |  |
 | marketerName | String? |  yes  |  |
 | essential | String? |  yes  |  |
 | brandName | String? |  yes  |  |
 | marketerAddress | String? |  yes  |  |
 | primaryMaterial | String? |  yes  |  |
 | primaryColor | String? |  yes  |  |

---


 
 
 #### [Item](#Item)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | color | String? |  yes  |  |
 | gender | String? |  yes  |  |
 | lastUpdatedAt | String? |  yes  |  |
 | l1CategoryId | Int? |  yes  |  |
 | code | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | l3CategoryName | String? |  yes  |  |
 | l2CategoryId | Int? |  yes  |  |
 | l1Category | [String]? |  yes  |  |
 | canReturn | Bool? |  yes  |  |
 | name | String |  no  |  |
 | image | [String] |  no  |  |
 | webstoreProductUrl | String? |  yes  |  |
 | departmentId | Int? |  yes  |  |
 | canCancel | Bool? |  yes  |  |
 | brandId | Int |  no  |  |
 | itemId | Int |  no  |  |
 | l3Category | Int? |  yes  |  |
 | attributes | [Attributes](#Attributes) |  no  |  |
 | brand | String |  no  |  |
 | branchUrl | String? |  yes  |  |
 | size | String |  no  |  |
 | slugKey | String |  no  |  |
 | l2Category | [String]? |  yes  |  |

---


 
 
 #### [ArticleDetails](#ArticleDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | [String: Any]? |  yes  |  |

---


 
 
 #### [BagDetailsPlatformResponse](#BagDetailsPlatformResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | displayName | String? |  yes  |  |
 | orderIntegrationId | String? |  yes  |  |
 | currentOperationalStatus | [BagStatusHistory](#BagStatusHistory) |  no  |  |
 | tags | [String]? |  yes  |  |
 | meta | [BagMeta](#BagMeta)? |  yes  |  |
 | bagStatus | [[BagStatusHistory](#BagStatusHistory)] |  no  |  |
 | restoreCoupon | Bool? |  yes  |  |
 | sellerIdentifier | String? |  yes  |  |
 | bId | Int |  no  |  |
 | prices | [Prices](#Prices) |  no  |  |
 | currentStatus | [BagStatusHistory](#BagStatusHistory) |  no  |  |
 | status | [BagReturnableCancelableStatus1](#BagReturnableCancelableStatus1) |  no  |  |
 | restorePromos | [String: Any]? |  yes  |  |
 | orderingStore | [Store](#Store)? |  yes  |  |
 | journeyType | String |  no  |  |
 | identifier | String? |  yes  |  |
 | financialBreakup | [[FinancialBreakup](#FinancialBreakup)] |  no  |  |
 | article | [Article](#Article) |  no  |  |
 | affiliateBagDetails | [AffiliateBagDetails](#AffiliateBagDetails) |  no  |  |
 | entityType | String? |  yes  |  |
 | gstDetails | [BagGSTDetails](#BagGSTDetails) |  no  |  |
 | lineNumber | Int? |  yes  |  |
 | appliedPromos | [[String: Any]]? |  yes  |  |
 | originalBagList | [Int]? |  yes  |  |
 | affiliateDetails | [AffiliateDetails](#AffiliateDetails)? |  yes  |  |
 | reasons | [[String: Any]]? |  yes  |  |
 | bagStatusHistory | [BagStatusHistory](#BagStatusHistory)? |  yes  |  |
 | noOfBagsOrder | Int? |  yes  |  |
 | brand | [Brand](#Brand) |  no  |  |
 | item | [Item](#Item) |  no  |  |
 | operationalStatus | String? |  yes  |  |
 | bagUpdateTime | Double? |  yes  |  |
 | bType | String? |  yes  |  |
 | articleDetails | [ArticleDetails](#ArticleDetails)? |  yes  |  |
 | quantity | Double? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | parentPromoBags | [String: Any]? |  yes  |  |
 | qcRequired | [String: Any]? |  yes  |  |
 | dates | [Dates](#Dates)? |  yes  |  |

---


 
 
 #### [ErrorResponse](#ErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |
 | error | String |  no  |  |

---


 
 
 #### [BagsPage](#BagsPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemTotal | Int |  no  |  |
 | size | Int |  no  |  |
 | pageType | String |  no  |  |
 | current | Int |  no  |  |
 | hasNext | Bool |  no  |  |

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
 | success | Bool? |  yes  |  |
 | paymentReceipt | String? |  yes  |  |
 | invoiceReceipt | String? |  yes  |  |
 | orderId | String? |  yes  |  |

---


 
 
 #### [InvalidateShipmentCachePayload](#InvalidateShipmentCachePayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bagIds | [String]? |  yes  | Bag Ids to clear cache of shipment Ids mapped to it |
 | shipmentIds | [String]? |  yes  | Shipment Ids to clear cache |
 | affiliateBagIds | [String]? |  yes  | Affiliate Bag Ids to clear cache of shipment Ids mapped to it |

---


 
 
 #### [InvalidateShipmentCacheNestedResponse](#InvalidateShipmentCacheNestedResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | String? |  yes  |  |
 | message | String? |  yes  |  |
 | status | Int? |  yes  |  |
 | shipmentId | String? |  yes  |  |

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
 | message | String? |  yes  |  |
 | status | Int? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [StoreReassign](#StoreReassign)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasonIds | [Int]? |  yes  |  |
 | bagId | Int? |  yes  |  |
 | storeId | Int |  no  |  |
 | affiliateId | String? |  yes  |  |
 | mongoArticleId | String? |  yes  |  |
 | affiliateBagId | String? |  yes  |  |
 | affiliateOrderId | String? |  yes  |  |
 | fyndOrderId | String? |  yes  |  |
 | setId | String? |  yes  |  |
 | itemId | String? |  yes  |  |

---


 
 
 #### [StoreReassignResponse](#StoreReassignResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [Entities](#Entities)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  | Shipment ID if 'entity_type': shipments | Bag Id if 'entity_type': bags |
 | affiliateShipmentId | String? |  yes  | Application/Affiliate Shipment ID, Required if the ID is missing |
 | affiliateId | String? |  yes  | Application/Affiliate ID, Required if the ID is missing |
 | affiliateBagId | String? |  yes  | Application/Affiliate Bag ID, Required if the ID is missing |
 | affiliateOrderId | String? |  yes  | Application/Affiliate Order ID, Required if the ID is missing |
 | reasonText | String |  no  | Reason For Shipment/Bag Action |

---


 
 
 #### [UpdateShipmentLockPayload](#UpdateShipmentLockPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | entityType | String |  no  | Expected entity_type: [bags, shipments] |
 | action | String |  no  | Expected Actions: [lock, unlock, check] |
 | actionType | String |  no  | Expected action_type: [complete, operational, financial] |
 | entities | [[Entities](#Entities)] |  no  | Shipment/Entity |

---


 
 
 #### [Bags](#Bags)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateBagId | String? |  yes  | Application/Affiliate Bag ID, Required if the ID is missing |
 | affiliateOrderId | String? |  yes  | Application/Affiliate Order ID, Required if the ID is missing |
 | bagId | Int? |  yes  | Bag Id |
 | isLocked | Bool? |  yes  | Is Bag Locked |

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
 | isBagLocked | Bool? |  yes  | Is Bag Locked |
 | status | String? |  yes  | Status |
 | shipmentId | String? |  yes  | Shipment ID |
 | affiliateShipmentId | String? |  yes  | Affiliate Shipment ID |
 | bags | [[Bags](#Bags)]? |  yes  |  |
 | affiliateId | String? |  yes  | Affiliate ID |
 | isShipmentLocked | Bool? |  yes  | Is Shipment Locked |
 | originalFilter | [OriginalFilter](#OriginalFilter)? |  yes  | Filter |
 | lockStatus | String? |  yes  | Lock Status: Expected lock_status: [complete, operational, financial] |

---


 
 
 #### [UpdateShipmentLockResponse](#UpdateShipmentLockResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | checkResponse | [[CheckResponse](#CheckResponse)]? |  yes  | Entity Lock Status, If the action input as 'check' |
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [AnnouncementResponse](#AnnouncementResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |
 | fromDatetime | String? |  yes  |  |
 | platformId | String? |  yes  |  |
 | toDatetime | String? |  yes  |  |
 | description | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | platformName | String? |  yes  |  |
 | title | String? |  yes  |  |
 | logoUrl | String? |  yes  |  |

---


 
 
 #### [AnnouncementsResponse](#AnnouncementsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | announcements | [[AnnouncementResponse](#AnnouncementResponse)]? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [BaseResponse](#BaseResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |

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
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |

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


 
 
 #### [Products](#Products)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lineNumber | Int? |  yes  | Product/Bag Line number for the Product/Bag Identifier |
 | quantity | Int? |  yes  |  |
 | identifier | String? |  yes  | Product/Bag Article/Item Identifier |

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
 | quantity | Int? |  yes  |  |
 | identifier | String? |  yes  | Product/Bag Article/Item Identifier |

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
 | reasonId | Int? |  yes  |  |
 | reasonText | String? |  yes  |  |

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


 
 
 #### [ShipmentsRequest](#ShipmentsRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dataUpdates | [DataUpdates](#DataUpdates)? |  yes  |  |
 | products | [[Products](#Products)]? |  yes  | Product/Bag to be updated |
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
 | unlockBeforeTransition | Bool? |  yes  | Unlock Shipment After Transition |
 | task | Bool? |  yes  | To Run Status Update as a background Task |
 | lockAfterTransition | Bool? |  yes  | Lock Shipment After Transition |
 | forceTransition | Bool? |  yes  | Force Transition |

---


 
 
 #### [ShipmentsResponse](#ShipmentsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | status | Int? |  yes  |  |
 | exception | String? |  yes  |  |
 | stackTrace | String? |  yes  |  |
 | finalState | [String: Any]? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | code | String? |  yes  |  |
 | identifier | String? |  yes  |  |

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


 
 
 #### [AffiliateInventoryPaymentConfig](#AffiliateInventoryPaymentConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | source | String? |  yes  |  |
 | modeOfPayment | String? |  yes  |  |

---


 
 
 #### [AffiliateInventoryStoreConfig](#AffiliateInventoryStoreConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | store | [String: Any]? |  yes  |  |

---


 
 
 #### [AffiliateInventoryArticleAssignmentConfig](#AffiliateInventoryArticleAssignmentConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | postOrderReassignment | Bool? |  yes  |  |

---


 
 
 #### [AffiliateInventoryOrderConfig](#AffiliateInventoryOrderConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | forceReassignment | Bool? |  yes  |  |

---


 
 
 #### [AffiliateInventoryLogisticsConfig](#AffiliateInventoryLogisticsConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dpAssignment | Bool? |  yes  |  |

---


 
 
 #### [AffiliateInventoryConfig](#AffiliateInventoryConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | payment | [AffiliateInventoryPaymentConfig](#AffiliateInventoryPaymentConfig)? |  yes  |  |
 | inventory | [AffiliateInventoryStoreConfig](#AffiliateInventoryStoreConfig)? |  yes  |  |
 | articleAssignment | [AffiliateInventoryArticleAssignmentConfig](#AffiliateInventoryArticleAssignmentConfig)? |  yes  |  |
 | order | [AffiliateInventoryOrderConfig](#AffiliateInventoryOrderConfig)? |  yes  |  |
 | logistics | [AffiliateInventoryLogisticsConfig](#AffiliateInventoryLogisticsConfig)? |  yes  |  |

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
 | token | String |  no  |  |
 | id | String |  no  |  |
 | secret | String |  no  |  |
 | name | String |  no  |  |
 | createdAt | String |  no  |  |
 | description | String? |  yes  |  |
 | owner | String |  no  |  |
 | meta | [[AffiliateAppConfigMeta](#AffiliateAppConfigMeta)]? |  yes  |  |
 | updatedAt | String |  no  |  |

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
 | token | String |  no  |  |
 | id | String |  no  |  |
 | config | [AffiliateConfig](#AffiliateConfig)? |  yes  |  |

---


 
 
 #### [OrderConfig](#OrderConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createUser | Bool? |  yes  |  |
 | articleLookup | String? |  yes  |  |
 | affiliateStoreIdMapping | [[AffiliateStoreIdMapping](#AffiliateStoreIdMapping)] |  no  |  |
 | affiliate | [Affiliate](#Affiliate) |  no  |  |
 | storeLookup | String? |  yes  |  |
 | bagEndState | String? |  yes  |  |

---


 
 
 #### [ArticleDetails1](#ArticleDetails1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | brandId | Int |  no  |  |
 | quantity | Int |  no  |  |
 | weight | [String: Any] |  no  |  |
 | category | [String: Any] |  no  |  |
 | attributes | [String: Any] |  no  |  |
 | dimension | [String: Any] |  no  |  |

---


 
 
 #### [ShipmentDetails1](#ShipmentDetails1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | articles | [[ArticleDetails1](#ArticleDetails1)] |  no  |  |
 | affiliateShipmentId | String |  no  |  |
 | fulfillmentId | Int |  no  |  |
 | boxType | String? |  yes  |  |
 | shipments | Int |  no  |  |
 | meta | [String: Any]? |  yes  |  |
 | dpId | Int? |  yes  |  |

---


 
 
 #### [LocationDetails](#LocationDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | articles | [[ArticleDetails1](#ArticleDetails1)] |  no  |  |
 | fulfillmentId | Int |  no  |  |
 | fulfillmentType | String |  no  |  |

---


 
 
 #### [ShipmentConfig](#ShipmentConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipment | [[ShipmentDetails1](#ShipmentDetails1)] |  no  |  |
 | source | String |  no  |  |
 | paymentMode | String |  no  |  |
 | locationDetails | [LocationDetails](#LocationDetails)? |  yes  |  |
 | journey | String |  no  |  |
 | toPincode | String |  no  |  |
 | action | String |  no  |  |
 | identifier | String |  no  |  |

---


 
 
 #### [ShipmentData](#ShipmentData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentData | [ShipmentConfig](#ShipmentConfig) |  no  |  |

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
 | avlQty | Int |  no  |  |
 | companyId | Int |  no  |  |
 | unitPrice | Double |  no  |  |
 | modifiedOn | String |  no  |  |
 | sku | String |  no  |  |
 | pdfLinks | [MarketPlacePdf](#MarketPlacePdf)? |  yes  |  |
 | id | String |  no  |  |
 | hsnCodeId | String |  no  |  |
 | fyndStoreId | String |  no  |  |
 | amountPaid | Double |  no  |  |
 | priceMarked | Double |  no  |  |
 | identifier | [String: Any] |  no  |  |
 | itemSize | String |  no  |  |
 | quantity | Int |  no  |  |
 | sellerIdentifier | String |  no  |  |
 | transferPrice | Int |  no  |  |
 | discount | Double |  no  |  |
 | affiliateMeta | [String: Any] |  no  |  |
 | storeId | Int |  no  |  |
 | affiliateStoreId | String |  no  |  |
 | priceEffective | Double |  no  |  |
 | deliveryCharge | Double |  no  |  |
 | itemId | Int |  no  |  |

---


 
 
 #### [OrderUser](#OrderUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address1 | String? |  yes  |  |
 | firstName | String |  no  |  |
 | mobile | Int |  no  |  |
 | pincode | String |  no  |  |
 | phone | Int |  no  |  |
 | lastName | String |  no  |  |
 | state | String |  no  |  |
 | city | String |  no  |  |
 | email | String |  no  |  |
 | country | String |  no  |  |
 | address2 | String? |  yes  |  |

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
 | fulfilmentPriority | Int? |  yes  |  |
 | affiliatePriorityCode | String? |  yes  |  |
 | fulfilmentPriorityText | String? |  yes  |  |

---


 
 
 #### [OrderInfo](#OrderInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | deliveryCharges | Double |  no  |  |
 | shipment | [ShipmentData](#ShipmentData)? |  yes  |  |
 | orderValue | Double |  no  |  |
 | codCharges | Double |  no  |  |
 | coupon | String? |  yes  |  |
 | payment | [String: Any]? |  yes  |  |
 | paymentMode | String |  no  |  |
 | bags | [[AffiliateBag](#AffiliateBag)] |  no  |  |
 | billingAddress | [OrderUser](#OrderUser) |  no  |  |
 | shippingAddress | [OrderUser](#OrderUser) |  no  |  |
 | affiliateOrderId | String? |  yes  |  |
 | discount | Double |  no  |  |
 | user | [UserData](#UserData) |  no  |  |
 | orderPriority | [OrderPriority](#OrderPriority)? |  yes  |  |
 | items | [String: Any] |  no  |  |

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
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |

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


 
 
 #### [PostHistoryData](#PostHistoryData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userName | String |  no  |  |
 | message | String |  no  |  |

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


 
 
 #### [HistoryDict](#HistoryDict)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | History Message or comment |
 | l3Detail | String? |  yes  | L3 details of bag |
 | bagId | Int? |  yes  | Bag ID |
 | displayMessage | String? |  yes  | Display Message |
 | ticketId | String? |  yes  | Ticket ID |
 | createdat | String |  no  | Create date |
 | assignedAgent | String? |  yes  | Assigned Agent |
 | ticketUrl | String? |  yes  | Ticket URL |
 | l2Detail | String? |  yes  | L2 details of bag |
 | meta | [String: Any]? |  yes  | meta |
 | user | String |  no  | User who created the history |
 | type | String |  no  | type of history, Expected Values:             [ activity_status, activity_escalation, activity_comment, outbound_notification, outbound_voice ] |
 | l1Detail | String? |  yes  | L1 details of bag |

---


 
 
 #### [ShipmentHistoryResponse](#ShipmentHistoryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | activityHistory | [[HistoryDict](#HistoryDict)] |  no  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [SmsDataPayload](#SmsDataPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customerName | String? |  yes  | Data mapped in Communication template: customer_name |
 | message | String |  no  | message to be send in SMS |
 | brandName | String? |  yes  | Data mapped in Communication template: brand_name |
 | phoneNumber | Int |  no  | phone number for communication |
 | paymentMode | String? |  yes  | Data mapped in Communication template: payment_mode |
 | shipmentId | Int |  no  | ShipmentId |
 | orderId | String |  no  | orderId |
 | countryCode | String |  no  | country code for SMS |
 | amountPaid | Int? |  yes  | Data mapped in Communication template: amount_paid |

---


 
 
 #### [SendSmsPayload](#SendSmsPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [SmsDataPayload](#SmsDataPayload)? |  yes  | SMS Data |
 | slug | String |  no  | slug name for the template mapped in pointblank |
 | bagId | Int |  no  | bag_id for the activity history track |

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
 | id | Int |  no  |  |
 | status | String? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | bagList | [Int]? |  yes  |  |
 | meta | [Meta](#Meta) |  no  |  |
 | remarks | String? |  yes  |  |

---


 
 
 #### [OrderDetails](#OrderDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fyndOrderId | String? |  yes  |  |
 | createdAt | String? |  yes  |  |

---


 
 
 #### [OrderStatusData](#OrderStatusData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentDetails | [[ShipmentDetail](#ShipmentDetail)]? |  yes  |  |
 | orderDetails | [OrderDetails](#OrderDetails) |  no  |  |
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
 | weight | String? |  yes  |  |
 | width | Double? |  yes  |  |
 | height | String? |  yes  |  |

---


 
 
 #### [UpdatePackagingDimensionsPayload](#UpdatePackagingDimensionsPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currentStatus | String |  no  |  |
 | dimension | [[Dimension](#Dimension)] |  no  |  |
 | shipmentId | String |  no  |  |

---


 
 
 #### [UpdatePackagingDimensionsResponse](#UpdatePackagingDimensionsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [TaxInfo](#TaxInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstin | String? |  yes  |  |
 | b2BGstinNumber | String? |  yes  |  |

---


 
 
 #### [ShippingInfo](#ShippingInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String |  no  |  |
 | primaryMobileNumber | String |  no  |  |
 | countryCode | String? |  yes  |  |
 | customerCode | String? |  yes  |  |
 | floorNo | String? |  yes  |  |
 | landmark | String? |  yes  |  |
 | title | String? |  yes  |  |
 | country | String |  no  |  |
 | city | String |  no  |  |
 | address1 | String |  no  |  |
 | addressType | String? |  yes  |  |
 | state | String |  no  |  |
 | alternateEmail | String? |  yes  |  |
 | stateCode | String? |  yes  |  |
 | shippingType | String? |  yes  |  |
 | geoLocation | [String: Any]? |  yes  |  |
 | lastName | String? |  yes  |  |
 | middleName | String? |  yes  |  |
 | primaryEmail | String |  no  |  |
 | slot | [[String: Any]]? |  yes  |  |
 | gender | String? |  yes  |  |
 | externalCustomerCode | String? |  yes  |  |
 | alternateMobileNumber | String? |  yes  |  |
 | pincode | String |  no  |  |
 | houseNo | String? |  yes  |  |
 | address2 | String? |  yes  |  |

---


 
 
 #### [Tax](#Tax)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rate | Double |  no  |  |
 | amount | [String: Any] |  no  |  |
 | breakup | [[String: Any]]? |  yes  |  |
 | name | String |  no  |  |

---


 
 
 #### [Charge](#Charge)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | tax | [Tax](#Tax)? |  yes  |  |
 | code | String? |  yes  |  |
 | amount | [String: Any] |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [PaymentMethod](#PaymentMethod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | collectBy | String |  no  |  |
 | name | String |  no  |  |
 | mode | String |  no  |  |
 | transactionData | [String: Any]? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | refundBy | String |  no  |  |
 | amount | Double |  no  |  |

---


 
 
 #### [PaymentInfo](#PaymentInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentMethods | [[PaymentMethod](#PaymentMethod)]? |  yes  |  |
 | primaryMode | String |  no  |  |

---


 
 
 #### [BillingInfo](#BillingInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String |  no  |  |
 | primaryMobileNumber | String |  no  |  |
 | countryCode | String? |  yes  |  |
 | customerCode | String? |  yes  |  |
 | floorNo | String? |  yes  |  |
 | title | String? |  yes  |  |
 | country | String |  no  |  |
 | city | String |  no  |  |
 | address1 | String |  no  |  |
 | state | String |  no  |  |
 | alternateEmail | String? |  yes  |  |
 | stateCode | String? |  yes  |  |
 | lastName | String? |  yes  |  |
 | middleName | String? |  yes  |  |
 | primaryEmail | String |  no  |  |
 | gender | String? |  yes  |  |
 | externalCustomerCode | String? |  yes  |  |
 | alternateMobileNumber | String? |  yes  |  |
 | pincode | String |  no  |  |
 | houseNo | String? |  yes  |  |
 | address2 | String? |  yes  |  |

---


 
 
 #### [ProcessingDates](#ProcessingDates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | packByDate | String? |  yes  |  |
 | dispatchByDate | String? |  yes  |  |
 | customerPickupSlot | [String: Any]? |  yes  |  |
 | dpPickupSlot | [String: Any]? |  yes  |  |
 | confirmByDate | String? |  yes  |  |
 | dispatchAfterDate | String? |  yes  |  |

---


 
 
 #### [LineItem](#LineItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customMessasge | String? |  yes  |  |
 | charges | [[Charge](#Charge)]? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | sellerIdentifier | String |  no  |  |
 | externalLineId | String? |  yes  |  |

---


 
 
 #### [Shipment](#Shipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | externalShipmentId | String? |  yes  |  |
 | locationId | Int |  no  |  |
 | priority | Int? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | processingDates | [ProcessingDates](#ProcessingDates)? |  yes  |  |
 | lineItems | [[LineItem](#LineItem)] |  no  |  |

---


 
 
 #### [CreateOrderAPI](#CreateOrderAPI)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currencyInfo | [String: Any]? |  yes  |  |
 | taxInfo | [TaxInfo](#TaxInfo)? |  yes  |  |
 | shippingInfo | [ShippingInfo](#ShippingInfo) |  no  |  |
 | charges | [[Charge](#Charge)]? |  yes  |  |
 | paymentInfo | [PaymentInfo](#PaymentInfo) |  no  |  |
 | billingInfo | [BillingInfo](#BillingInfo) |  no  |  |
 | externalCreationDate | String? |  yes  |  |
 | shipments | [[Shipment](#Shipment)] |  no  |  |
 | meta | [String: Any]? |  yes  |  |
 | config | [String: Any]? |  yes  |  |
 | externalOrderId | String? |  yes  |  |

---


 
 
 #### [CreateOrderErrorReponse](#CreateOrderErrorReponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |
 | status | Int |  no  |  |
 | exception | String? |  yes  |  |
 | info | [String: Any]? |  yes  |  |
 | requestId | String? |  yes  |  |
 | stackTrace | String? |  yes  |  |
 | meta | String? |  yes  |  |
 | code | String? |  yes  |  |

---


 
 
 #### [PaymentMethods](#PaymentMethods)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | refundBy | String? |  yes  |  |
 | collectBy | String? |  yes  |  |
 | mode | String? |  yes  |  |

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
 | shipmentAssignment | String? |  yes  |  |
 | dpConfiguration | [DpConfiguration](#DpConfiguration)? |  yes  |  |
 | lockStates | [String]? |  yes  |  |
 | locationReassignment | Bool? |  yes  |  |
 | logoUrl | [String: Any]? |  yes  |  |

---


 
 
 #### [CreateChannelConfigData](#CreateChannelConfigData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | configData | [CreateChannelConfig](#CreateChannelConfig)? |  yes  |  |

---


 
 
 #### [CreateChannelConfigResponse](#CreateChannelConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | acknowledged | Bool? |  yes  |  |
 | isUpserted | Bool? |  yes  |  |
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
 | message | [String]? |  yes  |  |
 | success | Bool? |  yes  |  |

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
 | orderDetails | [[FyndOrderIdList](#FyndOrderIdList)]? |  yes  |  |
 | mobile | Int |  no  |  |
 | startDate | String |  no  |  |

---


 
 
 #### [BagStateTransitionMap](#BagStateTransitionMap)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliate | [String: Any]? |  yes  |  |
 | fynd | [String: Any]? |  yes  |  |

---


 
 
 #### [FetchCreditBalanceRequestPayload](#FetchCreditBalanceRequestPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sellerId | String |  no  |  |
 | affiliateId | String |  no  |  |
 | customerMobileNumber | String |  no  |  |

---


 
 
 #### [CreditBalanceInfo](#CreditBalanceInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reason | String? |  yes  |  |
 | totalCreditedBalance | String? |  yes  |  |
 | customerMobileNumber | String? |  yes  |  |

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
 | sellerId | String |  no  |  |
 | affiliateId | String |  no  |  |
 | orderingChannel | String |  no  |  |
 | fyndOrderId | String |  no  |  |

---


 
 
 #### [SingleRefundModeInfo](#SingleRefundModeInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | displayName | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | slug | String? |  yes  |  |

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
 | lastName | String |  no  |  |
 | mobile | Int |  no  |  |
 | countryCode | String? |  yes  |  |

---


 
 
 #### [AttachOrderUser](#AttachOrderUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | otpData | [AttachUserOtpData](#AttachUserOtpData) |  no  |  |
 | fyndOrderId | String |  no  |  |
 | userInfo | [AttachUserInfo](#AttachUserInfo) |  no  |  |

---


 
 
 #### [AttachOrderUserResponse](#AttachOrderUserResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [SendUserMobileOTP](#SendUserMobileOTP)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mobile | Int |  no  |  |
 | countryCode | String? |  yes  |  |

---


 
 
 #### [PointBlankOtpData](#PointBlankOtpData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | resendTimer | Int? |  yes  |  |
 | mobile | Int? |  yes  |  |
 | requestId | String? |  yes  |  |

---


 
 
 #### [SendUserMobileOtpResponse](#SendUserMobileOtpResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | data | [PointBlankOtpData](#PointBlankOtpData)? |  yes  |  |
 | success | Bool? |  yes  |  |

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

---


 
 
 #### [EInvoiceRetryShipmentData](#EInvoiceRetryShipmentData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | einvoiceType | String? |  yes  |  |
 | shipmentId | String? |  yes  |  |

---


 
 
 #### [EInvoiceRetry](#EInvoiceRetry)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentsData | [[EInvoiceRetryShipmentData](#EInvoiceRetryShipmentData)]? |  yes  |  |

---


 
 
 #### [EinvoiceResponseData](#EinvoiceResponseData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [EInvoiceRetryResponse](#EInvoiceRetryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | responseData | [[EinvoiceResponseData](#EinvoiceResponseData)]? |  yes  |  |

---



