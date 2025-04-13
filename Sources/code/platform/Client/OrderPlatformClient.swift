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
        * Summary: Refund State Configuration
        * Description: Refund State Configuration
        **/
        public func postRefundStateConfiguration(
            appId: String,
            body: PostRefundStateConfiguration,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: PostRefundStateConfigurationResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["app_id"] = appId
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/refund/states/config",
                query: xQuery,
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
                        
                        let response = Utility.decode(PostRefundStateConfigurationResponse.self, from: data)
                        
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
        * Summary: Refund State Configuration
        * Description: Refund State Configuration
        **/
        public func getRefundStateConfiguration(
            appId: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: GetRefundStateConfigurationResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["app_id"] = appId
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/refund/states/config",
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
                        
                        let response = Utility.decode(GetRefundStateConfigurationResponse.self, from: data)
                        
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
        * Summary: Refund State Configurationb
        * Description: refund configuration.
        **/
        public func getRefundEnableStateList(
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: GetRefundStates?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/refund/states",
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
                        
                        let response = Utility.decode(GetRefundStates.self, from: data)
                        
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
        * Summary: refund configuration.
        * Description: refund configuration.
        **/
        public func postRefundConfiguration(
            appId: String,
            body: RefundStateConfigurationManualSchema,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: RefundStateConfigurationManualSchemaResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["app_id"] = appId
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/refund/config",
                query: xQuery,
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
                        
                        let response = Utility.decode(RefundStateConfigurationManualSchemaResponse.self, from: data)
                        
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
        * Summary: refund configuration.
        * Description: refund configuration.
        **/
        public func getRefundConfiguration(
            appId: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: RefundStateConfigurationManualSchemaResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["app_id"] = appId
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/refund/config",
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
                        
                        let response = Utility.decode(RefundStateConfigurationManualSchemaResponse.self, from: data)
                        
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
        * Summary: Reassign location.
        * Description: Change the assigned location for an order or shipment.
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
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/shipment/\(shipmentId)/refund-options",
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
        * Summary: Get announcements.
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
        * Summary: Click to call.
        * Description: Click to call. 
        **/
        public func click2Call(
            caller: String,
            receiver: String,
            bagId: String,
            callerId: String?,
            method: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: Click2CallResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["caller"] = caller
            xQuery["receiver"] = receiver
            xQuery["bag_id"] = bagId
            
            if let value = callerId {
                xQuery["caller_id"] = value
            }
            
            if let value = method {
                xQuery["method"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/ninja/click2call",
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
                        
                        let response = Utility.decode(Click2CallResponse.self, from: data)
                        
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
        * Summary: Update shipment status.
        * Description: Shipment state transition or Shipment data update or both.
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
        * Summary: Get shipment history.
        * Description: Retrieve the shipment history.
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
        * Summary: Post shipment history.
        * Description: Add history records for a shipment.
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
        * Summary: Send SMS via Ninja.
        * Description: Send SMS to customer based on the template that is selected
        **/
        public func sendSmsNinja(
            body: SendSmsPayload,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: SendSmsResponse?, _ error: FDKError?) -> Void
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
                        
                        let response = Utility.decode(SendSmsResponse.self, from: data)
                        
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
        * Summary: Update packaging dimensions.
        * Description: Modify the dimensions of packaging.
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
        * Summary: Get state transition map.
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
        * Summary: Get allowed state transition.
        * Description: Retrieve next possible states based on logged in user.
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
        * Summary: Fetch credit balance detail.
        * Description: Retrieve details about credit balance on the basis of customer mobile number
        **/
        public func fetchCreditBalanceDetail(
            body: FetchCreditBalanceRequestPayload,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: FetchCreditBalanceResponsePayload?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/customer-credit-balance",
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
                        
                        let response = Utility.decode(FetchCreditBalanceResponsePayload.self, from: data)
                        
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
        * Summary: Fetch refund mode config.
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
        * Summary: Attach order user.
        * Description: Attach order User
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
        * Summary: Send user mobile OTP.
        * Description: Send a one-time OTP to a users mobile device.
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
        * Summary: Verify Mobile OTP
        * Description: Verify Mobile OTP
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
        * Summary: Downloads lanes shipment/orders.
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
        * Summary: Performs State Transisiton in Bulk for the given shipments in the excel/csv file url.
        * Description: Performs State Transisiton in Bulk for the given shipments in the excel/csv file url.
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
        * Summary: Fetches of previous or running  bulk jobs.
        * Description: Fetches of previous or running  bulk jobs.

        **/
        public func bulkListing(
            pageSize: Int,
            pageNo: Int,
            startDate: String?,
            endDate: String?,
            status: String?,
            bulkActionType: String?,
            searchKey: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: BulkListingResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["page_size"] = pageSize
            xQuery["page_no"] = pageNo
            
            if let value = startDate {
                xQuery["start_date"] = value
            }
            
            if let value = endDate {
                xQuery["end_date"] = value
            }
            
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
        * Summary: Fetches details for the job of the provided batch_id
        * Description: Fetches details for the job of the provided batch_id
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
        * Summary: Get the file download URL used for performing bulk operation
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
        * Summary: get Manifest Filters.
        * Description: get Manifest Filters.
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
        * Summary: Retry e-invoice after failure
        * Description: Retry e-invoice after failure
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
        * Summary: Get failed order logs according to the filter provided
        * Description: This endpoint allows users to get failed order logs listing for filters based on order id, user contact number, user email id and sales channel id.
        **/
        public func getFailedOrderLogs(
            pageNo: Int?,
            pageSize: Int?,
            searchType: String?,
            searchValue: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: FailedOrderLogs?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
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
        * Summary: Get failed order logs according to the filter provided
        * Description: This endpoint allows users to get the exact error trace from the log id provided
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
        * Summary: Get role-based actions.
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
        * Summary: Update shipment lock.
        * Description: Modify shipment/bag lock and check status.
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
        * Summary: Create order.
        * Description: Create order.
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
        * Summary: Update shipment status.
        * Description: Shipment action transition or Shipment data update or both.
        **/
        public func updateShipment(
            body: UpdateShipmentActionRequest,
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
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/shipment/update",
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
        * Summary: Enables the updating of various order properties, including tax_details, meta, and more, providing flexibility and precision in order adjustments.
        * Description: Enables the updating of various order properties, including tax_details, meta, and more, providing flexibility and precision in order adjustments.
        **/
        public func updateOrder(
            orderId: String,
            body: OrderUpdatePayload,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: OrderUpdateResponseDetail?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "PUT",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/order/\(orderId)",
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
                        
                        let response = Utility.decode(OrderUpdateResponseDetail.self, from: data)
                        
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
        * Summary: Consolidates multiple shipments into a single shipment, optimizing logistics and delivery handling.
        * Description: Consolidates multiple shipments into a single shipment, allowing for optimized logistics and delivery handling.
        **/
        public func consolidateShipments(
            body: ConsolidateShipmentPayload,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ConsolidateShipmentResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/shipments/consolidate",
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
                        
                        let response = Utility.decode(ConsolidateShipmentResponse.self, from: data)
                        
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
        * Summary: Get shipments.
        * Description: Get Shipments Listing for the company id
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
            operationalStatus: String?,
            financialStatus: String?,
            logisticsStatus: String?,
            parentViewSlug: String?,
            childViewSlug: String?,
            lockStatus: String?,
            groupEntity: String?,
            enforceDateFilter: Bool?,
            
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
            
            if let value = operationalStatus {
                xQuery["operational_status"] = value
            }
            
            if let value = financialStatus {
                xQuery["financial_status"] = value
            }
            
            if let value = logisticsStatus {
                xQuery["logistics_status"] = value
            }
            
            if let value = parentViewSlug {
                xQuery["parent_view_slug"] = value
            }
            
            if let value = childViewSlug {
                xQuery["child_view_slug"] = value
            }
            
            if let value = lockStatus {
                xQuery["lock_status"] = value
            }
            
            if let value = groupEntity {
                xQuery["group_entity"] = value
            }
            
            if let value = enforceDateFilter {
                xQuery["enforce_date_filter"] = value
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
        * Summary: get paginator for getShipments
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getShipmentsPaginator(
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
            operationalStatus: String?,
            financialStatus: String?,
            logisticsStatus: String?,
            parentViewSlug: String?,
            childViewSlug: String?,
            lockStatus: String?,
            groupEntity: String?,
            enforceDateFilter: Bool?,
            headers: [(key: String, value: String)]? = nil
            ) -> Paginator<ShipmentInternalPlatformViewResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<ShipmentInternalPlatformViewResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getShipments(
                    lane: lane,
                    bagStatus: bagStatus,
                    statusOverrideLane: statusOverrideLane,
                    timeToDispatch: timeToDispatch,
                    searchType: searchType,
                    searchValue: searchValue,
                    fromDate: fromDate,
                    toDate: toDate,
                    startDate: startDate,
                    endDate: endDate,
                    dpIds: dpIds,
                    stores: stores,
                    salesChannels: salesChannels,
                    pageNo: paginator.pageNo,
                    pageSize: paginator.pageSize,
                    fetchActiveShipment: fetchActiveShipment,
                    allowInactive: allowInactive,
                    excludeLockedShipments: excludeLockedShipments,
                    paymentMethods: paymentMethods,
                    channelShipmentId: channelShipmentId,
                    channelOrderId: channelOrderId,
                    customMeta: customMeta,
                    orderingChannel: orderingChannel,
                    companyAffiliateTag: companyAffiliateTag,
                    myOrders: myOrders,
                    platformUserId: platformUserId,
                    sortType: sortType,
                    showCrossCompanyData: showCrossCompanyData,
                    tags: tags,
                    customerId: customerId,
                    orderType: orderType,
                    operationalStatus: operationalStatus,
                    financialStatus: financialStatus,
                    logisticsStatus: logisticsStatus,
                    parentViewSlug: parentViewSlug,
                    childViewSlug: childViewSlug,
                    lockStatus: lockStatus,
                    groupEntity: groupEntity,
                    enforceDateFilter: enforceDateFilter,
                    
                    headers: headers
                ) { response, error in                    
                    if let response = response {
                        paginator.hasNext = response.page?.hasNext ?? false
                        paginator.pageNo = (paginator.pageNo ?? 0) + 1
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }
        
        
        
        
        /**
        *
        * Summary: Get shipment by ID.
        * Description: Retrieve detailed information about a specific shipment.
        **/
        public func getShipmentById(
            channelShipmentId: String?,
            shipmentId: String?,
            fetchActiveShipment: Bool?,
            
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
        * Summary: Get order by ID.
        * Description: Retrieve detailed information about a specific order.
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
        * Summary: Get lane configuration.
        * Description: Get lane config for the order and shipment
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
                url: "/service/platform/order/v1.0/company/\(companyId)/lane-config",
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
        * Summary: Get orders.
        * Description: Get Orders Listing
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
            customMeta: [[String: Any]]?,
            myOrders: Bool?,
            showCrossCompanyData: Bool?,
            customerId: String?,
            orderType: String?,
            operationalStatus: String?,
            financialStatus: String?,
            logisticsStatus: String?,
            parentViewSlug: String?,
            childViewSlug: String?,
            groupEntity: String?,
            enforceDateFilter: Bool?,
            
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
            
            if let value = operationalStatus {
                xQuery["operational_status"] = value
            }
            
            if let value = financialStatus {
                xQuery["financial_status"] = value
            }
            
            if let value = logisticsStatus {
                xQuery["logistics_status"] = value
            }
            
            if let value = parentViewSlug {
                xQuery["parent_view_slug"] = value
            }
            
            if let value = childViewSlug {
                xQuery["child_view_slug"] = value
            }
            
            if let value = groupEntity {
                xQuery["group_entity"] = value
            }
            
            if let value = enforceDateFilter {
                xQuery["enforce_date_filter"] = value
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
        * Summary: get paginator for getOrders
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getOrdersPaginator(
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
            pageSize: Int?,
            isPrioritySort: Bool?,
            customMeta: [[String: Any]]?,
            myOrders: Bool?,
            showCrossCompanyData: Bool?,
            customerId: String?,
            orderType: String?,
            operationalStatus: String?,
            financialStatus: String?,
            logisticsStatus: String?,
            parentViewSlug: String?,
            childViewSlug: String?,
            groupEntity: String?,
            enforceDateFilter: Bool?,
            headers: [(key: String, value: String)]? = nil
            ) -> Paginator<OrderListingResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<OrderListingResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getOrders(
                    lane: lane,
                    searchType: searchType,
                    bagStatus: bagStatus,
                    timeToDispatch: timeToDispatch,
                    paymentMethods: paymentMethods,
                    tags: tags,
                    searchValue: searchValue,
                    fromDate: fromDate,
                    toDate: toDate,
                    startDate: startDate,
                    endDate: endDate,
                    dpIds: dpIds,
                    stores: stores,
                    salesChannels: salesChannels,
                    pageNo: paginator.pageNo,
                    pageSize: paginator.pageSize,
                    isPrioritySort: isPrioritySort,
                    customMeta: customMeta,
                    myOrders: myOrders,
                    showCrossCompanyData: showCrossCompanyData,
                    customerId: customerId,
                    orderType: orderType,
                    operationalStatus: operationalStatus,
                    financialStatus: financialStatus,
                    logisticsStatus: logisticsStatus,
                    parentViewSlug: parentViewSlug,
                    childViewSlug: childViewSlug,
                    groupEntity: groupEntity,
                    enforceDateFilter: enforceDateFilter,
                    
                    headers: headers
                ) { response, error in                    
                    if let response = response {
                        paginator.hasNext = response.page?.hasNext ?? false
                        paginator.pageNo = (paginator.pageNo ?? 0) + 1
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }
        
        
        
        
        
        
        /**
        *
        * Summary: Update User view(Parent view and child view) position
        * Description: Update User view(Parent view and child view) position
        **/
        public func updateUserViewPosition(
            body: UserViewPosition,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CreateUpdateDeleteResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "PUT",
                url: "/service/platform/order/v1.0/company/\(companyId)/view/position",
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
                        
                        let response = Utility.decode(CreateUpdateDeleteResponse.self, from: data)
                        
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
        * Summary: Get custom view for every unique user cross company pair.
        * Description: Get custom view for every unique user cross company pair.
        **/
        public func getUserViews(
            showIn: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: UserViewsResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["show_in"] = showIn
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/views",
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
                        
                        let response = Utility.decode(UserViewsResponse.self, from: data)
                        
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
        * Summary: Add custom view for every unique user cross company pair.
        * Description: Add custom view for every unique user cross company pair.
        **/
        public func addUserViews(
            body: UserViewsResponse,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CreateUpdateDeleteResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order/v1.0/company/\(companyId)/views",
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
                        
                        let response = Utility.decode(CreateUpdateDeleteResponse.self, from: data)
                        
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
        * Summary: Update custom view for every unique user cross company pair.
        * Description: Update custom view for every unique user cross company pair.
        **/
        public func updateUserViews(
            body: UserViewsResponse,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CreateUpdateDeleteResponse?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "PUT",
                url: "/service/platform/order/v1.0/company/\(companyId)/views",
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
                        
                        let response = Utility.decode(CreateUpdateDeleteResponse.self, from: data)
                        
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
        * Summary: Delete custom view for every unique user cross company pair.
        * Description: Delete custom view for every unique user cross company pair.
        **/
        public func deleteUserViews(
            viewId: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CreateUpdateDeleteResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["view_id"] = viewId
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "DELETE",
                url: "/service/platform/order/v1.0/company/\(companyId)/views",
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
                        
                        let response = Utility.decode(CreateUpdateDeleteResponse.self, from: data)
                        
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
        * Summary: Get global filters for populating filter listing and powering views api.
        * Description: Get global filters for populating filter listing and powering views api.
        **/
        public func getGlobalFilters(
            showIn: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: GlobalFiltersResponse?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            xQuery["show_in"] = showIn
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/filters",
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
                        
                        let response = Utility.decode(GlobalFiltersResponse.self, from: data)
                        
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
        * Summary: Get filters.
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
        * Summary: Get bulk shipment Excel file.
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
            onResponse: @escaping (_ response: TemplateDownloadResponse?, _ error: FDKError?) -> Void
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
        
        
        
        /**
        *
        * Summary: Get bulk action template.
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
        * Summary: Download bulk action template.
        * Description: Download bulk seller templates which can be used to perform operations in bulk
        **/
        public func downloadBulkActionTemplate(
            templateSlug: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: TemplateDownloadResponse?, _ error: FDKError?) -> Void
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
        
        
        
        /**
        *
        * Summary: Get reasons behind full or partial cancellation of a shipment
        * Description: Use this API to retrieve the issues that led to the cancellation of bags within a shipment.
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
        * Summary: Get bag by ID.
        * Description: Get Order Bag Details.
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
                url: "/service/platform/order/v1.0/company/\(companyId)/bag-details",
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
        * Summary: Get bags.
        * Description: Get Bags for the order
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
        * Summary: Generate POS receipt by order ID.
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
        * Summary: Gets All the allowed Templates to perform Bulk Operations.
        * Description: Gets All the allowed Templates to perform Bulk Operations.
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
        * Summary: Get the Excel or CSV file URL for the Template.
        * Description: Get the Excel or CSV file URL for the Template.
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