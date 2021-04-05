


public class PlatformClient {
    public let config: PlatformConfig

    public let lead: Lead

    public let theme: Theme

    public let user: User

    public let content: Content

    public let payment: Payment

    public let order: Order

    public let companyProfile: CompanyProfile

    public let assets: Assets

    public let share: Share

    public let inventory: Inventory

    public let configuration: Configuration

    public let cart: Cart

    public let marketplaces: Marketplaces

    public let analytics: Analytics

    public init(config: PlatformConfig) {
        self.config = config
        
        lead = Lead(config: config)
        
        theme = Theme(config: config)
        
        user = User(config: config)
        
        content = Content(config: config)
        
        payment = Payment(config: config)
        
        order = Order(config: config)
        
        companyProfile = CompanyProfile(config: config)
        
        assets = Assets(config: config)
        
        share = Share(config: config)
        
        inventory = Inventory(config: config)
        
        configuration = Configuration(config: config)
        
        cart = Cart(config: config)
        
        marketplaces = Marketplaces(config: config)
        
        analytics = Analytics(config: config)
        
    }
    
    
    public class Lead {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        /**
        *
        * Summary: Gets the list of company level tickets and/or ticket filters depending on query params
        * Description: Gets the list of company level tickets and/or ticket filters
        **/
        public func getTickets(
            items: Bool?,
            filters: Bool?,
            q: String?,
            status: String?,
            priority: String?,
            category: String?,
            pageNo: Int?,
            pageSize: Int?,
            
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
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
            if let value = pageSize {
                xQuery["page_size"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/lead/v1.0/company/\(companyId)/ticket",
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
        * Summary: get paginator for getTickets
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getTicketsPaginator(
            items: Bool?,
            filters: Bool?,
            q: String?,
            status: String?,
            priority: String?,
            category: String?,
            pageSize: Int?
            
            ) -> Paginator<TicketList> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<TicketList>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getTickets(
                        
                        items: items,
                        filters: filters,
                        q: q,
                        status: status,
                        priority: priority,
                        category: category,
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
        * Summary: Creates a company level ticket
        * Description: Creates a company level ticket
        **/
        public func createTicket(
            body: AddTicketPayload,
            onResponse: @escaping (_ response: Ticket?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/lead/v1.0/company/\(companyId)/ticket",
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
        * Summary: Retreives ticket details of a company level ticket with ticket ID
        * Description: Retreives ticket details of a company level ticket
        **/
        public func getTicket(
            ticketId: String,
            
            onResponse: @escaping (_ response: Ticket?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/lead/v1.0/company/\(companyId)/ticket/\(ticketId)",
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
        * Summary: Edits ticket details of a company level ticket
        * Description: Edits ticket details of a company level ticket such as status, priority, category, tags, attachments, assigne & ticket content changes
        **/
        public func editTicket(
            ticketId: String,
            body: EditTicketPayload,
            onResponse: @escaping (_ response: Ticket?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/platform/lead/v1.0/company/\(companyId)/ticket/\(ticketId)",
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
        * Summary: Create history for specific company level ticket
        * Description: Create history for specific company level ticket, this history is seen on ticket detail page, this can be comment, log or rating.
        **/
        public func createHistory(
            ticketId: String,
            body: TicketHistoryPayload,
            onResponse: @escaping (_ response: TicketHistory?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/lead/v1.0/company/\(companyId)/ticket/\(ticketId)/history",
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
        * Summary: Gets history list for specific company level ticket
        * Description: Gets history list for specific company level ticket, this history is seen on ticket detail page, this can be comment, log or rating.
        **/
        public func getTicketHistory(
            ticketId: String,
            
            onResponse: @escaping (_ response: TicketHistoryList?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/lead/v1.0/company/\(companyId)/ticket/\(ticketId)/history",
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
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    public class Theme {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    public class User {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        
        
        
    }
    
    
    
    public class Content {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
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
    
    
    
    public class Share {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        
        
        
    }
    
    
    
    public class Inventory {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        /**
        *
        * Summary: Get Job Configs For A Company
        * Description: REST Endpoint that returns all job configs for a company
        **/
        public func getJobsByCompany(
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: ResponseEnvelopeListJobConfigRawDTO?, _ error: FDKError?) -> Void
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
                url: "/v1.0/company/\(companyId)/jobs",
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
                        
                        let response = Utility.decode(ResponseEnvelopeListJobConfigRawDTO.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Updates An Existing Job Config
        * Description: REST Endpoint that updates a job config
        **/
        public func updateJob(
            xUserData: String?,
            body: JobConfigDTO,
            onResponse: @escaping (_ response: ResponseEnvelopeString?, _ error: FDKError?) -> Void
        ) {
             
            
            var xHeaders: [(key: String, value: String)] = [] 
            
            if let value = xUserData {
                xHeaders.append((key: "x-user-data", value: value))
            }
            
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/v1.0/company/\(companyId)/jobs",
                query: nil,
                body: body.dictionary,
                headers: xHeaders,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ResponseEnvelopeString.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Creates A New Job Config
        * Description: REST Endpoint that creates a new job config
        **/
        public func createJob(
            xUserData: String?,
            body: JobConfigDTO,
            onResponse: @escaping (_ response: ResponseEnvelopeString?, _ error: FDKError?) -> Void
        ) {
             
            
            var xHeaders: [(key: String, value: String)] = [] 
            
            if let value = xUserData {
                xHeaders.append((key: "x-user-data", value: value))
            }
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/v1.0/company/\(companyId)/jobs",
                query: nil,
                body: body.dictionary,
                headers: xHeaders,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        
                        let response = Utility.decode(ResponseEnvelopeString.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get Job Configs By Company And Integration
        * Description: REST Endpoint that returns all job configs by company And integration
        **/
        public func getJobByCompanyAndIntegration(
            integrationId: String,
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: ResponseEnvelopeListJobConfigDTO?, _ error: FDKError?) -> Void
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
                url: "/v1.0/company/\(companyId)/jobs/integration/\(integrationId)",
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
                        
                        let response = Utility.decode(ResponseEnvelopeListJobConfigDTO.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get Job Configs Defaults
        * Description: REST Endpoint that returns default fields job configs by company And integration
        **/
        public func getJobConfigDefaults(
            
            onResponse: @escaping (_ response: ResponseEnvelopeJobConfigDTO?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/v1.0/company/\(companyId)/jobs/defaults",
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
                        
                        let response = Utility.decode(ResponseEnvelopeJobConfigDTO.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get Job Config By Code
        * Description: REST Endpoint that returns job config by code
        **/
        public func getJobByCode(
            code: String,
            
            onResponse: @escaping (_ response: ResponseEnvelopeJobConfigDTO?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/v1.0/company/\(companyId)/jobs/code/\(code)",
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
                        
                        let response = Utility.decode(ResponseEnvelopeJobConfigDTO.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get Job Codes By Company And Integration
        * Description: REST Endpoint that returns all job codes by company And integration
        **/
        public func getJobCodesByCompanyAndIntegration(
            integrationId: String,
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: ResponseEnvelopeListJobConfigListDTO?, _ error: FDKError?) -> Void
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
                url: "/v1.0/company/\(companyId)/jobs/code/integration/\(integrationId)",
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
                        
                        let response = Utility.decode(ResponseEnvelopeListJobConfigListDTO.self, from: data)
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
    
    
    
    public class Cart {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
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
        public func updateChannelInventoryConfig(
            channel: String,
            validateCred: String?,
            body: InventoryConfig,
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
        
        public let content: Content
        
        public let payment: Payment
        
        public let order: Order
        
        public let companyProfile: CompanyProfile
        
        public let assets: Assets
        
        public let share: Share
        
        public let inventory: Inventory
        
        public let configuration: Configuration
        
        public let cart: Cart
        
        public let marketplaces: Marketplaces
        
        public let analytics: Analytics
        
        
        public init(applicationId: String, config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
            self.applicationId = applicationId

            
            lead = Lead(config: config, applicationId: applicationId)
            
            theme = Theme(config: config, applicationId: applicationId)
            
            user = User(config: config, applicationId: applicationId)
            
            content = Content(config: config, applicationId: applicationId)
            
            payment = Payment(config: config, applicationId: applicationId)
            
            order = Order(config: config, applicationId: applicationId)
            
            companyProfile = CompanyProfile(config: config, applicationId: applicationId)
            
            assets = Assets(config: config, applicationId: applicationId)
            
            share = Share(config: config, applicationId: applicationId)
            
            inventory = Inventory(config: config, applicationId: applicationId)
            
            configuration = Configuration(config: config, applicationId: applicationId)
            
            cart = Cart(config: config, applicationId: applicationId)
            
            marketplaces = Marketplaces(config: config, applicationId: applicationId)
            
            analytics = Analytics(config: config, applicationId: applicationId)
            
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
        
        
            
        public class Content {        
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
            * Summary: Get annoucements list
            * Description: Get list of announcements
            **/
            public func getAnnouncementsList(
                
                onResponse: @escaping (_ response: GetAnnouncementListSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/announcements",
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
                        
                        let response = Utility.decode(GetAnnouncementListSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Create an annoucement
            * Description: Create an announcement
            **/
            public func createAnnouncement(
                body: AdminAnnouncementSchema,
                onResponse: @escaping (_ response: CreateAnnouncementSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/announcements",
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
                        
                        let response = Utility.decode(CreateAnnouncementSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get annoucement by id
            * Description: Get announcement by id
            **/
            public func getAnnouncementById(
                announcementId: String,
                
                onResponse: @escaping (_ response: AdminAnnouncementSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/announcements/\(announcementId)",
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
                        
                        let response = Utility.decode(AdminAnnouncementSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Update an annoucement
            * Description: Update an announcement
            **/
            public func updateAnnouncement(
                announcementId: String,
                body: AdminAnnouncementSchema,
                onResponse: @escaping (_ response: CreateAnnouncementSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/announcements/\(announcementId)",
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
                        
                        let response = Utility.decode(CreateAnnouncementSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Update schedule or published status of an annoucement
            * Description: Update schedule or published status of an announcement
            **/
            public func updateAnnouncementSchedule(
                announcementId: String,
                body: ScheduleSchema,
                onResponse: @escaping (_ response: CreateAnnouncementSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "patch",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/announcements/\(announcementId)",
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
                        
                        let response = Utility.decode(CreateAnnouncementSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Delete annoucement by id
            * Description: Delete announcement by id
            **/
            public func deleteAnnouncement(
                announcementId: String,
                
                onResponse: @escaping (_ response: CreateAnnouncementSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/announcements/\(announcementId)",
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
                        
                        let response = Utility.decode(CreateAnnouncementSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Create blog
            * Description: Use this to create a blog.
            **/
            public func createBlog(
                body: BlogRequest,
                onResponse: @escaping (_ response: BlogSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/blogs/",
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
                        
                        let response = Utility.decode(BlogSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get blogs
            * Description: Use this to get blogs.
            **/
            public func getBlogs(
                
                onResponse: @escaping (_ response: BlogSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/blogs/",
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
                        
                        let response = Utility.decode(BlogSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Update blog
            * Description: Use this to update blog.
            **/
            public func updateBlog(
                id: String,
                body: BlogRequest,
                onResponse: @escaping (_ response: BlogSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/blogs/\(id)",
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
                        
                        let response = Utility.decode(BlogSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Delete blogs
            * Description: Use this to delete blogs.
            **/
            public func deleteBlog(
                id: String,
                
                onResponse: @escaping (_ response: BlogSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/blogs/\(id)",
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
                        
                        let response = Utility.decode(BlogSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get components by component Id
            * Description: The endpoint fetches the component by component Id
            **/
            public func getComponentById(
                slug: String,
                
                onResponse: @escaping (_ response: BlogSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/blogs/\(slug)",
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
                        
                        let response = Utility.decode(BlogSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get FAQ categories list
            * Description: Get list of FAQ categories
            **/
            public func getFaqCategories(
                
                onResponse: @escaping (_ response: GetFaqCategoriesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/faq/categories",
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
                        
                        let response = Utility.decode(GetFaqCategoriesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get FAQ category by slug or id
            * Description: Get FAQ category by slug or id
            **/
            public func getFaqCategoryBySlugOrId(
                idOrSlug: String,
                
                onResponse: @escaping (_ response: GetFaqCategoryByIdOrSlugSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/faq/category/\(idOrSlug)",
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
                        
                        let response = Utility.decode(GetFaqCategoryByIdOrSlugSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Creates a FAQ category
            * Description: Add Faq Category
            **/
            public func createFaqCategory(
                body: CreateFaqCategoryRequestSchema,
                onResponse: @escaping (_ response: CreateFaqCategorySchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/faq/category",
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
                        
                        let response = Utility.decode(CreateFaqCategorySchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Updates a FAQ category
            * Description: Update Faq Category
            **/
            public func updateFaqCategory(
                id: String,
                body: UpdateFaqCategoryRequestSchema,
                onResponse: @escaping (_ response: CreateFaqCategorySchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/faq/category/\(id)",
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
                        
                        let response = Utility.decode(CreateFaqCategorySchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Deletes a FAQ category
            * Description: Delete Faq Category
            **/
            public func deleteFaqCategory(
                id: String,
                
                onResponse: @escaping (_ response: FaqSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/faq/category/\(id)",
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
                        
                        let response = Utility.decode(FaqSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get FAQs of a Faq Category id or slug
            * Description: Get FAQs of a Faq Category `id` or `slug`
            **/
            public func getFaqsByCategoryIdOrSlug(
                idOrSlug: String,
                
                onResponse: @escaping (_ response: GetFaqSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/faq/category/\(idOrSlug)/faqs",
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
                        
                        let response = Utility.decode(GetFaqSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Creates FAQs for category whose `id` is specified
            * Description: Creates FAQs for category whose `id` is specified
            **/
            public func addFaq(
                categoryId: String,
                body: CreateFaqSchema,
                onResponse: @escaping (_ response: CreateFaqResponseSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/faq/category/\(categoryId)/faqs",
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
                        
                        let response = Utility.decode(CreateFaqResponseSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Updates FAQ
            * Description: Updates FAQ
            **/
            public func updateFaq(
                categoryId: String,
                faqId: String,
                body: CreateFaqSchema,
                onResponse: @escaping (_ response: CreateFaqResponseSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/faq/category/\(categoryId)/faq/\(faqId)",
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
                        
                        let response = Utility.decode(CreateFaqResponseSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Delete FAQ
            * Description: Delete FAQ
            **/
            public func deleteFaq(
                categoryId: String,
                faqId: String,
                
                onResponse: @escaping (_ response: CreateFaqResponseSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/faq/category/\(categoryId)/faq/\(faqId)",
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
                        
                        let response = Utility.decode(CreateFaqResponseSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get frequently asked question
            * Description: Get frequently asked questions list. These will be helpful for users to using website.
            **/
            public func getFaqByIdOrSlug(
                idOrSlug: String,
                
                onResponse: @escaping (_ response: CreateFaqResponseSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/faq/\(idOrSlug)",
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
                        
                        let response = Utility.decode(CreateFaqResponseSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get landing-pages
            * Description: Use this to get landing-pages.
            **/
            public func getLandingPages(
                
                onResponse: @escaping (_ response: LandingPageGetResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/landing-page/",
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
                        
                        let response = Utility.decode(LandingPageGetResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Create landing-page
            * Description: Use this to create landing-page.
            **/
            public func createLandingPage(
                body: LandingPageRequest,
                onResponse: @escaping (_ response: LandingPageSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/landing-page/",
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
                        
                        let response = Utility.decode(LandingPageSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Update landing-page
            * Description: Use this to update landing-page.
            **/
            public func updateLandingPage(
                id: String,
                body: LandingPageRequest,
                onResponse: @escaping (_ response: LandingPageSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/landingPage/\(id)",
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
                        
                        let response = Utility.decode(LandingPageSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Delete landing-page
            * Description: Use this to delete landing-page.
            **/
            public func deleteLandingPage(
                id: String,
                
                onResponse: @escaping (_ response: LandingPageSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/landingPage/\(id)",
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
                        
                        let response = Utility.decode(LandingPageSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get legal information
            * Description: Get legal information of application, which includes policy, Terms and Conditions, and FAQ information of application.
            **/
            public func getLegalInformation(
                
                onResponse: @escaping (_ response: ApplicationLegal?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/legal",
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
                        
                        let response = Utility.decode(ApplicationLegal.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Save legal information
            * Description: Save legal information of application, which includes Policy, Terms and Conditions, and FAQ information of application.
            **/
            public func updateLegalInformation(
                body: ApplicationLegal,
                onResponse: @escaping (_ response: ApplicationLegal?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/legal",
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
                        
                        let response = Utility.decode(ApplicationLegal.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get navigations
            * Description: Use this to get navigations.
            **/
            public func getNavigations(
                devicePlatform: String,
                
                onResponse: @escaping (_ response: NavigationGetResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:] 
                xQuery["device_platform"] = devicePlatform
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/navigations/",
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
                        
                        let response = Utility.decode(NavigationGetResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Create navigation
            * Description: Use this to create navigation.
            **/
            public func createNavigation(
                body: NavigationRequest,
                onResponse: @escaping (_ response: NavigationSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/navigations/",
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
                        
                        let response = Utility.decode(NavigationSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get default navigations
            * Description: Use this to get default navigations.
            **/
            public func getDefaultNavigations(
                
                onResponse: @escaping (_ response: DefaultNavigationResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/navigations/default",
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
                        
                        let response = Utility.decode(DefaultNavigationResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get navigation by slug
            * Description: Use this to get navigation by slug.
            **/
            public func getNavigationBySlug(
                slug: String,
                devicePlatform: String,
                
                onResponse: @escaping (_ response: NavigationSchema?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:] 
                xQuery["device_platform"] = devicePlatform
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/navigations/\(slug)",
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
                        
                        let response = Utility.decode(NavigationSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Update navigation
            * Description: Use this to update navigation.
            **/
            public func updateNavigation(
                id: String,
                body: NavigationRequest,
                onResponse: @escaping (_ response: NavigationSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/navigations/\(id)",
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
                        
                        let response = Utility.decode(NavigationSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Delete navigation
            * Description: Use this to delete navigation.
            **/
            public func deleteNavigation(
                id: String,
                
                onResponse: @escaping (_ response: NavigationSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/navigations/\(id)",
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
                        
                        let response = Utility.decode(NavigationSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get page meta
            * Description: Use this to get Page Meta.
            **/
            public func getPageMeta(
                
                onResponse: @escaping (_ response: PageMetaSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/pages/meta",
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
                        
                        let response = Utility.decode(PageMetaSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get page spec
            * Description: Use this to get page spec.
            **/
            public func getPageSpec(
                
                onResponse: @escaping (_ response: PageSpec?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/pages/spec",
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
                        
                        let response = Utility.decode(PageSpec.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Create page
            * Description: Use this to create a page.
            **/
            public func createPage(
                body: PageRequest,
                onResponse: @escaping (_ response: PageSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/pages/",
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
                        
                        let response = Utility.decode(PageSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get pages
            * Description: Use this to get pages.
            **/
            public func getPages(
                
                onResponse: @escaping (_ response: PageGetResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/pages/",
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
                        
                        let response = Utility.decode(PageGetResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Create page preview
            * Description: Use this to create a page preview.
            **/
            public func createPagePreview(
                body: PageRequest,
                onResponse: @escaping (_ response: PageSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/pages/preview/",
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
                        
                        let response = Utility.decode(PageSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Update page
            * Description: Use this to update page.
            **/
            public func updatePagePreview(
                slug: String,
                body: PagePublishRequest,
                onResponse: @escaping (_ response: PageSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/pages/publish/\(slug)",
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
                        
                        let response = Utility.decode(PageSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Update page
            * Description: Use this to update page.
            **/
            public func updatePage(
                id: String,
                body: PageRequest,
                onResponse: @escaping (_ response: PageSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/pages/\(id)",
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
                        
                        let response = Utility.decode(PageSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Delete page
            * Description: Use this to delete page.
            **/
            public func deletePage(
                id: String,
                
                onResponse: @escaping (_ response: PageSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/pages/\(id)",
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
                        
                        let response = Utility.decode(PageSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get pages by component Id
            * Description: The endpoint fetches the component by component Id
            **/
            public func getPageBySlug(
                slug: String,
                
                onResponse: @escaping (_ response: PageSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/pages/\(slug)",
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
                        
                        let response = Utility.decode(PageSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get seo of application
            * Description: Get seo of application
            **/
            public func getSeoConfiguration(
                
                onResponse: @escaping (_ response: Seo?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/seo",
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
                        
                        let response = Utility.decode(Seo.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Update seo of application
            * Description: Update seo of application
            **/
            public func updateSeoConfiguration(
                body: Seo,
                onResponse: @escaping (_ response: Seo?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/seo",
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
                        
                        let response = Utility.decode(Seo.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get slideshows
            * Description: Use this to get slideshows.
            **/
            public func getSlideshows(
                devicePlatform: String,
                
                onResponse: @escaping (_ response: SlideshowGetResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:] 
                xQuery["device_platform"] = devicePlatform
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/slideshows/",
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
                        
                        let response = Utility.decode(SlideshowGetResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Create slideshow
            * Description: Use this to create slideshow.
            **/
            public func createSlideshow(
                body: SlideshowRequest,
                onResponse: @escaping (_ response: SlideshowSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/slideshows/",
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
                        
                        let response = Utility.decode(SlideshowSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get slideshow by slug
            * Description: Use this to get slideshow by slug.
            **/
            public func getSlideshowBySlug(
                slug: String,
                devicePlatform: String,
                
                onResponse: @escaping (_ response: SlideshowSchema?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:] 
                xQuery["device_platform"] = devicePlatform
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/slideshows/\(slug)",
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
                        
                        let response = Utility.decode(SlideshowSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Update slideshow
            * Description: Use this to update slideshow.
            **/
            public func updateSlideshow(
                id: String,
                body: SlideshowRequest,
                onResponse: @escaping (_ response: SlideshowSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/slideshows/\(id)",
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
                        
                        let response = Utility.decode(SlideshowSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Delete slideshow
            * Description: Use this to delete slideshow.
            **/
            public func deleteSlideshow(
                id: String,
                
                onResponse: @escaping (_ response: SlideshowSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/slideshows/\(id)",
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
                        
                        let response = Utility.decode(SlideshowSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get support information
            * Description: Get contact details for customer support. Including emails and phone numbers
            **/
            public func getSupportInformation(
                
                onResponse: @escaping (_ response: Support?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/support",
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
                        
                        let response = Utility.decode(Support.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Update support data of application
            * Description: Update support data of application
            **/
            public func updateSupportInformation(
                body: Support,
                onResponse: @escaping (_ response: Support?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/support",
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
                        
                        let response = Utility.decode(Support.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Creates Tag
            * Description: Create tags
            **/
            public func createInjectableTag(
                body: CreateTagRequestSchema,
                onResponse: @escaping (_ response: TagsSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/tags",
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
                        
                        let response = Utility.decode(TagsSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Updates a Tag
            * Description: Update tag
            **/
            public func updateInjectableTag(
                body: CreateTagRequestSchema,
                onResponse: @escaping (_ response: TagsSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/tags",
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
                        
                        let response = Utility.decode(TagsSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Delete tags for application
            * Description: Delete tags for application
            **/
            public func deleteAllInjectableTags(
                
                onResponse: @escaping (_ response: TagsSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/tags",
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
                        
                        let response = Utility.decode(TagsSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get tags for application
            * Description: Get tags for application
            **/
            public func getInjectableTags(
                
                onResponse: @escaping (_ response: TagsSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/tags",
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
                        
                        let response = Utility.decode(TagsSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Adds a Tag
            * Description: Add tag
            **/
            public func addInjectableTag(
                body: CreateTagRequestSchema,
                onResponse: @escaping (_ response: TagsSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/tags/add",
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
                        
                        let response = Utility.decode(TagsSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Removes a Tag
            * Description: Remove a particular tag
            **/
            public func removeInjectableTag(
                body: RemoveHandpickedSchema,
                onResponse: @escaping (_ response: TagsSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/tags/remove/handpicked",
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
                        
                        let response = Utility.decode(TagsSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Edits a Tag by Id
            * Description: Edits a particular tag
            **/
            public func editInjectableTag(
                tagId: String,
                body: UpdateHandpickedSchema,
                onResponse: @escaping (_ response: TagsSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/tags/edit/handpicked/\(tagId)",
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
                        
                        let response = Utility.decode(TagsSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
        }
        
        
            
        public class Payment {        
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
            * Summary: Get All Brand Payment Gateway Config Secret
            * Description: Get All Brand Payment Gateway Config Secret
            **/
            public func getBrandPaymentGatewayConfig(
                
                onResponse: @escaping (_ response: PaymentGatewayConfigResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/payment/v1.0/company/\(companyId)/application/\(applicationId)/aggregator/request",
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
                        
                        let response = Utility.decode(PaymentGatewayConfigResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Save Config Secret For Brand Payment Gateway
            * Description: Save Config Secret For Brand Payment Gateway
            **/
            public func saveBrandPaymentGatewayConfig(
                body: PaymentGatewayConfigRequest,
                onResponse: @escaping (_ response: PaymentGatewayToBeReviewed?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/payment/v1.0/company/\(companyId)/application/\(applicationId)/aggregator/request",
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
                        
                        let response = Utility.decode(PaymentGatewayToBeReviewed.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Save Config Secret For Brand Payment Gateway
            * Description: Save Config Secret For Brand Payment Gateway
            **/
            public func updateBrandPaymentGatewayConfig(
                body: PaymentGatewayConfigRequest,
                onResponse: @escaping (_ response: PaymentGatewayToBeReviewed?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/payment/v1.0/company/\(companyId)/application/\(applicationId)/aggregator/request",
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
                        
                        let response = Utility.decode(PaymentGatewayToBeReviewed.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get All Valid Payment Options
            * Description: Use this API to get Get All Valid Payment Options for making payment
            **/
            public func getPaymentModeRoutes(
                refresh: Bool,
                requestType: String,
                
                onResponse: @escaping (_ response: PaymentOptionsResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:] 
                xQuery["refresh"] = refresh
                xQuery["request_type"] = requestType
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/payment/v1.0/company/\(companyId)/application/\(applicationId)/payment/options",
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
                        
                        let response = Utility.decode(PaymentOptionsResponse.self, from: data)
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
            var applicationId: String

            init(config: PlatformConfig, applicationId: String) {
                self.config = config
                self.companyId = config.companyId
                self.applicationId = applicationId
            }
            
            
            
            
            
            
            /**
            *
            * Summary: Track Shipment by shipment id, for application based on application Id
            * Description: Shipment Track
            **/
            public func trackShipmentPlatform(
                shipmentId: String,
                
                onResponse: @escaping (_ response: PlatformShipmentTrack?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/order/v1.0/company/\(companyId)/application/\(applicationId)/orders/shipments/\(shipmentId)/track",
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
                        
                        let response = Utility.decode(PlatformShipmentTrack.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Track Order by order id, for application based on application Id
            * Description: Order Track
            **/
            public func trackOrder(
                orderId: String,
                
                onResponse: @escaping (_ response: PlatformOrderTrack?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/order/v1.0/company/\(companyId)/application/\(applicationId)/orders/\(orderId)/track",
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
                        
                        let response = Utility.decode(PlatformOrderTrack.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get all failed orders application wise
            * Description: Failed Orders
            **/
            public func failedOrders(
                
                onResponse: @escaping (_ response: FailedOrders?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/order/v1.0/company/\(companyId)/application/\(applicationId)/orders/failed",
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
                        
                        let response = Utility.decode(FailedOrders.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Reprocess order by order id
            * Description: Order Reprocess
            **/
            public func reprocessOrder(
                orderId: String,
                
                onResponse: @escaping (_ response: UpdateOrderReprocessResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/order/v1.0/company/\(companyId)/application/\(applicationId)/orders/\(orderId)/reprocess",
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
                        
                        let response = Utility.decode(UpdateOrderReprocessResponse.self, from: data)
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
            var applicationId: String

            init(config: PlatformConfig, applicationId: String) {
                self.config = config
                self.companyId = config.companyId
                self.applicationId = applicationId
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
        }
        
        
            
        public class Assets {        
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
            * Summary: This operation initiates upload and returns storage link which is valid for 30 Minutes. You can use that storage link to make subsequent upload request with file buffer or blob.
            * Description: Uploads an arbitrarily sized buffer or blob.

It has three Major Steps:
* Start
* Upload
* Complete

### Start
Initiates the assets upload using `appStartUpload`.
It returns the storage link in response.

### Upload
Use the storage link to upload a file (Buffer or Blob) to the File Storage.
Make a `PUT` request on storage link received from `appStartUpload` api with file (Buffer or Blob) as a request body.

### Complete
After successfully upload, call `appCompleteUpload` api to complete the upload process.
This operation will return the url for the uploaded file.

            **/
            public func appStartUpload(
                namespace: String,
                body: StartRequest,
                onResponse: @escaping (_ response: StartResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/assets/v1.0/company/\(companyId)/application/\(applicationId)/namespaces/\(namespace)/upload/start/",
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
Initiates the assets upload using `appStartUpload`.
It returns the storage link in response.

### Upload
Use the storage link to upload a file (Buffer or Blob) to the File Storage.
Make a `PUT` request on storage link received from `appStartUpload` api with file (Buffer or Blob) as a request body.

### Complete
After successfully upload, call `appCompleteUpload` api to complete the upload process.
This operation will return the url for the uploaded file.

            **/
            public func appCompleteUpload(
                namespace: String,
                body: StartResponse,
                onResponse: @escaping (_ response: CompleteResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/assets/v1.0/company/\(companyId)/application/\(applicationId)/namespaces/\(namespace)/upload/complete/",
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
            * Summary: Copy Files
            * Description: Copy Files
            **/
            public func appCopyFiles(
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
                    url: "/service/platform/assets/v1.0/company/\(companyId)/application/\(applicationId)/uploads/copy/",
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
            public func appBrowse(
                namespace: String,
                
                onResponse: @escaping (_ response: BrowseResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/assets/v1.0/company/\(companyId)/application/\(applicationId)/namespaces/\(namespace)/browse/",
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
            * Summary: get paginator for appBrowse
            * Description: fetch the next page by calling .next(...) function
            **/
            public func appBrowsePaginator(
                namespace: String
                
                ) -> Paginator<BrowseResponse> {
                let pageSize = 20
                let paginator = Paginator<BrowseResponse>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.appBrowse(
                            
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
                    url: "/services/platform/share/v1.0/company/\(companyId)/application/\(applicationId)/links/shortLink/\(id)",
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
        
        
            
        public class Inventory {        
            var config: PlatformConfig
            var companyId: String
            var applicationId: String

            init(config: PlatformConfig, applicationId: String) {
                self.config = config
                self.companyId = config.companyId
                self.applicationId = applicationId
            }
            
            
            
            
            
            
            
            
        }
        
        
            
        public class Configuration {        
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
            * Summary: Get latest build config
            * Description: Get latest build config
            **/
            public func getBuildConfig(
                platformType: String,
                
                onResponse: @escaping (_ response: MobileAppConfiguration?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/build/\(platformType)/configuration",
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
                        
                        let response = Utility.decode(MobileAppConfiguration.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Update build config for next build
            * Description: Update build config for next build
            **/
            public func updateBuildConfig(
                platformType: String,
                body: MobileAppConfigRequest,
                onResponse: @escaping (_ response: MobileAppConfiguration?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/build/\(platformType)/configuration",
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
                        
                        let response = Utility.decode(MobileAppConfiguration.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get previous versions
            * Description: Get previous versions
            **/
            public func getPreviousVersions(
                platformType: String,
                
                onResponse: @escaping (_ response: BuildVersionHistory?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/build/\(platformType)/versions",
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
                        
                        let response = Utility.decode(BuildVersionHistory.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get features of application
            * Description: Get features of application
            **/
            public func getAppFeatures(
                
                onResponse: @escaping (_ response: AppFeatureResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/application/configuration/v1.0/company/\(companyId)/application/\(applicationId)/feature",
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
                        
                        let response = Utility.decode(AppFeatureResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Update features of application
            * Description: Update features of application
            **/
            public func updateAppFeatures(
                body: AppFeatureRequest,
                onResponse: @escaping (_ response: AppFeature?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/feature",
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
                        
                        let response = Utility.decode(AppFeature.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get basic application details
            * Description: Get basic application details like name
            **/
            public func getAppBasicDetails(
                
                onResponse: @escaping (_ response: ApplicationDetail?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/application/configuration/v1.0/company/\(companyId)/application/\(applicationId)/detail",
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
                        
                        let response = Utility.decode(ApplicationDetail.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Add or update application's basic details
            * Description: Add or update application's basic details
            **/
            public func updateAppBasicDetails(
                body: ApplicationDetail,
                onResponse: @escaping (_ response: ApplicationDetail?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/detail",
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
                        
                        let response = Utility.decode(ApplicationDetail.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get application information
            * Description: Get Application Current Information. This includes information about social links, address and contact information of company/seller/brand of the application.
            **/
            public func getAppContactInfo(
                
                onResponse: @escaping (_ response: ApplicationInformation?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/application/configuration/v1.0/company/\(companyId)/application/\(applicationId)/information",
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
                        
                        let response = Utility.decode(ApplicationInformation.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get application information
            * Description: Save Application Current Information. This includes information about social links, address and contact information of an application.
            **/
            public func updateAppContactInfo(
                body: ApplicationInformation,
                onResponse: @escaping (_ response: ApplicationInformation?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/information",
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
                        
                        let response = Utility.decode(ApplicationInformation.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get social tokens
            * Description: Get social tokens.
            **/
            public func getAppApiTokens(
                
                onResponse: @escaping (_ response: TokenResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/token",
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
                        
                        let response = Utility.decode(TokenResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Add social tokens
            * Description: Add social tokens.
            **/
            public func updateAppApiTokens(
                body: TokenResponse,
                onResponse: @escaping (_ response: TokenResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/token",
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
                        
                        let response = Utility.decode(TokenResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Application inventory enabled companies
            * Description: Application inventory enabled companies.
            **/
            public func getAppCompanies(
                
                onResponse: @escaping (_ response: CompaniesResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/companies",
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
                        
                        let response = Utility.decode(CompaniesResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Application inventory enabled stores
            * Description: Application inventory enabled stores.
            **/
            public func getAppStores(
                
                onResponse: @escaping (_ response: StoresResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/stores",
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
                        
                        let response = Utility.decode(StoresResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get application configuration
            * Description: Get application configuration for various features and data
            **/
            public func getInventoryConfig(
                
                onResponse: @escaping (_ response: ApplicationInventory?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/configuration",
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
                        
                        let response = Utility.decode(ApplicationInventory.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Update application configuration
            * Description: Update application configuration for various features and data
            **/
            public func updateInventoryConfig(
                body: ApplicationInventory,
                onResponse: @escaping (_ response: ApplicationInventory?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/configuration",
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
                        
                        let response = Utility.decode(ApplicationInventory.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Partially update application configuration
            * Description: Partially update application configuration for various features and data
            **/
            public func partiallyUpdateInventoryConfig(
                body: AppInventoryPartialUpdate,
                onResponse: @escaping (_ response: ApplicationInventory?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "patch",
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/configuration",
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
                        
                        let response = Utility.decode(ApplicationInventory.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get application enabled currency list
            * Description: Get application enabled currency list
            **/
            public func getAppCurrencyConfig(
                
                onResponse: @escaping (_ response: AppSupportedCurrency?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/currency",
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
                        
                        let response = Utility.decode(AppSupportedCurrency.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Add initial application supported currency
            * Description: Add initial application supported currency for various features and data. Default INR will be enabled.
            **/
            public func updateAppCurrencyConfig(
                body: AppSupportedCurrency,
                onResponse: @escaping (_ response: AppSupportedCurrency?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/currency",
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
                        
                        let response = Utility.decode(AppSupportedCurrency.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get ordering store by filter
            * Description: Get ordering store by filter
            **/
            public func getOrderingStoresByFilter(
                body: FilterOrderingStoreRequest,
                onResponse: @escaping (_ response: OrderingStores?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/ordering-store/stores/filter",
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
                        
                        let response = Utility.decode(OrderingStores.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Add/Update ordering store config
            * Description: Add/Update ordering store config.
            **/
            public func updateOrderingStoreConfig(
                body: OrderingStoreConfig,
                onResponse: @escaping (_ response: DeploymentMeta?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/ordering-store",
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
                        
                        let response = Utility.decode(DeploymentMeta.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get attached domain list
            * Description: Get attached domain list.
            **/
            public func getDomains(
                
                onResponse: @escaping (_ response: DomainsResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/domain",
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
                        
                        let response = Utility.decode(DomainsResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Add new domain to application
            * Description: Add new domain to application.
            **/
            public func addDomain(
                body: DomainAddRequest,
                onResponse: @escaping (_ response: Domain?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/domain",
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
                        
                        let response = Utility.decode(Domain.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Remove attached domain
            * Description: Remove attached domain.
            **/
            public func removeDomainById(
                id: String,
                
                onResponse: @escaping (_ response: SuccessMessageResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/domain/\(id)",
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
                        
                        let response = Utility.decode(SuccessMessageResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Change domain type
            * Description: Change a domain to Primary or Shortlink domain
            **/
            public func changeDomainType(
                body: UpdateDomainTypeRequest,
                onResponse: @escaping (_ response: DomainsResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/domain/set-domain",
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
                        
                        let response = Utility.decode(DomainsResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get domain connected status.
            * Description: Get domain connected status. Check if domain is live and mapped to appropriate IP to fynd servers.
            **/
            public func getDomainStatus(
                body: DomainStatusRequest,
                onResponse: @escaping (_ response: DomainStatusResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/domain/domain-status",
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
                        
                        let response = Utility.decode(DomainStatusResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            
            
            /**
            *
            * Summary: Get application data from id
            * Description: Get application data from id
            **/
            public func getApplicationById(
                
                onResponse: @escaping (_ response: Application?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)",
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
                        
                        let response = Utility.decode(Application.self, from: data)
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
            * Summary: Create new coupon
            * Description: Create new coupon
            **/
            public func createCoupon(
                body: CouponAdd,
                onResponse: @escaping (_ response: SuccessMessageResponse?, _ error: FDKError?) -> Void
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
                        
                        let response = Utility.decode(SuccessMessageResponse.self, from: data)
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
                onResponse: @escaping (_ response: SuccessMessageResponse?, _ error: FDKError?) -> Void
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
                        
                        let response = Utility.decode(SuccessMessageResponse.self, from: data)
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
                onResponse: @escaping (_ response: SuccessMessageResponse?, _ error: FDKError?) -> Void
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
            var applicationId: String

            init(config: PlatformConfig, applicationId: String) {
                self.config = config
                self.companyId = config.companyId
                self.applicationId = applicationId
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        }
        
        
            
        public class Analytics {        
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
            * Summary: Get statistics groups
            * Description: Get statistics groups
            **/
            public func getStatiscticsGroups(
                
                onResponse: @escaping (_ response: StatsGroups?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/analytics/v1.0/company/\(companyId)/application/\(applicationId)/stats/group",
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
                        
                        let response = Utility.decode(StatsGroups.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get statistics group components
            * Description: Get statistics group components
            **/
            public func getStatiscticsGroupComponents(
                groupName: String,
                
                onResponse: @escaping (_ response: StatsGroupComponents?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/analytics/v1.0/company/\(companyId)/application/\(applicationId)/stats/group/\(groupName)",
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
                        
                        let response = Utility.decode(StatsGroupComponents.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get component statistics csv
            * Description: Get component statistics csv
            **/
            public func getComponentStatsCSV(
                componentName: String,
                
                onResponse: @escaping (_ response: String?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/analytics/v1.0/company/\(companyId)/application/\(applicationId)/stats/component/\(componentName).csv",
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
            * Summary: Get component statistics pdf
            * Description: Get component statistics pdf
            **/
            public func getComponentStatsPDF(
                componentName: String,
                
                onResponse: @escaping (_ response: String?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/analytics/v1.0/company/\(companyId)/application/\(applicationId)/stats/component/\(componentName).pdf",
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
            * Summary: Get component statistics
            * Description: Get component statistics
            **/
            public func getComponentStats(
                componentName: String,
                
                onResponse: @escaping (_ response: StatsRes?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/analytics/v1.0/company/\(companyId)/application/\(applicationId)/stats/component/\(componentName)",
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
                        
                        let response = Utility.decode(StatsRes.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get abandon carts list
            * Description: Get abandon carts list
            **/
            public func getAbandonCartList(
                from: String,
                to: String,
                pageNo: String?,
                pageSize: String?,
                
                onResponse: @escaping (_ response: AbandonCartsList?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:] 
                xQuery["from"] = from
                xQuery["to"] = to
                
                if let value = pageNo {
                    xQuery["page_no"] = value
                }
                
                if let value = pageSize {
                    xQuery["page_size"] = value
                }
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/analytics/v1.0/company/\(companyId)/application/\(applicationId)/cart/abandon-cart",
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
                        
                        let response = Utility.decode(AbandonCartsList.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get abandon carts csv
            * Description: Get abandon carts csv
            **/
            public func getAbandonCartsCSV(
                from: String,
                to: String,
                
                onResponse: @escaping (_ response: String?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:] 
                xQuery["from"] = from
                xQuery["to"] = to
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/analytics/v1.0/company/\(companyId)/application/\(applicationId)/cart/abandon-cart.csv",
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
            * Summary: Get abandon carts details
            * Description: Get abandon cart details
            **/
            public func getAbandonCartDetail(
                cartId: String,
                
                onResponse: @escaping (_ response: AbandonCartDetail?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/analytics/v1.0/company/\(companyId)/application/\(applicationId)/cart/abandonCart/\(cartId)",
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
                        
                        let response = Utility.decode(AbandonCartDetail.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            
            
            
        }
        
        
    }
}