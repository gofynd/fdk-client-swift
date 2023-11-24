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
        * Summary: 
        * Description: Invalidate shipment Cache
        **/
        public func invalidateShipmentCache(
            body: InvalidateShipmentCachePayload,
            onResponse: @escaping (_ response: InvalidateShipmentCacheResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "PUT",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/update-cache",
                query: nil,
                body: body.dictionary,
                headers: [],
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
        * Summary: 
        * Description: Reassign Location
        **/
        public func reassignLocation(
            body: StoreReassign,
            onResponse: @escaping (_ response: StoreReassignResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/store/reassign-internal",
                query: nil,
                body: body.dictionary,
                headers: [],
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
        * Summary: 
        * Description: update shipment/bag lock and check status
        **/
        public func updateShipmentLock(
            body: UpdateShipmentLockPayload,
            onResponse: @escaping (_ response: UpdateShipmentLockResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/entity/lock-manager",
                query: nil,
                body: body.dictionary,
                headers: [],
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
        * Summary: 
        * Description: Get Announcements
        **/
        public func getAnnouncements(
            date: String?,
            
            onResponse: @escaping (_ response: AnnouncementsResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = date {
    
    xQuery["date"] = value
    
}


 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/announcements",
                query: xQuery,
                body: nil,
                headers: [],
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
        * Summary: 
        * Description: Update Address for the order
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


 


            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/delight/update-address",
                query: xQuery,
                body: nil,
                headers: [],
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
        * Summary: 
        * Description: Click to Call
        **/
        public func click2Call(
            caller: String,
            receiver: String,
            bagId: String,
            callerId: String?,
            method: String?,
            
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


 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/ninja/click2call",
                query: xQuery,
                body: nil,
                headers: [],
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
        * Summary: 
        * Description: This API is for Shipment State transition or Shipment data update or both below example is for partial state transition with data update
        **/
        public func updateShipmentStatus(
            body: UpdateShipmentStatusRequest,
            onResponse: @escaping (_ response: UpdateShipmentStatusResponseBody?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "PUT",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/shipment/status-internal",
                query: nil,
                body: body.dictionary,
                headers: [],
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
        * Summary: 
        * Description: Process Manifest
        **/
        public func processManifest(
            body: CreateOrderPayload,
            onResponse: @escaping (_ response: CreateOrderResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/process-manifest",
                query: nil,
                body: body.dictionary,
                headers: [],
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
        * Summary: 
        * Description: Dispatch Manifest
        **/
        public func dispatchManifest(
            body: DispatchManifest,
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/manifest/dispatch",
                query: nil,
                body: body.dictionary,
                headers: [],
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
        * Summary: 
        * Description: Get Role Based Actions
        **/
        public func getRoleBasedActions(
            
            onResponse: @escaping (_ response: GetActionsResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/roles",
                query: nil,
                body: nil,
                headers: [],
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
        * Summary: 
        * Description: Get Shipment History
        **/
        public func getShipmentHistory(
            shipmentId: String?,
            bagId: Int?,
            
            onResponse: @escaping (_ response: ShipmentHistoryResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = shipmentId {
    
    xQuery["shipment_id"] = value
    
}


if let value = bagId {
    
    xQuery["bag_id"] = value
    
}


 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/shipment/history",
                query: xQuery,
                body: nil,
                headers: [],
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
        * Summary: 
        * Description: Post shipment history
        **/
        public func postShipmentHistory(
            body: PostShipmentHistory,
            onResponse: @escaping (_ response: ShipmentHistoryResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/shipment/history",
                query: nil,
                body: body.dictionary,
                headers: [],
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
        * Summary: 
        * Description: Send SMS Ninja Panel
        **/
        public func sendSmsNinja(
            body: SendSmsPayload,
            onResponse: @escaping (_ response: OrderStatusResult?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/ninja/send-sms",
                query: nil,
                body: body.dictionary,
                headers: [],
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
        * Summary: 
        * Description: Update Packaging Dimensions
        **/
        public func updatePackagingDimensions(
            body: UpdatePackagingDimensionsPayload,
            onResponse: @escaping (_ response: UpdatePackagingDimensionsResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/update-packaging-dimension",
                query: nil,
                body: body.dictionary,
                headers: [],
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
        * Summary: 
        * Description: Create Order
        **/
        public func createOrder(
            body: CreateOrderAPI,
            onResponse: @escaping (_ response: CreateOrderResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/create-order",
                query: nil,
                body: body.dictionary,
                headers: [],
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
        * Summary: 
        * Description: getChannelConfig
        **/
        public func getChannelConfig(
            
            onResponse: @escaping (_ response: CreateChannelConfigData?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/order-config",
                query: nil,
                body: nil,
                headers: [],
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CreateChannelConfigData.self, from: data)
                        
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
        * Summary: 
        * Description: createChannelConfig
        **/
        public func createChannelConfig(
            body: CreateChannelConfigData,
            onResponse: @escaping (_ response: CreateChannelConfigResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/order-config",
                query: nil,
                body: body.dictionary,
                headers: [],
                responseType: "application/json",
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CreateChannelConfigResponse.self, from: data)
                        
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
        * Summary: 
        * Description: Upload Consent
        **/
        public func uploadConsent(
            body: UploadConsent,
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/manifest/uploadConsent",
                query: nil,
                body: body.dictionary,
                headers: [],
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
        * Summary: 
        * Description: Update Order
        **/
        public func orderUpdate(
            body: PlatformOrderUpdate,
            onResponse: @escaping (_ response: ResponseDetail?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "PUT",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/order/validation",
                query: nil,
                body: body.dictionary,
                headers: [],
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
        * Summary: 
        * Description: Check order status
        **/
        public func checkOrderStatus(
            body: OrderStatus,
            onResponse: @escaping (_ response: OrderStatusResult?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/debug/order_status",
                query: nil,
                body: body.dictionary,
                headers: [],
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
        * Summary: 
        * Description: Get State Transition Map
        **/
        public func getStateTransitionMap(
            
            onResponse: @escaping (_ response: BagStateTransitionMap?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/bag/state/transition",
                query: nil,
                body: nil,
                headers: [],
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
        * Summary: To fetch next state transitions.
        * Description: This endpoint will fetch next possible states based on logged in user

        **/
        public func getAllowedStateTransition(
            orderingChannel: String,
            status: String,
            
            onResponse: @escaping (_ response: RoleBaseStateTransitionMapping?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 


    xQuery["ordering_channel"] = orderingChannel




    xQuery["status"] = status



 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/allowed/state/transition",
                query: xQuery,
                body: nil,
                headers: [],
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
        * Summary: 
        * Description: Fetch Credit Balance Detail
        **/
        public func fetchCreditBalanceDetail(
            body: FetchCreditBalanceRequestPayload,
            onResponse: @escaping (_ response: FetchCreditBalanceResponsePayload?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/customer-credit-balance",
                query: nil,
                body: body.dictionary,
                headers: [],
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
        * Summary: 
        * Description: Fetch Refund Mode Config
        **/
        public func fetchRefundModeConfig(
            body: RefundModeConfigRequestPayload,
            onResponse: @escaping (_ response: RefundModeConfigResponsePayload?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/refund-mode-config",
                query: nil,
                body: body.dictionary,
                headers: [],
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
        * Summary: 
        * Description: Attach Order User
        **/
        public func attachOrderUser(
            body: AttachOrderUser,
            onResponse: @escaping (_ response: AttachOrderUserResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/user/attach",
                query: nil,
                body: body.dictionary,
                headers: [],
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
        * Summary: 
        * Description: Send User Mobile OTP
        **/
        public func sendUserMobileOTP(
            body: SendUserMobileOTP,
            onResponse: @escaping (_ response: SendUserMobileOtpResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/user/send/otp/mobile",
                query: nil,
                body: body.dictionary,
                headers: [],
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
        * Summary: 
        * Description: Verify Mobile OTP
        **/
        public func verifyMobileOTP(
            body: VerifyMobileOTP,
            onResponse: @escaping (_ response: VerifyOtpResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/user/verify/otp",
                query: nil,
                body: body.dictionary,
                headers: [],
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
        * Summary: 
        * Description: downloads lanes shipment/orders.
        **/
        public func downloadLanesReport(
            body: BulkReportsDownloadRequest,
            onResponse: @escaping (_ response: BulkReportsDownloadResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/reports/lanes/download",
                query: nil,
                body: body.dictionary,
                headers: [],
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
        * Summary: 
        * Description: Retry e-invoice after failure
        **/
        public func eInvoiceRetry(
            body: EInvoiceRetry,
            onResponse: @escaping (_ response: EInvoiceRetryResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/einvoice/retry/irn",
                query: nil,
                body: body.dictionary,
                headers: [],
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
        * Summary: Get courier partner tracking details
        * Description: This endpoint allows users to get courier partner tracking details for a given shipment id or awb no. The service will fetch courier partner statuses that are pushed to oms.
        **/
        public func trackShipment(
            shipmentId: String?,
            awb: String?,
            pageNo: Int?,
            pageSize: Int?,
            
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


 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/tracking",
                query: xQuery,
                body: nil,
                headers: [],
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
        * Summary: Post courier partner tracking details
        * Description: This endpoint allows users to post courier partner tracking details for a given shipment id or awb no. The service will add entry for courier partner statuses and will be saved to oms.
        **/
        public func updateShipmentTracking(
            body: CourierPartnerTrackingDetails,
            onResponse: @escaping (_ response: CourierPartnerTrackingDetails?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/order-manage/v1.0/company/\(companyId)/tracking",
                query: nil,
                body: body.dictionary,
                headers: [],
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
        * Summary: 
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


 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/shipments-listing",
                query: xQuery,
                body: nil,
                headers: [],
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
            orderType: String?
            
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
                        dpIds: dpIds,
                        stores: stores,
                        salesChannels: salesChannels,
                        pageNo: paginator.pageNo
                        ,
                        pageSize: paginator.pageSize
                        ,
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
                        orderType: orderType
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
        * Summary: 
        * Description: Get shipment details for the given shipment.
        **/
        public func getShipmentById(
            channelShipmentId: String?,
            shipmentId: String?,
            
            onResponse: @escaping (_ response: ShipmentInfoResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = channelShipmentId {
    
    xQuery["channel_shipment_id"] = value
    
}


if let value = shipmentId {
    
    xQuery["shipment_id"] = value
    
}


 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/shipment-details",
                query: xQuery,
                body: nil,
                headers: [],
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
        * Summary: 
        * Description: Get Order Details by ID
        **/
        public func getOrderById(
            orderId: String,
            myOrders: Bool?,
            
            onResponse: @escaping (_ response: OrderDetailsResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 


    xQuery["order_id"] = orderId



if let value = myOrders {
    
    xQuery["my_orders"] = value
    
}


 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/order-details",
                query: xQuery,
                body: nil,
                headers: [],
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
        * Summary: 
        * Description: Get lane config for the order
        **/
        public func getLaneConfig(
            superLane: String?,
            groupEntity: String?,
            fromDate: String?,
            toDate: String?,
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


 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/lane-config/",
                query: xQuery,
                body: nil,
                headers: [],
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
        * Summary: 
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


 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/orders-listing",
                query: xQuery,
                body: nil,
                headers: [],
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
            dpIds: String?,
            stores: String?,
            salesChannels: String?,
            pageSize: Int?,
            isPrioritySort: Bool?,
            customMeta: String?,
            myOrders: Bool?,
            showCrossCompanyData: Bool?,
            customerId: String?,
            orderType: String?
            
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
                        dpIds: dpIds,
                        stores: stores,
                        salesChannels: salesChannels,
                        pageNo: paginator.pageNo
                        ,
                        pageSize: paginator.pageSize
                        ,
                        isPrioritySort: isPrioritySort,
                        customMeta: customMeta,
                        myOrders: myOrders,
                        showCrossCompanyData: showCrossCompanyData,
                        customerId: customerId,
                        orderType: orderType
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
        * Summary: 
        * Description: Get Listing Filters
        **/
        public func getfilters(
            view: String,
            groupEntity: String?,
            
            onResponse: @escaping (_ response: FiltersResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 


    xQuery["view"] = view



if let value = groupEntity {
    
    xQuery["group_entity"] = value
    
}


 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/filter-listing",
                query: xQuery,
                body: nil,
                headers: [],
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
        * Summary: 
        * Description: Generate Bulk Shipment Excel Report.
        **/
        public func getBulkShipmentExcelFile(
            salesChannels: String?,
            dpIds: String?,
            fromDate: String?,
            toDate: String?,
            stores: String?,
            tags: String?,
            bagStatus: String?,
            paymentMethods: String?,
            fileType: String?,
            timeToDispatch: Int?,
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: FileResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = salesChannels {
    
    xQuery["sales_channels"] = value
    
}


if let value = dpIds {
    
    xQuery["dp_ids"] = value
    
}


if let value = fromDate {
    
    xQuery["from_date"] = value
    
}


if let value = toDate {
    
    xQuery["to_date"] = value
    
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


 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/generate/file",
                query: xQuery,
                body: nil,
                headers: [],
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
        * Summary: 
        * Description: Get Bulk Action seller templates.
        **/
        public func getBulkActionTemplate(
            
            onResponse: @escaping (_ response: BulkActionTemplateResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/bulk-action/get-seller-templates",
                query: nil,
                body: nil,
                headers: [],
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
        * Summary: 
        * Description: Download bulk actions seller templates.
        **/
        public func downloadBulkActionTemplate(
            templateSlug: String?,
            
            onResponse: @escaping (_ response: FileResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = templateSlug {
    
    xQuery["template_slug"] = value
    
}


 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/bulk-action/download-seller-templates",
                query: xQuery,
                body: nil,
                headers: [],
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
        * Summary: Get reasons behind full or partial cancellation of a shipment
        * Description: Use this API to retrieve the issues that led to the cancellation of bags within a shipment.
        **/
        public func getShipmentReasons(
            shipmentId: String,
            bagId: String,
            state: String,
            
            onResponse: @escaping (_ response: PlatformShipmentReasonsResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/shipments/\(shipmentId)/bags/\(bagId)/state/\(state)/reasons",
                query: nil,
                body: nil,
                headers: [],
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
        * Summary: 
        * Description: Get Order Bag Details.
        **/
        public func getBagById(
            bagId: String?,
            channelBagId: String?,
            channelId: String?,
            
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


 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/bag-details/",
                query: xQuery,
                body: nil,
                headers: [],
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
        * Summary: 
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


 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/bags",
                query: xQuery,
                body: nil,
                headers: [],
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
        * Summary: 
        * Description: Generate POS recipt by order id.
        **/
        public func generatePOSReceiptByOrderId(
            orderId: String,
            shipmentId: String?,
            documentType: String?,
            
            onResponse: @escaping (_ response: GeneratePosOrderReceiptResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = shipmentId {
    
    xQuery["shipment_id"] = value
    
}


if let value = documentType {
    
    xQuery["document_type"] = value
    
}


 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/order/v1.0/company/\(companyId)/orders/\(orderId)/generate/pos-receipt",
                query: xQuery,
                body: nil,
                headers: [],
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
        
        
    }
}