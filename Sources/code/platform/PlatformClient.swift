


public class PlatformClient {
    public let config: PlatformConfig

    public let lead: Lead

    public let billing: Billing

    public let communication: Communication

    public let payment: Payment

    public let order: Order

    public let catalog: Catalog

    public let companyProfile: CompanyProfile

    public let fileStorage: FileStorage

    public let inventory: Inventory

    public let configuration: Configuration

    public let marketplaces: Marketplaces

    public let analytics: Analytics

    public let discount: Discount

    public init(config: PlatformConfig) {
        self.config = config
        
        lead = Lead(config: config)
        
        billing = Billing(config: config)
        
        communication = Communication(config: config)
        
        payment = Payment(config: config)
        
        order = Order(config: config)
        
        catalog = Catalog(config: config)
        
        companyProfile = CompanyProfile(config: config)
        
        fileStorage = FileStorage(config: config)
        
        inventory = Inventory(config: config)
        
        configuration = Configuration(config: config)
        
        marketplaces = Marketplaces(config: config)
        
        analytics = Analytics(config: config)
        
        discount = Discount(config: config)
        
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    public class Billing {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        /**
        *
        * Summary: Get invoices
        * Description: Get invoices.
        **/
        public func getInvoices(
            
            onResponse: @escaping (_ response: Invoices?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/billing/v1.0/company/\(companyId)/invoice/list",
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
                        
                        let response = Utility.decode(Invoices.self, from: data)
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
        * Summary: Get invoice by id
        * Description: Get invoice by id.
        **/
        public func getInvoiceById(
            invoiceId: String,
            
            onResponse: @escaping (_ response: Invoice?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/billing/v1.0/company/\(companyId)/invoice/\(invoiceId)",
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
                        
                        let response = Utility.decode(Invoice.self, from: data)
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
        * Summary: Get subscription customer detail
        * Description: Get subscription customer detail.
        **/
        public func getCustomerDetail(
            
            onResponse: @escaping (_ response: SubscriptionCustomer?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/billing/v1.0/company/\(companyId)/subscription/customer-detail",
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
                        
                        let response = Utility.decode(SubscriptionCustomer.self, from: data)
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
        * Summary: Upsert subscription customer detail
        * Description: Upsert subscription customer detail.
        **/
        public func upsertCustomerDetail(
            body: SubscriptionCustomerCreate,
            onResponse: @escaping (_ response: SubscriptionCustomer?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/billing/v1.0/company/\(companyId)/subscription/customer-detail",
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
                        
                        let response = Utility.decode(SubscriptionCustomer.self, from: data)
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
        * Summary: Get current subscription detail
        * Description: If subscription is active then it will return is_enabled true and return subscription object. If subscription is not active then is_enabled false and message.

        **/
        public func getSubscription(
            
            onResponse: @escaping (_ response: SubscriptionStatus?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/billing/v1.0/company/\(companyId)/subscription/current",
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
                        
                        let response = Utility.decode(SubscriptionStatus.self, from: data)
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
        * Summary: Get subscription subscription limits
        * Description: Get subscription subscription limits.
        **/
        public func getFeatureLimitConfig(
            
            onResponse: @escaping (_ response: SubscriptionLimit?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/billing/v1.0/company/\(companyId)/subscription/current-limit",
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
                        
                        let response = Utility.decode(SubscriptionLimit.self, from: data)
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
        * Summary: Activate subscription
        * Description: It will activate subscription plan for customer
        **/
        public func activateSubscriptionPlan(
            body: SubscriptionActivateReq,
            onResponse: @escaping (_ response: SubscriptionActivateRes?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/billing/v1.0/company/\(companyId)/subscription/activate",
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
                        
                        let response = Utility.decode(SubscriptionActivateRes.self, from: data)
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
        * Summary: Cancel subscription
        * Description: It will cancel current active subscription.
        **/
        public func cancelSubscriptionPlan(
            body: CancelSubscriptionReq,
            onResponse: @escaping (_ response: CancelSubscriptionRes?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/billing/v1.0/company/\(companyId)/subscription/cancel",
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
                        
                        let response = Utility.decode(CancelSubscriptionRes.self, from: data)
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
    
    
    
    public class Communication {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: Get system notifications
        * Description: Get system notifications
        **/
        public func getSystemNotifications(
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: SystemNotifications?, _ error: FDKError?) -> Void
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
                url: "/service/platform/communication/v1.0/company/\(companyId)/notification/system-notifications/",
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
            pageSize: Int?
            
            ) -> Paginator<SystemNotifications> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<SystemNotifications>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getSystemNotifications(
                        
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
            body: InventoryRequest,
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
            
            onResponse: @escaping (_ response: InventoryRequest1?, _ error: FDKError?) -> Void
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
                        
                        let response = Utility.decode(InventoryRequest1.self, from: data)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Create Hsn Code.
        * Description: Create Hsn Code.
        **/
        public func createHsnCode(
            body: HsnUpsert,
            onResponse: @escaping (_ response: HsnCode?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/hsn/",
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
                        
                        let response = Utility.decode(HsnCode.self, from: data)
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
        * Summary: Hsn Code List.
        * Description: Hsn Code List.
        **/
        public func getAllHsnCodes(
            pageNo: Int?,
            pageSize: Int?,
            q: String?,
            
            onResponse: @escaping (_ response: HsnCodesListingResponse?, _ error: FDKError?) -> Void
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
                url: "/service/platform/catalog/v1.0/company/\(companyId)/hsn/",
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
                        
                        let response = Utility.decode(HsnCodesListingResponse.self, from: data)
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
        * Summary: Update Hsn Code.
        * Description: Update Hsn Code.
        **/
        public func updateHsnCode(
            uid: Int,
            body: HsnUpsert,
            onResponse: @escaping (_ response: HsnCode?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/hsn/\(uid)/",
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
                        
                        let response = Utility.decode(HsnCode.self, from: data)
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
        * Summary: Fetch Hsn Code.
        * Description: Fetch Hsn Code.
        **/
        public func getHsnCode(
            uid: Int,
            
            onResponse: @escaping (_ response: HsnCode?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/hsn/\(uid)/",
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
                        
                        let response = Utility.decode(HsnCode.self, from: data)
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
        * Summary: Bulk Create or Update Hsn Code.
        * Description: Bulk Create or Update Hsn Code.
        **/
        public func bulkHsnCode(
            body: BulkHsnUpsert,
            onResponse: @escaping (_ response: BulkHsnResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/catalog/v1.0/company/\(companyId)/hsn/bulk/",
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
                        
                        let response = Utility.decode(BulkHsnResponse.self, from: data)
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
    
    
    
    public class CompanyProfile {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get brands associated to a company
        * Description: This API helps to get view brands associated to a particular company.
        **/
        public func getBrands(
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: CompanyBrandListSerializer?, _ error: FDKError?) -> Void
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
                url: "/service/platform/company-profile/v1.0/company/\(companyId)/company-brand",
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
                        
                        let response = Utility.decode(CompanyBrandListSerializer.self, from: data)
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
        * Summary: get paginator for getBrands
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getBrandsPaginator(
            pageSize: Int?
            
            ) -> Paginator<CompanyBrandListSerializer> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<CompanyBrandListSerializer>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getBrands(
                        
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
        * Summary: Create a company brand mapping.
        * Description: This API allows to create a company brand mapping, for a already existing brand in the system.
        **/
        public func createCompanyBrandMapping(
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: get paginator for getLocations
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getLocationsPaginator(
            storeType: String?,
            q: String?,
            stage: String?,
            pageSize: Int?
            
            ) -> Paginator<LocationListSerializer> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<LocationListSerializer>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getLocations(
                        
                        storeType: storeType,
                        q: q,
                        stage: stage,
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
    }
    
    
    
    public class FileStorage {        
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
            pageNo: Int?,
            
            onResponse: @escaping (_ response: BrowseResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = pageNo {
                xQuery["page_no"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/assets/v1.0/company/\(companyId)/namespaces/\(namespace)/browse/",
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
                        
                        let response = Utility.decode(BrowseResponse.self, from: data)
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
                        
                        namespace: namespace,
                        pageNo: paginator.pageNo
                        
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
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
                url: "/service/platform/inventory/v1.0/company/\(companyId)/jobs",
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                url: "/service/platform/inventory/v1.0/company/\(companyId)/jobs",
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                url: "/service/platform/inventory/v1.0/company/\(companyId)/jobs",
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                url: "/service/platform/inventory/v1.0/company/\(companyId)/jobs/integration/\(integrationId)",
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                url: "/service/platform/inventory/v1.0/company/\(companyId)/jobs/defaults",
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                url: "/service/platform/inventory/v1.0/company/\(companyId)/jobs/code/\(code)",
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                url: "/service/platform/inventory/v1.0/company/\(companyId)/jobs/code/integration/\(integrationId)",
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
            q: String?,
            
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
            q: String?
            
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
            opted: Bool?,
            checkPermission: Bool?,
            
            onResponse: @escaping (_ response: IntegrationConfigResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = opted {
                xQuery["opted"] = value
            }
            
            if let value = checkPermission {
                xQuery["check_permission"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/configuration/v1.0/company/\(companyId)/integrationOptIn/configuration/\(id)/\(level)",
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
                        
                        let response = Utility.decode(IntegrationConfigResponse.self, from: data)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: OtherSellerApplications?, _ error: FDKError?) -> Void
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
                url: "/service/platform/configuration/v1.0/company/\(companyId)/other-seller-applications/",
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
                        
                        let response = Utility.decode(OtherSellerApplications.self, from: data)
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
        * Summary: get paginator for getOtherSellerApplications
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getOtherSellerApplicationsPaginator(
            pageSize: Int?
            
            ) -> Paginator<OtherSellerApplications> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<OtherSellerApplications>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getOtherSellerApplications(
                        
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
            
            onResponse: @escaping (_ response: [String: Any]?, _ error: FDKError?) -> Void
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Get registered marketplace channel credential configuration for a seller
        * Description: Get registered marketplace channel credentials configuration for a seller
        **/
        public func getChannel(
            channel: String,
            
            onResponse: @escaping (_ response: [String: Any]?, _ error: FDKError?) -> Void
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
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
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/analytics/v1.0/company/\(companyId)/export/\(exportType)/job/\(jobId)",
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
                        
                        let response = Utility.decode(ExportJobStatusRes.self, from: data)
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
        * Summary: Get logs list
        * Description: Get logs list
        **/
        public func getLogsList(
            logType: String,
            pageNo: Int?,
            pageSize: Int?,
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: get paginator for getLogsList
        * Description: fetch the next page by calling .next(...) function
        **/
        public func getLogsListPaginator(
            logType: String,
            pageSize: Int?,
            
            body: GetLogsListReq) -> Paginator<GetLogsListRes> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<GetLogsListRes>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.getLogsList(
                        
                        logType: logType,
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
        * Summary: Search logs
        * Description: Search logs
        **/
        public func searchLogs(
            pageNo: Int?,
            pageSize: Int?,
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
                        let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                        let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                        onResponse(nil, err)
                    }
            });
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        /**
        *
        * Summary: get paginator for searchLogs
        * Description: fetch the next page by calling .next(...) function
        **/
        public func searchLogsPaginator(
            pageSize: Int?,
            logType: String,
            
            body: SearchLogReq) -> Paginator<SearchLogRes> {
            let pageSize = pageSize ?? 20
            let paginator = Paginator<SearchLogRes>(pageSize: pageSize, type: "number")
            paginator.onPage = {
                self.searchLogs(
                        
                        pageNo: paginator.pageNo
                        ,
                        pageSize: paginator.pageSize
                        ,
                        logType: logType,body: body
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
    
    
    
    public class Discount {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        /**
        *
        * Summary: Fetch discount list.
        * Description: Fetch discount list.
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
                method: "get",
                url: "/service/platform/discount/v1.0/company/\(companyId)/job/",
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
        * Summary: Create Discount.
        * Description: Create Discount.
        **/
        public func createDiscount(
            body: CreateUpdateDiscount,
            onResponse: @escaping (_ response: DiscountJob?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/discount/v1.0/company/\(companyId)/job/",
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
        * Summary: Fetch discount.
        * Description: Fetch discount.
        **/
        public func getDiscount(
            id: String,
            
            onResponse: @escaping (_ response: DiscountJob?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/discount/v1.0/company/\(companyId)/job/\(id)/",
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
        * Summary: Create Discount.
        * Description: Create Discount.
        **/
        public func updateDiscount(
            id: String,
            body: CreateUpdateDiscount,
            onResponse: @escaping (_ response: DiscountJob?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/platform/discount/v1.0/company/\(companyId)/job/\(id)/",
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
        * Summary: Validate File.
        * Description: Validate File.
        **/
        public func validateDiscountFile(
            discount: String?,
            body: DiscountJob,
            onResponse: @escaping (_ response: FileJobResponse?, _ error: FDKError?) -> Void
        ) {
            var xQuery: [String: Any] = [:] 
            
            if let value = discount {
                xQuery["discount"] = value
            }
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/discount/v1.0/company/\(companyId)/file/validation/",
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
        * Summary: Validate File.
        * Description: Validate File.
        **/
        public func downloadDiscountFile(
            type: String,
            body: DownloadFileJob,
            onResponse: @escaping (_ response: FileJobResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/discount/v1.0/company/\(companyId)/file/\(type)/download/",
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
        * Summary: Validate File Job.
        * Description: Validate File Job.
        **/
        public func getValidationJob(
            id: String,
            
            onResponse: @escaping (_ response: FileJobResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/discount/v1.0/company/\(companyId)/file/validation/\(id)/",
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
        * Summary: Cancel Validation Job.
        * Description: Cancel Validation Job.
        **/
        public func cancelValidationJob(
            id: String,
            
            onResponse: @escaping (_ response: CancelJobResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/platform/discount/v1.0/company/\(companyId)/file/validation/\(id)/",
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
        * Summary: Download File Job.
        * Description: Download File Job.
        **/
        public func getDownloadJob(
            id: String,
            
            onResponse: @escaping (_ response: FileJobResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/discount/v1.0/company/\(companyId)/file/download/\(id)/",
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
        * Summary: Cancel Download Job.
        * Description: Cancel Download Job.
        **/
        public func cancelDownloadJob(
            id: String,
            
            onResponse: @escaping (_ response: CancelJobResponse?, _ error: FDKError?) -> Void
        ) {
             
            
             
            
            PlatformAPIClient.execute(
                config: config,
                method: "delete",
                url: "/service/platform/discount/v1.0/company/\(companyId)/file/download/\(id)/",
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
    
    

    public func applicationClient(id: String) -> ApplicationClient {
        return ApplicationClient(applicationId: id, config: config)
    }

    public class ApplicationClient {
        var config: PlatformConfig
        var companyId: String
        var applicationId: String

        
        public let lead: Lead
        
        public let feedback: Feedback
        
        public let theme: Theme
        
        public let user: User
        
        public let content: Content
        
        public let assignment: Assignment
        
        public let communication: Communication
        
        public let payment: Payment
        
        public let order: Order
        
        public let catalog: Catalog
        
        public let fileStorage: FileStorage
        
        public let share: Share
        
        public let configuration: Configuration
        
        public let cart: Cart
        
        public let rewards: Rewards
        
        public let analytics: Analytics
        
        public let partner: Partner
        
        
        public init(applicationId: String, config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
            self.applicationId = applicationId

            
            lead = Lead(config: config, applicationId: applicationId)
            
            feedback = Feedback(config: config, applicationId: applicationId)
            
            theme = Theme(config: config, applicationId: applicationId)
            
            user = User(config: config, applicationId: applicationId)
            
            content = Content(config: config, applicationId: applicationId)
            
            assignment = Assignment(config: config, applicationId: applicationId)
            
            communication = Communication(config: config, applicationId: applicationId)
            
            payment = Payment(config: config, applicationId: applicationId)
            
            order = Order(config: config, applicationId: applicationId)
            
            catalog = Catalog(config: config, applicationId: applicationId)
            
            fileStorage = FileStorage(config: config, applicationId: applicationId)
            
            share = Share(config: config, applicationId: applicationId)
            
            configuration = Configuration(config: config, applicationId: applicationId)
            
            cart = Cart(config: config, applicationId: applicationId)
            
            rewards = Rewards(config: config, applicationId: applicationId)
            
            analytics = Analytics(config: config, applicationId: applicationId)
            
            partner = Partner(config: config, applicationId: applicationId)
            
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
        }
        
        
            
        public class Feedback {        
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
            * Summary: Get list of attribute data
            * Description: Provides a list of all attribute data.
            **/
            public func getAttributes(
                pageNo: Int?,
                pageSize: Int?,
                
                onResponse: @escaping (_ response: FeedbackAttributes?, _ error: FDKError?) -> Void
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
                    url: "/service/platform/feedback/v1.0/company/\(companyId)/application/\(applicationId)/attributes/",
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
                        
                        let response = Utility.decode(FeedbackAttributes.self, from: data)
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
            * Summary: get paginator for getAttributes
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getAttributesPaginator(
                pageSize: Int?
                
                ) -> Paginator<FeedbackAttributes> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<FeedbackAttributes>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getAttributes(
                            
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
            * Summary: Get list of customer reviews [admin]
            * Description: The endpoint provides a list of customer reviews based on entity and provided filters
            **/
            public func getCustomerReviews(
                id: String?,
                entityId: String?,
                entityType: String?,
                userId: String?,
                media: String?,
                rating: [Double]?,
                attributeRating: [String]?,
                facets: Bool?,
                sort: String?,
                next: String?,
                start: String?,
                limit: String?,
                count: String?,
                pageId: String?,
                pageSize: Int?,
                
                onResponse: @escaping (_ response: GetReviewResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:] 
                
                if let value = id {
                    xQuery["id"] = value
                }
                
                if let value = entityId {
                    xQuery["entity_id"] = value
                }
                
                if let value = entityType {
                    xQuery["entity_type"] = value
                }
                
                if let value = userId {
                    xQuery["user_id"] = value
                }
                
                if let value = media {
                    xQuery["media"] = value
                }
                
                if let value = rating {
                    xQuery["rating"] = value
                }
                
                if let value = attributeRating {
                    xQuery["attribute_rating"] = value
                }
                
                if let value = facets {
                    xQuery["facets"] = value
                }
                
                if let value = sort {
                    xQuery["sort"] = value
                }
                
                if let value = next {
                    xQuery["next"] = value
                }
                
                if let value = start {
                    xQuery["start"] = value
                }
                
                if let value = limit {
                    xQuery["limit"] = value
                }
                
                if let value = count {
                    xQuery["count"] = value
                }
                
                if let value = pageId {
                    xQuery["page_id"] = value
                }
                
                if let value = pageSize {
                    xQuery["page_size"] = value
                }
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/feedback/v1.0/company/\(companyId)/application/\(applicationId)/reviews/",
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
                        
                        let response = Utility.decode(GetReviewResponse.self, from: data)
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
            * Summary: get paginator for getCustomerReviews
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getCustomerReviewsPaginator(
                id: String?,
                entityId: String?,
                entityType: String?,
                userId: String?,
                media: String?,
                rating: [Double]?,
                attributeRating: [String]?,
                facets: Bool?,
                sort: String?,
                next: String?,
                start: String?,
                limit: String?,
                count: String?,
                pageSize: Int?
                
                ) -> Paginator<GetReviewResponse> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<GetReviewResponse>(pageSize: pageSize, type: "cursor")
                paginator.onPage = {
                    self.getCustomerReviews(
                            
                            id: id,
                            entityId: entityId,
                            entityType: entityType,
                            userId: userId,
                            media: media,
                            rating: rating,
                            attributeRating: attributeRating,
                            facets: facets,
                            sort: sort,
                            next: next,
                            start: start,
                            limit: limit,
                            count: count,
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
            * Summary: update approve details
            * Description: The is used to update approve details like status and description text
            **/
            public func updateApprove(
                reviewId: String,
                body: ApproveRequest,
                onResponse: @escaping (_ response: UpdateResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/feedback/v1.0/company/\(companyId)/application/\(applicationId)/reviews/\(reviewId)/approve/",
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
                        
                        let response = Utility.decode(UpdateResponse.self, from: data)
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
            * Summary: get history details
            * Description: The is used to get the history details like status and description text
            **/
            public func getHistory(
                reviewId: String,
                
                onResponse: @escaping (_ response: [ActivityDump]?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/feedback/v1.0/company/\(companyId)/application/\(applicationId)/reviews/\(reviewId)/history/",
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
                        
                        let response = Utility.decode([ActivityDump].self, from: data)
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
            * Summary: Get list of templates
            * Description: Get all templates of application
            **/
            public func getApplicationTemplates(
                pageId: String?,
                pageSize: Int?,
                
                onResponse: @escaping (_ response: TemplateGetResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:] 
                
                if let value = pageId {
                    xQuery["page_id"] = value
                }
                
                if let value = pageSize {
                    xQuery["page_size"] = value
                }
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/feedback/v1.0/company/\(companyId)/application/\(applicationId)/templates/",
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
                        
                        let response = Utility.decode(TemplateGetResponse.self, from: data)
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
            * Summary: get paginator for getApplicationTemplates
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getApplicationTemplatesPaginator(
                pageSize: Int?
                
                ) -> Paginator<TemplateGetResponse> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<TemplateGetResponse>(pageSize: pageSize, type: "cursor")
                paginator.onPage = {
                    self.getApplicationTemplates(
                            
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
            * Summary: Create a new template
            * Description: Create a new template for review with following data:
- Enable media, rating and review
- Rating - active/inactive/selected rate choices, attributes, text on rate, comment for each rate, type
- Review - header, title, description, image and video meta, enable votes
            **/
            public func createTemplate(
                body: TemplateRequestList,
                onResponse: @escaping (_ response: InsertResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/feedback/v1.0/company/\(companyId)/application/\(applicationId)/templates/",
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
                        
                        let response = Utility.decode(InsertResponse.self, from: data)
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
            * Summary: Get a template by ID
            * Description: Get the template for product or l3 type by ID
            **/
            public func getTemplateById(
                id: String,
                
                onResponse: @escaping (_ response: Template?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/feedback/v1.0/company/\(companyId)/application/\(applicationId)/templates/\(id)/",
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
                        
                        let response = Utility.decode(Template.self, from: data)
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
            * Summary: Update a template's status
            * Description: Update existing template status, active/archive
            **/
            public func updateTemplate(
                id: String,
                body: UpdateTemplateRequest,
                onResponse: @escaping (_ response: UpdateResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/feedback/v1.0/company/\(companyId)/application/\(applicationId)/templates/\(id)/",
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
                        
                        let response = Utility.decode(UpdateResponse.self, from: data)
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
            * Summary: Update a template's status
            * Description: Update existing template status, active/archive
            **/
            public func updateTemplateStatus(
                id: String,
                body: UpdateTemplateStatusRequest,
                onResponse: @escaping (_ response: UpdateResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "patch",
                    url: "/service/platform/feedback/v1.0/company/\(companyId)/application/\(applicationId)/templates/\(id)/status",
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
                        
                        let response = Utility.decode(UpdateResponse.self, from: data)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                pageNo: Int?,
                pageSize: Int?,
                
                onResponse: @escaping (_ response: GetAnnouncementListSchema?, _ error: FDKError?) -> Void
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
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/announcements",
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
                        
                        let response = Utility.decode(GetAnnouncementListSchema.self, from: data)
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
            * Summary: get paginator for getAnnouncementsList
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getAnnouncementsListPaginator(
                pageSize: Int?
                
                ) -> Paginator<GetAnnouncementListSchema> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<GetAnnouncementListSchema>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getAnnouncementsList(
                            
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get blogs
            * Description: Use this to get blogs.
            **/
            public func getBlogs(
                pageNo: Int?,
                pageSize: Int?,
                
                onResponse: @escaping (_ response: BlogGetResponse?, _ error: FDKError?) -> Void
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
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/blogs/",
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
                        
                        let response = Utility.decode(BlogGetResponse.self, from: data)
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
            * Summary: get paginator for getBlogs
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getBlogsPaginator(
                pageSize: Int?
                
                ) -> Paginator<BlogGetResponse> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<BlogGetResponse>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getBlogs(
                            
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                
                onResponse: @escaping (_ response: GetFaqCategoryBySlugSchema?, _ error: FDKError?) -> Void
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
                        
                        let response = Utility.decode(GetFaqCategoryBySlugSchema.self, from: data)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get landing-pages
            * Description: Use this to get landing-pages.
            **/
            public func getLandingPages(
                pageNo: Int?,
                pageSize: Int?,
                
                onResponse: @escaping (_ response: LandingPageGetResponse?, _ error: FDKError?) -> Void
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
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/landing-page/",
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
                        
                        let response = Utility.decode(LandingPageGetResponse.self, from: data)
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
            * Summary: get paginator for getLandingPages
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getLandingPagesPaginator(
                pageSize: Int?
                
                ) -> Paginator<LandingPageGetResponse> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<LandingPageGetResponse>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getLandingPages(
                            
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
            * Summary: Create landing-page
            * Description: Use this to create landing-page.
            **/
            public func createLandingPage(
                body: LandingPageSchema,
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                body: LandingPageSchema,
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                pageNo: Int?,
                pageSize: Int?,
                
                onResponse: @escaping (_ response: NavigationGetResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:] 
                xQuery["device_platform"] = devicePlatform
                
                if let value = pageNo {
                    xQuery["page_no"] = value
                }
                
                if let value = pageSize {
                    xQuery["page_size"] = value
                }
                 
                 
                
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            /**
            *
            * Summary: get paginator for getNavigations
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getNavigationsPaginator(
                devicePlatform: String,
                pageSize: Int?
                
                ) -> Paginator<NavigationGetResponse> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<NavigationGetResponse>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getNavigations(
                            
                            devicePlatform: devicePlatform,
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get pages
            * Description: Use this to get pages.
            **/
            public func getPages(
                pageNo: Int?,
                pageSize: Int?,
                
                onResponse: @escaping (_ response: PageGetResponse?, _ error: FDKError?) -> Void
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
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/pages/",
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
                        
                        let response = Utility.decode(PageGetResponse.self, from: data)
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
            * Summary: get paginator for getPages
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getPagesPaginator(
                pageSize: Int?
                
                ) -> Paginator<PageGetResponse> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<PageGetResponse>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getPages(
                            
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                body: PageSchema,
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get seo of application
            * Description: Get seo of application
            **/
            public func getSEOConfiguration(
                
                onResponse: @escaping (_ response: SeoComponent?, _ error: FDKError?) -> Void
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
                        
                        let response = Utility.decode(SeoComponent.self, from: data)
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
            * Summary: Update seo of application
            * Description: Update seo of application
            **/
            public func updateSEOConfiguration(
                body: SeoComponent,
                onResponse: @escaping (_ response: SeoSchema?, _ error: FDKError?) -> Void
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
                        
                        let response = Utility.decode(SeoSchema.self, from: data)
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
            * Summary: Get slideshows
            * Description: Use this to get slideshows.
            **/
            public func getSlideshows(
                devicePlatform: String,
                pageNo: Int?,
                pageSize: Int?,
                
                onResponse: @escaping (_ response: SlideshowGetResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:] 
                xQuery["device_platform"] = devicePlatform
                
                if let value = pageNo {
                    xQuery["page_no"] = value
                }
                
                if let value = pageSize {
                    xQuery["page_size"] = value
                }
                 
                 
                
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            /**
            *
            * Summary: get paginator for getSlideshows
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getSlideshowsPaginator(
                devicePlatform: String,
                pageSize: Int?
                
                ) -> Paginator<SlideshowGetResponse> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<SlideshowGetResponse>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getSlideshows(
                            
                            devicePlatform: devicePlatform,
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
        }
        
        
            
        public class Assignment {        
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
            * Summary: 
            * Description: Create a new Pickup point for an application.

            **/
            public func createPickupLocation(
                body: PickupPointSchema,
                onResponse: @escaping (_ response: Success?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/assignment/v1.0/company/\(companyId)/application/\(applicationId)/pickup/locations",
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
                        
                        let response = Utility.decode(Success.self, from: data)
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
            * Description: Update list of pickup points for an application.

            **/
            public func getPickupLocation(
                q: String?,
                pageNo: Int?,
                pageSize: Int?,
                
                onResponse: @escaping (_ response: PickupPointResponse?, _ error: FDKError?) -> Void
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
                    url: "/service/platform/assignment/v1.0/company/\(companyId)/application/\(applicationId)/pickup/locations",
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
                        
                        let response = Utility.decode(PickupPointResponse.self, from: data)
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
            * Summary: get paginator for getPickupLocation
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getPickupLocationPaginator(
                q: String?,
                pageSize: Int?
                
                ) -> Paginator<PickupPointResponse> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<PickupPointResponse>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getPickupLocation(
                            
                            q: q,
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
            * Summary: 
            * Description: Update Pickup Point for an application. Pickup Point once created
can be updated using this API. 'x-application-id'm and request body are required to trigger
a successful update.

            **/
            public func updatePickupLocation(
                id: Double,
                body: PickupPointSchema,
                onResponse: @escaping (_ response: Success?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/assignment/v1.0/company/\(companyId)/application/\(applicationId)/pickup/locations/\(id)",
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
                        
                        let response = Utility.decode(Success.self, from: data)
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
            * Description: This API returns Pickup point data for an id. Returns not found if no data exists for the
store id passed.

            **/
            public func getPickupLocationById(
                id: Double,
                
                onResponse: @escaping (_ response: PickupPointSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/assignment/v1.0/company/\(companyId)/application/\(applicationId)/pickup/locations/\(id)",
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
                        
                        let response = Utility.decode(PickupPointSchema.self, from: data)
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
            * Description: Create a new pickup configuration for an application id. Only one configuration can be
created per application id.

            **/
            public func createPickupConfiguration(
                body: PickupConfiguration,
                onResponse: @escaping (_ response: Success?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/assignment/v1.0/company/\(companyId)/application/\(applicationId)/pickup/configurations",
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
                        
                        let response = Utility.decode(Success.self, from: data)
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
            * Description: Let pickup configuration for an application. z-application-id is required in
the header to fetch the data.

            **/
            public func getPickupConfiguration(
                
                onResponse: @escaping (_ response: PickupResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/assignment/v1.0/company/\(companyId)/application/\(applicationId)/pickup/configurations",
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
                        
                        let response = Utility.decode(PickupResponse.self, from: data)
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
            * Description: Get Shipping configuration for an application. Returns the global shipping configuration
including shipping priority and default strategy, etc. Every application can have one set of
configuration each. The endpoint requires an application id to get the data.

            **/
            public func getAllocationConfiguration(
                
                onResponse: @escaping (_ response: ShippingResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/assignment/v1.0/company/\(companyId)/application/\(applicationId)/allocate/configurations",
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
                        
                        let response = Utility.decode(ShippingResponse.self, from: data)
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
            * Description: Create a new Shipping configuration for an application The configuration is for
all the stores under an application. There can be only one configuration for an
application i.e, for an application configuration can be created only once.

            **/
            public func createAllocationConfiguration(
                body: ShippingSchema,
                onResponse: @escaping (_ response: Success?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/assignment/v1.0/company/\(companyId)/application/\(applicationId)/allocate/configurations",
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
                        
                        let response = Utility.decode(Success.self, from: data)
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
            * Description: Update Shipping configuration for an application. Application configuration once created
can be updated using this API. 'x-application-id'm and request body are required to trigger
a successful update.

            **/
            public func updateAllocationConfiguration(
                body: ShippingSchema,
                onResponse: @escaping (_ response: Success?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/assignment/v1.0/company/\(companyId)/application/\(applicationId)/allocate/configurations",
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
                        
                        let response = Utility.decode(Success.self, from: data)
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
            * Description: List Stores of an application. Two types of stores are listed,
some having allocation types as standard and others, advanced.
API has support for pagination, filter by type and search by name.

            **/
            public func getAllocationLocations(
                q: String?,
                pageNo: Int?,
                pageSize: Int?,
                type: String?,
                
                onResponse: @escaping (_ response: StoreListResponse?, _ error: FDKError?) -> Void
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
                
                if let value = type {
                    xQuery["type"] = value
                }
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/assignment/v1.0/company/\(companyId)/application/\(applicationId)/allocate/locations/",
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
                        
                        let response = Utility.decode(StoreListResponse.self, from: data)
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
            * Summary: get paginator for getAllocationLocations
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getAllocationLocationsPaginator(
                q: String?,
                pageSize: Int?,
                type: String?
                
                ) -> Paginator<StoreListResponse> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<StoreListResponse>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getAllocationLocations(
                            
                            q: q,
                            pageNo: paginator.pageNo
                            ,
                            pageSize: paginator.pageSize
                            ,
                            type: type
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
            * Description: This API returns store data for an id. Returns not found if no data exists for the
store id passed. The data is returned from sixspeed database which includes only the
shipping configuration of the stores including store id and app id.

            **/
            public func getAllocationLocationById(
                id: Double,
                
                onResponse: @escaping (_ response: StoreResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/assignment/v1.0/company/\(companyId)/application/\(applicationId)/allocate/locations/\(id)",
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
                        
                        let response = Utility.decode(StoreResponse.self, from: data)
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
            * Description: A store configuration once created can be updated via this API. Store id in request params
and udpated request body are required to successfully update the store data.

            **/
            public func updateAllocationLocation(
                id: Double,
                body: StoreSchema,
                onResponse: @escaping (_ response: Success?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/assignment/v1.0/company/\(companyId)/application/\(applicationId)/allocate/locations/\(id)",
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
                        
                        let response = Utility.decode(Success.self, from: data)
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
            * Description: Create a new store shipping configuratiion. The configuration is stored into the
sixspeed database. One one store data can be created for one store id. Ther can be one
default configuration and multiple non-default ones. The default is not binded with product
tags while others are required to be.

            **/
            public func createAllocationLocation(
                body: StoreSchema,
                onResponse: @escaping (_ response: Success?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/assignment/v1.0/company/\(companyId)/application/\(applicationId)/allocate/locations",
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
                        
                        let response = Utility.decode(Success.self, from: data)
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
            * Description: Get a list of zones created, where every zone has a unique name and id. They can be
of three different types, radius, pincode and country.

            **/
            public func getDestinationZones(
                q: String?,
                pageNo: Int?,
                pageSize: Int?,
                
                onResponse: @escaping (_ response: ZoneListResponse?, _ error: FDKError?) -> Void
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
                    url: "/service/platform/assignment/v1.0/company/\(companyId)/application/\(applicationId)/destination-zones",
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
                        
                        let response = Utility.decode(ZoneListResponse.self, from: data)
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
            * Summary: get paginator for getDestinationZones
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getDestinationZonesPaginator(
                q: String?,
                pageSize: Int?
                
                ) -> Paginator<ZoneListResponse> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<ZoneListResponse>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getDestinationZones(
                            
                            q: q,
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
            * Summary: 
            * Description: This API lets you create a zone which can be used further be mapped with store
configuration rules to defined a shipping rule. Either of the three details need to
be passed, zone_detail, pincode and region.

            **/
            public func postDestinationZone(
                body: ZoneSchema,
                onResponse: @escaping (_ response: Success?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/assignment/v1.0/company/\(companyId)/application/\(applicationId)/destination-zones",
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
                        
                        let response = Utility.decode(Success.self, from: data)
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
            * Description: Returns zone data for the specified zone id. Id is the required parameter and returns
not found if no data is found for the passed zone id.

            **/
            public func getDestinationZoneById(
                id: Double,
                
                onResponse: @escaping (_ response: ZoneSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/assignment/v1.0/company/\(companyId)/application/\(applicationId)/destinationZones/\(id)",
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
                        
                        let response = Utility.decode(ZoneSchema.self, from: data)
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
            * Description: Zone once created can be updated using this API. Zone id and request body are the required
data to update a zone.

            **/
            public func updateDestinationZone(
                id: Double,
                body: ZoneSchema,
                onResponse: @escaping (_ response: Success?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/assignment/v1.0/company/\(companyId)/application/\(applicationId)/destinationZones/\(id)",
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
                        
                        let response = Utility.decode(Success.self, from: data)
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
                pageNo: Int?,
                pageSize: Int?,
                sort: [String: Any]?,
                
                onResponse: @escaping (_ response: Campaigns?, _ error: FDKError?) -> Void
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
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/campaigns/campaigns",
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
                        
                        let response = Utility.decode(Campaigns.self, from: data)
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
            * Summary: get paginator for getCampaigns
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getCampaignsPaginator(
                pageSize: Int?,
                sort: [String: Any]?
                
                ) -> Paginator<Campaigns> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<Campaigns>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getCampaigns(
                            
                            pageNo: paginator.pageNo
                            ,
                            pageSize: paginator.pageSize
                            ,
                            sort: sort
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get audiences
            * Description: Get audiences
            **/
            public func getAudiences(
                pageNo: Int?,
                pageSize: Int?,
                sort: [String: Any]?,
                
                onResponse: @escaping (_ response: Audiences?, _ error: FDKError?) -> Void
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
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sources/datasources",
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
                        
                        let response = Utility.decode(Audiences.self, from: data)
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
            * Summary: get paginator for getAudiences
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getAudiencesPaginator(
                pageSize: Int?,
                sort: [String: Any]?
                
                ) -> Paginator<Audiences> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<Audiences>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getAudiences(
                            
                            pageNo: paginator.pageNo
                            ,
                            pageSize: paginator.pageSize
                            ,
                            sort: sort
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get email providers
            * Description: Get email providers
            **/
            public func getEmailProviders(
                pageNo: Int?,
                pageSize: Int?,
                sort: [String: Any]?,
                
                onResponse: @escaping (_ response: EmailProviders?, _ error: FDKError?) -> Void
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
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/email/providers",
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
                        
                        let response = Utility.decode(EmailProviders.self, from: data)
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
            * Summary: get paginator for getEmailProviders
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getEmailProvidersPaginator(
                pageSize: Int?,
                sort: [String: Any]?
                
                ) -> Paginator<EmailProviders> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<EmailProviders>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getEmailProviders(
                            
                            pageNo: paginator.pageNo
                            ,
                            pageSize: paginator.pageSize
                            ,
                            sort: sort
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get email templates
            * Description: Get email templates
            **/
            public func getEmailTemplates(
                pageNo: Int?,
                pageSize: Int?,
                sort: [String: Any]?,
                
                onResponse: @escaping (_ response: EmailTemplates?, _ error: FDKError?) -> Void
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
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/email/templates",
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
                        
                        let response = Utility.decode(EmailTemplates.self, from: data)
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
            * Summary: get paginator for getEmailTemplates
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getEmailTemplatesPaginator(
                pageSize: Int?,
                sort: [String: Any]?
                
                ) -> Paginator<EmailTemplates> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<EmailTemplates>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getEmailTemplates(
                            
                            pageNo: paginator.pageNo
                            ,
                            pageSize: paginator.pageSize
                            ,
                            sort: sort
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get system email templates
            * Description: Get system email templates
            **/
            public func getSystemEmailTemplates(
                pageNo: Int?,
                pageSize: Int?,
                sort: [String: Any]?,
                
                onResponse: @escaping (_ response: SystemEmailTemplates?, _ error: FDKError?) -> Void
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
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/email/system-templates",
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
                        
                        let response = Utility.decode(SystemEmailTemplates.self, from: data)
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
            * Summary: get paginator for getSystemEmailTemplates
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getSystemEmailTemplatesPaginator(
                pageSize: Int?,
                sort: [String: Any]?
                
                ) -> Paginator<SystemEmailTemplates> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<SystemEmailTemplates>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getSystemEmailTemplates(
                            
                            pageNo: paginator.pageNo
                            ,
                            pageSize: paginator.pageSize
                            ,
                            sort: sort
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get event subscriptions
            * Description: Get event subscriptions
            **/
            public func getEventSubscriptions(
                pageNo: Int?,
                pageSize: Int?,
                populate: String?,
                
                onResponse: @escaping (_ response: EventSubscriptions?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:] 
                
                if let value = pageNo {
                    xQuery["page_no"] = value
                }
                
                if let value = pageSize {
                    xQuery["page_size"] = value
                }
                
                if let value = populate {
                    xQuery["populate"] = value
                }
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/event/event-subscriptions",
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
                        
                        let response = Utility.decode(EventSubscriptions.self, from: data)
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
            * Summary: get paginator for getEventSubscriptions
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getEventSubscriptionsPaginator(
                pageSize: Int?,
                populate: String?
                
                ) -> Paginator<EventSubscriptions> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<EventSubscriptions>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getEventSubscriptions(
                            
                            pageNo: paginator.pageNo
                            ,
                            pageSize: paginator.pageSize
                            ,
                            populate: populate
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
                pageNo: Int?,
                pageSize: Int?,
                sort: [String: Any]?,
                
                onResponse: @escaping (_ response: Jobs?, _ error: FDKError?) -> Void
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
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/jobs/jobs",
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
                        
                        let response = Utility.decode(Jobs.self, from: data)
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
            * Summary: get paginator for getJobs
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getJobsPaginator(
                pageSize: Int?,
                sort: [String: Any]?
                
                ) -> Paginator<Jobs> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<Jobs>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getJobs(
                            
                            pageNo: paginator.pageNo
                            ,
                            pageSize: paginator.pageSize
                            ,
                            sort: sort
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get job logs
            * Description: Get job logs
            **/
            public func getJobLogs(
                pageNo: Int?,
                pageSize: Int?,
                sort: [String: Any]?,
                
                onResponse: @escaping (_ response: JobLogs?, _ error: FDKError?) -> Void
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
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/jobs/logs",
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
                        
                        let response = Utility.decode(JobLogs.self, from: data)
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
            * Summary: get paginator for getJobLogs
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getJobLogsPaginator(
                pageSize: Int?,
                sort: [String: Any]?
                
                ) -> Paginator<JobLogs> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<JobLogs>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getJobLogs(
                            
                            pageNo: paginator.pageNo
                            ,
                            pageSize: paginator.pageSize
                            ,
                            sort: sort
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
                pageId: String?,
                pageSize: Int?,
                sort: [String: Any]?,
                query: [String: Any]?,
                
                onResponse: @escaping (_ response: Logs?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:] 
                
                if let value = pageId {
                    xQuery["page_id"] = value
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
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/log",
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
                        
                        let response = Utility.decode(Logs.self, from: data)
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
            * Summary: get paginator for getCommunicationLogs
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getCommunicationLogsPaginator(
                pageSize: Int?,
                sort: [String: Any]?,
                query: [String: Any]?
                
                ) -> Paginator<Logs> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<Logs>(pageSize: pageSize, type: "cursor")
                paginator.onPage = {
                    self.getCommunicationLogs(
                            
                            pageId: paginator.pageId
                            ,
                            pageSize: paginator.pageSize
                            ,
                            sort: sort,
                            query: query
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
            * Summary: Get sms providers
            * Description: Get sms providers
            **/
            public func getSmsProviders(
                pageNo: Int?,
                pageSize: Int?,
                sort: [String: Any]?,
                
                onResponse: @escaping (_ response: SmsProviders?, _ error: FDKError?) -> Void
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
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sms/providers",
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
                        
                        let response = Utility.decode(SmsProviders.self, from: data)
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
            * Summary: get paginator for getSmsProviders
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getSmsProvidersPaginator(
                pageSize: Int?,
                sort: [String: Any]?
                
                ) -> Paginator<SmsProviders> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<SmsProviders>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getSmsProviders(
                            
                            pageNo: paginator.pageNo
                            ,
                            pageSize: paginator.pageSize
                            ,
                            sort: sort
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get sms templates
            * Description: Get sms templates
            **/
            public func getSmsTemplates(
                pageNo: Int?,
                pageSize: Int?,
                sort: [String: Any]?,
                
                onResponse: @escaping (_ response: SmsTemplates?, _ error: FDKError?) -> Void
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
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sms/templates",
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
                        
                        let response = Utility.decode(SmsTemplates.self, from: data)
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
            * Summary: get paginator for getSmsTemplates
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getSmsTemplatesPaginator(
                pageSize: Int?,
                sort: [String: Any]?
                
                ) -> Paginator<SmsTemplates> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<SmsTemplates>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getSmsTemplates(
                            
                            pageNo: paginator.pageNo
                            ,
                            pageSize: paginator.pageSize
                            ,
                            sort: sort
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get system sms templates
            * Description: Get system sms templates
            **/
            public func getSystemSystemTemplates(
                pageNo: Int?,
                pageSize: Int?,
                sort: [String: Any]?,
                
                onResponse: @escaping (_ response: SystemSmsTemplates?, _ error: FDKError?) -> Void
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
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sms/system-templates",
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
                        
                        let response = Utility.decode(SystemSmsTemplates.self, from: data)
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
            * Summary: get paginator for getSystemSystemTemplates
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getSystemSystemTemplatesPaginator(
                pageSize: Int?,
                sort: [String: Any]?
                
                ) -> Paginator<SystemSmsTemplates> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<SystemSmsTemplates>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getSystemSystemTemplates(
                            
                            pageNo: paginator.pageNo
                            ,
                            pageSize: paginator.pageSize
                            ,
                            sort: sort
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
            
            
            
        }
        
        
            
        public class Catalog {        
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
            * Summary: Update Search Keyword
            * Description: Update Search Keyword by its id. On successful request, returns the updated collection
            **/
            public func updateSearchKeywords(
                id: String,
                body: CreateSearchKeyword,
                onResponse: @escaping (_ response: GetSearchWordsData?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/search/keyword/\(id)/",
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
                        
                        let response = Utility.decode(GetSearchWordsData.self, from: data)
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
            * Summary: Get a Search Keywords Details
            * Description: Get the details of a words by its `id`. If successful, returns a Collection resource in the response body specified in `GetSearchWordsDetailResponseSchema`
            **/
            public func getSearchKeywords(
                id: String,
                
                onResponse: @escaping (_ response: GetSearchWordsDetailResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/search/keyword/\(id)/",
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
                        
                        let response = Utility.decode(GetSearchWordsDetailResponse.self, from: data)
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
            * Summary: Delete a Search Keywords
            * Description: Delete a keywords by it's id. Returns an object that tells whether the keywords was deleted successfully
            **/
            public func deleteSearchKeywords(
                id: String,
                
                onResponse: @escaping (_ response: DeleteResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/search/keyword/\(id)/",
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
                        
                        let response = Utility.decode(DeleteResponse.self, from: data)
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
            * Summary: Add a Custom Search Keywords
            * Description: Create a Custom Search Keywords. See `CreateSearchKeywordSchema` for the list of attributes needed to create a mapping and /collections/query-options for the available options to create a rule. On successful request, returns a paginated list of collections specified in `CreateSearchKeywordSchema`
            **/
            public func createCustomKeyword(
                body: CreateSearchKeyword,
                onResponse: @escaping (_ response: GetSearchWordsData?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/search/keyword/",
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
                        
                        let response = Utility.decode(GetSearchWordsData.self, from: data)
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
            * Summary: List all Search Custom Keyword Listing
            * Description: Custom Search Keyword allows you to map conditions with keywords to give you the ultimate results
            **/
            public func getAllSearchKeyword(
                
                onResponse: @escaping (_ response: GetSearchWordsResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/search/keyword/",
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
                        
                        let response = Utility.decode(GetSearchWordsResponse.self, from: data)
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
            * Summary: Create & Update Autocomplete Keyword
            * Description: Update a mapping by it's id. On successful request, returns the updated Keyword mapping
            **/
            public func updateAutocompleteKeyword(
                id: String,
                body: CreateAutocompleteKeyword,
                onResponse: @escaping (_ response: GetAutocompleteWordsResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/search/autocomplete/\(id)/",
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
                        
                        let response = Utility.decode(GetAutocompleteWordsResponse.self, from: data)
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
            * Summary: Get a Autocomplete Keywords Details
            * Description: Get the details of a words by its `id`. If successful, returns a keywords resource in the response body specified in `GetAutocompleteWordsResponseSchema`
            **/
            public func getAutocompleteKeywordDetail(
                id: String,
                
                onResponse: @escaping (_ response: GetAutocompleteWordsResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/search/autocomplete/\(id)/",
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
                        
                        let response = Utility.decode(GetAutocompleteWordsResponse.self, from: data)
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
            * Summary: Delete a Autocomplete Keywords
            * Description: Delete a keywords by it's id. Returns an object that tells whether the keywords was deleted successfully
            **/
            public func deleteAutocompleteKeyword(
                id: String,
                
                onResponse: @escaping (_ response: DeleteResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/search/autocomplete/\(id)/",
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
                        
                        let response = Utility.decode(DeleteResponse.self, from: data)
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
            * Summary: Add a Custom Autocomplete Keywords
            * Description: Create a Custom Autocomplete Keywords. See `CreateAutocompleteKeywordSchema` for the list of attributes needed to create a mapping and /collections/query-options for the available options to create a rule. On successful request, returns a paginated list of collections specified in `CreateAutocompleteKeywordSchema`
            **/
            public func createCustomAutocompleteRule(
                body: CreateAutocompleteKeyword,
                onResponse: @escaping (_ response: CreateAutocompleteWordsResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/search/autocomplete/",
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
                        
                        let response = Utility.decode(CreateAutocompleteWordsResponse.self, from: data)
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
            * Summary: List all Autocomplete Keyword Listing
            * Description: Custom Autocomplete Keyword allows you to map conditions with keywords to give you the ultimate results
            **/
            public func getAutocompleteConfig(
                
                onResponse: @escaping (_ response: GetAutocompleteWordsResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/search/autocomplete/",
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
                        
                        let response = Utility.decode(GetAutocompleteWordsResponse.self, from: data)
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
            * Summary: Get configuration meta  details for catalog for admin panel
            * Description: configuration meta  details for catalog.
            **/
            public func getCatalogConfiguration(
                
                onResponse: @escaping (_ response: GetCatalogConfigurationMetaData?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/product-configuration/metadata/",
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
                        
                        let response = Utility.decode(GetCatalogConfigurationMetaData.self, from: data)
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
            * Summary: Add configuration for products & listings
            * Description: Add configuration for products & listing.
            **/
            public func createConfigurationProductListing(
                body: AppConfiguration,
                onResponse: @escaping (_ response: GetAppCatalogConfiguration?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/product-configuration/",
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
                        
                        let response = Utility.decode(GetAppCatalogConfiguration.self, from: data)
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
            * Summary: Get configured details for catalog
            * Description: configured details for catalog.
            **/
            public func getConfigurations(
                
                onResponse: @escaping (_ response: GetAppCatalogConfiguration?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/product-configuration/",
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
                        
                        let response = Utility.decode(GetAppCatalogConfiguration.self, from: data)
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
            * Summary: Add configuration for categories and brands
            * Description: Add configuration for categories & brands.
            **/
            public func createConfigurationByType(
                type: String,
                body: AppConfiguration,
                onResponse: @escaping (_ response: GetAppCatalogConfiguration?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/productConfiguration/\(type)/",
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
                        
                        let response = Utility.decode(GetAppCatalogConfiguration.self, from: data)
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
            * Summary: Get configured details for catalog
            * Description: configured details for catalog.
            **/
            public func getConfigurationByType(
                type: String,
                
                onResponse: @escaping (_ response: GetAppCatalogEntityConfiguration?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/productConfiguration/\(type)/",
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
                        
                        let response = Utility.decode(GetAppCatalogEntityConfiguration.self, from: data)
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
            * Summary: Get query filters to configure a collection
            * Description: Get query filters to configure a collection
            **/
            public func getQueryFilters(
                
                onResponse: @escaping (_ response: GetCollectionQueryOptionResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/collections/query-options/",
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
                        
                        let response = Utility.decode(GetCollectionQueryOptionResponse.self, from: data)
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
            * Summary: Add a Collection
            * Description: Create a collection. See `CreateCollectionRequestSchema` for the list of attributes needed to create a collection and collections/query-options for the available options to create a collection. On successful request, returns a paginated list of collections specified in `CollectionCreateResponse`
            **/
            public func createCollection(
                body: CreateCollection,
                onResponse: @escaping (_ response: CollectionCreateResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/collections/",
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
                        
                        let response = Utility.decode(CollectionCreateResponse.self, from: data)
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
            * Summary: List all the collections
            * Description: A Collection allows you to organize your products into hierarchical groups. For example, a dress might be in the category _Clothing_, the individual product might also be in the collection _Summer_. On successful request, returns all the collections as specified in `CollectionListingSchema`
            **/
            public func getAllCollections(
                
                onResponse: @escaping (_ response: GetCollectionListingResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/collections/",
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
                        
                        let response = Utility.decode(GetCollectionListingResponse.self, from: data)
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
            * Summary: Get a particular collection
            * Description: Get the details of a collection by its `slug`. If successful, returns a Collection resource in the response body specified in `CollectionDetailResponse`
            **/
            public func getCollectionDetail(
                slug: String,
                
                onResponse: @escaping (_ response: CollectionDetailResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/collections/\(slug)/",
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
                        
                        let response = Utility.decode(CollectionDetailResponse.self, from: data)
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
            * Summary: Update a collection
            * Description: Update a collection by it's id. On successful request, returns the updated collection
            **/
            public func updateCollection(
                id: String,
                
                onResponse: @escaping (_ response: CollectionCreateResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/collections/\(id)/",
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
                        
                        let response = Utility.decode(CollectionCreateResponse.self, from: data)
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
            * Summary: Delete a Collection
            * Description: Delete a collection by it's id. Returns an object that tells whether the collection was deleted successfully
            **/
            public func deleteCollection(
                id: String,
                
                onResponse: @escaping (_ response: DeleteResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/collections/\(id)/",
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
                        
                        let response = Utility.decode(DeleteResponse.self, from: data)
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
            * Summary: Add items to a collection
            * Description: Adds items to a collection specified by its `id`. See `CollectionItemRequest` for the list of attributes needed to add items to an collection.
            **/
            public func addCollectionItems(
                id: String,
                body: CollectionItemRequest,
                onResponse: @escaping (_ response: UpdatedResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/collections/\(id)/items/",
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get the items for a collection
            * Description: Get items from a collection specified by its `id`.
            **/
            public func getCollectionItems(
                id: String,
                sortOn: String?,
                pageId: String?,
                pageSize: Int?,
                
                onResponse: @escaping (_ response: GetCollectionItemsResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:] 
                
                if let value = sortOn {
                    xQuery["sort_on"] = value
                }
                
                if let value = pageId {
                    xQuery["page_id"] = value
                }
                
                if let value = pageSize {
                    xQuery["page_size"] = value
                }
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/collections/\(id)/items/",
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
                        
                        let response = Utility.decode(GetCollectionItemsResponse.self, from: data)
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
            * Summary: Analytics data of catalog and inventory.
            * Description: Catalog Insights api returns the count of catalog related data like products, brands, departments and categories that have been made live as per configuration of the app.
            **/
            public func getCatalogInsights(
                brand: String?,
                
                onResponse: @escaping (_ response: CatalogInsightResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:] 
                
                if let value = brand {
                    xQuery["brand"] = value
                }
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/analytics/insights/",
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
                        
                        let response = Utility.decode(CatalogInsightResponse.self, from: data)
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
        
        
            
        public class FileStorage {        
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                pageNo: Int?,
                
                onResponse: @escaping (_ response: BrowseResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:] 
                
                if let value = pageNo {
                    xQuery["page_no"] = value
                }
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/assets/v1.0/company/\(companyId)/application/\(applicationId)/namespaces/\(namespace)/browse/",
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
                        
                        let response = Utility.decode(BrowseResponse.self, from: data)
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
                            
                            namespace: namespace,
                            pageNo: paginator.pageNo
                            
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
                    url: "/service/platform/share/v1.0/company/\(companyId)/application/\(applicationId)/links/short-link/",
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get short links
            * Description: Get short links
            **/
            public func getShortLinks(
                pageNo: Int?,
                pageSize: Int?,
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
                    url: "/service/platform/share/v1.0/company/\(companyId)/application/\(applicationId)/links/short-link/",
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            /**
            *
            * Summary: get paginator for getShortLinks
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getShortLinksPaginator(
                pageSize: Int?,
                createdBy: String?,
                active: String?,
                q: String?
                
                ) -> Paginator<ShortLinkList> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<ShortLinkList>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getShortLinks(
                            
                            pageNo: paginator.pageNo
                            ,
                            pageSize: paginator.pageSize
                            ,
                            createdBy: createdBy,
                            active: active,
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
                    url: "/service/platform/share/v1.0/company/\(companyId)/application/\(applicationId)/links/shortLink/\(hash)/",
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                body: ShortLinkReq,
                onResponse: @escaping (_ response: ShortLinkRes?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "patch",
                    url: "/service/platform/share/v1.0/company/\(companyId)/application/\(applicationId)/links/shortLink/\(id)/",
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/feature",
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/detail",
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/information",
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Application inventory enabled companies
            * Description: Application inventory enabled companies.
            **/
            public func getAppCompanies(
                pageNo: Int?,
                pageSize: Int?,
                
                onResponse: @escaping (_ response: CompaniesResponse?, _ error: FDKError?) -> Void
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
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/companies",
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
                        
                        let response = Utility.decode(CompaniesResponse.self, from: data)
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
            * Summary: get paginator for getAppCompanies
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getAppCompaniesPaginator(
                pageSize: Int?
                
                ) -> Paginator<CompaniesResponse> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<CompaniesResponse>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getAppCompanies(
                            
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
            * Summary: Application inventory enabled stores
            * Description: Application inventory enabled stores.
            **/
            public func getAppStores(
                pageNo: Int?,
                pageSize: Int?,
                
                onResponse: @escaping (_ response: StoresResponse?, _ error: FDKError?) -> Void
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
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/stores",
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
                        
                        let response = Utility.decode(StoresResponse.self, from: data)
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
            * Summary: get paginator for getAppStores
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getAppStoresPaginator(
                pageSize: Int?
                
                ) -> Paginator<StoresResponse> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<StoresResponse>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getAppStores(
                            
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get ordering store by filter
            * Description: Get ordering store by filter
            **/
            public func getOrderingStoresByFilter(
                pageNo: Int?,
                pageSize: Int?,
                body: FilterOrderingStoreRequest,
                onResponse: @escaping (_ response: OrderingStores?, _ error: FDKError?) -> Void
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
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/ordering-store/stores/filter",
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
            * Summary: get paginator for getOrderingStoresByFilter
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getOrderingStoresByFilterPaginator(
                pageSize: Int?,
                
                body: FilterOrderingStoreRequest) -> Paginator<OrderingStores> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<OrderingStores>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getOrderingStoresByFilter(
                            
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
        }
        
        
            
        public class Rewards {        
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
            * Summary: List of giveaways of the current application.
            * Description: List of giveaways of the current application.
            **/
            public func getGiveaways(
                pageId: String?,
                pageSize: Int?,
                
                onResponse: @escaping (_ response: GiveawayResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:] 
                
                if let value = pageId {
                    xQuery["page_id"] = value
                }
                
                if let value = pageSize {
                    xQuery["page_size"] = value
                }
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/rewards/v1.0/company/\(companyId)/application/\(applicationId)/giveaways/",
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
                        
                        let response = Utility.decode(GiveawayResponse.self, from: data)
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
            * Summary: get paginator for getGiveaways
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getGiveawaysPaginator(
                pageSize: Int?
                
                ) -> Paginator<GiveawayResponse> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<GiveawayResponse>(pageSize: pageSize, type: "cursor")
                paginator.onPage = {
                    self.getGiveaways(
                            
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
            * Summary: Adds a new giveaway.
            * Description: Adds a new giveaway.
            **/
            public func createGiveaway(
                body: Giveaway,
                onResponse: @escaping (_ response: Giveaway?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/rewards/v1.0/company/\(companyId)/application/\(applicationId)/giveaways/",
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
                        
                        let response = Utility.decode(Giveaway.self, from: data)
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
            * Summary: Get giveaway by ID.
            * Description: Get giveaway by ID.
            **/
            public func getGiveawayByID(
                id: String,
                
                onResponse: @escaping (_ response: Giveaway?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/rewards/v1.0/company/\(companyId)/application/\(applicationId)/giveaways/\(id)/",
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
                        
                        let response = Utility.decode(Giveaway.self, from: data)
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
            * Summary: Updates the giveaway by it's ID.
            * Description: Updates the giveaway by it's ID.
            **/
            public func updateGiveaway(
                id: String,
                body: Giveaway,
                onResponse: @escaping (_ response: Giveaway?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/rewards/v1.0/company/\(companyId)/application/\(applicationId)/giveaways/\(id)/",
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
                        
                        let response = Utility.decode(Giveaway.self, from: data)
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
            * Summary: List of offer of the current application.
            * Description: List of offer of the current application.
            **/
            public func getOffers(
                
                onResponse: @escaping (_ response: [Offer]?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/rewards/v1.0/company/\(companyId)/application/\(applicationId)/offers/",
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
                        
                        let response = Utility.decode([Offer].self, from: data)
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
            * Summary: Get offer by name.
            * Description: Get offer by name.
            **/
            public func getOfferByName(
                cookie: String,
                name: String,
                
                onResponse: @escaping (_ response: Offer?, _ error: FDKError?) -> Void
            ) {
                 
                 
                var xHeaders: [(key: String, value: String)] = [] 
                xHeaders.append((key: "cookie", value: cookie))
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/rewards/v1.0/company/\(companyId)/application/\(applicationId)/offers/\(name)/",
                    query: nil,
                    body: nil,
                    headers: xHeaders,
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
            * Summary: Updates the offer by name.
            * Description: Updates the offer by name.
            **/
            public func updateOfferByName(
                name: String,
                body: Offer,
                onResponse: @escaping (_ response: Offer?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/rewards/v1.0/company/\(companyId)/application/\(applicationId)/offers/\(name)/",
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
            * Summary: User's reward details.
            * Description: User's reward details.
            **/
            public func getUserAvailablePoints(
                userId: String,
                
                onResponse: @escaping (_ response: UserRes?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/rewards/v1.0/company/\(companyId)/application/\(applicationId)/users/\(userId)",
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
                        
                        let response = Utility.decode(UserRes.self, from: data)
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
            * Summary: Update User status
            * Description: Update user status, active/archive
            **/
            public func updateUserStatus(
                userId: String,
                body: AppUser,
                onResponse: @escaping (_ response: AppUser?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "patch",
                    url: "/service/platform/rewards/v1.0/company/\(companyId)/application/\(applicationId)/users/\(userId)/",
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
                        
                        let response = Utility.decode(AppUser.self, from: data)
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
            * Summary: Get list of points transactions.
            * Description: Get list of points transactions.
The list of points history is paginated.
            **/
            public func getUserPointsHistory(
                userId: String,
                pageId: String?,
                pageLimit: Int?,
                pageSize: Int?,
                
                onResponse: @escaping (_ response: HistoryRes?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:] 
                
                if let value = pageId {
                    xQuery["page_id"] = value
                }
                
                if let value = pageLimit {
                    xQuery["page_limit"] = value
                }
                
                if let value = pageSize {
                    xQuery["page_size"] = value
                }
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/rewards/v1.0/company/\(companyId)/application/\(applicationId)/users/\(userId)/points/history/",
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
                        
                        let response = Utility.decode(HistoryRes.self, from: data)
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
                userId: String,
                pageSize: Int?
                
                ) -> Paginator<HistoryRes> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<HistoryRes>(pageSize: pageSize, type: "cursor")
                paginator.onPage = {
                    self.getUserPointsHistory(
                            
                            userId: userId,
                            pageId: paginator.pageId
                            ,
                            pageLimit: nil
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Get abandon carts list
            * Description: Get abandon carts list
            **/
            public func getAbandonCartList(
                fromDate: String,
                toDate: String,
                pageNo: Int?,
                pageSize: Int?,
                
                onResponse: @escaping (_ response: AbandonCartsList?, _ error: FDKError?) -> Void
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
                    url: "/service/platform/analytics/v1.0/company/\(companyId)/application/\(applicationId)/cart/from/\(fromDate)/to/\(toDate)/abandon-cart/",
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            /**
            *
            * Summary: get paginator for getAbandonCartList
            * Description: fetch the next page by calling .next(...) function
            **/
            public func getAbandonCartListPaginator(
                fromDate: String,
                toDate: String,
                pageSize: Int?
                
                ) -> Paginator<AbandonCartsList> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<AbandonCartsList>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getAbandonCartList(
                            
                            fromDate: fromDate,
                            toDate: toDate,
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
            * Summary: Get abandon carts csv
            * Description: Get abandon carts csv
            **/
            public func getAbandonCartsCSV(
                fromDate: String,
                toDate: String,
                
                onResponse: @escaping (_ response: String?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/analytics/v1.0/company/\(companyId)/application/\(applicationId)/cart/\(fromDate)/to/\(toDate)/abandon-cart.csv",
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
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
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
            
            
            
            
        }
        
        
            
        public class Partner {        
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
            * Summary: Add proxy path for external url
            * Description: Add proxy path for external url
            **/
            public func addProxyPath(
                extensionId: String,
                body: AddProxyReq,
                onResponse: @escaping (_ response: AddProxyResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/partners/v1.0/company/\(companyId)/application/\(applicationId)/proxy/\(extensionId)",
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
                        
                        let response = Utility.decode(AddProxyResponse.self, from: data)
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
            * Summary: Remove proxy path for external url
            * Description: Remove proxy path for external url
            **/
            public func removeProxyPath(
                extensionId: String,
                attachedPath: String,
                
                onResponse: @escaping (_ response: RemoveProxyResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/partners/v1.0/company/\(companyId)/application/\(applicationId)/proxy/\(extensionId)/\(attachedPath)",
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
                        
                        let response = Utility.decode(RemoveProxyResponse.self, from: data)
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
}