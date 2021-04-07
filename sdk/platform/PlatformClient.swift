


public class PlatformClient {
    public let config: PlatformConfig

    public let payment: Payment

    public let order: Order

    public let catalog: Catalog

    public let companyProfile: CompanyProfile

    public let assets: Assets

    public let configuration: Configuration

    public let marketplaces: Marketplaces

    public let analytics: Analytics

    public init(config: PlatformConfig) {
        self.config = config
        
        payment = Payment(config: config)
        
        order = Order(config: config)
        
        catalog = Catalog(config: config)
        
        companyProfile = CompanyProfile(config: config)
        
        assets = Assets(config: config)
        
        configuration = Configuration(config: config)
        
        marketplaces = Marketplaces(config: config)
        
        analytics = Analytics(config: config)
        
    }
    
    
    public class Payment {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        
        
        
        
        /**
        *
        * Summary: Get All Payouts
        * Description: Get All Payouts
        **/
        public func getAllPayouts(
            uniqueExternalId: String?,
            
            onResponse: @escaping (_ response: PayoutsResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = uniqueExternalId {
                xQuery["unique_external_id"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/payment/v1.0/company/\(companyId)/payouts",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(PayoutsResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Save Payout
        * Description: Save Payout
        **/
        public func savePayout(
            body: PayoutRequest,
            onResponse: @escaping (_ response: PayoutResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/payment/v1.0/company/\(companyId)/payouts",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(PayoutResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Update Payout
        * Description: Update Payout
        **/
        public func updatePayout(
            uniqueTransferNo: String,
            body: PayoutRequest,
            onResponse: @escaping (_ response: UpdatePayoutResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/platform/payment/v1.0/company/\(companyId)/payouts/\(uniqueTransferNo)",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(UpdatePayoutResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Partial Update Payout
        * Description: Partial Update Payout
        **/
        public func activateAndDectivatePayout(
            uniqueTransferNo: String,
            body: UpdatePayoutRequest,
            onResponse: @escaping (_ response: UpdatePayoutResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "patch",
                url: "/service/platform/payment/v1.0/company/\(companyId)/payouts/\(uniqueTransferNo)",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(UpdatePayoutResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Delete Payout
        * Description: Delete Payout
        **/
        public func deletePayout(
            uniqueTransferNo: String,
            
            onResponse: @escaping (_ response: DeletePayoutResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/platform/payment/v1.0/company/\(companyId)/payouts/\(uniqueTransferNo)",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(DeletePayoutResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: List Subscription Payment Method
        * Description: Get all  Subscription  Payment Method
        **/
        public func getSubscriptionPaymentMethod(
            
            onResponse: @escaping (_ response: SubscriptionPaymentMethodResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/payment/v1.0/company/\(companyId)/subscription/methods",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(SubscriptionPaymentMethodResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Delete Subscription Payment Method
        * Description: Uses this api to Delete Subscription Payment Method
        **/
        public func deleteSubscriptionPaymentMethod(
            uniqueExternalId: String,
            paymentMethodId: String,
            
            onResponse: @escaping (_ response: DeleteSubscriptionPaymentMethodResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            xQuery["unique_external_id"] = uniqueExternalId
            xQuery["payment_method_id"] = paymentMethodId
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/platform/payment/v1.0/company/\(companyId)/subscription/methods",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(DeleteSubscriptionPaymentMethodResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: List Subscription Config
        * Description: Get all  Subscription Config details
        **/
        public func getSubscriptionConfig(
            
            onResponse: @escaping (_ response: SubscriptionConfigResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/payment/v1.0/company/\(companyId)/subscription/configs",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(SubscriptionConfigResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Save Subscription Setup Intent
        * Description: Uses this api to Save Subscription Setup Intent
        **/
        public func saveSubscriptionSetupIntent(
            body: SaveSubscriptionSetupIntentRequest,
            onResponse: @escaping (_ response: SaveSubscriptionSetupIntentResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/payment/v1.0/company/\(companyId)/subscription/setup/intent",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(SaveSubscriptionSetupIntentResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
    }
    
    
    
    public class Order {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        /**
        *
        * Summary: Update status of Shipment
        * Description: Update Shipment Status
        **/
        public func shipmentStatusUpdate(
            body: UpdateShipmentStatusBody,
            onResponse: @escaping (_ response: UpdateShipmentStatusResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/order/v1.0/company/\(companyId)/actions/status",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(UpdateShipmentStatusResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get Activity Status
        * Description: Get Activity Status
        **/
        public func activityStatus(
            bagId: String,
            
            onResponse: @escaping (_ response: GetActivityStatus?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            xQuery["bag_id"] = bagId
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/order/v1.0/company/\(companyId)/actions/activity/status",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetActivityStatus.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Update Store Process-Shipment
        * Description: Update Store Process-Shipment
        **/
        public func storeProcessShipmentUpdate(
            body: UpdateProcessShipmenstRequestBody,
            onResponse: @escaping (_ response: UpdateProcessShipmenstRequestResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/order/v1.0/company/\(companyId)/actions/store/process-shipments",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(UpdateProcessShipmenstRequestResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get Orders for company based on Company Id
        * Description: Get Orders
        **/
        public func getOrdersByCompanyId(
            pageNo: String?,
            pageSize: String?,
            fromDate: String?,
            toDate: String?,
            q: String?,
            stage: String?,
            salesChannels: String?,
            orderId: String?,
            stores: String?,
            status: String?,
            shortenUrls: Bool?,
            filterType: String?,
            
            onResponse: @escaping (_ response: OrderListing?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
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
            
            if let value = q {
                xQuery["q"] = value
            }
            
            if let value = stage {
                xQuery["stage"] = value
            }
            
            if let value = salesChannels {
                xQuery["sales_channels"] = value
            }
            
            if let value = orderId {
                xQuery["order_id"] = value
            }
            
            if let value = stores {
                xQuery["stores"] = value
            }
            
            if let value = status {
                xQuery["status"] = value
            }
            
            if let value = shortenUrls {
                xQuery["shorten_urls"] = value
            }
            
            if let value = filterType {
                xQuery["filter_type"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/order/v1.0/company/\(companyId)/orders",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(OrderListing.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        
        
        
        
        /**
        *
        * Summary: Get Ping
        * Description: Get Ping
        **/
        public func getPing(
            
            onResponse: @escaping (_ response: GetPingResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/order/v1.0/company/\(companyId)/ping",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetPingResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get Voice Callback
        * Description: Voice Callback
        **/
        public func voiceCallback(
            
            onResponse: @escaping (_ response: GetVoiceCallbackResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/order/v1.0/company/\(companyId)/voice/callback",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetVoiceCallbackResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get Voice Click to Call
        * Description: Voice Click to Call
        **/
        public func voiceClickToCall(
            caller: String,
            receiver: String,
            
            onResponse: @escaping (_ response: GetClickToCallResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            xQuery["caller"] = caller
            xQuery["receiver"] = receiver
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/order/v1.0/company/\(companyId)/voice/click-to-call",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetClickToCallResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
    }
    
    
    
    public class Catalog {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: List all Product Bundles
        * Description: Get all product bundles for a particular company
        **/
        public func getProductBundle(
            q: String?,
            
            onResponse: @escaping (_ response: GetProductBundleListingResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = q {
                xQuery["q"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/product-bundle/",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetProductBundleListingResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Create Product Bundle
        * Description: Create Product Bundle. See `ProductBundleRequest` for the request body parameter need to create a product bundle. On successful request, returns in `ProductBundleRequest` with id
        **/
        public func createProductBundle(
            body: ProductBundleRequest,
            onResponse: @escaping (_ response: GetProductBundleCreateResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/product-bundle/",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetProductBundleCreateResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get a particular Product Bundle details
        * Description: Get a particular Bundle details by its `id`. If successful, returns a Product bundle resource in the response body specified in `GetProductBundleResponse`
        **/
        public func getProductBundleDetail(
            id: String,
            
            onResponse: @escaping (_ response: GetProductBundleResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/productBundle/\(id)/",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetProductBundleResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Update a Product Bundle
        * Description: Update a Product Bundle by its id. On successful request, returns the updated product bundle
        **/
        public func updateProductBundle(
            id: String,
            body: ProductBundleUpdateRequest,
            onResponse: @escaping (_ response: GetProductBundleCreateResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/productBundle/\(id)/",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetProductBundleCreateResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get list of size guides
        * Description: This API allows to view all the size guides associated to the seller.
        **/
        public func getSizeGuides(
            active: Bool?,
            q: String?,
            tag: String?,
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: ListSizeGuide?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = active {
                xQuery["active"] = value
            }
            
            if let value = q {
                xQuery["q"] = value
            }
            
            if let value = tag {
                xQuery["tag"] = value
            }
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/sizeguide",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ListSizeGuide.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Create a size guide.
        * Description: This API allows to create a size guide associated to a brand.
        **/
        public func createSizeGuide(
            body: ValidateSizeGuide,
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/sizeguide",
                query: nil,
                body: body.dictionary,
                headers: [],
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get a single size guide.
        * Description: This API helps to get data associated to a size guide.
        **/
        public func getSizeGuide(
            id: String,
            
            onResponse: @escaping (_ response: SizeGuideResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/sizeguide/\(id)/",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(SizeGuideResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Edit a size guide.
        * Description: This API allows to edit a size guide.
        **/
        public func updateSizeGuide(
            id: String,
            body: ValidateSizeGuide,
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/sizeguide/\(id)/",
                query: nil,
                body: body.dictionary,
                headers: [],
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: Analytics data of catalog and inventory that are being cross-selled.
        * Description: Analytics data of catalog and inventory that are being cross-selled.
        **/
        public func getSellerInsights(
            sellerAppId: String,
            
            onResponse: @escaping (_ response: CrossSellingResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/crossSelling/\(sellerAppId)/analytics/insights/",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CrossSellingResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Create/Update opt-in infomation.
        * Description: Use this API to create/update opt-in information for given platform. If successful, returns data in the response body as specified in `OptInPostResponseSchema`
        **/
        public func createMarketplaceOptin(
            marketplace: String,
            body: OptInPostRequest,
            onResponse: @escaping (_ response: UpdatedResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/marketplaces/\(marketplace)/optin/",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(UpdatedResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get opt-in infomation.
        * Description: Use this API to fetch opt-in information for all the platforms. If successful, returns a logs in the response body as specified in `GetOptInPlatformSchema`
        **/
        public func getMarketplaceOptinDetail(
            
            onResponse: @escaping (_ response: GetOptInPlatform?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/marketplaces/",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetOptInPlatform.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get the Company details.
        * Description: Get the details of the company associated with the given company_id passed.
        **/
        public func getCompanyDetail(
            
            onResponse: @escaping (_ response: OptinCompanyDetail?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/marketplaces/company-details/",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(OptinCompanyDetail.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get the Company Brand details of Optin.
        * Description: Get the details of the Brands associated with the given company_id passed.
        **/
        public func getCompanyBrandDetail(
            isActive: Bool?,
            q: Bool?,
            pageNo: Int?,
            pageSize: Int?,
            marketplace: String?,
            
            onResponse: @escaping (_ response: OptinCompanyBrandDetailsView?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = isActive {
                xQuery["is_active"] = value
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
            
            if let value = marketplace {
                xQuery["marketplace"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/marketplaces/company-brand-details/",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(OptinCompanyBrandDetailsView.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get the Company metrics
        * Description: Get the Company metrics associated with the company ID passed.
        **/
        public func getCompanyMetrics(
            
            onResponse: @escaping (_ response: OptinCompanyMetrics?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/marketplaces/company-metrics/",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(OptinCompanyMetrics.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get the Store details.
        * Description: Get the details of the store associated with the company ID passed.
        **/
        public func getStoreDetail(
            q: String?,
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: OptinStoreDetails?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = q {
                xQuery["q"] = value
            }
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/marketplaces/location-details/",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(OptinStoreDetails.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: List Department specifiec product categories
        * Description: Allows you to list all product categories values for the departments specified
        **/
        public func listProductTemplateCategories(
            departments: String,
            itemType: String,
            
            onResponse: @escaping (_ response: ProdcutTemplateCategoriesResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            xQuery["departments"] = departments
            xQuery["item_type"] = itemType
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/products/templates/categories/",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ProdcutTemplateCategoriesResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: List all Departments
        * Description: Allows you to list all departments, also can search using name and filter active and incative departments, and item type
        **/
        public func listDepartmentsData(
            
            onResponse: @escaping (_ response: DepartmentsResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/departments/",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(DepartmentsResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get specific departments details by passing in unique id of the department
        * Description: Allows you to get department data, by uid
        **/
        public func getDepartmentData(
            uid: String,
            
            onResponse: @escaping (_ response: DepartmentsResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/departments/\(uid)/",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(DepartmentsResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: List all Templates
        * Description: Allows you to list all product templates, also can filter by department
        **/
        public func listProductTemplate(
            departments: String,
            
            onResponse: @escaping (_ response: TemplatesResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            xQuery["departments"] = departments
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/products/templates/",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(TemplatesResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Validate Product Template Schema
        * Description: Allows you to list all product templates validation values for all the fields present in the database
        **/
        public func validateProductTemplate(
            slug: String,
            
            onResponse: @escaping (_ response: TemplatesValidationResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/products/templates/\(slug)/validation/schema/",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(TemplatesValidationResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Download Product Template View
        * Description: Allows you to download product template data
        **/
        public func downloadProductTemplateViews(
            slug: String,
            
            onResponse: @escaping (_ response: String?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/products/templates/\(slug)/download/",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(String.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Download Product Template View
        * Description: Allows you to download product template data
        **/
        public func downloadProductTemplateView(
            itemType: String,
            
            onResponse: @escaping (_ response: String?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            xQuery["item_type"] = itemType
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/inventory/templates/download/",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(String.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Validate Product Template Schema
        * Description: Allows you to list all product templates validation values for all the fields present in the database
        **/
        public func validateProductTemplateSchema(
            itemType: String,
            
            onResponse: @escaping (_ response: InventoryValidationResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            xQuery["item_type"] = itemType
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/inventory/templates/validation/schema/",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(InventoryValidationResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: List HSN Codes
        * Description: Allows you to list all hsn Codes
        **/
        public func listHSNCodes(
            
            onResponse: @escaping (_ response: HSNCodesResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/products/hsn/",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(HSNCodesResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Allows you to list all product templates export list details
        * Description: Can vies details including trigger data, task id , etc.
        **/
        public func listProductTemplateExportDetails(
            
            onResponse: @escaping (_ response: TemplatesResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/products/downloads/",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(TemplatesResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Allows you to list all values for Templates, Brands or Type
        * Description: The filter type query parameter defines what type of data to return. The type of query returns the valid values for the same
        **/
        public func listTemplateBrandTypeValues(
            filter: String,
            
            onResponse: @escaping (_ response: ProductConfligurationDownloads?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            xQuery["filter"] = filter
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/downloads/configuration/",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ProductConfligurationDownloads.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get product categories list
        * Description: This API gets meta associated to product categories.
        **/
        public func listCategories(
            level: String?,
            q: String?,
            
            onResponse: @escaping (_ response: CategoryResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = level {
                xQuery["level"] = value
            }
            
            if let value = q {
                xQuery["q"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/category/",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CategoryResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Create product categories
        * Description: This API lets user create product categories
        **/
        public func createCategories(
            body: CategoryRequestBody,
            onResponse: @escaping (_ response: CategoryCreateResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/category/",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CategoryCreateResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get product category by uid
        * Description: This API gets meta associated to product categories.
        **/
        public func getCategoryData(
            uid: String,
            
            onResponse: @escaping (_ response: Category?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/category/\(uid)/",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(Category.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Update product categories
        * Description: Update a product category using this apu
        **/
        public func updateCategory(
            uid: String,
            body: CategoryRequestBody,
            onResponse: @escaping (_ response: CategoryUpdateResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/category/\(uid)/",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CategoryUpdateResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get product list
        * Description: This API gets meta associated to products.
        **/
        public func getProducts(
            brandIds: Double?,
            categoryIds: Double?,
            search: String?,
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: ProductListingResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = brandIds {
                xQuery["brand_ids"] = value
            }
            
            if let value = categoryIds {
                xQuery["category_ids"] = value
            }
            
            if let value = search {
                xQuery["search"] = value
            }
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/products/",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ProductListingResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Create a product.
        * Description: This API allows to create product.
        **/
        public func createProduct(
            body: ProductCreateUpdate,
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/products/",
                query: nil,
                body: body.dictionary,
                headers: [],
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get a single product.
        * Description: This API helps to get data associated to a particular product.
        **/
        public func getProduct(
            itemCode: String?,
            itemId: Int,
            brandUid: Int?,
            uid: Int?,
            
            onResponse: @escaping (_ response: Product?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = itemCode {
                xQuery["item_code"] = value
            }
            
            if let value = brandUid {
                xQuery["brand_uid"] = value
            }
            
            if let value = uid {
                xQuery["uid"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/products/\(itemId)/",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(Product.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Edit a product.
        * Description: This API allows to edit product.
        **/
        public func editProduct(
            itemId: Int,
            body: ProductCreateUpdate,
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/products/\(itemId)/",
                query: nil,
                body: body.dictionary,
                headers: [],
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Delete a product.
        * Description: This API allows to delete product.
        **/
        public func deleteProduct(
            itemId: Int,
            
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/products/\(itemId)/",
                query: nil,
                body: nil,
                headers: [],
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Validate product/size data
        * Description: This API validates product data.
        **/
        public func getProductValidation(
            
            onResponse: @escaping (_ response: ValidateProduct?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/products/validation/",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ValidateProduct.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get a single product size.
        * Description: This API helps to get data associated to a particular product size.
        **/
        public func getProductSize(
            itemCode: String?,
            itemId: Int,
            brandUid: Int?,
            uid: Int?,
            
            onResponse: @escaping (_ response: ProductListingResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = itemCode {
                xQuery["item_code"] = value
            }
            
            if let value = brandUid {
                xQuery["brand_uid"] = value
            }
            
            if let value = uid {
                xQuery["uid"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/products/\(itemId)/sizes/",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ProductListingResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get a list of all bulk product upload jobs.
        * Description: This API helps to get bulk product upload jobs data.
        **/
        public func getProductBulkUploadHistory(
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: ProductBulkRequestList?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/products/bulk",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ProductBulkRequestList.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Create a Bulk asset upload Job.
        * Description: This API helps to create a bulk asset upload job.
        **/
        public func updateProductAssetsInBulk(
            body: BulkJob,
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/products/bulk",
                query: nil,
                body: body.dictionary,
                headers: [],
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Delete Bulk product job.
        * Description: This API allows to delete bulk product job associated with company.
        **/
        public func deleteProductBulkJob(
            batchId: Int,
            
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/products/bulk/\(batchId)",
                query: nil,
                body: nil,
                headers: [],
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Create products in bulk associated with given batch Id.
        * Description: This API helps to create products in bulk push to kafka for approval/creation.
        **/
        public func createProductsInBulk(
            batchId: String,
            body: BulkProductRequest,
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/products/bulk/\(batchId)",
                query: nil,
                body: body.dictionary,
                headers: [],
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get a list of all tags associated with company.
        * Description: This API helps to get tags data associated to a particular copmpany.
        **/
        public func getCompanyTags(
            
            onResponse: @escaping (_ response: ProductTagsViewResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/products/tags",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ProductTagsViewResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get a list of all bulk asset jobs.
        * Description: This API helps to get bulk asset jobs data associated to a particular company.
        **/
        public func getProductAssetsInBulk(
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: BulkAssetResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/products/assets/bulk/",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(BulkAssetResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Create a Bulk asset upload Job.
        * Description: This API helps to create a bulk asset upload job.
        **/
        public func createProductAssetsInBulk(
            body: ProductBulkAssets,
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/products/assets/bulk/",
                query: nil,
                body: body.dictionary,
                headers: [],
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Delete a Size associated with product.
        * Description: This API allows to delete size associated with product.
        **/
        public func deleteSize(
            itemId: Int,
            size: Int,
            
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/products/\(itemId)/sizes/\(size)",
                query: nil,
                body: nil,
                headers: [],
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get Inventory for company
        * Description: This API allows get Inventory data for particular company grouped by size and store.
        **/
        public func getInventory(
            itemId: String,
            size: String,
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: InventoryRequest?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/products/\(itemId)/sizes/\(size)/",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(InventoryRequest.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Add Inventory for particular size and store.
        * Description: This API allows add Inventory for particular size and store.
        **/
        public func addInventory(
            itemId: Double,
            size: String,
            body: InventoryRequest1,
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/products/\(itemId)/sizes/\(size)/",
                query: nil,
                body: body.dictionary,
                headers: [],
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Delete a Inventory.
        * Description: This API allows to delete inventory of a particular product for particular company.
        **/
        public func deleteInventory(
            itemId: Int,
            locationId: Double,
            
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/products/\(itemId)/sizes/<size>/location/\(locationId)/",
                query: nil,
                body: nil,
                headers: [],
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get a list of all bulk Inventory upload jobs.
        * Description: This API helps to get bulk Inventory upload jobs data.
        **/
        public func getInventoryBulkUploadHistory(
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: BulkRequestGet?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/inventory/bulk/",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(BulkRequestGet.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Create a Bulk Inventory upload Job.
        * Description: This API helps to create a bulk Inventory upload job.
        **/
        public func createBulkInventoryJob(
            body: BulkJob,
            onResponse: @escaping (_ response: CommonResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/inventory/bulk/",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CommonResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Delete Bulk Inventory job.
        * Description: This API allows to delete bulk Inventory job associated with company.
        **/
        public func deleteBulkInventoryJob(
            
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/inventory/bulk/<batch_id>/",
                query: nil,
                body: nil,
                headers: [],
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Create products in bulk associated with given batch Id.
        * Description: This API helps to create products in bulk push to kafka for approval/creation.
        **/
        public func createBulkInventory(
            body: InventoryBulkRequest,
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/inventory/bulk/<batch_id>/",
                query: nil,
                body: body.dictionary,
                headers: [],
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get Inventory export history.
        * Description: This API helps to get Inventory export history.
        **/
        public func getInventoryExport(
            
            onResponse: @escaping (_ response: InventoryExportJob?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/inventory/download/",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(InventoryExportJob.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Create a Inventory export Job.
        * Description: This API helps to create a Inventory export job.
        **/
        public func createInventoryExportJob(
            body: InventoryExportRequest,
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/inventory/download/",
                query: nil,
                body: body.dictionary,
                headers: [],
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get List of different filters for inventory export
        * Description: This API allows get List of different filters like brand, store, and type for inventory export.
        **/
        public func exportInventoryConfig(
            filterType: String?,
            
            onResponse: @escaping (_ response: InventoryConfig?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = filterType {
                xQuery["filter_type"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/inventory/download/configuration/",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(InventoryConfig.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
    }
    
    
    
    public class CompanyProfile {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        /**
        *
        * Summary: Edit company profile
        * Description: This API allows to edit the company profile of the seller account.
        **/
        public func updateCompany(
            body: CompanyStoreSerializerRequest,
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "patch",
                url: "/service/platform/company-profile/v1.0/company/\(companyId)",
                query: nil,
                body: body.dictionary,
                headers: [],
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get company profile
        * Description: This API allows to view the company profile of the seller account.
        **/
        public func cbsOnboardGet(
            
            onResponse: @escaping (_ response: GetCompanyProfileSerializerResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/company-profile/v1.0/company/\(companyId)",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetCompanyProfileSerializerResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get company metrics
        * Description: This API allows to view the company metrics, i.e. the status of its brand and stores. Also its allows to view the number of products, company documents & store documents which are verified and unverified.
        **/
        public func getCompanyMetrics(
            
            onResponse: @escaping (_ response: MetricsSerializer?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/company-profile/v1.0/company/\(companyId)/metrics",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(MetricsSerializer.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Edit a brand.
        * Description: This API allows to edit meta of a brand.
        **/
        public func editBrand(
            brandId: String,
            body: CreateUpdateBrandRequestSerializer,
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/platform/company-profile/v1.0/company/\(companyId)/brand/\(brandId)",
                query: nil,
                body: body.dictionary,
                headers: [],
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get a single brand.
        * Description: This API helps to get data associated to a particular brand.
        **/
        public func getBrand(
            brandId: String,
            
            onResponse: @escaping (_ response: GetBrandResponseSerializer?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/company-profile/v1.0/company/\(companyId)/brand/\(brandId)",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetBrandResponseSerializer.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Create a Brand.
        * Description: This API allows to create a brand associated to a company.
        **/
        public func createBrand(
            body: CreateUpdateBrandRequestSerializer,
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/company-profile/v1.0/company/\(companyId)/brand",
                query: nil,
                body: body.dictionary,
                headers: [],
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get brands associated to a company
        * Description: This API helps to get view brands associated to a particular company.
        **/
        public func getBrands(
            
            onResponse: @escaping (_ response: CompanyBrandListSerializer?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/company-profile/v1.0/company/\(companyId)/company-brand",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CompanyBrandListSerializer.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Create a company brand mapping.
        * Description: This API allows to create a company brand mapping, for a already existing brand in the system.
        **/
        public func createBrand(
            body: CompanyBrandPostRequestSerializer,
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/company-profile/v1.0/company/\(companyId)/company-brand",
                query: nil,
                body: body.dictionary,
                headers: [],
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get list of locations
        * Description: This API allows to view all the locations asscoiated to a company.
        **/
        public func getLocations(
            storeType: String?,
            q: String?,
            stage: String?,
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: LocationListSerializer?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = storeType {
                xQuery["store_type"] = value
            }
            
            if let value = q {
                xQuery["q"] = value
            }
            
            if let value = stage {
                xQuery["stage"] = value
            }
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/company-profile/v1.0/company/\(companyId)/location",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(LocationListSerializer.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Create a location asscoiated to a company.
        * Description: This API allows to create a location associated to a company.
        **/
        public func createLocation(
            body: LocationSerializer,
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/company-profile/v1.0/company/\(companyId)/location",
                query: nil,
                body: body.dictionary,
                headers: [],
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Edit a location asscoiated to a company.
        * Description: This API allows to edit a location associated to a company.
        **/
        public func updateLocation(
            locationId: String,
            body: LocationSerializer,
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/platform/company-profile/v1.0/company/\(companyId)/location/\(locationId)",
                query: nil,
                body: body.dictionary,
                headers: [],
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get details of a specific location.
        * Description: This API helps to get data associated to a specific location.
        **/
        public func getLocationDetail(
            locationId: String,
            
            onResponse: @escaping (_ response: GetLocationSerializer?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/company-profile/v1.0/company/\(companyId)/location/\(locationId)",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetLocationSerializer.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
    }
    
    
    
    public class Assets {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        /**
        *
        * Summary: This operation initiates upload and returns storage link which is valid for 30 Minutes. You can use that storage link to make subsequent upload request with file buffer or blob.
        * Description: Uploads an arbitrarily sized buffer or blob.

It has three Major Steps:
* Start
* Upload
* Complete

### Start
Initiates the assets upload using `startUpload`.
It returns the storage link in response.

### Upload
Use the storage link to upload a file (Buffer or Blob) to the File Storage.
Make a `PUT` request on storage link received from `startUpload` api with file (Buffer or Blob) as a request body.

### Complete
After successfully upload, call `completeUpload` api to complete the upload process.
This operation will return the url for the uploaded file.

        **/
        public func startUpload(
            namespace: String,
            body: StartRequest,
            onResponse: @escaping (_ response: StartResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/assets/v1.0/company/\(companyId)/namespaces/\(namespace)/upload/start/",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(StartResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: This will complete the upload process. After successfully uploading file, you can call this operation to complete the upload process.
        * Description: Uploads an arbitrarily sized buffer or blob.

It has three Major Steps:
* Start
* Upload
* Complete

### Start
Initiates the assets upload using `startUpload`.
It returns the storage link in response.

### Upload
Use the storage link to upload a file (Buffer or Blob) to the File Storage.
Make a `PUT` request on storage link received from `startUpload` api with file (Buffer or Blob) as a request body.

### Complete
After successfully upload, call `completeUpload` api to complete the upload process.
This operation will return the url for the uploaded file.

        **/
        public func completeUpload(
            namespace: String,
            body: StartResponse,
            onResponse: @escaping (_ response: CompleteResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/assets/v1.0/company/\(companyId)/namespaces/\(namespace)/upload/complete/",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CompleteResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        
        
        /**
        *
        * Summary: Explain here
        * Description: Describe here
        **/
        public func getSignUrls(
            body: SignUrlRequest,
            onResponse: @escaping (_ response: SignUrlResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/assets/v1.0/company/\(companyId)/sign-urls/",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(SignUrlResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Copy Files
        * Description: Copy Files
        **/
        public func copyFiles(
            sync: Bool?,
            body: BulkRequest,
            onResponse: @escaping (_ response: BulkResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = sync {
                xQuery["sync"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/assets/v1.0/company/\(companyId)/uploads/copy/",
                query: xQuery,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(BulkResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        
        /**
        *
        * Summary: Browse Files
        * Description: Browse Files
        **/
        public func browse(
            namespace: String,
            
            onResponse: @escaping (_ response: BrowseResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/assets/v1.0/company/\(companyId)/namespaces/\(namespace)/browse/",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(BrowseResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: get paginator for browse
        * Description: fetch the next page by calling .next(...) function
        **/
        public func browsePaginator(
            namespace: String
            
            ) -> Paginator<BrowseResponse> {
            let pageSize = 20
            let paginator = Paginator<BrowseResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.browse(
                        
                        namespace: namespace
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
        * Summary: Proxy
        * Description: Proxy
        **/
        public func proxy(
            url: String,
            
            onResponse: @escaping (_ response: String?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            xQuery["url"] = url
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/assets/v1.0/company/\(companyId)/proxy/",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(String.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
    }
    
    
    
    public class Configuration {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: Create application
        * Description: Create new application
        **/
        public func createApplication(
            body: CreateApplicationRequest,
            onResponse: @escaping (_ response: CreateAppResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/configuration/v1.0/company/\(companyId)/application",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CreateAppResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get list of application under company
        * Description: Get list of application under company
        **/
        public func getApplications(
            pageNo: Int?,
            pageSize: Int?,
            q: [String: Any]?,
            
            onResponse: @escaping (_ response: ApplicationsResponse?, _ error: FDKError?) -> Void
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
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/configuration/v1.0/company/\(companyId)/application",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ApplicationsResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: get paginator for getApplications
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getApplicationsPaginator(
            pageSize: Int?,
            q: [String: Any]?
            
            ) -> Paginator<ApplicationsResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<ApplicationsResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getApplications(
                        
                        pageNo: paginator.pageNo
                        ,
                        pageSize: paginator.pageSize
                        ,
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
        * Summary: Get all currencies
        * Description: Get all currencies
        **/
        public func getCurrencies(
            
            onResponse: @escaping (_ response: CurrenciesResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/configuration/v1.0/company/\(companyId)/currencies",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Check domain availibility before linking to application
        * Description: Check domain availibility before linking to application. Also sends domain suggestions with similar to queried domain. \ Custom domain search is currently powered by GoDaddy provider.
        **/
        public func getDomainAvailibility(
            body: DomainSuggestionsRequest,
            onResponse: @escaping (_ response: DomainSuggestionsResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/configuration/v1.0/company/\(companyId)/domain/suggestions",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(DomainSuggestionsResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get integration data
        * Description: Get integration data
        **/
        public func getIntegrationById(
            id: Int,
            
            onResponse: @escaping (_ response: Integration?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/configuration/v1.0/company/\(companyId)/integration/\(id)",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(Integration.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get all available integration opt-ins
        * Description: Get all available integration opt-ins
        **/
        public func getAvailableOptIns(
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: GetIntegrationsOptInsResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/configuration/v1.0/company/\(companyId)/integration-opt-in/available",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetIntegrationsOptInsResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: get paginator for getAvailableOptIns
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getAvailableOptInsPaginator(
            pageSize: Int?
            
            ) -> Paginator<GetIntegrationsOptInsResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<GetIntegrationsOptInsResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getAvailableOptIns(
                        
                        pageNo: paginator.pageNo
                        ,
                        pageSize: paginator.pageSize
                        
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
        * Summary: Get company/store level integration opt-ins
        * Description: Get company/store level integration opt-ins
        **/
        public func getSelectedOptIns(
            level: String,
            uid: Int,
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: GetIntegrationsOptInsResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/configuration/v1.0/company/\(companyId)/integrationOptIn/selected/\(level)/\(uid)",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetIntegrationsOptInsResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: get paginator for getSelectedOptIns
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getSelectedOptInsPaginator(
            level: String,
            uid: Int,
            pageSize: Int?
            
            ) -> Paginator<GetIntegrationsOptInsResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<GetIntegrationsOptInsResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getSelectedOptIns(
                        
                        level: level,
                        uid: uid,
                        pageNo: paginator.pageNo
                        ,
                        pageSize: paginator.pageSize
                        
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
        * Summary: Get integration level config
        * Description: Get integration level config
        **/
        public func getIntegrationLevelConfig(
            id: String,
            level: String,
            
            onResponse: @escaping (_ response: IntegrationConfigResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/configuration/v1.0/company/\(companyId)/integrationOptIn/configuration/\(id)/\(level)",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(IntegrationConfigResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get level data for integration
        * Description: Get level data for integration
        **/
        public func getIntegrationByLevelId(
            id: String,
            level: String,
            uid: Int,
            
            onResponse: @escaping (_ response: IntegrationLevel?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/configuration/v1.0/company/\(companyId)/integrationOptIn/configuration/\(id)/\(level)/\(uid)",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(IntegrationLevel.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Check store has active integration
        * Description: API checks if a store is already opted in any other integrations
        **/
        public func getLevelActiveIntegrations(
            id: String,
            level: String,
            uid: Int,
            
            onResponse: @escaping (_ response: OptedStoreIntegration?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/configuration/v1.0/company/\(companyId)/integrationOptIn/check/configuration/\(id)/\(level)/\(uid)",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(OptedStoreIntegration.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get brands by company
        * Description: Get brands by company
        **/
        public func getBrandsByCompany(
            q: String?,
            
            onResponse: @escaping (_ response: BrandsByCompanyResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = q {
                xQuery["q"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/configuration/v1.0/company/\(companyId)/inventory/brands-by-companies",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(BrandsByCompanyResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get company by brand uids
        * Description: Get company by brand uids
        **/
        public func getCompanyByBrands(
            pageNo: Int?,
            pageSize: Int?,
            body: CompanyByBrandsRequest,
            onResponse: @escaping (_ response: CompanyByBrandsResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/configuration/v1.0/company/\(companyId)/inventory/companies-by-brands",
                query: xQuery,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(CompanyByBrandsResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: get paginator for getCompanyByBrands
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getCompanyByBrandsPaginator(
            pageSize: Int?,
            
            body: CompanyByBrandsRequest) -> Paginator<CompanyByBrandsResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<CompanyByBrandsResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getCompanyByBrands(
                        
                        pageNo: paginator.pageNo
                        ,
                        pageSize: paginator.pageSize
                        ,body: body
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
        * Summary: Get stores by brand uids
        * Description: Get stores by brand uids
        **/
        public func getStoreByBrands(
            pageNo: Int?,
            pageSize: Int?,
            body: StoreByBrandsRequest,
            onResponse: @escaping (_ response: StoreByBrandsResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/configuration/v1.0/company/\(companyId)/inventory/stores-by-brands",
                query: xQuery,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(StoreByBrandsResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: get paginator for getStoreByBrands
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getStoreByBrandsPaginator(
            pageSize: Int?,
            
            body: StoreByBrandsRequest) -> Paginator<StoreByBrandsResponse> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<StoreByBrandsResponse>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getStoreByBrands(
                        
                        pageNo: paginator.pageNo
                        ,
                        pageSize: paginator.pageSize
                        ,body: body
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
        * Summary: Get other seller applications
        * Description: Get other seller applications who has opted current company as inventory
        **/
        public func getOtherSellerApplications(
            
            onResponse: @escaping (_ response: OtherSellerApplications?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/configuration/v1.0/company/\(companyId)/other-seller-applications/",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(OtherSellerApplications.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: get paginator for getOtherSellerApplications
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getOtherSellerApplicationsPaginator(
            
            ) -> Paginator<OtherSellerApplications> {
            let pageSize = 20
            let paginator = Paginator<OtherSellerApplications>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getOtherSellerApplications(
                        
                        
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
        * Summary: Get other seller applications
        * Description: Get other seller application
        **/
        public func getOtherSellerApplicationById(
            id: String,
            
            onResponse: @escaping (_ response: OptedApplicationResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/configuration/v1.0/company/\(companyId)/otherSellerApplications/\(id)",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(OptedApplicationResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Opt out company or store from other seller application
        * Description: Opt out company or store from other seller application
        **/
        public func optOutFromApplication(
            id: String,
            body: OptOutInventory,
            onResponse: @escaping (_ response: SuccessMessageResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/platform/configuration/v1.0/company/\(companyId)/otherSellerApplications/\(id)/opt_out",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
    }
    
    
    
    public class Marketplaces {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        /**
        *
        * Summary: Get available marketplace channels
        * Description: Get available marketplace channels
        **/
        public func getAvailableChannels(
            
            onResponse: @escaping (_ response: AllChannels?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/marketplaces/v1.0/company/\(companyId)/all-channels",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(AllChannels.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get all registered marketplace channels for a seller
        * Description: Get all registered marketplace channels for a seller
        **/
        public func getChannels(
            
            onResponse: @escaping (_ response: [String: Any]?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/marketplaces/v1.0/company/\(companyId)/channels/",
                query: nil,
                body: nil,
                headers: [],
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
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get registered marketplace channel for a seller
        * Description: Get registered marketplace channel for a seller
        **/
        public func getChannel(
            channel: String,
            
            onResponse: @escaping (_ response: MkpResp?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/marketplaces/v1.0/company/\(companyId)/channels/\(channel)",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(MkpResp.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Create Myntra marketplace channel for a seller
        * Description: Create Myntra marketplace channel for a seller
        **/
        public func registerMyntraChannel(
            body: MyntraPayload,
            onResponse: @escaping (_ response: MkpResp?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/marketplaces/v1.0/company/\(companyId)/channels/myntra_in",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(MkpResp.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Update Myntra marketplace channel credentials for a seller
        * Description: Update Myntra marketplace channel credentials for a seller
        **/
        public func updateMyntraChannelCredentials(
            body: MyntraPayload,
            onResponse: @escaping (_ response: MkpResp?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/platform/marketplaces/v1.0/company/\(companyId)/channels/myntra_in",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(MkpResp.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Create Amazon marketplace channel for a seller
        * Description: Create Amazon marketplace channel for a seller
        **/
        public func registerAmazonChannel(
            body: AmazonPayload,
            onResponse: @escaping (_ response: MkpResp?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/marketplaces/v1.0/company/\(companyId)/channels/amazon_in",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(MkpResp.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Update Amazon marketplace channel credentials for a seller
        * Description: Update Amazon marketplace channel credentials for a seller
        **/
        public func updateAmazonChannelCredentials(
            body: AmazonPayload,
            onResponse: @escaping (_ response: MkpResp?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/platform/marketplaces/v1.0/company/\(companyId)/channels/amazon_in",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(MkpResp.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Create Flipkart / Flipkart Assured marketplace channel for a seller
        * Description: Create Flipkart / Flipkart Assured marketplace channel for a seller
        **/
        public func registerFlipkartChannel(
            flipkartChannel: String,
            body: FlipkartPayload,
            onResponse: @escaping (_ response: MkpResp?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/marketplaces/v1.0/company/\(companyId)/channels/\(flipkartChannel)",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(MkpResp.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Update Flipkart / Flipkart Assured marketplace channel credentials for a seller
        * Description: Update Flipkart / Flipkart Assured marketplace channel credentials for a seller
        **/
        public func updateFlipkartChannelCredentials(
            flipkartChannel: String,
            body: FlipkartPayload,
            onResponse: @escaping (_ response: MkpResp?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/platform/marketplaces/v1.0/company/\(companyId)/channels/\(flipkartChannel)",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(MkpResp.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Create Tatacliq / Tatacliq Luxury marketplace channel for a seller
        * Description: Create Tatacliq / Tatacliq Luxury marketplace channel for a seller
        **/
        public func registerTatacliqChannel(
            tatacliqChannel: String,
            body: TatacliqPayload,
            onResponse: @escaping (_ response: MkpResp?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/marketplaces/v1.0/company/\(companyId)/channels/\(tatacliqChannel)",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(MkpResp.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Update Tatacliq / Tatacliq Luxury Assured marketplace channel credentials for a seller
        * Description: Update Tatacliq / Tatacliq Luxury marketplace channel credentials for a seller
        **/
        public func updateTatacliqChannelCredentials(
            tatacliqChannel: String,
            body: TatacliqPayload,
            onResponse: @escaping (_ response: MkpResp?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/platform/marketplaces/v1.0/company/\(companyId)/channels/\(tatacliqChannel)",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(MkpResp.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Create Ajio marketplace channel for a seller
        * Description: Create Ajio marketplace channel for a seller
        **/
        public func registerAjioChannel(
            body: AjioPayload,
            onResponse: @escaping (_ response: MkpResp?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/marketplaces/v1.0/company/\(companyId)/channels/ajio_in",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(MkpResp.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Update Ajio marketplace channel credentials for a seller
        * Description: Update Ajio marketplace channel credentials for a seller
        **/
        public func updateAjioChannelCredentials(
            body: AjioPayload,
            onResponse: @escaping (_ response: MkpResp?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/platform/marketplaces/v1.0/company/\(companyId)/channels/ajio_in",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(MkpResp.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Update inventory sync configuration of marketplace channel for a seller
        * Description: Update inventory sync configuration of marketplace channel for a seller
        **/
        public func updateChannelInventorySyncConfig(
            channel: String,
            validateCred: String?,
            body: InventorySyncConfig,
            onResponse: @escaping (_ response: MkpResp?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = validateCred {
                xQuery["validate_cred"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/platform/marketplaces/company/\(companyId)/v10/channels/\(channel)/inventory/config",
                query: xQuery,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(MkpResp.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get marketplace channel location config for a seller
        * Description: Get marketplace channel location config for a seller
        **/
        public func getChannelLocationConfig(
            channel: String,
            
            onResponse: @escaping (_ response: StoreMapping?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/marketplaces/v1.0/company/\(companyId)/channels/\(channel)/location/config",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(StoreMapping.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: update marketplace channel location config for a seller
        * Description: update marketplace channel location config for a seller
        **/
        public func updateChannelLocationConfig(
            channel: String,
            body: StoreMappingPayload,
            onResponse: @escaping (_ response: StoreMapping?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/platform/marketplaces/v1.0/company/\(companyId)/channels/\(channel)/location/config",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(StoreMapping.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get marketplace channel active status for a seller
        * Description: Get marketplace channel active status for a seller
        **/
        public func getChannelStatus(
            channel: String,
            
            onResponse: @escaping (_ response: StatusPayload?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/marketplaces/v1.0/company/\(companyId)/channels/\(channel)/status",
                query: nil,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(StatusPayload.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Update marketplace channel active status for a seller
        * Description: Update marketplace channel active status for a seller
        **/
        public func updateChannelStatus(
            channel: String,
            body: StatusPayload,
            onResponse: @escaping (_ response: StatusResp?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/platform/marketplaces/v1.0/company/\(companyId)/channels/\(channel)/status",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(StatusResp.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Trigger marketplace channel inventory updates for a seller
        * Description: Trigger marketplace channel inventory updates for a seller
        **/
        public func triggerChannelInventoryUpdates(
            channel: String,
            updateType: String,
            body: SyncPayload,
            onResponse: @escaping (_ response: SyncResp?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/marketplaces/v1.0/company/\(companyId)/channels/\(channel)/inventory/\(updateType)/sync",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(SyncResp.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
    }
    
    
    
    public class Analytics {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: Create data export job in required format
        * Description: Create data export job in required format
        **/
        public func createExportJob(
            exportType: String,
            body: ExportJobReq,
            onResponse: @escaping (_ response: ExportJobRes?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/analytics/v1.0/company/\(companyId)/export/\(exportType)",
                query: nil,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ExportJobRes.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get data export job status
        * Description: Get data export job status
        **/
        public func getExportJobStatus(
            exportType: String,
            jobId: String,
            
            onResponse: @escaping (_ response: ExportJobStatusRes?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            xQuery["job_id"] = jobId
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/analytics/v1.0/company/\(companyId)/export/\(exportType)",
                query: xQuery,
                body: nil,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ExportJobStatusRes.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get logs list
        * Description: Get logs list
        **/
        public func getLogsList(
            logType: String,
            pageNo: String?,
            pageSize: String?,
            body: GetLogsListReq,
            onResponse: @escaping (_ response: GetLogsListRes?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/analytics/v1.0/company/\(companyId)/logs/\(logType)",
                query: xQuery,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(GetLogsListRes.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Search logs
        * Description: Search logs
        **/
        public func searchLogs(
            pageNo: String?,
            pageSize: String?,
            logType: String,
            body: SearchLogReq,
            onResponse: @escaping (_ response: SearchLogRes?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/analytics/v1.0/company/\(companyId)/logs/\(logType)/search",
                query: xQuery,
                body: body.dictionary,
                headers: [],
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(SearchLogRes.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
    }
    
    

    public func applicationClient(id: String) -> ApplicationClient {
        return ApplicationClient(applicationId: id, config: config)
    }

    public class ApplicationClient {
        var config: PlatformConfig
        var companyId: String
        var applicationId: String

        
        public let lead: Lead
        
        public let theme: Theme
        
        public let user: User
        
        public let communication: Communication
        
        public let share: Share
        
        public let cart: Cart
        
        
        public init(applicationId: String, config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
            self.applicationId = applicationId

            
            lead = Lead(config: config, applicationId: applicationId)
            
            theme = Theme(config: config, applicationId: applicationId)
            
            user = User(config: config, applicationId: applicationId)
            
            communication = Communication(config: config, applicationId: applicationId)
            
            share = Share(config: config, applicationId: applicationId)
            
            cart = Cart(config: config, applicationId: applicationId)
            
        }

        
            
        public class Lead {        
            var config: PlatformConfig
            var companyId: String
            var applicationId: String

            init(config: PlatformConfig, applicationId: String) {
                self.config = config
                self.companyId = config.companyId
                self.applicationId = applicationId
            }
            
            
            
            
            /**
            *
            * Summary: Gets the list of Application level Tickets and/or ticket filters depending on query params
            * Description: Gets the list of Application level Tickets and/or ticket filters
            **/
            public func getTickets(
                items: Bool?,
                filters: Bool?,
                q: String?,
                status: String?,
                priority: String?,
                category: String?,
                
                onResponse: @escaping (_ response: TicketList?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:] 
                
                if let value = items {
                    xQuery["items"] = value
                }
                
                if let value = filters {
                    xQuery["filters"] = value
                }
                
                if let value = q {
                    xQuery["q"] = value
                }
                
                if let value = status {
                    xQuery["status"] = value
                }
                
                if let value = priority {
                    xQuery["priority"] = value
                }
                
                if let value = category {
                    xQuery["category"] = value
                }
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/ticket",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(TicketList.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            
            
            /**
            *
            * Summary: Retreives ticket details of a application level ticket
            * Description: Retreives ticket details of a application level ticket with ticket ID
            **/
            public func getTicket(
                ticketId: String,
                
                onResponse: @escaping (_ response: Ticket?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/ticket/\(ticketId)",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(Ticket.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Edits ticket details of a application level ticket
            * Description: Edits ticket details of a application level ticket such as status, priority, category, tags, attachments, assigne & ticket content changes
            **/
            public func editTicket(
                ticketId: String,
                body: EditTicketPayload,
                onResponse: @escaping (_ response: Ticket?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/ticket/\(ticketId)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(Ticket.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            
            
            /**
            *
            * Summary: Create history for specific application level ticket
            * Description: Create history for specific application level ticket, this history is seen on ticket detail page, this can be comment, log or rating.
            **/
            public func createHistory(
                ticketId: String,
                body: TicketHistoryPayload,
                onResponse: @escaping (_ response: TicketHistory?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/ticket/\(ticketId)/history",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(TicketHistory.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Gets history list for specific application level ticket
            * Description: Gets history list for specific application level ticket, this history is seen on ticket detail page, this can be comment, log or rating.
            **/
            public func getTicketHistory(
                ticketId: String,
                
                onResponse: @escaping (_ response: TicketHistoryList?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/ticket/\(ticketId)/history",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(TicketHistoryList.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get specific custom form using it's slug
            * Description: Get specific custom form using it's slug, this is used to view the form.
            **/
            public func getCustomForm(
                slug: String,
                
                onResponse: @escaping (_ response: CustomForm?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/form/\(slug)",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(CustomForm.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Edit the given custom form
            * Description: Edit the given custom form field such as adding or deleting input, assignee, title, decription, notification and polling information.
            **/
            public func editCustomForm(
                slug: String,
                body: EditCustomFormPayload,
                onResponse: @escaping (_ response: CustomForm?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/form/\(slug)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(CustomForm.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get list of custom form
            * Description: Get list of custom form for given application
            **/
            public func getCustomForms(
                
                onResponse: @escaping (_ response: CustomFormList?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/form",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(CustomFormList.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Creates a new custom form
            * Description: Creates a new custom form for given application
            **/
            public func createCustomForm(
                body: CreateCustomFormPayload,
                onResponse: @escaping (_ response: CustomForm?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/form",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(CustomForm.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get Token to join a specific Video Room using it's unqiue name
            * Description: Get Token to join a specific Video Room using it's unqiue name, this Token is your ticket to Room and also creates your identity there.
            **/
            public func getTokenForVideoRoom(
                uniqueName: String,
                
                onResponse: @escaping (_ response: GetTokenForVideoRoomResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/video/room/\(uniqueName)/token",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(GetTokenForVideoRoomResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get participants of a specific Video Room using it's unique name
            * Description: Get participants of a specific Video Room using it's unique name, this can be used to check if people are already there in the room and also to show their names.
            **/
            public func getVideoParticipants(
                uniqueName: String,
                
                onResponse: @escaping (_ response: GetParticipantsInsideVideoRoomResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/video/room/\(uniqueName)/participants",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(GetParticipantsInsideVideoRoomResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Open a video room.
            * Description: Open a video room.
            **/
            public func openVideoRoom(
                body: CreateVideoRoomPayload,
                onResponse: @escaping (_ response: CreateVideoRoomResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/video/room",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(CreateVideoRoomResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Close the video room and force all participants to leave.
            * Description: Close the video room and force all participants to leave.
            **/
            public func closeVideoRoom(
                uniqueName: String,
                
                onResponse: @escaping (_ response: CloseVideoRoomResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/video/room/\(uniqueName)",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(CloseVideoRoomResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
        }
        
        
            
        public class Theme {        
            var config: PlatformConfig
            var companyId: String
            var applicationId: String

            init(config: PlatformConfig, applicationId: String) {
                self.config = config
                self.companyId = config.companyId
                self.applicationId = applicationId
            }
            
            
            /**
            *
            * Summary: Gets list of themes in theme library
            * Description: Gets list of themes in theme library
            **/
            public func getThemeLibrary(
                pageSize: Int?,
                pageNo: Int?,
                
                onResponse: @escaping (_ response: ThemesListingResponseSchema?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:] 
                
                if let value = pageSize {
                    xQuery["page_size"] = value
                }
                
                if let value = pageNo {
                    xQuery["page_no"] = value
                }
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/library",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(ThemesListingResponseSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Add theme to theme library
            * Description: Add theme to theme library
            **/
            public func addToThemeLibrary(
                body: AddThemeRequestSchema,
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/library",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Apply theme
            * Description: Apply theme
            **/
            public func applyTheme(
                body: AddThemeRequestSchema,
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/apply",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Checks if theme is upgradable
            * Description: Checks if theme is upgradable
            **/
            public func isUpgradable(
                themeId: String,
                
                onResponse: @escaping (_ response: UpgradableThemeSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/upgradable",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(UpgradableThemeSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Upgrades theme
            * Description: Upgrades theme
            **/
            public func upgradeTheme(
                themeId: String,
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/upgrade",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Gets public themes
            * Description: Gets public themes
            **/
            public func getPublicThemes(
                pageSize: Int?,
                pageNo: Int?,
                
                onResponse: @escaping (_ response: ThemesListingResponseSchema?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:] 
                
                if let value = pageSize {
                    xQuery["page_size"] = value
                }
                
                if let value = pageNo {
                    xQuery["page_no"] = value
                }
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/public/library",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(ThemesListingResponseSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Create new theme
            * Description: Create new theme
            **/
            public func createTheme(
                body: ThemesSchema,
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get applied theme
            * Description: Get applied theme
            **/
            public func getAppliedTheme(
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Gets fonts
            * Description: Gets fonts
            **/
            public func getFonts(
                
                onResponse: @escaping (_ response: FontsSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/fonts",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(FontsSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Gets theme by id
            * Description: Gets theme by id
            **/
            public func getThemeById(
                themeId: String,
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Update theme
            * Description: Update theme
            **/
            public func updateTheme(
                themeId: String,
                body: ThemesSchema,
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Delete theme
            * Description: Delete theme
            **/
            public func deleteTheme(
                themeId: String,
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Gets theme for preview
            * Description: Gets theme for preview
            **/
            public func getThemeForPreview(
                themeId: String,
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/preview",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Publish theme
            * Description: Publish theme
            **/
            public func publishTheme(
                themeId: String,
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/publish",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Unpublish theme
            * Description: Unpublish theme
            **/
            public func unpublishTheme(
                themeId: String,
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/unpublish",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Archive theme
            * Description: Archive theme
            **/
            public func archiveTheme(
                themeId: String,
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/archive",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Unarchive theme
            * Description: Unarchive theme
            **/
            public func unarchiveTheme(
                themeId: String,
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/unarchive",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
        }
        
        
            
        public class User {        
            var config: PlatformConfig
            var companyId: String
            var applicationId: String

            init(config: PlatformConfig, applicationId: String) {
                self.config = config
                self.companyId = config.companyId
                self.applicationId = applicationId
            }
            
            
            /**
            *
            * Summary: Gets list of customers
            * Description: Used to get application customers list
            **/
            public func getCustomers(
                q: String?,
                pageSize: Int?,
                pageNo: Int?,
                
                onResponse: @escaping (_ response: CustomerListResponseSchema?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:] 
                
                if let value = q {
                    xQuery["q"] = value
                }
                
                if let value = pageSize {
                    xQuery["page_size"] = value
                }
                
                if let value = pageNo {
                    xQuery["page_no"] = value
                }
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/user/v1.0/company/\(companyId)/application/\(applicationId)/customers/list",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(CustomerListResponseSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Search users
            * Description: Search users
            **/
            public func searchUsers(
                q: String?,
                
                onResponse: @escaping (_ response: UserSearchResponseSchema?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:] 
                
                if let value = q {
                    xQuery["q"] = value
                }
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/user/v1.0/company/\(companyId)/application/\(applicationId)/customers/search",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(UserSearchResponseSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get platform config
            * Description: Used to get platform config
            **/
            public func getPlatformConfig(
                
                onResponse: @escaping (_ response: PlatformSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/user/v1.0/company/\(companyId)/application/\(applicationId)/platform/config",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(PlatformSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Update platform config
            * Description: Used to update platform config
            **/
            public func updatePlatformConfig(
                body: PlatformSchema,
                onResponse: @escaping (_ response: PlatformSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/user/v1.0/company/\(companyId)/application/\(applicationId)/platform/config",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(PlatformSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
        }
        
        
            
        public class Communication {        
            var config: PlatformConfig
            var companyId: String
            var applicationId: String

            init(config: PlatformConfig, applicationId: String) {
                self.config = config
                self.companyId = config.companyId
                self.applicationId = applicationId
            }
            
            
            /**
            *
            * Summary: Get campaigns
            * Description: Get campaigns
            **/
            public func getCampaigns(
                
                onResponse: @escaping (_ response: Campaigns?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/campaigns/campaigns",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(Campaigns.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            /**
            *
            * Summary: get paginator for getCampaigns
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getCampaignsPaginator(
                
                ) -> Paginator<Campaigns> {
                let pageSize = 20
                let paginator = Paginator<Campaigns>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getCampaigns(
                            
                            
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
            * Summary: Create campaign
            * Description: Create campaign
            **/
            public func createCampaign(
                body: CampaignReq,
                onResponse: @escaping (_ response: Campaign?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/campaigns/campaigns",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(Campaign.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get campaign by id
            * Description: Get campaign by id
            **/
            public func getCampaignById(
                id: String,
                
                onResponse: @escaping (_ response: Campaign?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/campaigns/campaigns/\(id)",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(Campaign.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Update campaign by id
            * Description: Update campaign by id
            **/
            public func updateCampaignById(
                id: String,
                body: CampaignReq,
                onResponse: @escaping (_ response: Campaign?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/campaigns/campaigns/\(id)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(Campaign.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get stats of campaign by id
            * Description: Get stats of campaign by id
            **/
            public func getStatsOfCampaignById(
                id: String,
                
                onResponse: @escaping (_ response: GetStats?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/campaigns/getStats/\(id)",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(GetStats.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get audiences
            * Description: Get audiences
            **/
            public func getAudiences(
                
                onResponse: @escaping (_ response: Audiences?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sources/datasources",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(Audiences.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            /**
            *
            * Summary: get paginator for getAudiences
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getAudiencesPaginator(
                
                ) -> Paginator<Audiences> {
                let pageSize = 20
                let paginator = Paginator<Audiences>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getAudiences(
                            
                            
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
            * Summary: Create audience
            * Description: Create audience
            **/
            public func createAudience(
                body: AudienceReq,
                onResponse: @escaping (_ response: Audience?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sources/datasources",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(Audience.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get bigquery headers
            * Description: Get bigquery headers
            **/
            public func getBigqueryHeaders(
                body: BigqueryHeadersReq,
                onResponse: @escaping (_ response: BigqueryHeadersRes?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sources/bigquery-headers",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(BigqueryHeadersRes.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get audience by id
            * Description: Get audience by id
            **/
            public func getAudienceById(
                id: String,
                
                onResponse: @escaping (_ response: Audience?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sources/datasources/\(id)",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(Audience.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Update audience by id
            * Description: Update audience by id
            **/
            public func updateAudienceById(
                id: String,
                body: AudienceReq,
                onResponse: @escaping (_ response: Audience?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sources/datasources/\(id)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(Audience.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get n sample records from csv
            * Description: Get n sample records from csv
            **/
            public func getNSampleRecordsFromCsv(
                body: GetNRecordsCsvReq,
                onResponse: @escaping (_ response: GetNRecordsCsvRes?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sources/get-n-records",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(GetNRecordsCsvRes.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get email providers
            * Description: Get email providers
            **/
            public func getEmailProviders(
                
                onResponse: @escaping (_ response: EmailProviders?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/email/providers",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(EmailProviders.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            /**
            *
            * Summary: get paginator for getEmailProviders
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getEmailProvidersPaginator(
                
                ) -> Paginator<EmailProviders> {
                let pageSize = 20
                let paginator = Paginator<EmailProviders>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getEmailProviders(
                            
                            
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
            * Summary: Create email provider
            * Description: Create email provider
            **/
            public func createEmailProvider(
                body: EmailProviderReq,
                onResponse: @escaping (_ response: EmailProvider?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/email/providers",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(EmailProvider.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get email provider by id
            * Description: Get email provider by id
            **/
            public func getEmailProviderById(
                id: String,
                
                onResponse: @escaping (_ response: EmailProvider?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/email/providers/\(id)",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(EmailProvider.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Update email provider by id
            * Description: Update email provider by id
            **/
            public func updateEmailProviderById(
                id: String,
                body: EmailProviderReq,
                onResponse: @escaping (_ response: EmailProvider?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/email/providers/\(id)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(EmailProvider.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get email templates
            * Description: Get email templates
            **/
            public func getEmailTemplates(
                
                onResponse: @escaping (_ response: EmailTemplates?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/email/templates",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(EmailTemplates.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            /**
            *
            * Summary: get paginator for getEmailTemplates
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getEmailTemplatesPaginator(
                
                ) -> Paginator<EmailTemplates> {
                let pageSize = 20
                let paginator = Paginator<EmailTemplates>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getEmailTemplates(
                            
                            
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
            * Summary: Create email template
            * Description: Create email template
            **/
            public func createEmailTemplate(
                body: EmailTemplateReq,
                onResponse: @escaping (_ response: EmailTemplateRes?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/email/templates",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(EmailTemplateRes.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get system email templates
            * Description: Get system email templates
            **/
            public func getSystemEmailTemplates(
                
                onResponse: @escaping (_ response: SystemEmailTemplates?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/email/system-templates",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(SystemEmailTemplates.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            /**
            *
            * Summary: get paginator for getSystemEmailTemplates
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getSystemEmailTemplatesPaginator(
                
                ) -> Paginator<SystemEmailTemplates> {
                let pageSize = 20
                let paginator = Paginator<SystemEmailTemplates>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getSystemEmailTemplates(
                            
                            
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
            * Summary: Get email template by id
            * Description: Get email template by id
            **/
            public func getEmailTemplateById(
                id: String,
                
                onResponse: @escaping (_ response: EmailTemplate?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/email/templates/\(id)",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(EmailTemplate.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Update email template by id
            * Description: Update email template by id
            **/
            public func updateEmailTemplateById(
                id: String,
                body: EmailTemplateReq,
                onResponse: @escaping (_ response: EmailTemplateRes?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/email/templates/\(id)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(EmailTemplateRes.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Delete email template by id
            * Description: Delete email template by id
            **/
            public func deleteEmailTemplateById(
                id: String,
                
                onResponse: @escaping (_ response: EmailTemplateDeleteSuccessRes?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/email/templates/\(id)",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(EmailTemplateDeleteSuccessRes.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get event subscriptions
            * Description: Get event subscriptions
            **/
            public func getEventSubscriptions(
                
                onResponse: @escaping (_ response: EventSubscriptions?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/event/event-subscriptions",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(EventSubscriptions.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            /**
            *
            * Summary: get paginator for getEventSubscriptions
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getEventSubscriptionsPaginator(
                
                ) -> Paginator<EventSubscriptions> {
                let pageSize = 20
                let paginator = Paginator<EventSubscriptions>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getEventSubscriptions(
                            
                            
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
            * Summary: Get jobs
            * Description: Get jobs
            **/
            public func getJobs(
                
                onResponse: @escaping (_ response: Jobs?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/jobs/jobs",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(Jobs.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            /**
            *
            * Summary: get paginator for getJobs
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getJobsPaginator(
                
                ) -> Paginator<Jobs> {
                let pageSize = 20
                let paginator = Paginator<Jobs>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getJobs(
                            
                            
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
            * Summary: Trigger campaign job
            * Description: Trigger campaign job
            **/
            public func triggerCampaignJob(
                body: TriggerJobRequest,
                onResponse: @escaping (_ response: TriggerJobResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/jobs/trigger-job",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(TriggerJobResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get job logs
            * Description: Get job logs
            **/
            public func getJobLogs(
                
                onResponse: @escaping (_ response: JobLogs?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/jobs/logs",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(JobLogs.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            /**
            *
            * Summary: get paginator for getJobLogs
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getJobLogsPaginator(
                
                ) -> Paginator<JobLogs> {
                let pageSize = 20
                let paginator = Paginator<JobLogs>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getJobLogs(
                            
                            
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
            * Summary: Get communication logs
            * Description: Get communication logs
            **/
            public func getCommunicationLogs(
                
                onResponse: @escaping (_ response: Logs?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/log",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(Logs.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            /**
            *
            * Summary: get paginator for getCommunicationLogs
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getCommunicationLogsPaginator(
                
                ) -> Paginator<Logs> {
                let pageSize = 20
                let paginator = Paginator<Logs>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getCommunicationLogs(
                            
                            
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
            * Summary: Get sms providers
            * Description: Get sms providers
            **/
            public func getSmsProviders(
                
                onResponse: @escaping (_ response: SmsProviders?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sms/providers",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(SmsProviders.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            /**
            *
            * Summary: get paginator for getSmsProviders
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getSmsProvidersPaginator(
                
                ) -> Paginator<SmsProviders> {
                let pageSize = 20
                let paginator = Paginator<SmsProviders>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getSmsProviders(
                            
                            
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
            * Summary: Create sms provider
            * Description: Create sms provider
            **/
            public func createSmsProvider(
                body: SmsProviderReq,
                onResponse: @escaping (_ response: SmsProvider?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sms/providers",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(SmsProvider.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get sms provider by id
            * Description: Get sms provider by id
            **/
            public func getSmsProviderById(
                id: String,
                
                onResponse: @escaping (_ response: SmsProvider?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sms/providers/\(id)",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(SmsProvider.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Update sms provider by id
            * Description: Update sms provider by id
            **/
            public func updateSmsProviderById(
                id: String,
                body: SmsProviderReq,
                onResponse: @escaping (_ response: SmsProvider?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sms/providers/\(id)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(SmsProvider.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get sms templates
            * Description: Get sms templates
            **/
            public func getSmsTemplates(
                
                onResponse: @escaping (_ response: SmsTemplates?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sms/templates",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(SmsTemplates.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            /**
            *
            * Summary: get paginator for getSmsTemplates
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getSmsTemplatesPaginator(
                
                ) -> Paginator<SmsTemplates> {
                let pageSize = 20
                let paginator = Paginator<SmsTemplates>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getSmsTemplates(
                            
                            
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
            * Summary: Create sms template
            * Description: Create sms template
            **/
            public func createSmsTemplate(
                body: SmsTemplateReq,
                onResponse: @escaping (_ response: SmsTemplateRes?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sms/templates",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(SmsTemplateRes.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get sms template by id
            * Description: Get sms template by id
            **/
            public func getSmsTemplateById(
                id: String,
                
                onResponse: @escaping (_ response: SmsTemplate?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sms/templates/\(id)",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(SmsTemplate.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Update sms template by id
            * Description: Update sms template by id
            **/
            public func updateSmsTemplateById(
                id: String,
                body: SmsTemplateReq,
                onResponse: @escaping (_ response: SmsTemplateRes?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sms/templates/\(id)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(SmsTemplateRes.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Delete sms template by id
            * Description: Delete sms template by id
            **/
            public func deleteSmsTemplateById(
                id: String,
                
                onResponse: @escaping (_ response: SmsTemplateDeleteSuccessRes?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sms/templates/\(id)",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(SmsTemplateDeleteSuccessRes.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get system sms templates
            * Description: Get system sms templates
            **/
            public func getSystemSystemTemplates(
                
                onResponse: @escaping (_ response: SystemSmsTemplates?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sms/system-templates",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(SystemSmsTemplates.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            /**
            *
            * Summary: get paginator for getSystemSystemTemplates
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getSystemSystemTemplatesPaginator(
                
                ) -> Paginator<SystemSmsTemplates> {
                let pageSize = 20
                let paginator = Paginator<SystemSmsTemplates>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getSystemSystemTemplates(
                            
                            
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
        
        
            
        public class Share {        
            var config: PlatformConfig
            var companyId: String
            var applicationId: String

            init(config: PlatformConfig, applicationId: String) {
                self.config = config
                self.companyId = config.companyId
                self.applicationId = applicationId
            }
            
            
            /**
            *
            * Summary: Create short link
            * Description: Create short link
            **/
            public func createShortLink(
                body: ShortLinkReq,
                onResponse: @escaping (_ response: ShortLinkRes?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/share/v1.0/company/\(companyId)/application/\(applicationId)/links/short-link",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(ShortLinkRes.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get short links
            * Description: Get short links
            **/
            public func getShortLinks(
                pageNo: String?,
                pageSize: String?,
                createdBy: String?,
                active: String?,
                q: String?,
                
                onResponse: @escaping (_ response: ShortLinkList?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:] 
                
                if let value = pageNo {
                    xQuery["page_no"] = value
                }
                
                if let value = pageSize {
                    xQuery["page_size"] = value
                }
                
                if let value = createdBy {
                    xQuery["created_by"] = value
                }
                
                if let value = active {
                    xQuery["active"] = value
                }
                
                if let value = q {
                    xQuery["q"] = value
                }
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/share/v1.0/company/\(companyId)/application/\(applicationId)/links/short-link",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(ShortLinkList.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get short link by hash
            * Description: Get short link by hash
            **/
            public func getShortLinkByHash(
                hash: String,
                
                onResponse: @escaping (_ response: ShortLinkRes?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/share/v1.0/company/\(companyId)/application/\(applicationId)/links/shortLink/\(hash)",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(ShortLinkRes.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Update short link by id
            * Description: Update short link by id
            **/
            public func updateShortLinkById(
                id: String,
                
                onResponse: @escaping (_ response: ShortLinkRes?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "patch",
                    url: "/service/platform/share/v1.0/company/\(companyId)/application/\(applicationId)/links/shortLink/\(id)",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(ShortLinkRes.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
        }
        
        
            
        public class Cart {        
            var config: PlatformConfig
            var companyId: String
            var applicationId: String

            init(config: PlatformConfig, applicationId: String) {
                self.config = config
                self.companyId = config.companyId
                self.applicationId = applicationId
            }
            
            
            /**
            *
            * Summary: Get with single coupon details or coupon list
            * Description: Get coupon list with pagination
            **/
            public func getCoupons(
                pageNo: Int?,
                pageSize: Int?,
                isArchived: Bool?,
                title: String?,
                isPublic: Bool?,
                isDisplay: Bool?,
                typeSlug: String?,
                code: String?,
                
                onResponse: @escaping (_ response: CouponsResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:] 
                
                if let value = pageNo {
                    xQuery["page_no"] = value
                }
                
                if let value = pageSize {
                    xQuery["page_size"] = value
                }
                
                if let value = isArchived {
                    xQuery["is_archived"] = value
                }
                
                if let value = title {
                    xQuery["title"] = value
                }
                
                if let value = isPublic {
                    xQuery["is_public"] = value
                }
                
                if let value = isDisplay {
                    xQuery["is_display"] = value
                }
                
                if let value = typeSlug {
                    xQuery["type_slug"] = value
                }
                
                if let value = code {
                    xQuery["code"] = value
                }
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/coupon",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(CouponsResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            /**
            *
            * Summary: get paginator for getCoupons
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getCouponsPaginator(
                pageSize: Int?,
                isArchived: Bool?,
                title: String?,
                isPublic: Bool?,
                isDisplay: Bool?,
                typeSlug: String?,
                code: String?
                
                ) -> Paginator<CouponsResponse> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<CouponsResponse>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getCoupons(
                            
                            pageNo: paginator.pageNo
                            ,
                            pageSize: paginator.pageSize
                            ,
                            isArchived: isArchived,
                            title: title,
                            isPublic: isPublic,
                            isDisplay: isDisplay,
                            typeSlug: typeSlug,
                            code: code
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
            * Summary: Create new coupon
            * Description: Create new coupon
            **/
            public func createCoupon(
                body: CouponAdd,
                onResponse: @escaping (_ response: SuccessMessage?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/coupon",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(SuccessMessage.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get with single coupon details or coupon list
            * Description: Get single coupon details with `id` in path param
            **/
            public func getCouponById(
                id: String,
                
                onResponse: @escaping (_ response: CouponUpdate?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/coupon/\(id)",
                    query: nil,
                    body: nil,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(CouponUpdate.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Update existing coupon configuration
            * Description: Update coupon with id sent in `id`
            **/
            public func updateCoupon(
                id: String,
                body: CouponUpdate,
                onResponse: @escaping (_ response: SuccessMessage?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/coupon/\(id)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(SuccessMessage.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Update coupon archive state and schedule
            * Description: Update archive/unarchive and change schedule for coupon
            **/
            public func updateCouponPartially(
                id: String,
                body: CouponPartialUpdate,
                onResponse: @escaping (_ response: SuccessMessage?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "patch",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/coupon/\(id)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(SuccessMessage.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
        }
        
        
    }
}