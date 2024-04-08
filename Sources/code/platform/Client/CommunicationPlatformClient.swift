import Foundation

extension PlatformClient {

    public class Communication {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        
        
        /**
        *
        * Summary: Send communication asynchronously.
        * Description: Initiate and send communication with the option for asynchronous processing.
        **/
        public func sendByCompanyCommunicationSynchronously(
            xApplicationId: String,
            body: EngineRequest,
            onResponse: @escaping (_ response: SendInstantResponse?, _ error: FDKError?) -> Void
        ) {
            
 

var xHeaders: [(key: String, value: String)] = [] 


xHeaders.append((key: "x-application-id", value: xApplicationId))




            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/communication/v1.0/company/\(companyId)/engine/send-sync",
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
                        
                        let response = Utility.decode(SendInstantResponse.self, from: data)
                        
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
        * Summary: Send communication asynchronously.
        * Description: Initiate and send communication with the option for asynchronous processing.
        **/
        public func senByCompanyCommunicationAsynchronously(
            xApplicationId: String,
            body: EngineRequest,
            onResponse: @escaping (_ response: EngineResponse?, _ error: FDKError?) -> Void
        ) {
            
 

var xHeaders: [(key: String, value: String)] = [] 


xHeaders.append((key: "x-application-id", value: xApplicationId))




            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/communication/v1.0/company/\(companyId)/engine/send-async",
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
                        
                        let response = Utility.decode(EngineResponse.self, from: data)
                        
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
        * Summary: Send communication synchronously.
        * Description: Initiate and send communication in real-time.
        **/
        public func sendByCompanyCommunicationInstantly(
            xApplicationId: String,
            body: EngineRequest,
            onResponse: @escaping (_ response: SendInstantResponse?, _ error: FDKError?) -> Void
        ) {
            
 

var xHeaders: [(key: String, value: String)] = [] 


xHeaders.append((key: "x-application-id", value: xApplicationId))




            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/communication/v1.0/company/\(companyId)/engine/send-instant",
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
                        
                        let response = Utility.decode(SendInstantResponse.self, from: data)
                        
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
        * Summary: Get system notifications.
        * Description: Retrieve system notifications related to communication.
        **/
        public func getSystemNotifications(
            pageNo: Int?,
            pageSize: Int?,
            sort: String?,
            query: String?,
            
            onResponse: @escaping (_ response: SystemNotifications?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = pageNo {
    
    xQuery["page_no"] = value
    
}


if let value = pageSize {
    
    xQuery["page_size"] = value
    
}


if let value = sort {
    
    xQuery["sort"] = value
    
}


if let value = query {
    
    xQuery["query"] = value
    
}


 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/communication/v1.0/company/\(companyId)/notification/system-notifications",
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
                        
                        let response = Utility.decode(SystemNotifications.self, from: data)
                        
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
        * Summary: get paginator for getSystemNotifications
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getSystemNotificationsPaginator(
            pageSize: Int?,
            sort: String?,
            query: String?
            
            ) -> Paginator<SystemNotifications> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<SystemNotifications>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getSystemNotifications(
                        
                        pageNo: paginator.pageNo
                        ,
                        pageSize: paginator.pageSize
                        ,
                        sort: sort,
                        query: query
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
        
        
        
        
        
        
    }
}