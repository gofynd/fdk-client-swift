import Foundation

public extension ApplicationClient {
    class Configuration {
        var config: ApplicationConfig
        var relativeUrls = [String: String]()

        init(config: ApplicationConfig) {
            self.config = config
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

        public func update(updatedUrl: [String: String]) {
            for (key, value) in updatedUrl {
                self.relativeUrls[key] = value
            }
        }

        /**
         *
         * Summary: Get current application details
         * Description: Use this API to get the current application details which includes configurations that indicate the status of the website, domain, ID, tokens, images, etc.
         **/
        public func getApplication(
            onResponse: @escaping (_ response: Application?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["getApplication"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
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
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Get application, owner and seller information
         * Description: Use this API to get the current application details which includes channel name, description, banner, logo, favicon, domain details, etc. This API also retrieves the seller and owner information such as address, email address, and phone number.
         **/
        public func getOwnerInfo(
            onResponse: @escaping (_ response: ApplicationAboutResponse?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["getOwnerInfo"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(ApplicationAboutResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Get basic application details
         * Description: Use this API to retrieve only the basic details of the application which includes channel name, description, banner, logo, favicon, domain details, etc.
         **/
        public func getBasicDetails(
            onResponse: @escaping (_ response: ApplicationDetail?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["getBasicDetails"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
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
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Get integration tokens
         * Description: Use this API to retrieve the tokens used while integrating Firebase, MoEngage, Segment, GTM, Freshchat, Safetynet, Google Map and Facebook. **Note** - Token values are encrypted with AES encryption using a secret key. Kindly reach out to the developers for obtaining the secret key.
         **/
        public func getIntegrationTokens(
            onResponse: @escaping (_ response: AppTokenResponse?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["getIntegrationTokens"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(AppTokenResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Get deployment stores
         * Description: Use this API to retrieve the details of all the deployment stores (the selling locations where the application will be utilized for placing orders).
         **/
        public func getOrderingStores(
            pageNo: Int?,
            pageSize: Int?,
            q: String?,

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

            let fullUrl = relativeUrls["getOrderingStores"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
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
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: get paginator for getOrderingStores
         * Description: fetch the next page by calling .next(...) function
         **/
        public func getOrderingStoresPaginator(
            pageSize: Int?,
            q: String?

        ) -> Paginator<OrderingStores> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<OrderingStores>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getOrderingStores(
                    pageNo: paginator.pageNo,

                    pageSize: paginator.pageSize,

                    q: q
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
         * Summary: Get ordering store details
         * Description: Use this API to retrieve the details of given stores uid (the selling locations where the application will be utilized for placing orders).
         **/
        public func getStoreDetailById(
            storeId: Int,

            onResponse: @escaping (_ response: OrderingStore?, _ error: FDKError?) -> Void
        ) {
            var fullUrl = relativeUrls["getStoreDetailById"] ?? ""

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)")

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
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
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Get features of application
         * Description: Use this API to retrieve the configuration of features such as product detail, landing page, options in the login/registration screen, communication opt-in, cart options and many more.
         **/
        public func getFeatures(
            onResponse: @escaping (_ response: AppFeatureResponse?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["getFeatures"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(AppFeatureResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Get application information
         * Description: Use this API to retrieve information about the social links, address and contact information of the company/seller/brand operating the application.
         **/
        public func getContactInfo(
            onResponse: @escaping (_ response: ApplicationInformation?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["getContactInfo"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
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
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Get all currencies list
         * Description: Use this API to get a list of currencies available. Moreover, get the name, code, symbol, and the decimal digits of the currencies.
         **/
        public func getCurrencies(
            onResponse: @escaping (_ response: CurrenciesResponse?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["getCurrencies"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(CurrenciesResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Get currency by its ID
         * Description: Use this API to retrieve a currency using its ID.
         **/
        public func getCurrencyById(
            id: String,

            onResponse: @escaping (_ response: Currency?, _ error: FDKError?) -> Void
        ) {
            var fullUrl = relativeUrls["getCurrencyById"] ?? ""

            fullUrl = fullUrl.replacingOccurrences(of: "{" + "id" + "}", with: "\(id)")

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
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
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Get currencies enabled in the application
         * Description: Use this API to get a list of currencies allowed in the current application. Moreover, get the name, code, symbol, and the decimal digits of the currencies.
         **/
        public func getAppCurrencies(
            onResponse: @escaping (_ response: AppCurrencyResponse?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["getAppCurrencies"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(AppCurrencyResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Get list of languages
         * Description: Use this API to get a list of languages supported in the application.
         **/
        public func getLanguages(
            onResponse: @escaping (_ response: LanguageResponse?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["getLanguages"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(LanguageResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Get an Ordering Store signed cookie on selection of ordering store.
         * Description: Use this API to get an Ordering Store signed cookie upon selecting an ordering store. This will be used by the cart service to verify a coupon against the selected ordering store in cart.
         **/
        public func getOrderingStoreCookie(
            body: OrderingStoreSelectRequest,
            onResponse: @escaping (_ response: SuccessMessageResponse?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["getOrderingStoreCookie"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "post",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: body.dictionary,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(SuccessMessageResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Unset the Ordering Store signed cookie.
         * Description: Use this API to unset the Ordering Store cookie upon changing the sales channel, by its domain URL, in the Universal Fynd Store app.
         **/
        public func removeOrderingStoreCookie(
            onResponse: @escaping (_ response: SuccessMessageResponse?, _ error: FDKError?) -> Void
        ) {
            let fullUrl = relativeUrls["removeOrderingStoreCookie"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "delete",
                url: fullUrl,
                query: nil,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(SuccessMessageResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: Get a list of staff.
         * Description: Use this API to get a list of staff including the names, employee code, incentive status, assigned ordering stores, and title of each staff added to the application.
         **/
        public func getAppStaffList(
            pageNo: Int?,
            pageSize: Int?,
            orderIncent: Bool?,
            orderingStore: Int?,
            user: String?,

            onResponse: @escaping (_ response: AppStaffListResponse?, _ error: FDKError?) -> Void
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

            let fullUrl = relativeUrls["getAppStaffList"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(AppStaffListResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }

        /**
         *
         * Summary: get paginator for getAppStaffList
         * Description: fetch the next page by calling .next(...) function
         **/
        public func getAppStaffListPaginator(
            pageSize: Int?,
            orderIncent: Bool?,
            orderingStore: Int?,
            user: String?

        ) -> Paginator<AppStaffListResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<AppStaffListResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getAppStaffList(
                    pageNo: paginator.pageNo,

                    pageSize: paginator.pageSize,

                    orderIncent: orderIncent,
                    orderingStore: orderingStore,
                    user: user
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
         * Summary: Get a list of staff.
         * Description: Use this API to get a list of staff including the names, employee code, incentive status, assigned ordering stores, and title of each staff added to the application.
         **/
        public func getAppStaffs(
            orderIncent: Bool?,
            orderingStore: Int?,
            user: String?,

            onResponse: @escaping (_ response: AppStaffResponse?, _ error: FDKError?) -> Void
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

            let fullUrl = relativeUrls["getAppStaffs"] ?? ""

            ApplicationAPIClient.execute(
                config: config,
                method: "get",
                url: fullUrl,
                query: xQuery,
                extraHeaders: [],
                body: nil,
                responseType: "application/json",
                onResponse: { responseData, error, responseCode in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(AppStaffResponse.self, from: data)

                        onResponse(response, nil)
                    } else {
                        let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                       NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
                }
            )
        }
    }
}
