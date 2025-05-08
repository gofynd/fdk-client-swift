import Foundation

extension ApplicationClient {

    public class Configuration {
        
        var config: ApplicationConfig
        var relativeUrls = [String: String]()

        init(config: ApplicationConfig) {
            self.config = config;
            var ulrs = [String: String]()
            
            ulrs["getApplication"] = config.domain.appendAsPath("/service/application/configuration/v1.0/application") 
            
            ulrs["getOwnerInfo"] = config.domain.appendAsPath("/service/application/configuration/v1.0/about") 
            
            ulrs["getBasicDetails"] = config.domain.appendAsPath("/service/application/configuration/v1.0/detail") 
            
            ulrs["getIntegrationTokens"] = config.domain.appendAsPath("/service/application/configuration/v1.0/token") 
            
            ulrs["getOrderingStores"] = config.domain.appendAsPath("/service/application/configuration/v1.0/ordering-store/stores") 
            
            ulrs["getStoreDetailById"] = config.domain.appendAsPath("/service/application/configuration/v1.0/ordering-store/stores/{store_id}") 
            
            ulrs["getFeatures"] = config.domain.appendAsPath("/service/application/configuration/v1.0/feature") 
            
            ulrs["getContactInfo"] = config.domain.appendAsPath("/service/application/configuration/v1.0/information") 
            
            ulrs["getCurrencies"] = config.domain.appendAsPath("/service/application/configuration/v1.0/currencies") 
            
            ulrs["getCurrencyById"] = config.domain.appendAsPath("/service/application/configuration/v1.0/currency/{id}") 
            
            ulrs["getAppCurrencies"] = config.domain.appendAsPath("/service/application/configuration/v1.0/currency") 
            
            ulrs["getLanguages"] = config.domain.appendAsPath("/service/application/configuration/v1.0/languages") 
            
            ulrs["getOrderingStoreCookie"] = config.domain.appendAsPath("/service/application/configuration/v1.0/ordering-store/select") 
            
            ulrs["removeOrderingStoreCookie"] = config.domain.appendAsPath("/service/application/configuration/v1.0/ordering-store/select") 
            
            ulrs["getAppStaffList"] = config.domain.appendAsPath("/service/application/configuration/v1.0/staff/list") 
            
            ulrs["getAppStaffs"] = config.domain.appendAsPath("/service/application/configuration/v1.0/staff") 
            
            self.relativeUrls = ulrs
        }
        public func update(updatedUrl : [String: String]){
            for (key, value) in updatedUrl{
            self.relativeUrls[key] = value
            }
        }
        
        
        
