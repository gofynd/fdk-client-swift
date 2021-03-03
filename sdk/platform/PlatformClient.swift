

public class PlatformClient {

    public let lead: Lead

    public let theme: Theme

    public let content: Content

    public init(config: PlatformConfig) {
        
        lead = Lead(config: config)
        
        theme = Theme(config: config)
        
        content = Content(config: config)
        
    }
    
    
    public class Lead {        
        var config: PlatformConfig
        var companyId: String

        public func application(id: String) -> Application {
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
        
        
        
        
        
        
        
        
        
        public class Application {
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
                ticketId: String,
                body: EditTicketPayload,
                onResponse: @escaping (_ response: Ticket?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/ticket/\(ticketId)",
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
                    url: "service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/ticket/\(ticketId)/history",
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
                    url: "service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/ticket/\(ticketId)/history",
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
                    url: "service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/form/\(slug)",
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
                    url: "service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/form/\(slug)",
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
                    url: "service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/form",
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
                    url: "service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/form",
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
                    url: "service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/video/room/\(uniqueName)/token",
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
                    url: "service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/video/room/\(uniqueName)/participants",
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
                body: CreateVideoRoomPayload,
                onResponse: @escaping (_ response: CreateVideoRoomResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/video/room",
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
                            
                            let response = Utility.decode(CreateVideoRoomResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
        }
    }
    
    
    
    public class Theme {        
        var config: PlatformConfig
        var companyId: String

        public func application(id: String) -> Application {
            return Application(applicationId: id, config: config)
        }

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        public class Application {
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
            * Summary: Gets list of themes in theme library
            * Description: Gets list of themes in theme library
            **/
            public func getThemeLibrary(
                pageSize: Int?,
                pageNo: Int?,
                
                onResponse: @escaping (_ response: ThemesListingResponseSchema?, _ error: FDKError?) -> Void
            ) {
                var query: [String: Any] = [:] 
                query["page_size"] = pageSize
                query["page_no"] = pageNo
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/library",
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
                var query: [String: Any] = [:] 
                query["page_size"] = pageSize
                query["page_no"] = pageNo
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/public/library",
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
    }
    
    
    
    public class Content {        
        var config: PlatformConfig
        var companyId: String

        public func application(id: String) -> Application {
            return Application(applicationId: id, config: config)
        }

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        public class Application {
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
                
                onResponse: @escaping (_ response: CreateFaqCategorySchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/faq/category/\(id)",
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
                            
                            let response = Utility.decode(CreateFaqCategorySchema.self, from: data)
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
            public func addFaqToFaqCategory(
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
            public func createTag(
                body: CreateTagRequestSchema,
                onResponse: @escaping (_ response: TagsSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/tags",
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
            public func updateTag(
                body: CreateTagRequestSchema,
                onResponse: @escaping (_ response: TagsSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/tags",
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
            public func deleteAllTags(
                
                onResponse: @escaping (_ response: TagsSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/tags",
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
            public func getTags(
                
                onResponse: @escaping (_ response: TagsSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/tags",
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
            public func addTag(
                body: CreateTagRequestSchema,
                onResponse: @escaping (_ response: TagsSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/tags/add",
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
            public func removeTag(
                body: RemoveHandpickedSchema,
                onResponse: @escaping (_ response: TagsSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/tags/remove/handpicked",
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
            public func editTag(
                tagId: String,
                body: UpdateHandpickedSchema,
                onResponse: @escaping (_ response: TagsSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/tags/remove/handpicked/\(tagId)",
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
                            
                            let response = Utility.decode(TagsSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
        }
    }
    
    
}