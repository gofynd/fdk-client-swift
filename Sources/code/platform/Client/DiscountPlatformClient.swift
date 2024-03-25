import Foundation

extension PlatformClient {

    public class Discount {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        
        
        /**
        *
        * Summary: Get discounts.
        * Description: Retrieve a list of available discounts.
        **/
        public func getDiscounts(
            view: String?,
            q: String?,
            pageNo: Int?,
            pageSize: Int?,
            archived: Bool?,
            month: Int?,
            year: Int?,
            type: String?,
            appIds: [String]?,
            
            onResponse: @escaping (_ response: ListOrCalender?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = view {
    
    xQuery["view"] = value
    
}


if let value = q {
    
    xQuery["q"] = value
    
}


if let value = pageNo {
    
    xQuery["page_no"] = value
    
}


if let value = pageSize {
    
    xQuery["page_size"] = value
    
}


if let value = archived {
    
    xQuery["archived"] = value
    
}


if let value = month {
    
    xQuery["month"] = value
    
}


if let value = year {
    
    xQuery["year"] = value
    
}


if let value = type {
    
    xQuery["type"] = value
    
}


if let value = appIds {
    
    xQuery["app_ids"] = value
    
}


 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/discount/v1.0/company/\(companyId)/job/",
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
                        
                        let response = Utility.decode(ListOrCalender.self, from: data)
                        
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
        * Summary: get paginator for getDiscounts
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getDiscountsPaginator(
            view: String?,
            q: String?,
            pageSize: Int?,
            archived: Bool?,
            month: Int?,
            year: Int?,
            type: String?,
            appIds: [String]?
            
            ) -> Paginator<ListOrCalender> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<ListOrCalender>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getDiscounts(
                        
                        view: view,
                        q: q,
                        pageNo: paginator.pageNo
                        ,
                        pageSize: paginator.pageSize
                        ,
                        archived: archived,
                        month: month,
                        year: year,
                        type: type,
                        appIds: appIds
                    ) { response, error in                    
                    if let response = response {
                        paginator.hasNext = response.page.hasNext ?? false
                        paginator.pageNo = (paginator.pageNo ?? 0) + 1
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }
        
        
        
        
        /**
        *
        * Summary: Create discount.
        * Description: Create discount.
        **/
        public func createDiscount(
            body: CreateUpdateDiscount,
            onResponse: @escaping (_ response: DiscountJob?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/discount/v1.0/company/\(companyId)/job/",
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
                        
                        let response = Utility.decode(DiscountJob.self, from: data)
                        
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
        * Summary: Get discount by ID.
        * Description: Retrieve detailed information about a specific discount.
        **/
        public func getDiscount(
            id: String,
            
            onResponse: @escaping (_ response: DiscountJob?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/discount/v1.0/company/\(companyId)/job/\(id)/",
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
                        
                        let response = Utility.decode(DiscountJob.self, from: data)
                        
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
        * Summary: Update discount.
        * Description: Create discount.
        **/
        public func updateDiscount(
            id: String,
            body: CreateUpdateDiscount,
            onResponse: @escaping (_ response: DiscountJob?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "PUT",
                url: "/service/platform/discount/v1.0/company/\(companyId)/job/\(id)/",
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
                        
                        let response = Utility.decode(DiscountJob.self, from: data)
                        
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
        * Summary: Upsert discount items.
        * Description: Create custom discounts.
        **/
        public func upsertDiscountItems(
            id: String,
            body: BulkDiscount,
            onResponse: @escaping (_ response: [String: Any]?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/discount/v1.0/company/\(companyId)/job/\(id)/items/",
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
        * Summary: Validate discount file.
        * Description: Validate file.
        **/
        public func validateDiscountFile(
            discount: String?,
            body: FileJobRequest,
            onResponse: @escaping (_ response: FileJobResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = discount {
    
    xQuery["discount"] = value
    
}


 


            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/discount/v1.0/company/\(companyId)/file/validation/",
                query: xQuery,
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
                        
                        let response = Utility.decode(FileJobResponse.self, from: data)
                        
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
        * Summary: Download discount file.
        * Description: Validate file.
        **/
        public func downloadDiscountFile(
            type: String,
            body: DownloadFileJob,
            onResponse: @escaping (_ response: FileJobResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "POST",
                url: "/service/platform/discount/v1.0/company/\(companyId)/file/\(type)/download/",
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
                        
                        let response = Utility.decode(FileJobResponse.self, from: data)
                        
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
        * Summary: Get validation job.
        * Description: Validate file.
        **/
        public func getValidationJob(
            id: String,
            
            onResponse: @escaping (_ response: FileJobResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/discount/v1.0/company/\(companyId)/file/validation/\(id)/",
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
                        
                        let response = Utility.decode(FileJobResponse.self, from: data)
                        
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
        * Summary: Cancel validation job.
        * Description: Validate file.
        **/
        public func cancelValidationJob(
            id: String,
            
            onResponse: @escaping (_ response: CancelJobResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "DELETE",
                url: "/service/platform/discount/v1.0/company/\(companyId)/file/validation/\(id)/",
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
                        
                        let response = Utility.decode(CancelJobResponse.self, from: data)
                        
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
        * Summary: Get download job.
        * Description: Download file Job.
        **/
        public func getDownloadJob(
            id: String,
            
            onResponse: @escaping (_ response: FileJobResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "GET",
                url: "/service/platform/discount/v1.0/company/\(companyId)/file/download/\(id)/",
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
                        
                        let response = Utility.decode(FileJobResponse.self, from: data)
                        
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
        * Summary: Cancel download job.
        * Description: Cancel download Job.
        **/
        public func cancelDownloadJob(
            id: String,
            
            onResponse: @escaping (_ response: CancelJobResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            PlatformAPIClient.execute(
                config: config,
                method: "DELETE",
                url: "/service/platform/discount/v1.0/company/\(companyId)/file/download/\(id)/",
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
                        
                        let response = Utility.decode(CancelJobResponse.self, from: data)
                        
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