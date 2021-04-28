


public class PlatformClient {
    public let config: PlatformConfig

    public let lead: Lead

    public let payment: Payment

    public let order: Order

    public let catalog: Catalog

    public let fileStorage: FileStorage

    public let configuration: Configuration

    public init(config: PlatformConfig) {
        self.config = config
        
        lead = Lead(config: config)
        
        payment = Payment(config: config)
        
        order = Order(config: config)
        
        catalog = Catalog(config: config)
        
        fileStorage = FileStorage(config: config)
        
        configuration = Configuration(config: config)
        
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
    
    

    public func applicationClient(id: String) -> ApplicationClient {
        return ApplicationClient(applicationId: id, config: config)
    }

    public class ApplicationClient {
        var config: PlatformConfig
        var companyId: String
        var applicationId: String

        
        public let lead: Lead
        
        public let user: User
        
        public let payment: Payment
        
        public let order: Order
        
        public let catalog: Catalog
        
        public let fileStorage: FileStorage
        
        public let share: Share
        
        public let configuration: Configuration
        
        public let cart: Cart
        
        
        public init(applicationId: String, config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
            self.applicationId = applicationId

            
            lead = Lead(config: config, applicationId: applicationId)
            
            user = User(config: config, applicationId: applicationId)
            
            payment = Payment(config: config, applicationId: applicationId)
            
            order = Order(config: config, applicationId: applicationId)
            
            catalog = Catalog(config: config, applicationId: applicationId)
            
            fileStorage = FileStorage(config: config, applicationId: applicationId)
            
            share = Share(config: config, applicationId: applicationId)
            
            configuration = Configuration(config: config, applicationId: applicationId)
            
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
            * Summary: Create user
            * Description: Create user
            **/
            public func createUser(
                body: CreateUserRequestSchema,
                onResponse: @escaping (_ response: CreateUserResponseSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/user/v1.0/company/\(companyId)/application/\(applicationId)/customers",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(CreateUserResponseSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Update user
            * Description: Update user
            **/
            public func updateUser(
                userId: String,
                body: UpdateUserRequestSchema,
                onResponse: @escaping (_ response: CreateUserResponseSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/user/v1.0/company/\(companyId)/application/\(applicationId)/customers/\(userId)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(CreateUserResponseSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            let userInfo: [String: Any] =  [ NSLocalizedDescriptionKey :  NSLocalizedString("Unidentified", value: "Please try after sometime", comment: "") ,
                                                 NSLocalizedFailureReasonErrorKey : NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Create user session
            * Description: Create user session
            **/
            public func createUserSession(
                body: CreateUserSessionRequestSchema,
                onResponse: @escaping (_ response: CreateUserSessionResponseSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                 
                
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/user/v1.0/company/\(companyId)/application/\(applicationId)/customers/session",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                        
                        let response = Utility.decode(CreateUserSessionResponseSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
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
        
        
    }
}