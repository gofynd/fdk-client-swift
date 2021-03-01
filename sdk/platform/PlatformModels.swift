public extension PlatformClient {
    
    
    /*
        Model: TicketList
    */

    struct TicketList: Codable {
        
        
        public var docs: [Ticket]?
        
        public var filters: Filter?
        
        public var limit: Int?
        
        public var page: Int?
        
        public var pages: Int?
        
        public var total: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
            case filters = "filters"
            
            case limit = "limit"
            
            case page = "page"
            
            case pages = "pages"
            
            case total = "total"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            docs = try? container.decode([Ticket].self, forKey: .docs)
            
            filters = try? container.decode(Filter.self, forKey: .filters)
            
            limit = try? container.decode(Int.self, forKey: .limit)
            
            page = try? container.decode(Int.self, forKey: .page)
            
            pages = try? container.decode(Int.self, forKey: .pages)
            
            total = try? container.decode(Int.self, forKey: .total)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(docs, forKey: .docs)
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
        }
        
    }
    
    /*
        Model: TicketHistoryList
    */

    struct TicketHistoryList: Codable {
        
        
        public var docs: [TicketHistory]?
        
        public var limit: Int?
        
        public var page: Int?
        
        public var pages: Int?
        
        public var total: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
            case limit = "limit"
            
            case page = "page"
            
            case pages = "pages"
            
            case total = "total"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            docs = try? container.decode([TicketHistory].self, forKey: .docs)
            
            limit = try? container.decode(Int.self, forKey: .limit)
            
            page = try? container.decode(Int.self, forKey: .page)
            
            pages = try? container.decode(Int.self, forKey: .pages)
            
            total = try? container.decode(Int.self, forKey: .total)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(docs, forKey: .docs)
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
        }
        
    }
    
    /*
        Model: CustomFormList
    */

    struct CustomFormList: Codable {
        
        
        public var docs: [CustomForm]?
        
        public var limit: Int?
        
        public var page: Int?
        
        public var pages: Int?
        
        public var total: Int?
        

        enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
            case limit = "limit"
            
            case page = "page"
            
            case pages = "pages"
            
            case total = "total"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            docs = try? container.decode([CustomForm].self, forKey: .docs)
            
            limit = try? container.decode(Int.self, forKey: .limit)
            
            page = try? container.decode(Int.self, forKey: .page)
            
            pages = try? container.decode(Int.self, forKey: .pages)
            
            total = try? container.decode(Int.self, forKey: .total)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(docs, forKey: .docs)
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            try? container.encodeIfPresent(total, forKey: .total)
            
        }
        
    }
    
    /*
        Model: CreateCustomFormPayload
    */

    struct CreateCustomFormPayload: Codable {
        
        
        public var slug: String
        
        public var title: String
        
        public var inputs: [[String: Any]]
        
        public var description: String?
        
        public var headerImage: String?
        
        public var shouldNotify: Bool?
        
        public var successMessage: String?
        
        public var pollForAssignment: PollForAssignment?
        

        enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case title = "title"
            
            case inputs = "inputs"
            
            case description = "description"
            
            case headerImage = "header_image"
            
            case shouldNotify = "should_notify"
            
            case successMessage = "success_message"
            
            case pollForAssignment = "poll_for_assignment"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            slug = try container.decode(String.self, forKey: .slug)
            
            title = try container.decode(String.self, forKey: .title)
            
            inputs = try container.decode([[String: Any]].self, forKey: .inputs)
            
            description = try? container.decode(String.self, forKey: .description)
            
            headerImage = try? container.decode(String.self, forKey: .headerImage)
            
            shouldNotify = try? container.decode(Bool.self, forKey: .shouldNotify)
            
            successMessage = try? container.decode(String.self, forKey: .successMessage)
            
            pollForAssignment = try? container.decode(PollForAssignment.self, forKey: .pollForAssignment)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(inputs, forKey: .inputs)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(headerImage, forKey: .headerImage)
            
            try? container.encodeIfPresent(shouldNotify, forKey: .shouldNotify)
            
            try? container.encodeIfPresent(successMessage, forKey: .successMessage)
            
            try? container.encodeIfPresent(pollForAssignment, forKey: .pollForAssignment)
            
        }
        
    }
    
    /*
        Model: EditCustomFormPayload
    */

    struct EditCustomFormPayload: Codable {
        
        
        public var title: String
        
        public var inputs: [[String: Any]]
        
        public var description: String?
        
        public var headerImage: String?
        
        public var shouldNotify: Bool?
        
        public var loginRequired: Bool?
        
        public var successMessage: String?
        
        public var pollForAssignment: PollForAssignment?
        

        enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case inputs = "inputs"
            
            case description = "description"
            
            case headerImage = "header_image"
            
            case shouldNotify = "should_notify"
            
            case loginRequired = "login_required"
            
            case successMessage = "success_message"
            
            case pollForAssignment = "poll_for_assignment"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            title = try container.decode(String.self, forKey: .title)
            
            inputs = try container.decode([[String: Any]].self, forKey: .inputs)
            
            description = try? container.decode(String.self, forKey: .description)
            
            headerImage = try? container.decode(String.self, forKey: .headerImage)
            
            shouldNotify = try? container.decode(Bool.self, forKey: .shouldNotify)
            
            loginRequired = try? container.decode(Bool.self, forKey: .loginRequired)
            
            successMessage = try? container.decode(String.self, forKey: .successMessage)
            
            pollForAssignment = try? container.decode(PollForAssignment.self, forKey: .pollForAssignment)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(inputs, forKey: .inputs)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(headerImage, forKey: .headerImage)
            
            try? container.encodeIfPresent(shouldNotify, forKey: .shouldNotify)
            
            try? container.encodeIfPresent(loginRequired, forKey: .loginRequired)
            
            try? container.encodeIfPresent(successMessage, forKey: .successMessage)
            
            try? container.encodeIfPresent(pollForAssignment, forKey: .pollForAssignment)
            
        }
        
    }
    
    /*
        Model: EditTicketPayload
    */

    struct EditTicketPayload: Codable {
        
        
        public var content: Content?
        
        public var category: String?
        
        public var source: String?
        
        public var status: String?
        
        public var priority: String?
        
        public var assignedTo: AgentChangePayload?
        
        public var tags: [String]?
        

        enum CodingKeys: String, CodingKey {
            
            case content = "content"
            
            case category = "category"
            
            case source = "source"
            
            case status = "status"
            
            case priority = "priority"
            
            case assignedTo = "assigned_to"
            
            case tags = "tags"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            content = try? container.decode(Content.self, forKey: .content)
            
            category = try? container.decode(String.self, forKey: .category)
            
            source = try? container.decode(String.self, forKey: .source)
            
            status = try? container.decode(String.self, forKey: .status)
            
            priority = try? container.decode(String.self, forKey: .priority)
            
            assignedTo = try? container.decode(AgentChangePayload.self, forKey: .assignedTo)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(content, forKey: .content)
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            try? container.encodeIfPresent(assignedTo, forKey: .assignedTo)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
        }
        
    }
    
    /*
        Model: AgentChangePayload
    */

    struct AgentChangePayload: Codable {
        
        
        public var agentId: String
        

        enum CodingKeys: String, CodingKey {
            
            case agentId = "agent_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            agentId = try container.decode(String.self, forKey: .agentId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(agentId, forKey: .agentId)
            
        }
        
    }
    
    /*
        Model: CreateVideoRoomResponse
    */

    struct CreateVideoRoomResponse: Codable {
        
        
        public var uniqueName: String
        

        enum CodingKeys: String, CodingKey {
            
            case uniqueName = "unique_name"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uniqueName = try container.decode(String.self, forKey: .uniqueName)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uniqueName, forKey: .uniqueName)
            
        }
        
    }
    
    /*
        Model: CreateVideoRoomPayload
    */

    struct CreateVideoRoomPayload: Codable {
        
        
        public var uniqueName: String
        
        public var notify: [[String: Any]]?
        

        enum CodingKeys: String, CodingKey {
            
            case uniqueName = "unique_name"
            
            case notify = "notify"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uniqueName = try container.decode(String.self, forKey: .uniqueName)
            
            notify = try? container.decode([[String: Any]].self, forKey: .notify)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uniqueName, forKey: .uniqueName)
            
            try? container.encodeIfPresent(notify, forKey: .notify)
            
        }
        
    }
    
    /*
        Model: Filter
    */

    struct Filter: Codable {
        
        
        public var priorities: Priority
        
        public var categories: Category?
        
        public var statuses: Status
        
        public var assignees: [[String: Any]]
        

        enum CodingKeys: String, CodingKey {
            
            case priorities = "priorities"
            
            case categories = "categories"
            
            case statuses = "statuses"
            
            case assignees = "assignees"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            priorities = try container.decode(Priority.self, forKey: .priorities)
            
            categories = try? container.decode(Category.self, forKey: .categories)
            
            statuses = try container.decode(Status.self, forKey: .statuses)
            
            assignees = try container.decode([[String: Any]].self, forKey: .assignees)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(priorities, forKey: .priorities)
            
            try? container.encodeIfPresent(categories, forKey: .categories)
            
            try? container.encodeIfPresent(statuses, forKey: .statuses)
            
            try? container.encodeIfPresent(assignees, forKey: .assignees)
            
        }
        
    }
    
    /*
        Model: TicketHistoryPayload
    */

    struct TicketHistoryPayload: Codable {
        
        
        public var value: [String: Any]?
        
        public var type: String?
        

        enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            value = try? container.decode([String: Any].self, forKey: .value)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: CustomFormSubmissionPayload
    */

    struct CustomFormSubmissionPayload: Codable {
        
        
        public var response: [[String: Any]]
        

        enum CodingKeys: String, CodingKey {
            
            case response = "response"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            response = try container.decode([[String: Any]].self, forKey: .response)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(response, forKey: .response)
            
        }
        
    }
    
    /*
        Model: GetTokenForVideoRoomResponse
    */

    struct GetTokenForVideoRoomResponse: Codable {
        
        
        public var accessToken: String
        

        enum CodingKeys: String, CodingKey {
            
            case accessToken = "access_token"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            accessToken = try container.decode(String.self, forKey: .accessToken)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(accessToken, forKey: .accessToken)
            
        }
        
    }
    
    /*
        Model: GetParticipantsInsideVideoRoomResponse
    */

    struct GetParticipantsInsideVideoRoomResponse: Codable {
        
        
        public var participants: [[String: Any]]
        

        enum CodingKeys: String, CodingKey {
            
            case participants = "participants"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            participants = try container.decode([[String: Any]].self, forKey: .participants)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(participants, forKey: .participants)
            
        }
        
    }
    
    /*
        Model: SubmitCustomFormResponse
    */

    struct SubmitCustomFormResponse: Codable {
        
        
        public var ticket: Ticket
        

        enum CodingKeys: String, CodingKey {
            
            case ticket = "ticket"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            ticket = try container.decode(Ticket.self, forKey: .ticket)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(ticket, forKey: .ticket)
            
        }
        
    }
    
    /*
        Model: TicketContext
    */

    struct TicketContext: Codable {
        
        
        public var applicationId: String?
        
        public var companyId: String
        

        enum CodingKeys: String, CodingKey {
            
            case applicationId = "application_id"
            
            case companyId = "company_id"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            applicationId = try? container.decode(String.self, forKey: .applicationId)
            
            companyId = try container.decode(String.self, forKey: .companyId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
        }
        
    }
    
    /*
        Model: CreatedOn
    */

    struct CreatedOn: Codable {
        
        
        public var userAgent: String
        

        enum CodingKeys: String, CodingKey {
            
            case userAgent = "user_agent"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            userAgent = try container.decode(String.self, forKey: .userAgent)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(userAgent, forKey: .userAgent)
            
        }
        
    }
    
    /*
        Model: Asset
    */

    struct Asset: Codable {
        
        
        public var display: String?
        
        public var value: String
        
        public var type: String
        

        enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case value = "value"
            
            case type = "type"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            display = try? container.decode(String.self, forKey: .display)
            
            value = try container.decode(String.self, forKey: .value)
            
            type = try container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: Content
    */

    struct Content: Codable {
        
        
        public var title: String
        
        public var description: String?
        
        public var attachments: [Asset]?
        

        enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case description = "description"
            
            case attachments = "attachments"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            title = try container.decode(String.self, forKey: .title)
            
            description = try? container.decode(String.self, forKey: .description)
            
            attachments = try? container.decode([Asset].self, forKey: .attachments)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(attachments, forKey: .attachments)
            
        }
        
    }
    
    /*
        Model: APIError
    */

    struct APIError: Codable {
        
        
        public var code: Double?
        
        public var error: [String: Any]?
        
        public var message: String
        

        enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case error = "error"
            
            case message = "message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            code = try? container.decode(Double.self, forKey: .code)
            
            error = try? container.decode([String: Any].self, forKey: .error)
            
            message = try container.decode(String.self, forKey: .message)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: AddTicketPayload
    */

    struct AddTicketPayload: Codable {
        
        
        public var status: String
        
        public var priority: String
        
        public var category: String
        
        public var content: Content
        

        enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case priority = "priority"
            
            case category = "category"
            
            case content = "content"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            status = try container.decode(String.self, forKey: .status)
            
            priority = try container.decode(String.self, forKey: .priority)
            
            category = try container.decode(String.self, forKey: .category)
            
            content = try container.decode(Content.self, forKey: .content)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            try? container.encodeIfPresent(content, forKey: .content)
            
        }
        
    }
    
    /*
        Model: Priority
    */

    struct Priority: Codable {
        
        
        public var key: String
        
        public var display: String
        
        public var color: String
        

        enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case display = "display"
            
            case color = "color"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            key = try container.decode(String.self, forKey: .key)
            
            display = try container.decode(String.self, forKey: .display)
            
            color = try container.decode(String.self, forKey: .color)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(color, forKey: .color)
            
        }
        
    }
    
    /*
        Model: Status
    */

    struct Status: Codable {
        
        
        public var key: String
        
        public var display: String
        
        public var color: String
        

        enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case display = "display"
            
            case color = "color"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            key = try container.decode(String.self, forKey: .key)
            
            display = try container.decode(String.self, forKey: .display)
            
            color = try container.decode(String.self, forKey: .color)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(color, forKey: .color)
            
        }
        
    }
    
    /*
        Model: Category
    */

    struct Category: Codable {
        
        
        public var key: String
        
        public var display: String
        
        public var form: CustomForm?
        

        enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case display = "display"
            
            case form = "form"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            key = try container.decode(String.self, forKey: .key)
            
            display = try container.decode(String.self, forKey: .display)
            
            form = try? container.decode(CustomForm.self, forKey: .form)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            try? container.encodeIfPresent(form, forKey: .form)
            
        }
        
    }
    
    /*
        Model: SubmitButton
    */

    struct SubmitButton: Codable {
        
        
        public var title: String
        
        public var titleColor: String
        
        public var backgroundColor: String
        

        enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case titleColor = "title_color"
            
            case backgroundColor = "background_color"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            title = try container.decode(String.self, forKey: .title)
            
            titleColor = try container.decode(String.self, forKey: .titleColor)
            
            backgroundColor = try container.decode(String.self, forKey: .backgroundColor)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(titleColor, forKey: .titleColor)
            
            try? container.encodeIfPresent(backgroundColor, forKey: .backgroundColor)
            
        }
        
    }
    
    /*
        Model: PollForAssignment
    */

    struct PollForAssignment: Codable {
        
        
        public var duration: Double
        
        public var message: String
        
        public var successMessage: String
        
        public var failureMessage: String
        

        enum CodingKeys: String, CodingKey {
            
            case duration = "duration"
            
            case message = "message"
            
            case successMessage = "success_message"
            
            case failureMessage = "failure_message"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            duration = try container.decode(Double.self, forKey: .duration)
            
            message = try container.decode(String.self, forKey: .message)
            
            successMessage = try container.decode(String.self, forKey: .successMessage)
            
            failureMessage = try container.decode(String.self, forKey: .failureMessage)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(duration, forKey: .duration)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(successMessage, forKey: .successMessage)
            
            try? container.encodeIfPresent(failureMessage, forKey: .failureMessage)
            
        }
        
    }
    
    /*
        Model: CustomForm
    */

    struct CustomForm: Codable {
        
        
        public var applicationId: String
        
        public var slug: String
        
        public var headerImage: String?
        
        public var title: String
        
        public var description: String?
        
        public var loginRequired: Bool
        
        public var shouldNotify: Bool
        
        public var successMessage: String?
        
        public var submitButton: SubmitButton?
        
        public var inputs: [[String: Any]]
        
        public var createdOn: CreatedOn?
        
        public var createdBy: [String: Any]?
        
        public var pollForAssignment: PollForAssignment?
        
        public var id: String
        
        public var updatedAt: String?
        
        public var createdAt: String?
        

        enum CodingKeys: String, CodingKey {
            
            case applicationId = "application_id"
            
            case slug = "slug"
            
            case headerImage = "header_image"
            
            case title = "title"
            
            case description = "description"
            
            case loginRequired = "login_required"
            
            case shouldNotify = "should_notify"
            
            case successMessage = "success_message"
            
            case submitButton = "submit_button"
            
            case inputs = "inputs"
            
            case createdOn = "created_on"
            
            case createdBy = "created_by"
            
            case pollForAssignment = "poll_for_assignment"
            
            case id = "_id"
            
            case updatedAt = "updatedAt"
            
            case createdAt = "createdAt"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            applicationId = try container.decode(String.self, forKey: .applicationId)
            
            slug = try container.decode(String.self, forKey: .slug)
            
            headerImage = try? container.decode(String.self, forKey: .headerImage)
            
            title = try container.decode(String.self, forKey: .title)
            
            description = try? container.decode(String.self, forKey: .description)
            
            loginRequired = try container.decode(Bool.self, forKey: .loginRequired)
            
            shouldNotify = try container.decode(Bool.self, forKey: .shouldNotify)
            
            successMessage = try? container.decode(String.self, forKey: .successMessage)
            
            submitButton = try? container.decode(SubmitButton.self, forKey: .submitButton)
            
            inputs = try container.decode([[String: Any]].self, forKey: .inputs)
            
            createdOn = try? container.decode(CreatedOn.self, forKey: .createdOn)
            
            createdBy = try? container.decode([String: Any].self, forKey: .createdBy)
            
            pollForAssignment = try? container.decode(PollForAssignment.self, forKey: .pollForAssignment)
            
            id = try container.decode(String.self, forKey: .id)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            try? container.encodeIfPresent(headerImage, forKey: .headerImage)
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(loginRequired, forKey: .loginRequired)
            
            try? container.encodeIfPresent(shouldNotify, forKey: .shouldNotify)
            
            try? container.encodeIfPresent(successMessage, forKey: .successMessage)
            
            try? container.encodeIfPresent(submitButton, forKey: .submitButton)
            
            try? container.encodeIfPresent(inputs, forKey: .inputs)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(pollForAssignment, forKey: .pollForAssignment)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
        }
        
    }
    
    /*
        Model: TicketHistory
    */

    struct TicketHistory: Codable {
        
        
        public var type: String
        
        public var value: [String: Any]
        
        public var ticketId: String
        
        public var createdOn: CreatedOn?
        
        public var createdBy: [String: Any]?
        
        public var id: String
        
        public var updatedAt: String?
        
        public var createdAt: String?
        

        enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case value = "value"
            
            case ticketId = "ticket_id"
            
            case createdOn = "created_on"
            
            case createdBy = "created_by"
            
            case id = "_id"
            
            case updatedAt = "updatedAt"
            
            case createdAt = "createdAt"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            type = try container.decode(String.self, forKey: .type)
            
            value = try container.decode([String: Any].self, forKey: .value)
            
            ticketId = try container.decode(String.self, forKey: .ticketId)
            
            createdOn = try? container.decode(CreatedOn.self, forKey: .createdOn)
            
            createdBy = try? container.decode([String: Any].self, forKey: .createdBy)
            
            id = try container.decode(String.self, forKey: .id)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(ticketId, forKey: .ticketId)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
        }
        
    }
    
    /*
        Model: Ticket
    */

    struct Ticket: Codable {
        
        
        public var context: TicketContext?
        
        public var createdOn: CreatedOn?
        
        public var responseId: String?
        
        public var content: Content?
        
        public var ticketId: String
        
        public var category: Category
        
        public var source: String
        
        public var status: Status
        
        public var priority: Priority
        
        public var createdBy: [String: Any]?
        
        public var assignedTo: [String: Any]?
        
        public var tags: [String]?
        
        public var customJson: [String: Any]?
        
        public var id: String?
        
        public var updatedAt: String?
        
        public var createdAt: String?
        

        enum CodingKeys: String, CodingKey {
            
            case context = "context"
            
            case createdOn = "created_on"
            
            case responseId = "response_id"
            
            case content = "content"
            
            case ticketId = "ticket_id"
            
            case category = "category"
            
            case source = "source"
            
            case status = "status"
            
            case priority = "priority"
            
            case createdBy = "created_by"
            
            case assignedTo = "assigned_to"
            
            case tags = "tags"
            
            case customJson = "_custom_json"
            
            case id = "_id"
            
            case updatedAt = "updatedAt"
            
            case createdAt = "createdAt"
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            context = try? container.decode(TicketContext.self, forKey: .context)
            
            createdOn = try? container.decode(CreatedOn.self, forKey: .createdOn)
            
            responseId = try? container.decode(String.self, forKey: .responseId)
            
            content = try? container.decode(Content.self, forKey: .content)
            
            ticketId = try container.decode(String.self, forKey: .ticketId)
            
            category = try container.decode(Category.self, forKey: .category)
            
            source = try container.decode(String.self, forKey: .source)
            
            status = try container.decode(Status.self, forKey: .status)
            
            priority = try container.decode(Priority.self, forKey: .priority)
            
            createdBy = try? container.decode([String: Any].self, forKey: .createdBy)
            
            assignedTo = try? container.decode([String: Any].self, forKey: .assignedTo)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
            customJson = try? container.decode([String: Any].self, forKey: .customJson)
            
            id = try? container.decode(String.self, forKey: .id)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(context, forKey: .context)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(responseId, forKey: .responseId)
            
            try? container.encodeIfPresent(content, forKey: .content)
            
            try? container.encodeIfPresent(ticketId, forKey: .ticketId)
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(assignedTo, forKey: .assignedTo)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
        }
        
    }
    
    
}