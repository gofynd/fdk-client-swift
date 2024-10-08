import Foundation

extension PlatformClient {

    public class Order {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        
        
        /**
        *
        * Summary: Invalidate shipment cache
        * Description: Clear the existing shipment cache data stored in Redis  and serialize the updated data for subsequent use.
        **/
        public func invalidateShipmentCache(
            body: InvalidateShipmentCachePayload,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: InvalidateShipmentCacheResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "PUT",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/update-cache",
                query: nil,
                body: body.dictionary,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(InvalidateShipmentCacheResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Reassign location
        * Description: Reassign the shipment to a another location and update its status to 'Store Reassigned.'
        **/
        public func reassignLocation(
            body: StoreReassign,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: StoreReassignResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/store/reassign-internal",
                query: nil,
                body: body.dictionary,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(StoreReassignResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Update a shipment lock
        * Description: Modify shipment/bag lock status and update lock/unlock messages.
        **/
        public func updateShipmentLock(
            body: UpdateShipmentLockPayload,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: UpdateShipmentLockResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/entity/lock-manager",
                query: nil,
                body: body.dictionary,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(UpdateShipmentLockResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: List announcements
        * Description: Retrieve announcements related to orders fulfilment configured by platform or company admin
        **/
        public func getAnnouncements(
            date: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: AnnouncementsResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = date {
                xQuery["date"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/announcements",
                query: xQuery,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(AnnouncementsResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Update shipment address
        * Description: Modify the address details of an existing shipment
        **/
        public func updateAddress(
            shipmentId: String,
            name: String?,
            address: String?,
            addressType: String?,
            pincode: String?,
            phone: String?,
            email: String?,
            landmark: String?,
            addressCategory: String,
            city: String?,
            state: String?,
            country: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: BaseResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["shipment_id"] = shipmentId
            
            if let value = name {
                xQuery["name"] = value
            }
            
            if let value = address {
                xQuery["address"] = value
            }
            
            if let value = addressType {
                xQuery["address_type"] = value
            }
            
            if let value = pincode {
                xQuery["pincode"] = value
            }
            
            if let value = phone {
                xQuery["phone"] = value
            }
            
            if let value = email {
                xQuery["email"] = value
            }
            
            if let value = landmark {
                xQuery["landmark"] = value
            }
            xQuery["address_category"] = addressCategory
            
            if let value = city {
                xQuery["city"] = value
            }
            
            if let value = state {
                xQuery["state"] = value
            }
            
            if let value = country {
                xQuery["country"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/delight/update-address",
                query: xQuery,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(BaseResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Update a shipment's status
        * Description: Used for updating a shipment and its status. Can also be used for updating bags present in that shipment.
        **/
        public func updateShipmentStatus(
            body: UpdateShipmentStatusRequestSchema,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: UpdateShipmentStatusResponseBody?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "PUT",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/shipment/status-internal",
                query: nil,
                body: body.dictionary,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(UpdateShipmentStatusResponseBody.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get role-based actions
        * Description: Retrieve permissible actions based on user roles such as company_admin,  company_operation, customer_care, and read_only.
        **/
        public func getRoleBasedActions(
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: GetActionsResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/roles",
                query: nil,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetActionsResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get a shipment's history
        * Description: Get the history of the shipment
        **/
        public func getShipmentHistory(
            shipmentId: String?,
            bagId: Int?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ShipmentHistoryResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = shipmentId {
                xQuery["shipment_id"] = value
            }
            
            if let value = bagId {
                xQuery["bag_id"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/shipment/history",
                query: xQuery,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ShipmentHistoryResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Create shipment history
        * Description: Used to add logs in history for a bag for the provided Shipment ID
        **/
        public func postShipmentHistory(
            body: PostShipmentHistory,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ShipmentHistoryResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/shipment/history",
                query: nil,
                body: body.dictionary,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ShipmentHistoryResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Send SMS
        * Description: Send SMS to customer based on the template that is selected
        **/
        public func sendSmsNinja(
            body: SendSmsPayload,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: BaseResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/ninja/send-sms",
                query: nil,
                body: body.dictionary,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(BaseResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Update packaging dimensions
        * Description: Used to modify the packaging dimension of a shipment
        **/
        public func updatePackagingDimensions(
            body: UpdatePackagingDimensionsPayload,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: UpdatePackagingDimensionsResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/update-packaging-dimension",
                query: nil,
                body: body.dictionary,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(UpdatePackagingDimensionsResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Create order
        * Description: Creates an order
        **/
        public func createOrder(
            body: CreateOrderAPI,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CreateOrderResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/create-order",
                query: nil,
                body: body.dictionary,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CreateOrderResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Update an order
        * Description: Used to update an order's meta information. These meta information can be accessed via order or shipment details API.
        **/
        public func orderUpdate(
            body: PlatformOrderUpdate,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ResponseDetail?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "PUT",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/order/validation",
                query: nil,
                body: body.dictionary,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ResponseDetail.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Debug order
        * Description: Used to verify the status of order. It queries error logs, resyncs the shipments if there was an issue with sync etc.
        **/
        public func checkOrderStatus(
            body: OrderStatus,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: OrderStatusResult?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/debug/order_status",
                query: nil,
                body: body.dictionary,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(OrderStatusResult.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get state transition map
        * Description: Retrieve a map of state transitions for orders
        **/
        public func getStateTransitionMap(
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: BagStateTransitionMap?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/bag/state/transition",
                query: nil,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(BagStateTransitionMap.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get allowed state transition
        * Description: Retrieve next possible states based on logged in user's role
        **/
        public func getAllowedStateTransition(
            orderingChannel: String,
            status: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: RoleBaseStateTransitionMapping?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["ordering_channel"] = orderingChannel
            xQuery["status"] = status
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/allowed/state/transition",
                query: xQuery,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(RoleBaseStateTransitionMapping.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: List refund modes
        * Description: Get list of refund modes to trigger refunds
        **/
        public func fetchRefundModeConfig(
            body: RefundModeConfigRequestPayload,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: RefundModeConfigResponsePayload?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/refund-mode-config",
                query: nil,
                body: body.dictionary,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(RefundModeConfigResponsePayload.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Attach order to a user
        * Description: Attach an anonymous order to a customer based on OTP verification
        **/
        public func attachOrderUser(
            body: AttachOrderUser,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: AttachOrderUserResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/user/attach",
                query: nil,
                body: body.dictionary,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(AttachOrderUserResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Send user mobile OTP
        * Description: Send a one-time OTP to a customer mobile number
        **/
        public func sendUserMobileOTP(
            body: SendUserMobileOTP,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: SendUserMobileOtpResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/user/send/otp/mobile",
                query: nil,
                body: body.dictionary,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(SendUserMobileOtpResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Verify mobile OTP
        * Description: Perform OTP verification to link a user to an anonymous order
        **/
        public func verifyMobileOTP(
            body: VerifyMobileOTP,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: VerifyOtpResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/user/verify/otp",
                query: nil,
                body: body.dictionary,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(VerifyOtpResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Download Lane report
        * Description: Downloads shipments/orders present in the provided lane
        **/
        public func downloadLanesReport(
            body: BulkReportsDownloadRequest,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: BulkReportsDownloadResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/reports/lanes/download",
                query: nil,
                body: body.dictionary,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(BulkReportsDownloadResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Upload bulk state transitions file
        * Description: Performs state transisiton in bulk using the CSV or excel file for the given shipments. The bulk transition CSV or excel template can be downloaded using the seller template download method. Current supported format is excel and CSV.
        **/
        public func bulkStateTransistion(
            body: BulkStateTransistionRequestSchema,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: BulkStateTransistionResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/jobs/state-transition",
                query: nil,
                body: body.dictionary,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(BulkStateTransistionResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Lists bulk operations
        * Description: Get list of bulk operation that is initiated and completed as per the filters provided
        **/
        public func bulkListing(
            pageSize: Int,
            pageNo: Int,
            startDate: String,
            endDate: String,
            status: String?,
            bulkActionType: String?,
            searchKey: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: BulkListingResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["page_size"] = pageSize
            xQuery["page_no"] = pageNo
            xQuery["start_date"] = startDate
            xQuery["end_date"] = endDate
            
            if let value = status {
                xQuery["status"] = value
            }
            
            if let value = bulkActionType {
                xQuery["bulk_action_type"] = value
            }
            
            if let value = searchKey {
                xQuery["search_key"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/jobs",
                query: xQuery,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(BulkListingResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get bulk operation details 
        * Description: Fetches details of the job for the provided batch Id
        **/
        public func jobDetails(
            batchId: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: JobDetailsResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/jobs/\(batchId)",
                query: nil,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(JobDetailsResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Download file used for Bulk operation
        * Description: Get the file download URL used for performing bulk operation
        **/
        public func getFileByStatus(
            batchId: String,
            status: String,
            fileType: String,
            reportType: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: JobFailedResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["status"] = status
            xQuery["file_type"] = fileType
            
            if let value = reportType {
                xQuery["report_type"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/jobs/\(batchId)/file",
                query: xQuery,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(JobFailedResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: List manifest shipments
        * Description: Get list of shipments tagged to that manifest, the user can also search the shipments on the basis of shipment Id, order Id and AWB number
        **/
        public func getManifestShipments(
            dpIds: String,
            stores: Int,
            toDate: String,
            fromDate: String,
            dpName: String?,
            salesChannels: String?,
            searchType: String?,
            searchValue: String?,
            pageNo: Int?,
            pageSize: Int?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ManifestShipmentListing?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["dp_ids"] = dpIds
            xQuery["stores"] = stores
            xQuery["to_date"] = toDate
            xQuery["from_date"] = fromDate
            
            if let value = dpName {
                xQuery["dp_name"] = value
            }
            
            if let value = salesChannels {
                xQuery["sales_channels"] = value
            }
            
            if let value = searchType {
                xQuery["search_type"] = value
            }
            
            if let value = searchValue {
                xQuery["search_value"] = value
            }
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/manifest/shipments-listing",
                query: xQuery,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ManifestShipmentListing.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: List manifests
        * Description: Get a list of manifest as per the filter provided
        **/
        public func getManifests(
            status: String?,
            startDate: String?,
            endDate: String?,
            searchType: String?,
            storeId: Int?,
            searchValue: String?,
            dpIds: String?,
            pageNo: Int?,
            pageSize: Int?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ManifestList?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = status {
                xQuery["status"] = value
            }
            
            if let value = startDate {
                xQuery["start_date"] = value
            }
            
            if let value = endDate {
                xQuery["end_date"] = value
            }
            
            if let value = searchType {
                xQuery["search_type"] = value
            }
            
            if let value = storeId {
                xQuery["store_id"] = value
            }
            
            if let value = searchValue {
                xQuery["search_value"] = value
            }
            
            if let value = dpIds {
                xQuery["dp_ids"] = value
            }
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/manifest/listing",
                query: xQuery,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ManifestList.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Process Order Manifest
        * Description: Endpoint to save and process order manifests.
        **/
        public func generateProcessManifest(
            body: ProcessManifestRequest,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ManifestResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/process-manifest",
                query: nil,
                body: body.dictionary,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ManifestResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get a manifest
        * Description: Get details regarding a manifest which can be used to perform further actions on it
        **/
        public func getManifestDetails(
            manifestId: String,
            dpIds: String?,
            endDate: String?,
            startDate: String?,
            pageNo: Int?,
            pageSize: Int?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ManifestDetails?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["manifest_id"] = manifestId
            
            if let value = dpIds {
                xQuery["dp_ids"] = value
            }
            
            if let value = endDate {
                xQuery["end_date"] = value
            }
            
            if let value = startDate {
                xQuery["start_date"] = value
            }
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/manifest/details",
                query: xQuery,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ManifestDetails.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Dispatch manifest
        * Description: Updates the status of the manifest to processed and change the status of the shipments in the manifest to dispatch status
        **/
        public func dispatchManifests(
            body: DispatchManifest,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/manifest/dispatch",
                query: nil,
                body: body.dictionary,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(SuccessResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Upload consent
        * Description: Uploads the consent signed by courier partner and seller to keep records
        **/
        public func uploadConsents(
            body: UploadManifestConsent,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/manifest/uploadConsent",
                query: nil,
                body: body.dictionary,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(SuccessResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: List filters
        * Description: Get supported filter for listing manifests
        **/
        public func getManifestfilters(
            view: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ManifestFiltersResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["view"] = view
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/filter/listing",
                query: xQuery,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ManifestFiltersResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Retry E-invoice
        * Description: Reattempt the generation of an E-invoice
        **/
        public func eInvoiceRetry(
            body: EInvoiceRetry,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: EInvoiceRetryResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/einvoice/retry/irn",
                query: nil,
                body: body.dictionary,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(EInvoiceRetryResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Track shipment
        * Description: Retrieve courier partner tracking details for a given shipment Id or AWB number
        **/
        public func trackShipment(
            shipmentId: String?,
            awb: String?,
            pageNo: Int?,
            pageSize: Int?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CourierPartnerTrackingResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = shipmentId {
                xQuery["shipment_id"] = value
            }
            
            if let value = awb {
                xQuery["awb"] = value
            }
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/tracking",
                query: xQuery,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CourierPartnerTrackingResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Update shipment tracking
        * Description: Modify courier partner tracking details for a given shipment Id or AWB number
        **/
        public func updateShipmentTracking(
            body: CourierPartnerTrackingDetails,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CourierPartnerTrackingDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/tracking",
                query: nil,
                body: body.dictionary,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CourierPartnerTrackingDetails.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: List failed order logs
        * Description: Get failed order logs listing for filters based on order Id, user contact number, user email Id and sales channel Id.
        **/
        public func failedOrderLogs(
            applicationId: String?,
            pageNo: Int?,
            pageSize: Int?,
            searchType: String?,
            searchValue: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: FailedOrderLogs?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = applicationId {
                xQuery["application_id"] = value
            }
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
            if let value = searchType {
                xQuery["search_type"] = value
            }
            
            if let value = searchValue {
                xQuery["search_value"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/orders/failed",
                query: xQuery,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(FailedOrderLogs.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Generate and attach invoice Id
        * Description: Generate and attach Invoice Ids against shipments.
        **/
        public func generateInvoiceID(
            invoiceType: String,
            body: GenerateInvoiceIDRequestSchema,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: GenerateInvoiceIDResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/\(invoiceType)/id/generate",
                query: nil,
                body: body.dictionary,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GenerateInvoiceIDResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get failed order log
        * Description: Get the exact error trace from the log Id provided in the failed order list API response 
        **/
        public func failedOrderLogDetails(
            logId: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: FailedOrderLogDetails?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/orders/failed/logs/\(logId)",
                query: nil,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(FailedOrderLogDetails.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Allows esm config updation
        * Description: Update ESM config
        **/
        public func addStateManagerConfig(
            body: TransitionConfigPayload,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ConfigUpdatedResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/state/manager/config",
                query: nil,
                body: body.dictionary,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ConfigUpdatedResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Retrieves Entity State Manager configuration which includes flags, hooks, and filters, for a specific application within a company's setup.
        * Description: This endpoint retrieves the ESM (Entity State Manager) configuration for a specific application within a company. The retrieval is based on parameters such as application ID, ordering channel, and entity type.
The ESM config stores order processing configuration. Each document in the ESM config collection of  Order Management System - OMS's database is a JSON object representing the configuration of a specific application ID. This includes filters, hooks, flags set on different state-transitions.  This configuration is picked and accordingly features are enabled. 

        **/
        public func getStateManagerConfig(
            appId: String?,
            orderingChannel: String?,
            entity: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: [String: Any]?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = appId {
                xQuery["app_id"] = value
            }
            
            if let value = orderingChannel {
                xQuery["ordering_channel"] = value
            }
            
            if let value = entity {
                xQuery["entity"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/state/manager/config",
                query: xQuery,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = data.dictionary
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        /**
        *
        * Summary: List shipments
        * Description: Get a list of shipments based on the filters provided
        **/
        public func getShipments(
            lane: String?,
            bagStatus: String?,
            statusOverrideLane: Bool?,
            timeToDispatch: Int?,
            searchType: String?,
            searchValue: String?,
            fromDate: String?,
            toDate: String?,
            startDate: String?,
            endDate: String?,
            dpIds: String?,
            stores: String?,
            salesChannels: String?,
            pageNo: Int?,
            pageSize: Int?,
            fetchActiveShipment: Bool?,
            allowInactive: Bool?,
            excludeLockedShipments: Bool?,
            paymentMethods: String?,
            channelShipmentId: String?,
            channelOrderId: String?,
            customMeta: String?,
            orderingChannel: String?,
            companyAffiliateTag: String?,
            myOrders: Bool?,
            platformUserId: String?,
            sortType: String?,
            showCrossCompanyData: Bool?,
            tags: String?,
            customerId: String?,
            orderType: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ShipmentInternalPlatformViewResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = lane {
                xQuery["lane"] = value
            }
            
            if let value = bagStatus {
                xQuery["bag_status"] = value
            }
            
            if let value = statusOverrideLane {
                xQuery["status_override_lane"] = value
            }
            
            if let value = timeToDispatch {
                xQuery["time_to_dispatch"] = value
            }
            
            if let value = searchType {
                xQuery["search_type"] = value
            }
            
            if let value = searchValue {
                xQuery["search_value"] = value
            }
            
            if let value = fromDate {
                xQuery["from_date"] = value
            }
            
            if let value = toDate {
                xQuery["to_date"] = value
            }
            
            if let value = startDate {
                xQuery["start_date"] = value
            }
            
            if let value = endDate {
                xQuery["end_date"] = value
            }
            
            if let value = dpIds {
                xQuery["dp_ids"] = value
            }
            
            if let value = stores {
                xQuery["stores"] = value
            }
            
            if let value = salesChannels {
                xQuery["sales_channels"] = value
            }
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
            if let value = fetchActiveShipment {
                xQuery["fetch_active_shipment"] = value
            }
            
            if let value = allowInactive {
                xQuery["allow_inactive"] = value
            }
            
            if let value = excludeLockedShipments {
                xQuery["exclude_locked_shipments"] = value
            }
            
            if let value = paymentMethods {
                xQuery["payment_methods"] = value
            }
            
            if let value = channelShipmentId {
                xQuery["channel_shipment_id"] = value
            }
            
            if let value = channelOrderId {
                xQuery["channel_order_id"] = value
            }
            
            if let value = customMeta {
                xQuery["custom_meta"] = value
            }
            
            if let value = orderingChannel {
                xQuery["ordering_channel"] = value
            }
            
            if let value = companyAffiliateTag {
                xQuery["company_affiliate_tag"] = value
            }
            
            if let value = myOrders {
                xQuery["my_orders"] = value
            }
            
            if let value = platformUserId {
                xQuery["platform_user_id"] = value
            }
            
            if let value = sortType {
                xQuery["sort_type"] = value
            }
            
            if let value = showCrossCompanyData {
                xQuery["show_cross_company_data"] = value
            }
            
            if let value = tags {
                xQuery["tags"] = value
            }
            
            if let value = customerId {
                xQuery["customer_id"] = value
            }
            
            if let value = orderType {
                xQuery["order_type"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/shipments-listing",
                query: xQuery,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ShipmentInternalPlatformViewResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get shipment
        * Description: Get detailed information about a specific shipment
        **/
        public func getShipmentById(
            channelShipmentId: String?,
            shipmentId: String?,
            fetchActiveShipment: Bool?,
            allowInactive: Bool?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ShipmentInfoResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = channelShipmentId {
                xQuery["channel_shipment_id"] = value
            }
            
            if let value = shipmentId {
                xQuery["shipment_id"] = value
            }
            
            if let value = fetchActiveShipment {
                xQuery["fetch_active_shipment"] = value
            }
            
            if let value = allowInactive {
                xQuery["allow_inactive"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/shipment-details",
                query: xQuery,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ShipmentInfoResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get order
        * Description: Get detailed information about a specific order
        **/
        public func getOrderById(
            orderId: String,
            myOrders: Bool?,
            allowInactive: Bool?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: OrderDetailsResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["order_id"] = orderId
            
            if let value = myOrders {
                xQuery["my_orders"] = value
            }
            
            if let value = allowInactive {
                xQuery["allow_inactive"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/order-details",
                query: xQuery,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(OrderDetailsResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get lane configuration
        * Description: Get configuration settings for lanes
        **/
        public func getLaneConfig(
            superLane: String?,
            groupEntity: String?,
            fromDate: String?,
            toDate: String?,
            startDate: String?,
            endDate: String?,
            dpIds: String?,
            stores: String?,
            salesChannels: String?,
            paymentMode: String?,
            bagStatus: String?,
            searchType: String?,
            searchValue: String?,
            tags: String?,
            timeToDispatch: Int?,
            paymentMethods: String?,
            myOrders: Bool?,
            showCrossCompanyData: Bool?,
            orderType: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: LaneConfigResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = superLane {
                xQuery["super_lane"] = value
            }
            
            if let value = groupEntity {
                xQuery["group_entity"] = value
            }
            
            if let value = fromDate {
                xQuery["from_date"] = value
            }
            
            if let value = toDate {
                xQuery["to_date"] = value
            }
            
            if let value = startDate {
                xQuery["start_date"] = value
            }
            
            if let value = endDate {
                xQuery["end_date"] = value
            }
            
            if let value = dpIds {
                xQuery["dp_ids"] = value
            }
            
            if let value = stores {
                xQuery["stores"] = value
            }
            
            if let value = salesChannels {
                xQuery["sales_channels"] = value
            }
            
            if let value = paymentMode {
                xQuery["payment_mode"] = value
            }
            
            if let value = bagStatus {
                xQuery["bag_status"] = value
            }
            
            if let value = searchType {
                xQuery["search_type"] = value
            }
            
            if let value = searchValue {
                xQuery["search_value"] = value
            }
            
            if let value = tags {
                xQuery["tags"] = value
            }
            
            if let value = timeToDispatch {
                xQuery["time_to_dispatch"] = value
            }
            
            if let value = paymentMethods {
                xQuery["payment_methods"] = value
            }
            
            if let value = myOrders {
                xQuery["my_orders"] = value
            }
            
            if let value = showCrossCompanyData {
                xQuery["show_cross_company_data"] = value
            }
            
            if let value = orderType {
                xQuery["order_type"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/lane-config/",
                query: xQuery,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(LaneConfigResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: List orders
        * Description: Get a list of orders based on the filters provided
        **/
        public func getOrders(
            lane: String?,
            searchType: String?,
            bagStatus: String?,
            timeToDispatch: Int?,
            paymentMethods: String?,
            tags: String?,
            searchValue: String?,
            fromDate: String?,
            toDate: String?,
            startDate: String?,
            endDate: String?,
            dpIds: String?,
            stores: String?,
            salesChannels: String?,
            pageNo: Int?,
            pageSize: Int?,
            isPrioritySort: Bool?,
            customMeta: String?,
            myOrders: Bool?,
            showCrossCompanyData: Bool?,
            customerId: String?,
            orderType: String?,
            allowInactive: Bool?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: OrderListingResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = lane {
                xQuery["lane"] = value
            }
            
            if let value = searchType {
                xQuery["search_type"] = value
            }
            
            if let value = bagStatus {
                xQuery["bag_status"] = value
            }
            
            if let value = timeToDispatch {
                xQuery["time_to_dispatch"] = value
            }
            
            if let value = paymentMethods {
                xQuery["payment_methods"] = value
            }
            
            if let value = tags {
                xQuery["tags"] = value
            }
            
            if let value = searchValue {
                xQuery["search_value"] = value
            }
            
            if let value = fromDate {
                xQuery["from_date"] = value
            }
            
            if let value = toDate {
                xQuery["to_date"] = value
            }
            
            if let value = startDate {
                xQuery["start_date"] = value
            }
            
            if let value = endDate {
                xQuery["end_date"] = value
            }
            
            if let value = dpIds {
                xQuery["dp_ids"] = value
            }
            
            if let value = stores {
                xQuery["stores"] = value
            }
            
            if let value = salesChannels {
                xQuery["sales_channels"] = value
            }
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
            if let value = isPrioritySort {
                xQuery["is_priority_sort"] = value
            }
            
            if let value = customMeta {
                xQuery["custom_meta"] = value
            }
            
            if let value = myOrders {
                xQuery["my_orders"] = value
            }
            
            if let value = showCrossCompanyData {
                xQuery["show_cross_company_data"] = value
            }
            
            if let value = customerId {
                xQuery["customer_id"] = value
            }
            
            if let value = orderType {
                xQuery["order_type"] = value
            }
            
            if let value = allowInactive {
                xQuery["allow_inactive"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/orders-listing",
                query: xQuery,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(OrderListingResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        
        /**
        *
        * Summary: List filters
        * Description: Get supported filters for various listing operations
        **/
        public func getfilters(
            view: String,
            groupEntity: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: FiltersResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["view"] = view
            
            if let value = groupEntity {
                xQuery["group_entity"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/filter-listing",
                query: xQuery,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(FiltersResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Generate the report
        * Description: Generates the report which can be filled and uploaded to perform the bulk operation based on the filters provided
        **/
        public func getBulkShipmentExcelFile(
            salesChannels: String?,
            dpIds: String?,
            startDate: String?,
            endDate: String?,
            stores: String?,
            tags: String?,
            bagStatus: String?,
            paymentMethods: String?,
            fileType: String?,
            timeToDispatch: Int?,
            pageNo: Int?,
            pageSize: Int?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: FileResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = salesChannels {
                xQuery["sales_channels"] = value
            }
            
            if let value = dpIds {
                xQuery["dp_ids"] = value
            }
            
            if let value = startDate {
                xQuery["start_date"] = value
            }
            
            if let value = endDate {
                xQuery["end_date"] = value
            }
            
            if let value = stores {
                xQuery["stores"] = value
            }
            
            if let value = tags {
                xQuery["tags"] = value
            }
            
            if let value = bagStatus {
                xQuery["bag_status"] = value
            }
            
            if let value = paymentMethods {
                xQuery["payment_methods"] = value
            }
            
            if let value = fileType {
                xQuery["file_type"] = value
            }
            
            if let value = timeToDispatch {
                xQuery["time_to_dispatch"] = value
            }
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/generate/file",
                query: xQuery,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(FileResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: List supported templates
        * Description: Get list of templates so that users can download the required template
        **/
        public func getBulkActionTemplate(
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: BulkActionTemplateResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/bulk-action/get-seller-templates",
                query: nil,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(BulkActionTemplateResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Download bulk template
        * Description: Download bulk seller templates which can be used to perform operations in bulk
        **/
        public func downloadBulkActionTemplate(
            templateSlug: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: FileResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = templateSlug {
                xQuery["template_slug"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/bulk-action/download-seller-templates",
                query: xQuery,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(FileResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: List bag cancellation reasons
        * Description: Get reasons to perform full or partial cancellation of a bag
        **/
        public func getShipmentReasons(
            shipmentId: String,
            bagId: String,
            state: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: PlatformShipmentReasonsResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/shipments/\(shipmentId)/bags/\(bagId)/state/\(state)/reasons",
                query: nil,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(PlatformShipmentReasonsResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        /**
        *
        * Summary: Get bag
        * Description: Retrieve detailed information about a specific bag
        **/
        public func getBagById(
            bagId: String?,
            channelBagId: String?,
            channelId: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: BagDetailsPlatformResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = bagId {
                xQuery["bag_id"] = value
            }
            
            if let value = channelBagId {
                xQuery["channel_bag_id"] = value
            }
            
            if let value = channelId {
                xQuery["channel_id"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/bag-details/",
                query: xQuery,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(BagDetailsPlatformResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: List bags
        * Description: Get paginated list of bags based on provided filters
        **/
        public func getBags(
            bagIds: String?,
            shipmentIds: String?,
            orderIds: String?,
            channelBagIds: String?,
            channelShipmentIds: String?,
            channelOrderIds: String?,
            channelId: String?,
            pageNo: Int?,
            pageSize: Int?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: GetBagsPlatformResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = bagIds {
                xQuery["bag_ids"] = value
            }
            
            if let value = shipmentIds {
                xQuery["shipment_ids"] = value
            }
            
            if let value = orderIds {
                xQuery["order_ids"] = value
            }
            
            if let value = channelBagIds {
                xQuery["channel_bag_ids"] = value
            }
            
            if let value = channelShipmentIds {
                xQuery["channel_shipment_ids"] = value
            }
            
            if let value = channelOrderIds {
                xQuery["channel_order_ids"] = value
            }
            
            if let value = channelId {
                xQuery["channel_id"] = value
            }
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/bags",
                query: xQuery,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetBagsPlatformResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Generate POS receipt by order Id
        * Description: Create a point-of-sale (POS) receipt for a specific order by order Id.
        **/
        public func generatePOSReceiptByOrderId(
            orderId: String,
            shipmentId: String?,
            documentType: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: GeneratePosOrderReceiptResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = shipmentId {
                xQuery["shipment_id"] = value
            }
            
            if let value = documentType {
                xQuery["document_type"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/orders/\(orderId)/generate/pos-receipt",
                query: xQuery,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GeneratePosOrderReceiptResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: List bulk operation templates
        * Description: Gets all the allowed templates to perform bulk operations.
        **/
        public func getAllowedTemplatesForBulk(
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: AllowedTemplatesResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/jobs/templates",
                query: nil,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(AllowedTemplatesResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Download bulk operation templates
        * Description: Get the excel or CSV file URL for the template.
        **/
        public func getTemplate(
            templateName: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: TemplateDownloadResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/jobs/templates/\(templateName)",
                query: nil,
                body: nil,
                headers: xHeaders,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(TemplateDownloadResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
    }
}