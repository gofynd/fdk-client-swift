import Foundation

extension ApplicationClient {

    public class Order {
        
        var config: ApplicationConfig
        var relativeUrls = [String: String]()

        init(config: ApplicationConfig) {
            self.config = config;
            var ulrs = [String: String]()
            
            ulrs["getShipmentRefundSummary"] = config.domain.appendAsPath("/service/application/order-manage/v1.0/shipment/{shipment_id}/refund-summary") 
            
            ulrs["getRefundOptions"] = config.domain.appendAsPath("/service/application/order-manage/v1.0/shipment/{shipment_id}/refund-options") 
            
            ulrs["getOrders"] = config.domain.appendAsPath("/service/application/order/v1.0/orders") 
            
            ulrs["getOrderById"] = config.domain.appendAsPath("/service/application/order/v1.0/orders/{order_id}") 
            
            ulrs["getPosOrderById"] = config.domain.appendAsPath("/service/application/order/v1.0/orders/pos-order/{order_id}") 
            
            ulrs["getShipmentById"] = config.domain.appendAsPath("/service/application/order/v1.0/orders/shipments/{shipment_id}") 
            
            ulrs["getInvoiceByShipmentId"] = config.domain.appendAsPath("/service/application/order/v1.0/orders/shipments/{shipment_id}/invoice") 
            
            ulrs["trackShipment"] = config.domain.appendAsPath("/service/application/order/v1.0/orders/shipments/{shipment_id}/track") 
            
            ulrs["getCustomerDetailsByShipmentId"] = config.domain.appendAsPath("/service/application/order/v1.0/orders/{order_id}/shipments/{shipment_id}/customer-details") 
            
            ulrs["sendOtpToShipmentCustomer"] = config.domain.appendAsPath("/service/application/order/v1.0/orders/{order_id}/shipments/{shipment_id}/otp/send/") 
            
            ulrs["verifyOtpShipmentCustomer"] = config.domain.appendAsPath("/service/application/order/v1.0/orders/{order_id}/shipments/{shipment_id}/otp/verify/") 
            
            ulrs["getShipmentBagReasons"] = config.domain.appendAsPath("/service/application/order/v1.0/orders/shipments/{shipment_id}/bags/{bag_id}/reasons") 
            
            ulrs["getShipmentReasons"] = config.domain.appendAsPath("/service/application/order/v1.0/orders/shipments/{shipment_id}/reasons") 
            
            ulrs["updateShipmentStatus"] = config.domain.appendAsPath("/service/application/order/v1.0/orders/shipments/{shipment_id}/status") 
            
            self.relativeUrls = ulrs
        }
        public func update(updatedUrl : [String: String]){
            for (key, value) in updatedUrl{
            self.relativeUrls[key] = value
            }
        }
        
        
        