        /**
        *
        * Summary: Get sales channel
        * Description: Get details of the current sales channel.
        **/
        public func getApplication(
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: Application?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getApplication"] ?? ""
            
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
                        
                        let response = Utility.decode(Application.self, from: data)
                        
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
        * Summary: Get sales channel owner
        * Description: Get details of the sales channel owner.
        **/
        public func getOwnerInfo(
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ApplicationAboutResponseSchema?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getOwnerInfo"] ?? ""
            
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
                        
                        let response = Utility.decode(ApplicationAboutResponseSchema.self, from: data)
                        
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
        * Summary: Get Sales channel
        * Description: Get basic details of the sales channel.
        **/
        public func getBasicDetails(
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ApplicationDetail?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getBasicDetails"] ?? ""
            
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
                        
                        let response = Utility.decode(ApplicationDetail.self, from: data)
                        
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
        * Summary: Get API tokens
        * Description: Get tools integration token of the sales channel. For example, Firebase, MoEngage, Segment, GTM, Freshchat, Safetynet, Google Map, and Facebook.
        **/
        public func getIntegrationTokens(
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: AppTokenResponseSchema?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getIntegrationTokens"] ?? ""
            
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
                        
                        let response = Utility.decode(AppTokenResponseSchema.self, from: data)
                        
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
        * Summary: List order-enabled selling locations
        * Description: Get details of all the deployment store locations where the sales channel will be used for order placement.
        **/
        public func getOrderingStores(
            pageNo: Int?,
            pageSize: Int?,
            q: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: OrderingStores?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
            if let value = q {
                xQuery["q"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getOrderingStores"] ?? ""
            
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
                        
                        let response = Utility.decode(OrderingStores.self, from: data)
                        
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
        * Summary: Get a selling location
        * Description: Get details of a selling location (store) by its ID.
        **/
        public func getStoreDetailById(
            storeId: Int,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: OrderingStore?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getStoreDetailById"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)")
            
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
                        
                        let response = Utility.decode(OrderingStore.self, from: data)
                        
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
        * Summary: Get sales channel features
        * Description: Get configuration of the features of the sales channel.
        **/
        public func getFeatures(
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: AppFeatureResponseSchema?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getFeatures"] ?? ""
            
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
                        
                        let response = Utility.decode(AppFeatureResponseSchema.self, from: data)
                        
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
        * Summary: Get sales channel contact
        * Description: Get contact details of the sales channel.
        **/
        public func getContactInfo(
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: ApplicationInformation?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getContactInfo"] ?? ""
            
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
                        
                        let response = Utility.decode(ApplicationInformation.self, from: data)
                        
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
        * Summary: List currencies
        * Description: List available currencies.
        **/
        public func getCurrencies(
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: CurrenciesResponseSchema?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getCurrencies"] ?? ""
            
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
                        
                        let response = Utility.decode(CurrenciesResponseSchema.self, from: data)
                        
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
        * Summary: Get a currency
        * Description: Get details of the currency.
        **/
        public func getCurrencyById(
            id: String,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: Currency?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            var fullUrl = relativeUrls["getCurrencyById"] ?? ""
            
            fullUrl = fullUrl.replacingOccurrences(of: "{" + "id" + "}", with: "\(id)")
            
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
                        
                        let response = Utility.decode(Currency.self, from: data)
                        
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
        * Summary: Get currency configuration
        * Description: Get currency configuration of the sales channel.
        **/
        public func getAppCurrencies(
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: AppCurrencyResponseSchema?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getAppCurrencies"] ?? ""
            
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
                        
                        let response = Utility.decode(AppCurrencyResponseSchema.self, from: data)
                        
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
        * Summary: List languages
        * Description: List available languages.
        **/
        public func getLanguages(
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: LanguageResponseSchema?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getLanguages"] ?? ""
            
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
                        
                        let response = Utility.decode(LanguageResponseSchema.self, from: data)
                        
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
        * Summary: Create cookies
        * Description: Reset cookie of ordering store.
        **/
        public func getOrderingStoreCookie(
            body: OrderingStoreSelectRequestSchema,
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: SuccessMessageResponseSchema?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getOrderingStoreCookie"] ?? ""
            
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
                        
                        let response = Utility.decode(SuccessMessageResponseSchema.self, from: data)
                        
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
        * Summary: Delete store cookie
        * Description: Delete store cookie.
        **/
        public func removeOrderingStoreCookie(
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: SuccessMessageResponseSchema?, _ error: FDKError?) -> Void
        ) {
                        
             
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["removeOrderingStoreCookie"] ?? ""
            
            ApplicationAPIClient.execute(
                config: config,
                method: "DELETE",
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
                        
                        let response = Utility.decode(SuccessMessageResponseSchema.self, from: data)
                        
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
        * Summary: List staff members
        * Description: List all staff members of the sales channel.
        **/
        public func getAppStaffList(
            pageNo: Int?,
            pageSize: Int?,
            orderIncent: Bool?,
            orderingStore: Int?,
            user: String?,
            userName: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: AppStaffListResponseSchema?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
            if let value = orderIncent {
                xQuery["order_incent"] = value
            }
            
            if let value = orderingStore {
                xQuery["ordering_store"] = value
            }
            
            if let value = user {
                xQuery["user"] = value
            }
            
            if let value = userName {
                xQuery["user_name"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getAppStaffList"] ?? ""
            
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
                        
                        let response = Utility.decode(AppStaffListResponseSchema.self, from: data)
                        
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
        * Summary: Get staff member
        * Description: Get a staff user including the names, employee code, incentive status, assigned ordering stores, and title of each staff added to the sales channel.
        **/
        public func getAppStaffs(
            orderIncent: Bool?,
            orderingStore: Int?,
            user: String?,
            
            headers: [(key: String, value: String)]? = nil,
            onResponse: @escaping (_ response: AppStaffResponseSchema?, _ error: FDKError?) -> Void
        ) {
                        
            var xQuery: [String: Any] = [:] 
            
            if let value = orderIncent {
                xQuery["order_incent"] = value
            }
            
            if let value = orderingStore {
                xQuery["ordering_store"] = value
            }
            
            if let value = user {
                xQuery["user"] = value
            }
            
            var xHeaders: [(key: String, value: String)] = []
            
            
            if let headers = headers {
                xHeaders.append(contentsOf: headers)
            }
            
            let fullUrl = relativeUrls["getAppStaffs"] ?? ""
            
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
                        
                        let response = Utility.decode(AppStaffResponseSchema.self, from: data)
                        
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