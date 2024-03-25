import Foundation

extension ApplicationClient {

    public class Rewards {
        
        var config: ApplicationConfig
        var relativeUrls = [String: String]()

        init(config: ApplicationConfig) {
            self.config = config;
            var ulrs = [String: String]()
            
            ulrs["getOfferByName"] = config.domain.appendAsPath("/service/application/rewards/v1.0/offers/{name}/") 
            
            ulrs["catalogueOrder"] = config.domain.appendAsPath("/service/application/rewards/v1.0/catalogue/offer/order/") 
            
            ulrs["getUserPointsHistory"] = config.domain.appendAsPath("/service/application/rewards/v1.0/user/points/history/") 
            
            ulrs["getUserPoints"] = config.domain.appendAsPath("/service/application/rewards/v1.0/user/points/") 
            
            ulrs["getUserReferralDetails"] = config.domain.appendAsPath("/service/application/rewards/v1.0/user/referral/") 
            
            ulrs["getOrderDiscount"] = config.domain.appendAsPath("/service/application/rewards/v1.0/user/offer/order-discount/") 
            
            ulrs["redeemReferralCode"] = config.domain.appendAsPath("/service/application/rewards/v1.0/user/referral/redeem/") 
            
            self.relativeUrls = ulrs
        }
        public func update(updatedUrl : [String: String]){
            for (key, value) in updatedUrl{
            self.relativeUrls[key] = value
            }
        }
        
        
        
        /**
        *
        * Summary: Fetch specific offer
        * Description: Retrieves detailed information about an offer by its name.
        **/
        public func getOfferByName(
            name: String,
            
            onResponse: @escaping (_ response: Offer?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            var fullUrl = relativeUrls["getOfferByName"] ?? ""
            
                fullUrl = fullUrl.replacingOccurrences(of: "{" + "name" + "}", with: "\(name)")
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(Offer.self, from: data)
                        
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
        * Summary: Order from catalogue.
        * Description: Place an reward on order items available in the catalogue.
        **/
        public func catalogueOrder(
            body: CatalogueOrderRequest,
            onResponse: @escaping (_ response: CatalogueOrderResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            let fullUrl = relativeUrls["catalogueOrder"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(CatalogueOrderResponse.self, from: data)
                        
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
        * Summary: Points history.
        * Description: Gets the historical data of points earned or spent by the user.
        **/
        public func getUserPointsHistory(
            pageId: String?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: PointsHistoryResponse?, _ error: FDKError?) -> Void
        ) {
            
var xQuery: [String: Any] = [:] 

if let value = pageId {
    
    xQuery["page_id"] = value
    
}


if let value = pageSize {
    
    xQuery["page_size"] = value
    
}


 


            
            let fullUrl = relativeUrls["getUserPointsHistory"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: xQuery,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(PointsHistoryResponse.self, from: data)
                        
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
        * Summary: get paginator for getUserPointsHistory
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getUserPointsHistoryPaginator(
            pageSize: Int?
            
            ) -> Paginator<PointsHistoryResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<PointsHistoryResponse>(pageSize: pageSize, type: "cursor")
            paginator.onPage = {
                self.getUserPointsHistory(
                        
                        pageId: paginator.pageId
                        ,
                        pageSize: paginator.pageSize
                        
                    ) { response, error in                    
                    if let response = response {
                        paginator.hasNext = response.page?.hasNext ?? false
                        paginator.pageId = response.page?.nextId
                        
                    }
                    paginator.onNext?(response, error)
                }
            }
            return paginator
        }
        
        
        
        
        /**
        *
        * Summary: Current points.
        * Description: Retrieves the current reward points balance for the user.
        **/
        public func getUserPoints(
            
            onResponse: @escaping (_ response: PointsResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            let fullUrl = relativeUrls["getUserPoints"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(PointsResponse.self, from: data)
                        
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
        * Summary: Referral details.
        * Description: Gets the details of the user’s referral status and codes.
        **/
        public func getUserReferralDetails(
            
            onResponse: @escaping (_ response: ReferralDetailsResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            let fullUrl = relativeUrls["getUserReferralDetails"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "GET",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(ReferralDetailsResponse.self, from: data)
                        
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
        * Summary: Order discount.
        * Description: Retrieve the discount applied to a specific order.
        **/
        public func getOrderDiscount(
            body: OrderDiscountRequest,
            onResponse: @escaping (_ response: OrderDiscountResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            let fullUrl = relativeUrls["getOrderDiscount"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(OrderDiscountResponse.self, from: data)
                        
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
        * Summary: Redeem code.
        * Description: Applies a referral code to earn or redeem rewards.
        **/
        public func redeemReferralCode(
            body: RedeemReferralCodeRequest,
            onResponse: @escaping (_ response: RedeemReferralCodeResponse?, _ error: FDKError?) -> Void
        ) {
            
 

 


            
            let fullUrl = relativeUrls["redeemReferralCode"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "POST",
                url: fullUrl,
                query: nil,
                extraHeaders:  [],
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
                        
                        let response = Utility.decode(RedeemReferralCodeResponse.self, from: data)
                        
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