        /**
        *
        * Summary: Retreives shipment's refund summary.
        * Description: Retreives shipment's refund summary using its shipment ID.
        **/
        public func getShipmentRefundSummary(
            shipmentId: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ShipmentRefundSummaryResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getShipmentRefundSummary"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "shipment_id" + "}", with: "\(shipmentId)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ShipmentRefundSummaryResponse.self, from: data)
                        
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
        * Summary: Retrieve refund options with amount breakup for  specific shipment and bags.
        * Description: This API can be used for giving the refund amount with available option of MOPs.
        **/
        public func getRefundOptions(
            shipmentId: String,
            bagIds: String?,
            state: String?,
            optinAppId: String?,
            optinCompanyId: Int?,
            status: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: RefundOptionsSchemaResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = bagIds {
                xQuery["bag_ids"] = value
            }
            
            if let value = state {
                xQuery["state"] = value
            }
            
            if let value = optinAppId {
                xQuery["optin_app_id"] = value
            }
            
            if let value = optinCompanyId {
                xQuery["optin_company_id"] = value
            }
            
            if let value = status {
                xQuery["status"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getRefundOptions"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "shipment_id" + "}", with: "\(shipmentId)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(RefundOptionsSchemaResponse.self, from: data)
                        
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
        * Summary: Lists customer orders.
        * Description: Get all orders associated with a customer account.
        **/
        public func getOrders(
            status: Int?,
            pageNo: Int?,
            pageSize: Int?,
            fromDate: String?,
            toDate: String?,
            startDate: String?,
            endDate: String?,
            customMeta: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: OrderList?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = status {
                xQuery["status"] = value
            }
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
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
            
            if let value = customMeta {
                xQuery["custom_meta"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getOrders"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(OrderList.self, from: data)
                        
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
        * Summary: Fetches order by ID.
        * Description: Get order details such as tracking details, shipment, store information using Fynd Order ID.
        **/
        public func getOrderById(
            orderId: String,
            allowInactive: Bool?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: OrderById?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = allowInactive {
                xQuery["allow_inactive"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getOrderById"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "order_id" + "}", with: "\(orderId)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(OrderById.self, from: data)
                        
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
        * Summary: Retrieves POS order details.
        * Description: Retrieve a POS order and all its details such as tracking details, shipment, store information using Fynd Order ID.
        **/
        public func getPosOrderById(
            orderId: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: OrderById?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getPosOrderById"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "order_id" + "}", with: "\(orderId)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(OrderById.self, from: data)
                        
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
        * Summary: Fetches shipment by ID.
        * Description: Get shipment details such as price breakup, tracking details, store information, etc. using Shipment ID.
        **/
        public func getShipmentById(
            shipmentId: String,
            allowInactive: Bool?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ShipmentById?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = allowInactive {
                xQuery["allow_inactive"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getShipmentById"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "shipment_id" + "}", with: "\(shipmentId)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ShipmentById.self, from: data)
                        
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
        * Summary: Retrieves invoice for shipment.
        * Description: Get invoice corresponding to a specific shipment ID.
        **/
        public func getInvoiceByShipmentId(
            shipmentId: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ResponseGetInvoiceShipment?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getInvoiceByShipmentId"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "shipment_id" + "}", with: "\(shipmentId)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ResponseGetInvoiceShipment.self, from: data)
                        
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
        * Summary: Tracks shipment status.
        * Description: Track Shipment by shipment id, for application based on application Id.
        **/
        public func trackShipment(
            shipmentId: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ShipmentTrack?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["trackShipment"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "shipment_id" + "}", with: "\(shipmentId)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ShipmentTrack.self, from: data)
                        
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
        * Summary: Retrieves shipment customer.
        * Description: Get customer details such as mobile number using Shipment ID.
        **/
        public func getCustomerDetailsByShipmentId(
            orderId: String,
            shipmentId: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CustomerDetailsResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getCustomerDetailsByShipmentId"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "order_id" + "}", with: "\(orderId)")
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "shipment_id" + "}", with: "\(shipmentId)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CustomerDetailsResponse.self, from: data)
                        
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
        * Summary: Sends OTP to customer.
        * Description: Send OTP to the customer for shipment verification.
        **/
        public func sendOtpToShipmentCustomer(
            orderId: String,
            shipmentId: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: SendOtpToCustomerResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["sendOtpToShipmentCustomer"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "order_id" + "}", with: "\(orderId)")
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "shipment_id" + "}", with: "\(shipmentId)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(SendOtpToCustomerResponse.self, from: data)
                        
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
        * Summary: Verifies OTP.
        * Description: Verify OTP sent by customer.
        **/
        public func verifyOtpShipmentCustomer(
            orderId: String,
            shipmentId: String,
            body: VerifyOtp,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: VerifyOtpResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["verifyOtpShipmentCustomer"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "order_id" + "}", with: "\(orderId)")
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "shipment_id" + "}", with: "\(shipmentId)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
                body: body.dictionary,
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
        * Summary: Lists bag reasons.
        * Description: Get reasons to perform full or partial cancellation of a bag.
        **/
        public func getShipmentBagReasons(
            shipmentId: String,
            bagId: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ShipmentBagReasons?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getShipmentBagReasons"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "shipment_id" + "}", with: "\(shipmentId)")
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "bag_id" + "}", with: "\(bagId)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ShipmentBagReasons.self, from: data)
                        
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
        * Summary: Lists shipment reasons.
        * Description: Get reasons to perform full or partial cancellation of a shipment.
        **/
        public func getShipmentReasons(
            shipmentId: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ShipmentReasons?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getShipmentReasons"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "shipment_id" + "}", with: "\(shipmentId)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
                body: nil,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ShipmentReasons.self, from: data)
                        
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
        * Summary: Updates shipment status.
        * Description: Update current status of a specific shipment using its shipment ID. Supports both partial and full transition as per the configured settings.
        **/
        public func updateShipmentStatus(
            shipmentId: String,
            body: UpdateShipmentStatusRequest,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ShipmentApplicationStatusResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["updateShipmentStatus"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "shipment_id" + "}", with: "\(shipmentId)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "PUT",
                url: fullUrl,
                query: nil,
                extraHeaders: xHeaders,
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ShipmentApplicationStatusResponse.self, from: data)
                        
                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }}
}