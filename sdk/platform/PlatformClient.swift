

public class PlatformClient {

    public let lead: Lead

    public init(config: PlatformConfig) {
        
        lead = Lead(config: config)
        
    }
    
    
    public class Lead {        
        var config: PlatformConfig
        var companyId: String

        func application(id: String) -> Application {
            return Application(applicationId: id, config: config)
        }

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
            companyId: String,
            items: Bool?,
            filters: Bool?,
            
            onResponse: @escaping (_ response: TicketList?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            query["items"] = items
            query["filters"] = filters
             
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "service/platform/lead/v1.0/company/\(companyId)/ticket",
                query: query,
                body: nil,
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
        * Summary: Creates a company level ticket
        * Description: Creates a company level ticket
        **/
        public func createTicket(
            companyId: String,
            body: AddTicketPayload,
            onResponse: @escaping (_ response: Ticket?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "service/platform/lead/v1.0/company/\(companyId)/ticket",
                query: nil,
                body: body.dictionary,
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
            companyId: String,
            ticketId: String,
            
            onResponse: @escaping (_ response: Ticket?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "service/platform/lead/v1.0/company/\(companyId)/ticket/\(ticketId)",
                query: nil,
                body: nil,
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
            companyId: String,
            ticketId: String,
            body: EditTicketPayload,
            onResponse: @escaping (_ response: Ticket?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "service/platform/lead/v1.0/company/\(companyId)/ticket/\(ticketId)",
                query: nil,
                body: body.dictionary,
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
        * Summary: Retreives ticket details of a application level ticket
        * Description: Retreives ticket details of a application level ticket with ticket ID
        **/
        public func getTicket(
            companyId: String,
            applicationId: String,
            ticketId: String,
            
            onResponse: @escaping (_ response: Ticket?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "service/platform/lead/v1.0/company/\(companyId)/ticket/application/\(applicationId)/\(ticketId)",
                query: nil,
                body: nil,
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
            companyId: String,
            ticketId: String,
            body: TicketHistoryPayload,
            onResponse: @escaping (_ response: TicketHistory?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "service/platform/lead/v1.0/company/\(companyId)/ticket/\(ticketId)/history",
                query: nil,
                body: body.dictionary,
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
            companyId: String,
            ticketId: String,
            
            onResponse: @escaping (_ response: TicketHistoryList?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "service/platform/lead/v1.0/company/\(companyId)/ticket/\(ticketId)/history",
                query: nil,
                body: nil,
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
        
        
        
        
        
        
        
        
        
        class Application {
            var config: PlatformConfig
            var companyId: String
            var applicationId: String
            
            init(applicationId: String, config: PlatformConfig) {
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
                companyId: String,
                applicationId: String,
                items: Bool?,
                filters: Bool?,
                
                onResponse: @escaping (_ response: TicketList?, _ error: FDKError?) -> Void
            ) {
                var query: [String: Any] = [:]
                query["items"] = items
                query["filters"] = filters
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/ticket",
                    query: query,
                    body: nil,
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
            * Summary: Edits ticket details of a application level ticket
            * Description: Edits ticket details of a application level ticket such as status, priority, category, tags, attachments, assigne & ticket content changes
            **/
            public func editTicket(
                companyId: String,
                applicationId: String,
                ticketId: String,
                body: EditTicketPayload,
                onResponse: @escaping (_ response: Ticket?, _ error: FDKError?) -> Void
            ) {
                let query: [String: Any] = [:]
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/ticket/\(ticketId)",
                    query: query,
                    body: body.dictionary,
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
                companyId: String,
                applicationId: String,
                ticketId: String,
                body: TicketHistoryPayload,
                onResponse: @escaping (_ response: TicketHistory?, _ error: FDKError?) -> Void
            ) {
                let query: [String: Any] = [:]
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/ticket/\(ticketId)/history",
                    query: query,
                    body: body.dictionary,
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
                companyId: String,
                applicationId: String,
                ticketId: String,
                
                onResponse: @escaping (_ response: TicketHistoryList?, _ error: FDKError?) -> Void
            ) {
                let query: [String: Any] = [:]
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/ticket/\(ticketId)/history",
                    query: query,
                    body: nil,
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
                companyId: String,
                applicationId: String,
                slug: String,
                
                onResponse: @escaping (_ response: CustomForm?, _ error: FDKError?) -> Void
            ) {
                let query: [String: Any] = [:]
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/form/\(slug)",
                    query: query,
                    body: nil,
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
                companyId: String,
                applicationId: String,
                slug: String,
                body: EditCustomFormPayload,
                onResponse: @escaping (_ response: CustomForm?, _ error: FDKError?) -> Void
            ) {
                let query: [String: Any] = [:]
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/form/\(slug)",
                    query: query,
                    body: body.dictionary,
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
                companyId: String,
                applicationId: String,
                
                onResponse: @escaping (_ response: CustomFormList?, _ error: FDKError?) -> Void
            ) {
                let query: [String: Any] = [:]
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/form",
                    query: query,
                    body: nil,
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
                companyId: String,
                applicationId: String,
                body: CreateCustomFormPayload,
                onResponse: @escaping (_ response: CustomForm?, _ error: FDKError?) -> Void
            ) {
                let query: [String: Any] = [:]
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/form",
                    query: query,
                    body: body.dictionary,
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
                companyId: String,
                applicationId: String,
                uniqueName: String,
                
                onResponse: @escaping (_ response: GetTokenForVideoRoomResponse?, _ error: FDKError?) -> Void
            ) {
                let query: [String: Any] = [:]
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/video/room/\(uniqueName)/token",
                    query: query,
                    body: nil,
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
                companyId: String,
                applicationId: String,
                uniqueName: String,
                
                onResponse: @escaping (_ response: GetParticipantsInsideVideoRoomResponse?, _ error: FDKError?) -> Void
            ) {
                let query: [String: Any] = [:]
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/video/room/\(uniqueName)/participants",
                    query: query,
                    body: nil,
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
            * Summary: Get video room id
            * Description: Get video room id.
            **/
            public func createVideoRoom(
                companyId: String,
                applicationId: String,
                body: CreateVideoRoomPayload,
                onResponse: @escaping (_ response: CreateVideoRoomResponse?, _ error: FDKError?) -> Void
            ) {
                let query: [String: Any] = [:]
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/video/room",
                    query: query,
                    body: body.dictionary,
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
            
        }
    }
    
    
}