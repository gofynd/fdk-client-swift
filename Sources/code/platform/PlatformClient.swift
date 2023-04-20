

import Foundation

public class PlatformClient {
    public let config: PlatformConfig

    public let common: Common

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

    public let analytics: Analytics

    public let discount: Discount

    public let webhook: Webhook

    public let auditTrail: AuditTrail

    public let serviceability: Serviceability

    public init(config: PlatformConfig) {
        self.config = config

        common = Common(config: config)

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

        analytics = Analytics(config: config)

        discount = Discount(config: config)

        webhook = Webhook(config: config)

        auditTrail = AuditTrail(config: config)

        serviceability = Serviceability(config: config)
    }

    public func applicationClient(id: String) -> ApplicationClient {
        ApplicationClient(applicationId: id, config: config)
    }

    public class ApplicationClient {
        var config: PlatformConfig
        var companyId: String
        var applicationId: String

        public let lead: Lead

        public let theme: Theme

        public let user: User

        public let content: Content

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

        public let serviceability: Serviceability

        public init(applicationId: String, config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
            self.applicationId = applicationId

            lead = Lead(config: config, applicationId: applicationId)

            theme = Theme(config: config, applicationId: applicationId)

            user = User(config: config, applicationId: applicationId)

            content = Content(config: config, applicationId: applicationId)

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

            serviceability = Serviceability(config: config, applicationId: applicationId)
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
                priority: PriorityEnum?,
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
                    xQuery["priority"] = value.rawValue
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Retreives ticket details of a application level ticket
             * Description: Retreives ticket details of a application level ticket with ticket ID
             **/
            public func getTicket(
                id: String,

                onResponse: @escaping (_ response: Ticket?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/ticket/\(id)",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Edits ticket details of a application level ticket
             * Description: Edits ticket details of a application level ticket such as status, priority, category, tags, attachments, assigne & ticket content changes
             **/
            public func editTicket(
                id: String,
                body: EditTicketPayload,
                onResponse: @escaping (_ response: Ticket?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/ticket/\(id)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Create history for specific application level ticket
             * Description: Create history for specific application level ticket, this history is seen on ticket detail page, this can be comment, log or rating.
             **/
            public func createHistory(
                id: String,
                body: TicketHistoryPayload,
                onResponse: @escaping (_ response: TicketHistory?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/ticket/\(id)/history",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Gets history list for specific application level ticket
             * Description: Gets history list for specific application level ticket, this history is seen on ticket detail page, this can be comment, log or rating.
             **/
            public func getTicketHistory(
                id: String,

                onResponse: @escaping (_ response: TicketHistoryList?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/ticket/\(id)/history",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                            let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                           NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                    }
                )
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
             * Summary: Get all pages of a theme
             * Description: Use this API to retrieve all the available pages of a theme by its ID.
             **/
            public func getAllPages(
                themeId: String,

                onResponse: @escaping (_ response: AllAvailablePageSchema?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/page",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(AllAvailablePageSchema.self, from: data)

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
             * Summary: Create a page
             * Description: Use this API to create a page for a theme by its ID.
             **/
            public func createPage(
                themeId: String,
                body: AvailablePageSchema,
                onResponse: @escaping (_ response: AvailablePageSchema?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/page",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(AvailablePageSchema.self, from: data)

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
             * Summary: Update multiple pages of a theme
             * Description: Use this API to update multiple pages of a theme by its ID.
             **/
            public func updateMultiplePages(
                themeId: String,
                body: AllAvailablePageSchema,
                onResponse: @escaping (_ response: AllAvailablePageSchema?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/page",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(AllAvailablePageSchema.self, from: data)

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
             * Summary: Get page of a theme
             * Description: Use this API to retrieve a page of a theme.
             **/
            public func getPage(
                themeId: String,
                pageValue: String,

                onResponse: @escaping (_ response: AvailablePageSchema?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/\(pageValue)",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(AvailablePageSchema.self, from: data)

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
             * Summary: Updates a page
             * Description: Use this API to update a page for a theme by its ID.
             **/
            public func updatePage(
                themeId: String,
                pageValue: String,
                body: AvailablePageSchema,
                onResponse: @escaping (_ response: AvailablePageSchema?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/\(pageValue)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(AvailablePageSchema.self, from: data)

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
             * Summary: Deletes a page
             * Description: Use this API to delete a page for a theme by its ID and page_value.
             **/
            public func deletePage(
                themeId: String,
                pageValue: String,

                onResponse: @escaping (_ response: AvailablePageSchema?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/\(pageValue)",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(AvailablePageSchema.self, from: data)

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
             * Summary: Get a list of themes from the theme library
             * Description: Theme library is a personalized collection of themes that are chosen and added from the available themes. Use this API to fetch a list of themes from the library along with their configuration details.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Add a theme to the theme library
             * Description: Theme library is a personalized collection of themes that are chosen and added from the available themes. Use this API to choose a theme and add it to the theme library.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Apply a theme
             * Description: Use this API to apply a theme to the website.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Checks if theme is upgradable
             * Description: There's always a possibility that new features get added to a theme. Use this API to check if the applied theme has an upgrade available.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Upgrade a theme
             * Description: Use this API to upgrade the current theme to its latest version.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get all public themes
             * Description: Use this API to get a list of free themes that you can apply to your website.
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
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/list/public",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Create a new theme
             * Description: Themes improve the look and appearance of a website. Use this API to create a theme.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get the applied theme
             * Description: Use this API to retrieve the theme that is currently applied to the website along with its details.
             **/
            public func getAppliedTheme(
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get all the supported fonts in a theme
             * Description: Font is a collection of characters with a similar design. Use this API to retrieve a list of website fonts.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Gets theme by id
             * Description: Use this API to retrieve the details of a specific theme by using its ID.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Update a theme
             * Description: Use this API to edit an existing theme. You can customize the website font, sections, images, styles, and many more.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Delete a theme
             * Description: Use this API to delete a theme from the theme library.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get a theme preview
             * Description: A theme can be previewed before applying it. Use this API to retrieve the theme preview by using its ID.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Publish a theme
             * Description: Use this API to publish a theme that is either newly created or edited.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Unpublish a theme
             * Description: Use this API to remove an existing theme from the list of available themes.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Archive a theme
             * Description: Use this API to store an existing theme but not delete it so that it can be used in future if required.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Unarchive a theme
             * Description: Use this API to restore an archived theme and bring it back for editing or publishing.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Fetch last modified timestamp
             * Description: Use this API to fetch Last-Modified timestamp in header metadata.
             **/
            public func getThemeLastModified(
                themeId: String,

                onResponse: @escaping (_ response: [String: Any]?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "head",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/polling",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                            let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                           NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                    }
                )
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
             * Summary: Get a list of customers
             * Description: Use this API to retrieve a list of customers who have registered in the application.
             **/
            public func getCustomers(
                q: [String: Any]?,
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Search an existing user.
             * Description: Use this API to retrieve an existing user from a list.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Block/Unblock user
             * Description: Block/Unblock user
             **/
            public func blockOrUnblockUsers(
                body: BlockUserRequestSchema,
                onResponse: @escaping (_ response: BlockUserSuccess?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/user/v1.0/company/\(companyId)/application/\(applicationId)/customers/activation",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(BlockUserSuccess.self, from: data)

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
             * Summary: archive user
             * Description: archive user
             **/
            public func archiveUser(
                body: ArchiveUserRequestSchema,
                onResponse: @escaping (_ response: ArchiveUserSuccess?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/user/v1.0/company/\(companyId)/application/\(applicationId)/customers/archive",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ArchiveUserSuccess.self, from: data)

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
             * Summary: undelete user who deleted from application and have not elapsed the platform configured delete days
             * Description: undelete user who deleted from application and have not elapsed the platform configured delete days
             **/
            public func unDeleteUser(
                body: UnDeleteUserRequestSchema,
                onResponse: @escaping (_ response: UnDeleteUserSuccess?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/user/v1.0/company/\(companyId)/application/\(applicationId)/customers/undelete",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(UnDeleteUserSuccess.self, from: data)

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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get a list of all session for a user
             * Description: Use this API to retrieve a list of session of customers who have registered in the application.
             **/
            public func getActiveSessions(
                id: String,

                onResponse: @escaping (_ response: SessionListResponseSchema?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                xQuery["id"] = id

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/user/v1.0/company/\(companyId)/application/\(applicationId)/customers/sesions",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(SessionListResponseSchema.self, from: data)

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
             * Summary: Delete a list of all session for a user
             * Description: Use this API to Delete a list of session of customers who have registered in the application.
             **/
            public func deleteActiveSessions(
                id: String,

                onResponse: @escaping (_ response: SessionDeleteResponseSchema?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                xQuery["id"] = id

                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/user/v1.0/company/\(companyId)/application/\(applicationId)/customers/sesions",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(SessionDeleteResponseSchema.self, from: data)

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
             * Summary: Get platform configurations
             * Description: Use this API to get all the platform configurations such as mobile image, desktop image, social logins, and all other text.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Update platform configurations
             * Description: Use this API to edit the existing platform configurations such as mobile image, desktop image, social logins, and all other text.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                            let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                           NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                    }
                )
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
             * Summary: Get a list of announcements
             * Description: Announcements are useful to highlight a message or information on top of a webpage. Use this API to retrieve a list of announcements.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                        pageNo: paginator.pageNo,

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
             * Summary: Create an announcement
             * Description: Announcements are useful to highlight a message or information on top of a webpage. Use this API to create an announcement.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get announcement by ID
             * Description: Use this API to retrieve an announcement and its details such as the target platform and pages on which it's applicable
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Update an announcement
             * Description: Use this API to edit an existing announcement and its details such as the target platform and pages on which it's applicable
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Update the schedule and the publish status of an announcement
             * Description: Use this API to edit the duration, i.e. start date-time and end date-time of an announcement. Moreover, you can enable/disable an announcement using this API.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Delete announcement by id
             * Description: Use this API to delete an existing announcement.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Create a blog
             * Description: Use this API to create a blog.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get blogs
             * Description: Use this API to get a list of blogs along with their details, such as the title, reading time, publish status, feature image, tags, author, etc.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                        pageNo: paginator.pageNo,

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
             * Summary: Update a blog
             * Description: Use this API to update the details of an existing blog which includes title, feature image, content, SEO details, expiry, etc.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Delete blogs
             * Description: Use this API to delete a blog.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get components of a blog
             * Description: Use this API to retrieve the components of a blog, such as title, slug, feature image, content, schedule, publish status, author, etc.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Adds a data loader
             * Description: Use this API to add data loader. This includes the data loader name, operationId, service name and its type (url/function) with corresponding value.
             **/
            public func addDataLoader(
                body: DataLoaderSchema,
                onResponse: @escaping (_ response: DataLoaderResponseSchema?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/data-loader",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(DataLoaderResponseSchema.self, from: data)

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
             * Summary: Get all the data loaders in an application
             * Description: Use this to get all data loaders of an application
             **/
            public func getDataLoaders(
                onResponse: @escaping (_ response: DataLoadersSchema?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/data-loader",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(DataLoadersSchema.self, from: data)

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
             * Summary: Delete data loader in application
             * Description: Use this API to delete data loader.
             **/
            public func deleteDataLoader(
                dataLoaderId: String,

                onResponse: @escaping (_ response: DataLoaderResponseSchema?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/dataLoader/\(dataLoaderId)",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(DataLoaderResponseSchema.self, from: data)

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
             * Summary: Edit a data loader by id
             * Description: Use this API to edit the details of an existing data loader by its ID.
             **/
            public func editDataLoader(
                dataLoaderId: String,
                body: DataLoaderSchema,
                onResponse: @escaping (_ response: DataLoaderResponseSchema?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/dataLoader/\(dataLoaderId)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(DataLoaderResponseSchema.self, from: data)

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
             * Summary: Select a data loader by id
             * Description: Use this API to select a data loader to be used in applications.
             **/
            public func selectDataLoader(
                dataLoaderId: String,

                onResponse: @escaping (_ response: DataLoaderResponseSchema?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/dataLoader/\(dataLoaderId)/select",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(DataLoaderResponseSchema.self, from: data)

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
             * Summary: Reset a data loader by serive name and operation Id
             * Description: Use this API to reselect a data loader.
             **/
            public func resetDataLoader(
                service: String,
                operationId: String,

                onResponse: @escaping (_ response: DataLoaderResetResponseSchema?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/dataLoader/\(service)/\(operationId)/reset",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(DataLoaderResetResponseSchema.self, from: data)

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
             * Summary: Get a list of FAQ categories
             * Description: FAQs can be divided into categories. Use this API to get a list of FAQ categories.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get an FAQ category by slug or id
             * Description: FAQs can be divided into categories. Use this API to get an FAQ categories using its slug or ID.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Create an FAQ category
             * Description: FAQs help users to solve an issue or know more about a process. FAQs can be categorized separately, for e.g. some questions can be related to payment, some could be related to purchase, shipping, navigating, etc. Use this API to create an FAQ category.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Update an FAQ category
             * Description: Use this API to edit an existing FAQ category.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Delete an FAQ category
             * Description: Use this API to delete an FAQ category.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get question and answers within an FAQ category
             * Description: Use this API to retrieve all the commonly asked question and answers belonging to an FAQ category.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Create an FAQ
             * Description: FAQs help users to solve an issue or know more about a process. Use this API to create an FAQ for a given FAQ category.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Update an FAQ
             * Description: Use this API to edit an existing FAQ.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Delete an FAQ
             * Description: Use this API to delete an existing FAQ.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get an FAQ
             * Description: Use this API to retrieve a specific FAQ. You will get the question and answer of that FAQ.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get SEO meta tag title for content
             * Description: Use this API to get GPT3 generated SEO meta tag title for content
             **/
            public func generateSEOTitle(
                type: GenerationEntityType,
                body: GenerateSEOContent,
                onResponse: @escaping (_ response: GeneratedSEOContent?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/generateSeo/\(type)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(GeneratedSEOContent.self, from: data)

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
             * Summary: Get landing pages
             * Description: Landing page is the first page that a prospect lands upon while visiting a website. Use this API to fetch a list of landing pages.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                        pageNo: paginator.pageNo,

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
             * Summary: Create a landing page
             * Description: Landing page is the first page that a prospect lands upon while visiting a website. Use this API to create a landing page.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Update a landing page
             * Description: Use this API to edit the details of an existing landing page.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Delete a landing page
             * Description: Use this API to delete an existing landing page.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get legal information
             * Description: Use this API to get the legal information of an application, which includes Policy, Terms and Conditions, Shipping Policy and FAQ regarding the application.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Save legal information
             * Description: Use this API to edit, update and save the legal information of an application, which includes Policy, Terms and Conditions, Shipping Policy and FAQ regarding the application.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get navigations
             * Description: Use this API to fetch the navigations details which includes the items of the navigation pane. It also shows the orientation, links, sub-navigations, etc.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                        pageNo: paginator.pageNo,

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
             * Summary: Create a navigation
             * Description: Navigation is the arrangement of navigational items to ease the accessibility of resources for users on a website. Use this API to create a navigation.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get default navigations
             * Description: On any website (application), there are navigations that are present by default. Use this API to retrieve those default navigations.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get a navigation by slug
             * Description: Use this API to retrieve a navigation by its slug.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Update a navigation
             * Description: Use this API to edit the details of an existing navigation.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Delete a navigation
             * Description: Use this API to delete an existing navigation.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get page meta
             * Description: Use this API to get the meta of custom pages (blog, page) and default system pages (e.g. home/brand/category/collection).
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get page spec
             * Description: Use this API to get the specifications of a page, such as page type, display name, params and query.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Create a page preview
             * Description: Use this API to create a page preview to check the appearance of a custom page.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Change the publish status of a page
             * Description: Use this API to change the publish status of an existing page. Allows you to publish and unpublish the page.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Delete a page
             * Description: Use this API to delete an existing page.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Save path based redirection rules
             * Description: Use this API to add redirection rules
             **/
            public func addPathRedirectionRules(
                body: PathMappingSchema,
                onResponse: @escaping (_ response: PathMappingSchema?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/path-mappings",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(PathMappingSchema.self, from: data)

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
             * Summary: Get path based redirection rules
             * Description: Use this API to get path based redirection rules.
             **/
            public func getPathRedirectionRules(
                pageSize: Int?,
                pageNo: Int?,

                onResponse: @escaping (_ response: PathMappingSchema?, _ error: FDKError?) -> Void
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
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/path-mappings",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(PathMappingSchema.self, from: data)

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
             * Summary: Get path based redirection rule
             * Description: Use this API to get path based redirection rule.
             **/
            public func getPathRedirectionRule(
                pathId: String,

                onResponse: @escaping (_ response: PathMappingSchema?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/pathMappings/\(pathId)",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(PathMappingSchema.self, from: data)

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
             * Summary: Update path based redirection rules
             * Description: Use this API to update redirection rules
             **/
            public func updatePathRedirectionRules(
                pathId: String,
                body: PathMappingSchema,
                onResponse: @escaping (_ response: PathMappingSchema?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/pathMappings/\(pathId)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(PathMappingSchema.self, from: data)

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
             * Summary: Delete path based redirection rules
             * Description: Use this API to delete redirection rules
             **/
            public func deletePathRedirectionRules(
                pathId: String,

                onResponse: @escaping (_ response: [String: Any]?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/pathMappings/\(pathId)",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get SEO configuration of an application
             * Description: Use this API to know how the SEO is configured in the application. This includes the sitemap, robot.txt, custom meta tags, etc.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Update SEO of application
             * Description: Use this API to edit the SEO details of an application. This includes the sitemap, robot.txt, custom meta tags, etc.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get slideshows
             * Description: A slideshow is a group of images, videos or a combination of both that are shown on the website in the form of slides. Use this API to fetch a list of slideshows.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                        pageNo: paginator.pageNo,

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
             * Summary: Create a slideshow
             * Description: A slideshow is a group of images, videos or a combination of both that are shown on the website in the form of slides. Use this API to create a slideshow.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get slideshow by slug
             * Description: Use this API to retrieve the details of a slideshow by its slug.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Update a slideshow
             * Description: Use this API to edit the details of an existing slideshow.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Delete a slideshow
             * Description: Use this API to delete an existing slideshow.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get support information
             * Description: Use this API to get the contact details for customer support, including emails and phone numbers.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Update the support data of an application
             * Description: Use this API to edit the existing contact details for customer support, including emails and phone numbers.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Update a tag
             * Description: Use this API to edit the details of an existing tag. This includes the tag name, tag type (css/js), url and position of the tag.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Delete tags in application
             * Description: Use this API to delete all the existing tags at once.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get all the tags in an application
             * Description: Use this API to get all the CSS and JS injected in the application in the form of tags.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Add a tag
             * Description: CSS and JS can be injected in the application (website) with the help of tags. Use this API to create such tags by entering the tag name, tag type (css/js), url and position of the tag.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Remove a tag
             * Description: Use this API to delete an existing tag.
             **/
            public func removeInjectableTag(
                body: RemoveHandpickedSchema,
                onResponse: @escaping (_ response: TagDeleteSuccessResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/tags/remove/handpicked",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(TagDeleteSuccessResponse.self, from: data)

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
             * Summary: Edit a tag by id
             * Description: Use this API to edit the details of an existing tag by its ID.
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Create a page
             * Description: Use this API to create a custom page using a title, seo, publish status, feature image, tags, meta, etc.
             **/
            public func createPage(
                body: PageRequest,
                onResponse: @escaping (_ response: PageSchema?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v2.0/company/\(companyId)/application/\(applicationId)/pages/",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get a list of pages
             * Description: Use this API to retrieve a list of pages.
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
                    url: "/service/platform/content/v2.0/company/\(companyId)/application/\(applicationId)/pages/",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                        pageNo: paginator.pageNo,

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
             * Summary: Update a page
             * Description: Use this API to edit the details of an existing page, such as its title, seo, publish status, feature image, tags, schedule, etc.
             **/
            public func updatePage(
                id: String,
                body: PageSchema,
                onResponse: @escaping (_ response: PageSchema?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v2.0/company/\(companyId)/application/\(applicationId)/pages/\(id)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get pages by component Id
             * Description: Use this API to retrieve the components of a page, such as its title, seo, publish status, feature image, tags, schedule, etc.
             **/
            public func getPageBySlug(
                slug: String,

                onResponse: @escaping (_ response: PageSchema?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v2.0/company/\(companyId)/application/\(applicationId)/pages/\(slug)",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                            let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                           NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                    }
                )
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                        pageNo: paginator.pageNo,

                        pageSize: paginator.pageSize,

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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                        pageNo: paginator.pageNo,

                        pageSize: paginator.pageSize,

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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                        pageNo: paginator.pageNo,

                        pageSize: paginator.pageSize,

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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                        pageNo: paginator.pageNo,

                        pageSize: paginator.pageSize,

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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                        pageNo: paginator.pageNo,

                        pageSize: paginator.pageSize,

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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Send email or sms synchronously
             * Description: Send email or sms synchronously
             **/
            public func sendCommunicationSynchronously(
                body: EngineRequest,
                onResponse: @escaping (_ response: EngineResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/engine/send-instant",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(EngineResponse.self, from: data)

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
             * Summary: Send email or sms asynchronously
             * Description: Send email or sms asynchronously
             **/
            public func sendCommunicationAsynchronously(
                body: EngineRequest,
                onResponse: @escaping (_ response: EngineResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/engine/send-async",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(EngineResponse.self, from: data)

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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                        pageNo: paginator.pageNo,

                        pageSize: paginator.pageSize,

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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                        pageNo: paginator.pageNo,

                        pageSize: paginator.pageSize,

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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                        pageNo: paginator.pageNo,

                        pageSize: paginator.pageSize,

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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                        pageId: paginator.pageId,

                        pageSize: paginator.pageSize,

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
             * Summary: Send OTP using email and sms
             * Description: Send OTP Comms via email and sms
             **/
            public func sendOtp(
                body: SendOtpCommsReq,
                onResponse: @escaping (_ response: SendOtpCommsRes?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/otp/send-otp-comms",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(SendOtpCommsRes.self, from: data)

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
             * Summary: Verify OTP sent via email and sms
             * Description: Verify OTP sent via email and sms
             **/
            public func verfiyOtp(
                body: VerifyOtpCommsReq,
                onResponse: @escaping (_ response: VerifyOtpCommsSuccessRes?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/otp/verify-otp-comms",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(VerifyOtpCommsSuccessRes.self, from: data)

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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                        pageNo: paginator.pageNo,

                        pageSize: paginator.pageSize,

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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                        pageNo: paginator.pageNo,

                        pageSize: paginator.pageSize,

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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                        pageNo: paginator.pageNo,

                        pageSize: paginator.pageSize,

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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get bank details
             * Description: Use this API to get saved bank details for returned/cancelled order using order id.
             **/
            public func getBankAccountDetailsOpenAPI(
                orderId: String,
                requestHash: String?,

                onResponse: @escaping (_ response: RefundAccountResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                xQuery["order_id"] = orderId

                if let value = requestHash {
                    xQuery["request_hash"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/payment/v1.0/company/\(companyId)/application/\(applicationId)/refund/account",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(RefundAccountResponse.self, from: data)

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
             * Summary: Save bank details for cancelled/returned order
             * Description: Use this API to save bank details for returned/cancelled order to refund amount in his account.
             **/
            public func addRefundBankAccountUsingOTP(
                body: AddBeneficiaryDetailsOTPRequest,
                onResponse: @escaping (_ response: RefundAccountResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/payment/v1.0/company/\(companyId)/application/\(applicationId)/refund/account",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(RefundAccountResponse.self, from: data)

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
             * Summary: List Order Beneficiary
             * Description: Get all active  beneficiary details added by the user for refund
             **/
            public func getUserOrderBeneficiaries(
                orderId: String,

                onResponse: @escaping (_ response: OrderBeneficiaryResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                xQuery["order_id"] = orderId

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/payment/v1.0/company/\(companyId)/application/\(applicationId)/refund/accounts/order",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(OrderBeneficiaryResponse.self, from: data)

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
             * Summary: List User Beneficiary
             * Description: Get all active  beneficiary details added by the user for refund
             **/
            public func getUserBeneficiaries(
                orderId: String,

                onResponse: @escaping (_ response: OrderBeneficiaryResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                xQuery["order_id"] = orderId

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/payment/v1.0/company/\(companyId)/application/\(applicationId)/refund/accounts/user",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(OrderBeneficiaryResponse.self, from: data)

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
             * Summary: Confirm payment after successful payment from payment gateway
             * Description: Use this API to confirm payment after payment gateway accepted payment.
             **/
            public func confirmPayment(
                body: PaymentConfirmationRequest,
                onResponse: @escaping (_ response: PaymentConfirmationResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/payment/v1.0/company/\(companyId)/application/\(applicationId)/payment/confirm",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(PaymentConfirmationResponse.self, from: data)

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
             * Summary: Get COD limit for user
             * Description: Use this API to get user cod limit and reamining limit for the payment
             **/
            public func getUserCODlimitRoutes(
                merchantUserId: String,
                mobileNo: String,

                onResponse: @escaping (_ response: GetUserCODLimitResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                xQuery["merchant_user_id"] = merchantUserId

                xQuery["mobile_no"] = mobileNo

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/payment/v1.0/company/\(companyId)/application/\(applicationId)/payment/user-cod",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(GetUserCODLimitResponse.self, from: data)

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
             * Summary: Set COD option for user for payment
             * Description: Use this API to set cod option as true or false for the payment
             **/
            public func setUserCODlimitRoutes(
                body: SetCODForUserRequest,
                onResponse: @escaping (_ response: SetCODOptionResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/payment/v1.0/company/\(companyId)/application/\(applicationId)/payment/user-cod",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(SetCODOptionResponse.self, from: data)

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
             * Summary: get some information about the store and edc device
             * Description: Use this API to get info of devices linked to a particular app.
             **/
            public func edcAggregatorsAndModelList(
                onResponse: @escaping (_ response: EdcAggregatorAndModelListResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/payment/v1.0/company/\(companyId)/application/\(applicationId)/payment/edc-aggregator-list",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(EdcAggregatorAndModelListResponse.self, from: data)

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
             * Summary: get some information about the store and edc device
             * Description: Use this API to get info of devices linked to a particular app.
             **/
            public func edcDeviceStats(
                onResponse: @escaping (_ response: EdcDeviceStatsResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/payment/v1.0/company/\(companyId)/application/\(applicationId)/payment/edc-device-stats",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(EdcDeviceStatsResponse.self, from: data)

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
             * Summary: map new edc device to the terminal
             * Description: Use this API to map new edc device to the terminal
             **/
            public func updateEdcDevice(
                terminalUniqueIdentifier _: String,
                body: EdcAddRequest,
                onResponse: @escaping (_ response: EdcDeviceAddResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/payment/v1.0/company/\(companyId)/application/\(applicationId)/payment/edc-device",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(EdcDeviceAddResponse.self, from: data)

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
             * Summary: get details of a single edc device
             * Description: Use this API to get details of a single edc device
             **/
            public func getEdcDevice(
                terminalUniqueIdentifier: String,

                onResponse: @escaping (_ response: EdcDeviceDetailsResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/payment/v1.0/company/\(companyId)/application/\(applicationId)/payment/edcDevice/\(terminalUniqueIdentifier)",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(EdcDeviceDetailsResponse.self, from: data)

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
             * Summary: Update store id and device tag of edc device
             * Description: Use this API to Update store id and device tag of edc device
             **/
            public func addEdcDevice(
                terminalUniqueIdentifier: String,
                body: EdcUpdateRequest,
                onResponse: @escaping (_ response: EdcDeviceUpdateResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/payment/v1.0/company/\(companyId)/application/\(applicationId)/payment/edcDevice/\(terminalUniqueIdentifier)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(EdcDeviceUpdateResponse.self, from: data)

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
             * Summary: get all the device list of an app
             * Description: Use this API to get all devices linked to a particular app.
             **/
            public func edcDeviceList(
                pageNo: Int?,
                pageSize: Int?,
                isActive: Bool?,
                storeId: Int?,
                deviceTag: String?,

                onResponse: @escaping (_ response: EdcDeviceListResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = pageNo {
                    xQuery["page_no"] = value
                }

                if let value = pageSize {
                    xQuery["page_size"] = value
                }

                if let value = isActive {
                    xQuery["is_active"] = value
                }

                if let value = storeId {
                    xQuery["store_id"] = value
                }

                if let value = deviceTag {
                    xQuery["device_tag"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/payment/v1.0/company/\(companyId)/application/\(applicationId)/payment/edc-device-list",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(EdcDeviceListResponse.self, from: data)

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
             * Summary: Get All Valid Payment Options
             * Description: Use this API to get Get All Valid Payment Options for making payment
             **/
            public func getPosPaymentModeRoutes(
                amount: Int,
                cartId: String,
                pincode: String,
                checkoutMode: String,
                refresh: Bool?,
                cardReference: String?,
                orderType: String,
                userDetails: String?,

                onResponse: @escaping (_ response: PaymentOptionsResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                xQuery["amount"] = amount

                xQuery["cart_id"] = cartId

                xQuery["pincode"] = pincode

                xQuery["checkout_mode"] = checkoutMode

                if let value = refresh {
                    xQuery["refresh"] = value
                }

                if let value = cardReference {
                    xQuery["card_reference"] = value
                }

                xQuery["order_type"] = orderType

                if let value = userDetails {
                    xQuery["user_details"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/payment/v1.0/company/\(companyId)/application/\(applicationId)/payment/options/pos",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Initialize a payment (server-to-server) for UPI and BharatQR
             * Description: PUse this API to inititate payment using UPI, BharatQR, wherein the UPI requests are send to the app and QR code is displayed on the screen.
             **/
            public func initialisePayment(
                body: PaymentInitializationRequest,
                onResponse: @escaping (_ response: PaymentInitializationResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/payment/v1.0/company/\(companyId)/application/\(applicationId)/payment/request",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(PaymentInitializationResponse.self, from: data)

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
             * Summary: Performs continuous polling to check status of payment on the server
             * Description: Use this API to perform continuous polling at intervals to check the status of payment until timeout.
             **/
            public func checkAndUpdatePaymentStatus(
                body: PaymentStatusUpdateRequest,
                onResponse: @escaping (_ response: PaymentStatusUpdateResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/payment/v1.0/company/\(companyId)/application/\(applicationId)/payment/confirm/polling",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(PaymentStatusUpdateResponse.self, from: data)

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
             * Summary: API to resend and cancel a payment link which was already generated.
             * Description: Use this API to perform resend or cancel a payment link based on request payload.
             **/
            public func resendOrCancelPayment(
                body: ResendOrCancelPaymentRequest,
                onResponse: @escaping (_ response: ResendOrCancelPaymentResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/payment/v1.0/company/\(companyId)/application/\(applicationId)/payment/cancel",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ResendOrCancelPaymentResponse.self, from: data)

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
             * Summary: List Payment Options Method Codes
             * Description: Get all active List Payment Options Method Codes
             **/
            public func getPaymentCodeOption(
                onResponse: @escaping (_ response: GetPaymentCodeResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/payment/v1.0/company/\(companyId)/application/\(applicationId)/payment/codes",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(GetPaymentCodeResponse.self, from: data)

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
             * Summary:
             * Description:
             **/
            public func getApplicationShipments(
                lane: String?,
                searchType: String?,
                searchId: String?,
                fromDate: String?,
                toDate: String?,
                dpIds: String?,
                orderingCompanyId: String?,
                stores: String?,
                salesChannel: String?,
                requestByExt: String?,
                pageNo: Int?,
                pageSize: Int?,
                customerId: String?,
                isPrioritySort: Bool?,

                onResponse: @escaping (_ response: ShipmentInternalPlatformViewResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = lane {
                    xQuery["lane"] = value
                }

                if let value = searchType {
                    xQuery["search_type"] = value
                }

                if let value = searchId {
                    xQuery["search_id"] = value
                }

                if let value = fromDate {
                    xQuery["from_date"] = value
                }

                if let value = toDate {
                    xQuery["to_date"] = value
                }

                if let value = dpIds {
                    xQuery["dp_ids"] = value
                }

                if let value = orderingCompanyId {
                    xQuery["ordering_company_id"] = value
                }

                if let value = stores {
                    xQuery["stores"] = value
                }

                if let value = salesChannel {
                    xQuery["sales_channel"] = value
                }

                if let value = requestByExt {
                    xQuery["request_by_ext"] = value
                }

                if let value = pageNo {
                    xQuery["page_no"] = value
                }

                if let value = pageSize {
                    xQuery["page_size"] = value
                }

                if let value = customerId {
                    xQuery["customer_id"] = value
                }

                if let value = isPrioritySort {
                    xQuery["is_priority_sort"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/orders/v1.0/company/\(companyId)/application/\(applicationId)/shipments/",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ShipmentInternalPlatformViewResponse.self, from: data)

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
             * Summary:
             * Description:
             **/
            public func getAppOrderShipmentDetails(
                orderId: String,

                onResponse: @escaping (_ response: ShipmentDetailsResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                xQuery["order_id"] = orderId

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/orders/v1.0/company/\(companyId)/application/\(applicationId)/order-details",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ShipmentDetailsResponse.self, from: data)

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
             * Summary: Track shipment
             * Description: Track Shipment by shipment id, for application based on application Id
             **/
            public func trackPlatformShipment(
                shipmentId: String,

                onResponse: @escaping (_ response: PlatformShipmentTrack?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/orders/v1.0/company/\(companyId)/application/\(applicationId)/orders/shipments/\(shipmentId)/track",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                            let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                           NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                    }
                )
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Update a single custom meta.
             * Description: This API helps to update data associated to a item custom meta.
             **/
            public func updateAppProduct(
                itemId: String,
                body: ApplicationItemMeta,
                onResponse: @escaping (_ response: SuccessResponse1?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "patch",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/product/\(itemId)/",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(SuccessResponse1.self, from: data)

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
             * Summary: Get company application product data.
             * Description: Products are the core resource of an application. If successful, returns a Company Application Product resource in the response body depending upon filter sent.
             **/
            public func getAppProduct(
                itemId: String,

                onResponse: @escaping (_ response: OwnerAppItemResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/product/\(itemId)/",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(OwnerAppItemResponse.self, from: data)

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
             * Summary: Get configuration metadata details for catalog for admin panel
             * Description: Get the configuraion metadata details for catalog.
             **/
            public func getConfigurationMetadata(
                configType: String,
                templateSlug: String?,

                onResponse: @escaping (_ response: GetConfigMetadataResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = templateSlug {
                    xQuery["template_slug"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/catalog/v2.0/company/\(companyId)/application/\(applicationId)/productConfiguration/\(configType)/metadata/",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(GetConfigMetadataResponse.self, from: data)

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
             * Summary: Create configuration for Group config types.
             * Description: Create configuration for Group config types.
             **/
            public func createGroupConfiguration(
                configType: String,
                body: AppConfigurationDetail,
                onResponse: @escaping (_ response: AppConfigurationDetail?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/catalog/v2.0/company/\(companyId)/application/\(applicationId)/productConfiguration/\(configType)/groups",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(AppConfigurationDetail.self, from: data)

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
             * Summary: Get the details of the application configured configurations of group config types.
             * Description: Get the details of the application configured configurations of group config types.
             **/
            public func getGroupConfigurations(
                configType: String,
                pageNo: Int?,
                pageSize: Int?,
                search: String?,
                templateSlug: String?,

                onResponse: @escaping (_ response: GetConfigResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = pageNo {
                    xQuery["page_no"] = value
                }

                if let value = pageSize {
                    xQuery["page_size"] = value
                }

                if let value = search {
                    xQuery["search"] = value
                }

                if let value = templateSlug {
                    xQuery["template_slug"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/catalog/v2.0/company/\(companyId)/application/\(applicationId)/productConfiguration/\(configType)/groups",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(GetConfigResponse.self, from: data)

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
             * Summary: Update the group configurations for the application.
             * Description: Update the group configurations for the application.
             **/
            public func updateGroupConfiguration(
                configType: String,
                groupSlug: String,
                body: AppConfigurationDetail,
                onResponse: @escaping (_ response: AppConfigurationDetail?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/catalog/v2.0/company/\(companyId)/application/\(applicationId)/productConfiguration/\(configType)/groups/\(groupSlug)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(AppConfigurationDetail.self, from: data)

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
             * Summary: Delete configuration of the product config type of the application.
             * Description: Delete configuration of the product config type of the application.
             **/
            public func deleteGroupConfiguration(
                configType: String,
                groupSlug: String,

                onResponse: @escaping (_ response: ConfigSuccessResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/catalog/v2.0/company/\(companyId)/application/\(applicationId)/productConfiguration/\(configType)/groups/\(groupSlug)",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ConfigSuccessResponse.self, from: data)

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
             * Summary: Add configuration for listings
             * Description: Add configuration for listing.
             **/
            public func createListingConfiguration(
                configType: String,
                body: AppConfigurationsSort,
                onResponse: @escaping (_ response: AppConfigurationsSort?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/catalog/v2.0/company/\(companyId)/application/\(applicationId)/productConfiguration/\(configType)/",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(AppConfigurationsSort.self, from: data)

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
             * Summary: Get the details of the application configured configurations of listing config types.
             * Description: Get the details of the application configured configurations of listing config types.
             **/
            public func getListingConfigurations(
                configType: String,
                pageNo: Int?,
                pageSize: Int?,
                search: String?,

                onResponse: @escaping (_ response: GetConfigResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = pageNo {
                    xQuery["page_no"] = value
                }

                if let value = pageSize {
                    xQuery["page_size"] = value
                }

                if let value = search {
                    xQuery["search"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/catalog/v2.0/company/\(companyId)/application/\(applicationId)/productConfiguration/\(configType)/",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(GetConfigResponse.self, from: data)

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
             * Summary: Update configuration for listings
             * Description: Update configuration for listing.
             **/
            public func updateListingConfiguration(
                configType: String,
                configId: String,
                body: AppConfigurationsSort,
                onResponse: @escaping (_ response: AppConfigurationsSort?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/catalog/v2.0/company/\(companyId)/application/\(applicationId)/productConfiguration/\(configType)/item/\(configId)/",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(AppConfigurationsSort.self, from: data)

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
             * Summary: Delete configuration for listings
             * Description: Delete configuration for listing.
             **/
            public func deleteListingConfiguration(
                configType: String,
                configId: String,

                onResponse: @escaping (_ response: ConfigSuccessResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/catalog/v2.0/company/\(companyId)/application/\(applicationId)/productConfiguration/\(configType)/item/\(configId)/",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ConfigSuccessResponse.self, from: data)

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
             * Summary: Update allow single flag for filters of the application.
             * Description: Update allow single flag for filters of the application.
             **/
            public func updateAllowSingle(
                body: AllowSingleRequest,
                onResponse: @escaping (_ response: ConfigSuccessResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/catalog/v2.0/company/\(companyId)/application/\(applicationId)/product-configuration/filter/allow_single",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ConfigSuccessResponse.self, from: data)

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
             * Summary: Update the default sort key configuration for the application.
             * Description: Update the default sort key configuration for the application.
             **/
            public func updateDefaultSort(
                body: DefaultKeyRequest,
                onResponse: @escaping (_ response: ConfigSuccessResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/catalog/v2.0/company/\(companyId)/application/\(applicationId)/product-configuration/sort/default_key",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ConfigSuccessResponse.self, from: data)

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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: List all the collections
             * Description: A Collection allows you to organize your products into hierarchical groups. For example, a dress might be in the category _Clothing_, the individual product might also be in the collection _Summer_. On successful request, returns all the collections as specified in `CollectionListingSchema`
             **/
            public func getAllCollections(
                q: String?,
                scheduleStatus: String?,
                type: String?,
                tags: [String]?,
                isActive: Bool?,
                pageNo: Int?,
                pageSize: Int?,

                onResponse: @escaping (_ response: GetCollectionListingResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = q {
                    xQuery["q"] = value
                }

                if let value = scheduleStatus {
                    xQuery["schedule_status"] = value
                }

                if let value = type {
                    xQuery["type"] = value
                }

                if let value = tags {
                    xQuery["tags"] = value
                }

                if let value = isActive {
                    xQuery["is_active"] = value
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
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/collections/",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Update a collection
             * Description: Update a collection by it's id. On successful request, returns the updated collection
             **/
            public func updateCollection(
                id: String,
                body: UpdateCollection,
                onResponse: @escaping (_ response: UpdateCollection?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/collections/\(id)/",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(UpdateCollection.self, from: data)

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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Add items to a collection
             * Description: Adds items to a collection specified by its `id`. See `CollectionItemRequest` for the list of attributes needed to add items to an collection.
             **/
            public func addCollectionItems(
                id: String,
                body: CollectionItemUpdate,
                onResponse: @escaping (_ response: UpdatedResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/collections/\(id)/items/",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get Inventory for company
             * Description: This API allows get Inventory data for particular company grouped by size and store.
             **/
            public func getDiscountedInventoryBySizeIdentifier(
                itemId: Int,
                sizeIdentifier: String,
                pageNo: Int?,
                pageSize: Int?,
                q: String?,
                locationIds: [Int]?,

                onResponse: @escaping (_ response: InventorySellerIdentifierResponsePaginated?, _ error: FDKError?) -> Void
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

                if let value = locationIds {
                    xQuery["location_ids"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/products/\(itemId)/inventory/\(sizeIdentifier)",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(InventorySellerIdentifierResponsePaginated.self, from: data)

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
             * Summary: List all the brands
             * Description: A brand is the name under which a product is being sold. Use this API to list all the brands. You can pass optionally filter the brands by the department. If successful, returns a paginated list of brands specified in `BrandListingResponse`
             **/
            public func getApplicationBrands(
                department: String?,
                pageNo: Int?,
                pageSize: Int?,
                q: String?,
                brandId: [Int]?,

                onResponse: @escaping (_ response: BrandListingResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = department {
                    xQuery["department"] = value
                }

                if let value = pageNo {
                    xQuery["page_no"] = value
                }

                if let value = pageSize {
                    xQuery["page_size"] = value
                }

                if let value = q {
                    xQuery["q"] = value
                }

                if let value = brandId {
                    xQuery["brand_id"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/brands",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(BrandListingResponse.self, from: data)

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
             * Summary: get paginator for getApplicationBrands
             * Description: fetch the next page by calling .next(...) function
             **/
            public func getApplicationBrandsPaginator(
                department: String?,
                pageSize: Int?,
                q: String?,
                brandId: [Int]?

            ) -> Paginator<BrandListingResponse> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<BrandListingResponse>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getApplicationBrands(
                        department: department,
                        pageNo: paginator.pageNo,

                        pageSize: paginator.pageSize,

                        q: q,
                        brandId: brandId
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
             * Summary: List all the departments
             * Description: Departments are a way to categorise similar products. A product can lie in multiple departments. For example, a skirt can below to the 'Women's Fashion' Department while a handbag can lie in 'Women's Accessories' Department. Use this API to list all the departments. If successful, returns the list of departments specified in `DepartmentResponse`
             **/
            public func getDepartments(
                onResponse: @escaping (_ response: DepartmentResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/departments",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(DepartmentResponse.self, from: data)

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
             * Summary: List all the categories
             * Description: List all the categories. You can optionally pass filter the brands by the department. If successful, returns a paginated list of brands specified in `CategoryListingResponse`
             **/
            public func getCategories(
                department: String?,

                onResponse: @escaping (_ response: CategoryListingResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = department {
                    xQuery["department"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/categories",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CategoryListingResponse.self, from: data)

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
             * Summary: List the products
             * Description: List all the products associated with a brand, collection or category in a requested sort order. The API additionally supports arbitrary search queries that may refer the name of any product, brand, category or collection. If successful, returns a paginated list of products specified in `ApplicationProductListingResponse`
             **/
            public func getAppicationProducts(
                q: String?,
                f: String?,
                c: String?,
                filters: Bool?,
                sortOn: String?,
                pageId: String?,
                pageSize: Int?,
                pageNo: Int?,
                pageType: String?,
                itemIds: [Int]?,

                onResponse: @escaping (_ response: ApplicationProductListingResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = q {
                    xQuery["q"] = value
                }

                if let value = f {
                    xQuery["f"] = value
                }

                if let value = c {
                    xQuery["c"] = value
                }

                if let value = filters {
                    xQuery["filters"] = value
                }

                if let value = sortOn {
                    xQuery["sort_on"] = value
                }

                if let value = pageId {
                    xQuery["page_id"] = value
                }

                if let value = pageSize {
                    xQuery["page_size"] = value
                }

                if let value = pageNo {
                    xQuery["page_no"] = value
                }

                if let value = pageType {
                    xQuery["page_type"] = value
                }

                if let value = itemIds {
                    xQuery["item_ids"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/products",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ApplicationProductListingResponse.self, from: data)

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
             * Summary: get paginator for getAppicationProducts
             * Description: fetch the next page by calling .next(...) function
             **/
            public func getAppicationProductsPaginator(
                q: String?,
                f: String?,
                c: String?,
                filters: Bool?,
                sortOn: String?,
                pageSize: Int?,
                itemIds: [Int]?

            ) -> Paginator<ApplicationProductListingResponse> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<ApplicationProductListingResponse>(pageSize: pageSize, type: "cursor")
                paginator.onPage = {
                    self.getAppicationProducts(
                        q: q,
                        f: f,
                        c: c,
                        filters: filters,
                        sortOn: sortOn,
                        pageId: paginator.pageId,

                        pageSize: paginator.pageSize,

                        pageNo: paginator.pageNo,

                        pageType: paginator.type,

                        itemIds: itemIds
                    ) { response, error in
                        if let response = response {
                            paginator.hasNext = response.page.hasNext ?? false
                            paginator.pageId = response.page.nextId
                        }
                        paginator.onNext?(response, error)
                    }
                }
                return paginator
            }

            /**
             *
             * Summary: Get a product
             * Description: Products are the core resource of an application. Products can be associated by categories, collections, brands and more. This API retrieves the product specified by the given **slug**. If successful, returns a Product resource in the response body specified in `ProductDetail`
             **/
            public func getProductDetailBySlug(
                slug: String,

                onResponse: @escaping (_ response: ProductDetail?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/products/\(slug)",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ProductDetail.self, from: data)

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
             * Summary: Get applicationwise products
             * Description: Products are the core resource of an application. Products can be associated by categories, collections, brands and more. If successful, returns a Product resource in the response body specified in `ApplicationProductListingResponseDatabasePowered`
             **/
            public func getAppProducts(
                brandIds: [Int]?,
                categoryIds: [Int]?,
                departmentIds: [Int]?,
                tags: [String]?,
                pageNo: Int?,
                pageSize: Int?,
                q: String?,

                onResponse: @escaping (_ response: ProductListingResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = brandIds {
                    xQuery["brand_ids"] = value
                }

                if let value = categoryIds {
                    xQuery["category_ids"] = value
                }

                if let value = departmentIds {
                    xQuery["department_ids"] = value
                }

                if let value = tags {
                    xQuery["tags"] = value
                }

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
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/raw-products/",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get the stock of a product
             * Description: Retrieve the available Inventory of the products. Use this API to get the Inventory status of products with the filters of timestamp, store_ids, brand_ids, item_id - Items - Pagination
             **/
            public func getAppInventory(
                itemIds: [Int]?,
                storeIds: [Int]?,
                brandIds: [Int]?,
                sellerIdentifiers: [String]?,
                timestamp: String?,
                pageSize: Int?,
                pageId: String?,

                onResponse: @escaping (_ response: InventoryStockResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = itemIds {
                    xQuery["item_ids"] = value
                }

                if let value = storeIds {
                    xQuery["store_ids"] = value
                }

                if let value = brandIds {
                    xQuery["brand_ids"] = value
                }

                if let value = sellerIdentifiers {
                    xQuery["seller_identifiers"] = value
                }

                if let value = timestamp {
                    xQuery["timestamp"] = value
                }

                if let value = pageSize {
                    xQuery["page_size"] = value
                }

                if let value = pageId {
                    xQuery["page_id"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/inventory/",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(InventoryStockResponse.self, from: data)

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
             * Summary: Get list of locations
             * Description: This API allows to view all the locations asscoiated to a application.
             **/
            public func getAppLocations(
                storeType: String?,
                uid: [Int]?,
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

                if let value = uid {
                    xQuery["uid"] = value
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
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/locations",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: get paginator for getAppLocations
             * Description: fetch the next page by calling .next(...) function
             **/
            public func getAppLocationsPaginator(
                storeType: String?,
                uid: [Int]?,
                q: String?,
                stage: String?,
                pageSize: Int?

            ) -> Paginator<LocationListSerializer> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<LocationListSerializer>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getAppLocations(
                        storeType: storeType,
                        uid: uid,
                        q: q,
                        stage: stage,
                        pageNo: paginator.pageNo,

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
             * Summary: List all the brands for the application
             * Description: A brand is the name under which a product is being sold. Use this API to list all the brands. You can pass optionally filter the brands by the department. If successful, returns a paginated list of brands specified in `BrandListingResponse`
             **/
            public func getApplicationBrandListing(
                pageNo: Int?,
                pageSize: Int?,
                q: String?,

                onResponse: @escaping (_ response: BrandListingResponse?, _ error: FDKError?) -> Void
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
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/brand",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(BrandListingResponse.self, from: data)

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
             * Summary: get paginator for getApplicationBrandListing
             * Description: fetch the next page by calling .next(...) function
             **/
            public func getApplicationBrandListingPaginator(
                pageSize: Int?,
                q: String?

            ) -> Paginator<BrandListingResponse> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<BrandListingResponse>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getApplicationBrandListing(
                        pageNo: paginator.pageNo,

                        pageSize: paginator.pageSize,

                        q: q
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
             * Summary: Update a single custom json.
             * Description: This API helps to update data associated to a item custom meta.
             **/
            public func updateAppBrand(
                brandUid: String,
                body: ApplicationBrandJson,
                onResponse: @escaping (_ response: SuccessResponse1?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "patch",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/brand/\(brandUid)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(SuccessResponse1.self, from: data)

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
             * Summary: List all the brands for the application
             * Description: A brand is the name under which a product is being sold. Use this API to list all the brands. You can pass optionally filter the brands by the department. If successful, returns a paginated list of brands specified in `BrandListingResponse`
             **/
            public func getApplicationCategoryListing(
                departmentId: Int?,
                pageNo: Int?,
                pageSize: Int?,
                q: String?,

                onResponse: @escaping (_ response: BrandListingResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = departmentId {
                    xQuery["department_id"] = value
                }

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
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/category",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(BrandListingResponse.self, from: data)

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
             * Summary: get paginator for getApplicationCategoryListing
             * Description: fetch the next page by calling .next(...) function
             **/
            public func getApplicationCategoryListingPaginator(
                departmentId: Int?,
                pageSize: Int?,
                q: String?

            ) -> Paginator<BrandListingResponse> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<BrandListingResponse>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getApplicationCategoryListing(
                        departmentId: departmentId,
                        pageNo: paginator.pageNo,

                        pageSize: paginator.pageSize,

                        q: q
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
             * Summary: Update a single custom json.
             * Description: This API helps to update data associated to a item custom meta.
             **/
            public func updateAppCategory(
                categoryUid: String,
                body: ApplicationCategoryJson,
                onResponse: @escaping (_ response: SuccessResponse1?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "patch",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/category/\(categoryUid)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(SuccessResponse1.self, from: data)

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
             * Summary: List all the departments for the application
             * Description: Departments are a way to categorise similar products. A product can lie in multiple departments. For example, a skirt can below to the 'Women's Fashion' Department while a handbag can lie in 'Women's Accessories' Department. Use this API to list all the application departments. If successful, returns the list of departments specified in `ApplicationDepartmentListingResponse`
             **/
            public func getApplicationDepartmentListing(
                pageNo: Int?,
                pageSize: Int?,
                q: String?,

                onResponse: @escaping (_ response: ApplicationDepartmentListingResponse?, _ error: FDKError?) -> Void
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
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/department",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ApplicationDepartmentListingResponse.self, from: data)

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
             * Summary: get paginator for getApplicationDepartmentListing
             * Description: fetch the next page by calling .next(...) function
             **/
            public func getApplicationDepartmentListingPaginator(
                pageSize: Int?,
                q: String?

            ) -> Paginator<ApplicationDepartmentListingResponse> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<ApplicationDepartmentListingResponse>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getApplicationDepartmentListing(
                        pageNo: paginator.pageNo,

                        pageSize: paginator.pageSize,

                        q: q
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
             * Summary: Update a single custom json.
             * Description: This API helps to update data associated to a item custom meta.
             **/
            public func updateAppDepartment(
                departmentUid: String,
                body: ApplicationDepartmentJson,
                onResponse: @escaping (_ response: SuccessResponse1?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "patch",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/department/\(departmentUid)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(SuccessResponse1.self, from: data)

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
             * Summary: Update a single custom json.
             * Description: This API helps to update data associated to a item custom meta.
             **/
            public func updateAppLocation(
                storeUid: String,
                body: ApplicationStoreJson,
                onResponse: @escaping (_ response: SuccessResponse1?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "patch",
                    url: "/service/platform/catalog/v1.0/company/\(companyId)/application/\(applicationId)/store/\(storeUid)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(SuccessResponse1.self, from: data)

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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Copy Files
             * Description: Copy Files
             **/
            public func appCopyFiles(
                sync: Bool?,
                body: BulkRequest,
                onResponse: @escaping (_ response: BulkUploadResponse?, _ error: FDKError?) -> Void
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(BulkUploadResponse.self, from: data)

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
                    url: "/service/platform/assets/v1.0/company/\(companyId)/application/\(applicationId)/namespaces/\(namespace)/browse/",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                        pageNo: paginator.pageNo,

                        pageSize: paginator.pageSize,

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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                            let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                           NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                    }
                )
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get previous build versions
             * Description: Get previous build versions
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Application inventory enabled companies
             * Description: Application inventory enabled companies.
             **/
            public func getAppCompanies(
                uid: Int?,
                pageNo: Int?,
                pageSize: Int?,

                onResponse: @escaping (_ response: CompaniesResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = uid {
                    xQuery["uid"] = value
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
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/companies",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: get paginator for getAppCompanies
             * Description: fetch the next page by calling .next(...) function
             **/
            public func getAppCompaniesPaginator(
                uid: Int?,
                pageSize: Int?

            ) -> Paginator<CompaniesResponse> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<CompaniesResponse>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getAppCompanies(
                        uid: uid,
                        pageNo: paginator.pageNo,

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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                        pageNo: paginator.pageNo,

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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
            public func getAppSupportedCurrency(
                onResponse: @escaping (_ response: AppCurrencyResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/currency/supported",
                    query: nil,
                    body: nil,
                    headers: [],
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
             * Summary: get paginator for getOrderingStoresByFilter
             * Description: fetch the next page by calling .next(...) function
             **/
            public func getOrderingStoresByFilterPaginator(
                pageSize: Int?,

                body: FilterOrderingStoreRequest
            ) -> Paginator<OrderingStores> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<OrderingStores>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getOrderingStoresByFilter(
                        pageNo: paginator.pageNo,

                        pageSize: paginator.pageSize,
                        body: body
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Description: Use this API to retrieve the details of all stores access given to the staff member (the selling locations where the application will be utilized for placing orders).
             **/
            public func getStaffOrderingStores(
                pageNo: Int?,
                pageSize: Int?,
                q: String?,

                onResponse: @escaping (_ response: OrderingStoresResponse?, _ error: FDKError?) -> Void
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
                    url: "/service/platform/configuration/v1.0/company/\(companyId)/application/\(applicationId)/ordering-store/staff-stores",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(OrderingStoresResponse.self, from: data)

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
             * Summary: get paginator for getStaffOrderingStores
             * Description: fetch the next page by calling .next(...) function
             **/
            public func getStaffOrderingStoresPaginator(
                pageSize: Int?,
                q: String?

            ) -> Paginator<OrderingStoresResponse> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<OrderingStoresResponse>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getStaffOrderingStores(
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                        pageNo: paginator.pageNo,

                        pageSize: paginator.pageSize,

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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get promotion list
             * Description: Get promotion list with pagination
             **/
            public func getPromotions(
                pageNo: Int?,
                pageSize: Int?,
                q: String?,
                status: String?,
                promoGroup: String?,
                promotionType: String?,
                fpPanel: String?,
                promotionId: String?,

                onResponse: @escaping (_ response: PromotionsResponse?, _ error: FDKError?) -> Void
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

                if let value = status {
                    xQuery["status"] = value
                }

                if let value = promoGroup {
                    xQuery["promo_group"] = value
                }

                if let value = promotionType {
                    xQuery["promotion_type"] = value
                }

                if let value = fpPanel {
                    xQuery["fp_panel"] = value
                }

                if let value = promotionId {
                    xQuery["promotion_id"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/promotion",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(PromotionsResponse.self, from: data)

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
             * Summary: get paginator for getPromotions
             * Description: fetch the next page by calling .next(...) function
             **/
            public func getPromotionsPaginator(
                pageSize: Int?,
                q: String?,
                status: String?,
                promoGroup: String?,
                promotionType: String?,
                fpPanel: String?,
                promotionId: String?

            ) -> Paginator<PromotionsResponse> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<PromotionsResponse>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getPromotions(
                        pageNo: paginator.pageNo,

                        pageSize: paginator.pageSize,

                        q: q,
                        status: status,
                        promoGroup: promoGroup,
                        promotionType: promotionType,
                        fpPanel: fpPanel,
                        promotionId: promotionId
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
             * Summary: Create new promotion
             * Description: Create new promotion
             **/
            public func createPromotion(
                body: PromotionAdd,
                onResponse: @escaping (_ response: PromotionAdd?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/promotion",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(PromotionAdd.self, from: data)

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
             * Summary: Get with single promotion details or promotion list
             * Description: Get single promotion details with `id` in path param
             **/
            public func getPromotionById(
                id: String,

                onResponse: @escaping (_ response: PromotionUpdate?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/promotion/\(id)",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(PromotionUpdate.self, from: data)

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
             * Summary: Update existing promotion configuration
             * Description: Update promotion with id sent in `id`
             **/
            public func updatePromotion(
                id: String,
                body: PromotionUpdate,
                onResponse: @escaping (_ response: PromotionUpdate?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/promotion/\(id)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(PromotionUpdate.self, from: data)

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
             * Summary: Update promotion publish state and schedule
             * Description: Update publish/unpublish and change schedule for promotion
             **/
            public func updatePromotionPartially(
                id: String,
                body: PromotionPartialUpdate,
                onResponse: @escaping (_ response: SuccessMessage?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "patch",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/promotion/\(id)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Fetch all promos that are set as active
             * Description: Use this API to get list of all the active promos/coupons.
             **/
            public func getPromosCouponConfig(
                onResponse: @escaping (_ response: ActivePromosResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/promo-coupons",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ActivePromosResponse.self, from: data)

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
             * Summary: Fetch Cart Details
             * Description: Get all the details of cart for a list of provided `cart_items`
             **/
            public func fetchAndvalidateCartItems(
                body: OpenapiCartDetailsRequest,
                onResponse: @escaping (_ response: OpenapiCartDetailsResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/cart/validate",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(OpenapiCartDetailsResponse.self, from: data)

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
             * Summary: Check Pincode Serviceability
             * Description: Check Pincode serviceability for cart items provided in `cart_items` and address pincode in `shipping_address`
             **/
            public func checkCartServiceability(
                body: OpenApiCartServiceabilityRequest,
                onResponse: @escaping (_ response: OpenApiCartServiceabilityResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/cart/serviceability",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(OpenApiCartServiceabilityResponse.self, from: data)

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
             * Summary: Create Fynd order with cart details
             * Description: Generate Fynd order for cart details send with provided `cart_items`
             **/
            public func checkoutCart(
                body: OpenApiPlatformCheckoutReq,
                onResponse: @escaping (_ response: OpenApiCheckoutResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/cart/checkout",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(OpenApiCheckoutResponse.self, from: data)

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
             * Summary: Get with abandoned cart list
             * Description: Get abandoned cart list with pagination
             **/
            public func getAbandonedCart(
                pageNo: Int?,
                pageSize: Int?,
                fromDate: String?,
                toDate: String?,
                anonymousCart: Bool?,
                lastId: String?,
                sortOn: String?,

                onResponse: @escaping (_ response: AbandonedCartResponse?, _ error: FDKError?) -> Void
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

                if let value = anonymousCart {
                    xQuery["anonymous_cart"] = value
                }

                if let value = lastId {
                    xQuery["last_id"] = value
                }

                if let value = sortOn {
                    xQuery["sort_on"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/abandoned/carts",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(AbandonedCartResponse.self, from: data)

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
             * Summary: get paginator for getAbandonedCart
             * Description: fetch the next page by calling .next(...) function
             **/
            public func getAbandonedCartPaginator(
                pageSize: Int?,
                fromDate: String?,
                toDate: String?,
                anonymousCart: Bool?,
                lastId: String?,
                sortOn: String?

            ) -> Paginator<AbandonedCartResponse> {
                let pageSize = pageSize ?? 20
                let paginator = Paginator<AbandonedCartResponse>(pageSize: pageSize, type: "number")
                paginator.onPage = {
                    self.getAbandonedCart(
                        pageNo: paginator.pageNo,

                        pageSize: paginator.pageSize,

                        fromDate: fromDate,
                        toDate: toDate,
                        anonymousCart: anonymousCart,
                        lastId: lastId,
                        sortOn: sortOn
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
             * Summary: Add items to abandoned cart
             * Description: Use this API to add items to the abandoned cart.
             **/
            public func addItems(
                cartId: String,
                b: Bool?,
                body: AddCartRequest,
                onResponse: @escaping (_ response: AddCartDetailResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = b {
                    xQuery["b"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/abandoned/carts/\(cartId)",
                    query: xQuery,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(AddCartDetailResponse.self, from: data)

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
             * Summary: Update items in the abandoned cart
             * Description: <p>Use this API to update items added to the cart with the help of a request object containing attributes like item_quantity and item_size. These attributes will be fetched from the following APIs</p> <ul> <li><font color="monochrome">operation</font> Operation for current api call. <b>update_item</b> for update items. <b>remove_item</b> for removing items.</li> <li> <font color="monochrome">item_id</font>  "/platform/content/v1/products/"</li> <li> <font color="monochrome">item_size</font>   "/platform/content/v1/products/:slug/sizes/"</li> <li> <font color="monochrome">quantity</font>  item quantity (must be greater than or equal to 1)</li> <li> <font color="monochrome">article_id</font>   "/content​/v1​/products​/:identifier​/sizes​/price​/"</li> <li> <font color="monochrome">item_index</font>  item position in the cart (must be greater than or equal to 0)</li> </ul>
             **/
            public func updateCart(
                cartId: String,
                b: Bool?,
                body: UpdateCartRequest,
                onResponse: @escaping (_ response: UpdateCartDetailResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = b {
                    xQuery["b"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/abandoned/carts/\(cartId)",
                    query: xQuery,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(UpdateCartDetailResponse.self, from: data)

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
             * Summary: Generate token for sharing the cart
             * Description: Use this API to generate a shared cart snapshot and return a shortlink token. The link can be shared with other users for getting the same items in their cart.
             **/
            public func getCartShareLink(
                body: GetShareCartLinkRequest,
                onResponse: @escaping (_ response: GetShareCartLinkResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/share-cart",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(GetShareCartLinkResponse.self, from: data)

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
             * Summary: Get details of a shared cart
             * Description: Use this API to get the shared cart details as per the token generated using the share-cart API.
             **/
            public func getCartSharedItems(
                token: String,

                onResponse: @escaping (_ response: SharedCartResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/shareCart/\(token)",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(SharedCartResponse.self, from: data)

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
             * Summary: Merge or replace existing cart
             * Description: Use this API to merge the shared cart with existing cart, or replace the existing cart with the shared cart. The `action` parameter is used to indicate the operation Merge or Replace.
             **/
            public func updateCartWithSharedItems(
                token: String,
                action: String,
                cartId: String?,

                onResponse: @escaping (_ response: SharedCartResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = cartId {
                    xQuery["cart_id"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/shareCart/\(token)/\(action)",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(SharedCartResponse.self, from: data)

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
             * Summary: Get cart list for store os user
             * Description: Get all carts for the store os user which is created for customer
             **/
            public func getCartList(
                fromDate: String?,
                toDate: String?,
                filterOn: String?,

                onResponse: @escaping (_ response: MultiCartResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = fromDate {
                    xQuery["from_date"] = value
                }

                if let value = toDate {
                    xQuery["to_date"] = value
                }

                if let value = filterOn {
                    xQuery["filter_on"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/cart-list",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(MultiCartResponse.self, from: data)

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
             * Summary: Update user id for store os customer
             * Description: Update user id for store os customer after creating customer
             **/
            public func updateCartUser(
                id: String?,
                body: UpdateUserCartMapping,
                onResponse: @escaping (_ response: UserCartMappingResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = id {
                    xQuery["id"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/update-user",
                    query: xQuery,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(UserCartMappingResponse.self, from: data)

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
             * Summary: Fetch all items added to the customer cart using cart id
             * Description: Use this API to get details of all the items added to a cart.
             **/
            public func getCart(
                id: String?,
                i: Bool?,
                b: Bool?,
                assignCardId: Int?,
                buyNow: Bool?,

                onResponse: @escaping (_ response: CartDetailResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = id {
                    xQuery["id"] = value
                }

                if let value = i {
                    xQuery["i"] = value
                }

                if let value = b {
                    xQuery["b"] = value
                }

                if let value = assignCardId {
                    xQuery["assign_card_id"] = value
                }

                if let value = buyNow {
                    xQuery["buy_now"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/detail",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CartDetailResponse.self, from: data)

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
             * Summary: Add items to cart
             * Description: Use this API to add items to the cart.
             **/
            public func platformAddItems(
                i: Bool?,
                b: Bool?,
                buyNow: Bool?,
                id: String?,
                body: AddCartRequest,
                onResponse: @escaping (_ response: AddCartDetailResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = i {
                    xQuery["i"] = value
                }

                if let value = b {
                    xQuery["b"] = value
                }

                if let value = buyNow {
                    xQuery["buy_now"] = value
                }

                if let value = id {
                    xQuery["id"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/detail",
                    query: xQuery,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(AddCartDetailResponse.self, from: data)

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
             * Summary: Update items in the customer 's cart using cart id
             * Description: <p>Use this API to update items added to the cart with the help of a request object containing attributes like item_quantity and item_size. These attributes will be fetched from the following APIs</p> <ul> <li><font color="monochrome">operation</font> Operation for current api call. <b>update_item</b> for update items. <b>remove_item</b> for removing items.</li> <li> <font color="monochrome">item_id</font>  "/platform/content/v1/products/"</li> <li> <font color="monochrome">item_size</font>   "/platform/content/v1/products/:slug/sizes/"</li> <li> <font color="monochrome">quantity</font>  item quantity (must be greater than or equal to 1)</li> <li> <font color="monochrome">article_id</font>   "/content​/v1​/products​/:identifier​/sizes​/price​/"</li> <li> <font color="monochrome">item_index</font>  item position in the cart (must be greater than or equal to 0)</li> </ul>
             **/
            public func platformUpdateCart(
                id: String?,
                i: Bool?,
                b: Bool?,
                buyNow: Bool?,
                body: UpdateCartRequest,
                onResponse: @escaping (_ response: UpdateCartDetailResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = id {
                    xQuery["id"] = value
                }

                if let value = i {
                    xQuery["i"] = value
                }

                if let value = b {
                    xQuery["b"] = value
                }

                if let value = buyNow {
                    xQuery["buy_now"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/detail",
                    query: xQuery,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(UpdateCartDetailResponse.self, from: data)

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
             * Summary: Delete cart once user made successful checkout
             * Description: Use this API to delete the cart.
             **/
            public func deleteCart(
                id: String?,
                body: DeleteCartRequest,
                onResponse: @escaping (_ response: DeleteCartDetailResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = id {
                    xQuery["id"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/cart_archive",
                    query: xQuery,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(DeleteCartDetailResponse.self, from: data)

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
             * Summary: Count items in the customer's cart
             * Description: Use this API to get the total number of items present in cart.
             **/
            public func getItemCount(
                id: String?,
                buyNow: Bool?,

                onResponse: @escaping (_ response: CartItemCountResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = id {
                    xQuery["id"] = value
                }

                if let value = buyNow {
                    xQuery["buy_now"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/basic",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CartItemCountResponse.self, from: data)

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
             * Summary: Fetch Coupon
             * Description: Use this API to get a list of available coupons along with their details.
             **/
            public func getAppCoupons(
                id: String?,
                buyNow: Bool?,

                onResponse: @escaping (_ response: GetCouponResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = id {
                    xQuery["id"] = value
                }

                if let value = buyNow {
                    xQuery["buy_now"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/platform-pos-coupon",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(GetCouponResponse.self, from: data)

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
             * Summary: Apply Coupon for platform pos user
             * Description: Use this API to apply coupons on items in the cart.
             **/
            public func applyCoupon(
                i: Bool?,
                b: Bool?,
                p: Bool?,
                id: String?,
                buyNow: Bool?,
                body: ApplyCouponRequest,
                onResponse: @escaping (_ response: CartDetailResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = i {
                    xQuery["i"] = value
                }

                if let value = b {
                    xQuery["b"] = value
                }

                if let value = p {
                    xQuery["p"] = value
                }

                if let value = id {
                    xQuery["id"] = value
                }

                if let value = buyNow {
                    xQuery["buy_now"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/platform-pos-coupon",
                    query: xQuery,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CartDetailResponse.self, from: data)

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
             * Summary: Remove Applied Coupon for platform pos user
             * Description: Remove Coupon applied on the cart by passing uid in request body.
             **/
            public func removeCoupon(
                uid: String?,
                buyNow: Bool?,

                onResponse: @escaping (_ response: CartDetailResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = uid {
                    xQuery["uid"] = value
                }

                if let value = buyNow {
                    xQuery["buy_now"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/platform-pos-coupon",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CartDetailResponse.self, from: data)

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
             * Summary: Fetch address
             * Description: Use this API to get all the addresses associated with an account. If successful, returns a Address resource in the response body specified in GetAddressesResponse.attibutes listed below are optional <ul> <li> <font color="monochrome">uid</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>
             **/
            public func getAddresses(
                cartId: String?,
                buyNow: Bool?,
                mobileNo: String?,
                checkoutMode: String?,
                tags: String?,
                isDefault: Bool?,
                userId: String?,

                onResponse: @escaping (_ response: PlatformGetAddressesResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = cartId {
                    xQuery["cart_id"] = value
                }

                if let value = buyNow {
                    xQuery["buy_now"] = value
                }

                if let value = mobileNo {
                    xQuery["mobile_no"] = value
                }

                if let value = checkoutMode {
                    xQuery["checkout_mode"] = value
                }

                if let value = tags {
                    xQuery["tags"] = value
                }

                if let value = isDefault {
                    xQuery["is_default"] = value
                }

                if let value = userId {
                    xQuery["user_id"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/address",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(PlatformGetAddressesResponse.self, from: data)

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
             * Summary: Add address to an account
             * Description: Use this API to add an address to an account.
             **/
            public func addAddress(
                body: PlatformAddress,
                onResponse: @escaping (_ response: SaveAddressResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/address",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(SaveAddressResponse.self, from: data)

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
             * Summary: Fetch a single address by its ID
             * Description: Use this API to get an addresses using its ID. If successful, returns a Address resource in the response body specified in `PlatformAddress`. Attibutes listed below are optional <ul> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>
             **/
            public func getAddressById(
                id: String,
                cartId: String?,
                buyNow: Bool?,
                mobileNo: String?,
                checkoutMode: String?,
                tags: String?,
                isDefault: Bool?,
                userId: String?,

                onResponse: @escaping (_ response: PlatformAddress?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = cartId {
                    xQuery["cart_id"] = value
                }

                if let value = buyNow {
                    xQuery["buy_now"] = value
                }

                if let value = mobileNo {
                    xQuery["mobile_no"] = value
                }

                if let value = checkoutMode {
                    xQuery["checkout_mode"] = value
                }

                if let value = tags {
                    xQuery["tags"] = value
                }

                if let value = isDefault {
                    xQuery["is_default"] = value
                }

                if let value = userId {
                    xQuery["user_id"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/address/\(id)",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(PlatformAddress.self, from: data)

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
             * Summary: Update address added to an account
             * Description: <p>Use this API to update an existing address in the account. Request object should contain attributes mentioned in  <font color="blue">Address </font> can be updated. These attributes are:</p> <ul> <li> <font color="monochrome">is_default_address</font></li> <li> <font color="monochrome">landmark</font></li> <li> <font color="monochrome">area</font></li> <li> <font color="monochrome">pincode</font></li> <li> <font color="monochrome">email</font></li> <li> <font color="monochrome">address_type</font></li> <li> <font color="monochrome">name</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">address</font></li> </ul>
             **/
            public func updateAddress(
                id: String,
                body: PlatformAddress,
                onResponse: @escaping (_ response: UpdateAddressResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/address/\(id)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(UpdateAddressResponse.self, from: data)

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
             * Summary: Remove address associated with an account
             * Description: Use this API to delete an address by its ID. This will returns an object that will indicate whether the address was deleted successfully or not.
             **/
            public func removeAddress(
                id: String,
                userId: String?,

                onResponse: @escaping (_ response: DeleteAddressResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = userId {
                    xQuery["user_id"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/address/\(id)",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(DeleteAddressResponse.self, from: data)

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
             * Summary: Select an address from available addresses
             * Description: <p>Select Address from all addresses associated with the account in order to ship the cart items to that address, otherwise default address will be selected implicitly. See `PlatformSelectCartAddressRequest` in schema of request body for the list of attributes needed to select Address from account. On successful request, this API returns a Cart object. Below address attributes are required. <ul> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">billing_address_id</font></li> <li> <font color="monochrome">uid</font></li> </ul></p>
             **/
            public func selectAddress(
                cartId: String?,
                buyNow: Bool?,
                i: Bool?,
                b: Bool?,
                body: PlatformSelectCartAddressRequest,
                onResponse: @escaping (_ response: CartDetailResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = cartId {
                    xQuery["cart_id"] = value
                }

                if let value = buyNow {
                    xQuery["buy_now"] = value
                }

                if let value = i {
                    xQuery["i"] = value
                }

                if let value = b {
                    xQuery["b"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/select-address",
                    query: xQuery,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CartDetailResponse.self, from: data)

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
             * Summary: Get delivery date and options before checkout
             * Description: Use this API to get shipment details, expected delivery date, items and price breakup of the shipment.
             **/
            public func getShipments(
                pickAtStoreUid: Int?,
                orderingStoreId: Int?,
                i: Bool?,
                p: Bool?,
                id: String?,
                addressId: String?,
                areaCode: String?,
                orderType: String?,

                onResponse: @escaping (_ response: CartShipmentsResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = pickAtStoreUid {
                    xQuery["pick_at_store_uid"] = value
                }

                if let value = orderingStoreId {
                    xQuery["ordering_store_id"] = value
                }

                if let value = i {
                    xQuery["i"] = value
                }

                if let value = p {
                    xQuery["p"] = value
                }

                if let value = id {
                    xQuery["id"] = value
                }

                if let value = addressId {
                    xQuery["address_id"] = value
                }

                if let value = areaCode {
                    xQuery["area_code"] = value
                }

                if let value = orderType {
                    xQuery["order_type"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/shipment",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CartShipmentsResponse.self, from: data)

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
             * Summary: Update shipment delivery type and quantity before checkout
             * Description: Use this API to update the delivery type and quantity as per customer's preference for either store pick-up or home-delivery.
             **/
            public func updateShipments(
                i: Bool?,
                p: Bool?,
                id: String?,
                addressId: String?,
                areaCode: String?,
                orderType: String?,
                body: UpdateCartShipmentRequest,
                onResponse: @escaping (_ response: CartShipmentsResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = i {
                    xQuery["i"] = value
                }

                if let value = p {
                    xQuery["p"] = value
                }

                if let value = id {
                    xQuery["id"] = value
                }

                if let value = addressId {
                    xQuery["address_id"] = value
                }

                if let value = areaCode {
                    xQuery["area_code"] = value
                }

                if let value = orderType {
                    xQuery["order_type"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/shipment",
                    query: xQuery,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CartShipmentsResponse.self, from: data)

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
             * Summary: Update the cart meta for platform pos user
             * Description: Use this API to update cart meta like checkout_mode and gstin.
             **/
            public func updateCartMeta(
                id: String?,
                buyNow: Bool?,
                body: PlatformCartMetaRequest,
                onResponse: @escaping (_ response: CartMetaResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = id {
                    xQuery["id"] = value
                }

                if let value = buyNow {
                    xQuery["buy_now"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/meta",
                    query: xQuery,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CartMetaResponse.self, from: data)

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
             * Summary: Checkout all items in the cart
             * Description: Use this API to checkout all items in the cart for payment and order generation. For COD, order will be generated directly, whereas for other checkout modes, user will be redirected to a payment gateway.
             **/
            public func platformCheckoutCart(
                id: String?,
                body: PlatformCartCheckoutDetailRequest,
                onResponse: @escaping (_ response: CartCheckoutResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = id {
                    xQuery["id"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/checkout",
                    query: xQuery,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CartCheckoutResponse.self, from: data)

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
             * Summary: Get available delivery modes for cart
             * Description: Use this API to get the delivery modes (home-delivery/store-pickup) along with a list of pickup stores available for a given cart at a given PIN Code. User can then view the address of a pickup store with the help of store-address API.
             **/
            public func getAvailableDeliveryModes(
                areaCode: String,
                id: String?,

                onResponse: @escaping (_ response: CartDeliveryModesResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                xQuery["area_code"] = areaCode

                if let value = id {
                    xQuery["id"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/available-delivery-mode",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CartDeliveryModesResponse.self, from: data)

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
             * Summary: Get list of stores for give uids
             * Description: Use this API to get the store details by entering the unique identifier of the pickup stores shown in the response of available-delivery-mode API.
             **/
            public func getStoreAddressByUid(
                storeUid: Int,

                onResponse: @escaping (_ response: StoreDetailsResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                xQuery["store_uid"] = storeUid

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/store-address",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(StoreDetailsResponse.self, from: data)

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
             * Summary: Update cart payment
             * Description: Use this API to update cart payment.
             **/
            public func selectPaymentMode(
                id: String?,
                buyNow: Bool?,
                body: UpdateCartPaymentRequest,
                onResponse: @escaping (_ response: CartDetailResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = id {
                    xQuery["id"] = value
                }

                if let value = buyNow {
                    xQuery["buy_now"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/payment",
                    query: xQuery,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CartDetailResponse.self, from: data)

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
             * Summary: Verify the coupon eligibility against the payment mode
             * Description: Use this API to validate a coupon against the payment mode such as NetBanking, Wallet, UPI etc.
             **/
            public func validateCouponForPayment(
                id: String?,
                buyNow: Bool?,
                addressId: String?,
                paymentMode: String?,
                paymentIdentifier: String?,
                aggregatorName: String?,
                merchantCode: String?,

                onResponse: @escaping (_ response: PaymentCouponValidate?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                if let value = id {
                    xQuery["id"] = value
                }

                if let value = buyNow {
                    xQuery["buy_now"] = value
                }

                if let value = addressId {
                    xQuery["address_id"] = value
                }

                if let value = paymentMode {
                    xQuery["payment_mode"] = value
                }

                if let value = paymentIdentifier {
                    xQuery["payment_identifier"] = value
                }

                if let value = aggregatorName {
                    xQuery["aggregator_name"] = value
                }

                if let value = merchantCode {
                    xQuery["merchant_code"] = value
                }

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/cart/v1.0/company/\(companyId)/application/\(applicationId)/payment/validate/",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(PaymentCouponValidate.self, from: data)

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
            public func showGiveaways(
                pageId: String,
                pageSize: Int,

                onResponse: @escaping (_ response: GiveawayResponse?, _ error: FDKError?) -> Void
            ) {
                var xQuery: [String: Any] = [:]

                xQuery["page_id"] = pageId

                xQuery["page_size"] = pageSize

                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/rewards/v1.0/company/\(companyId)/application/\(applicationId)/giveaways",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: List of giveaways of the current application.
             * Description: Adds a new giveaway.
             **/
            public func saveGiveAway(
                body: Giveaway,
                onResponse: @escaping (_ response: Giveaway?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/rewards/v1.0/company/\(companyId)/application/\(applicationId)/giveaways",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get giveaway by ID.
             * Description: Get giveaway by ID.
             **/
            public func getGiveawayById(
                id: String,

                onResponse: @escaping (_ response: Giveaway?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/rewards/v1.0/company/\(companyId)/application/\(applicationId)/giveaways/\(id)",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Updates the giveaway by it's ID.
             * Description: Updates the giveaway by it's ID.
             **/
            public func updateGiveAway(
                id: String,
                body: Giveaway,
                onResponse: @escaping (_ response: Giveaway?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/rewards/v1.0/company/\(companyId)/application/\(applicationId)/giveaways/\(id)",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get the Giveaway audience status
             * Description: Get giveaway audience status
             **/
            public func getGiveawayAudienceStatus(
                audienceId: String,

                onResponse: @escaping (_ response: GiveawayAudience?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/rewards/v1.0/company/\(companyId)/application/\(applicationId)/giveaways/audience/\(audienceId)/status",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(GiveawayAudience.self, from: data)

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
             * Summary: List of offers of the current application.
             * Description: List of offers of the current application.
             **/
            public func showOffers(
                onResponse: @escaping (_ response: [Offer]?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/rewards/v1.0/company/\(companyId)/application/\(applicationId)/offers/",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get offer by name
             * Description: Use this API to get the offer details and configuration by entering the name of the offer.
             **/
            public func getOfferByName(
                name: String,
                cookie: String,

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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Update offer by name
             * Description: Use this API to update the offer details
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Update user status
             * Description: Use this API to update the user status active/archive
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get user reward details
             * Description: Use this API to get the user reward details
             **/
            public func user(
                userId: String,

                onResponse: @escaping (_ response: UserRes?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/rewards/v1.0/company/\(companyId)/application/\(applicationId)/users/\(userId)/",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get all transactions of reward points
             * Description: Use this API to get a list of points transactions.
             **/
            public func getUserPointsHistory(
                userId: String,
                pageId: String?,
                pageSize: Int?,

                onResponse: @escaping (_ response: HistoryRes?, _ error: FDKError?) -> Void
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
                    url: "/service/platform/rewards/v1.0/company/\(companyId)/application/\(applicationId)/users/\(userId)/points/history/",
                    query: xQuery,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                        pageId: paginator.pageId,

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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
             * Summary: Get component statistics csv
             * Description: Get component statistics csv
             **/
            public func getComponentStatsCSV(
                componentName: String,

                onResponse: @escaping (_ response: Data?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/analytics/v1.0/company/\(companyId)/application/\(applicationId)/stats/component/\(componentName).csv",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/csv",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = data

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
             * Summary: Get component statistics pdf
             * Description: Get component statistics pdf
             **/
            public func getComponentStatsPDF(
                componentName: String,

                onResponse: @escaping (_ response: Data?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/analytics/v1.0/company/\(companyId)/application/\(applicationId)/stats/component/\(componentName).pdf",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/pdf",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = data

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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                        pageNo: paginator.pageNo,

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

                onResponse: @escaping (_ response: Data?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/analytics/v1.0/company/\(companyId)/application/\(applicationId)/cart/\(fromDate)/to/\(toDate)/abandon-cart.csv",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/csv",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = data

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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                            let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                           NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                    }
                )
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
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
                            let userInfo: [String: Any] = [NSLocalizedDescriptionKey: NSLocalizedString("Unidentified", value: "Please try after sometime", comment: ""),
                                                           NSLocalizedFailureReasonErrorKey: NSLocalizedString("Unidentified", value: "Something went wrong", comment: "")]
                            let err = FDKError(message: "Something went wrong", status: 502, code: "Unidentified", exception: nil, info: "Please try after sometime", requestID: nil, stackTrace: nil, meta: userInfo)
                            onResponse(nil, err)
                        }
                    }
                )
            }
        }

        public class Serviceability {
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
             * Summary: Zone configuration of application.
             * Description: This API returns serviceability config of the application.
             **/
            public func getApplicationServiceability(
                onResponse: @escaping (_ response: ApplicationServiceabilityConfigResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/logistics/v1.0/company/\(companyId)/application/\(applicationId)/serviceability",
                    query: nil,
                    body: nil,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ApplicationServiceabilityConfigResponse.self, from: data)

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
             * Summary: GET zone from the Pincode.
             * Description: This API returns zone from the Pincode View.
             **/
            public func upsertZoneControllerView(
                body: GetZoneFromPincodeViewRequest,
                onResponse: @escaping (_ response: GetZoneFromPincodeViewResponse?, _ error: FDKError?) -> Void
            ) {
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/logistics/v1.0/company/\(companyId)/application/\(applicationId)/zones",
                    query: nil,
                    body: body.dictionary,
                    headers: [],
                    responseType: "application/json",
                    onResponse: { responseData, error, responseCode in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(GetZoneFromPincodeViewResponse.self, from: data)

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
}
