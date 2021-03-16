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
        

        public enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
            case filters = "filters"
            
            case limit = "limit"
            
            case page = "page"
            
            case pages = "pages"
            
            case total = "total"
            
        }

        public init(docs: [Ticket]?, filters: Filter?, limit: Int?, page: Int?, pages: Int?, total: Int?) {
            
            self.docs = docs
            
            self.filters = filters
            
            self.limit = limit
            
            self.page = page
            
            self.pages = pages
            
            self.total = total
            
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
        

        public enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
            case limit = "limit"
            
            case page = "page"
            
            case pages = "pages"
            
            case total = "total"
            
        }

        public init(docs: [TicketHistory]?, limit: Int?, page: Int?, pages: Int?, total: Int?) {
            
            self.docs = docs
            
            self.limit = limit
            
            self.page = page
            
            self.pages = pages
            
            self.total = total
            
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
        

        public enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
            case limit = "limit"
            
            case page = "page"
            
            case pages = "pages"
            
            case total = "total"
            
        }

        public init(docs: [CustomForm]?, limit: Int?, page: Int?, pages: Int?, total: Int?) {
            
            self.docs = docs
            
            self.limit = limit
            
            self.page = page
            
            self.pages = pages
            
            self.total = total
            
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
        

        public enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case title = "title"
            
            case inputs = "inputs"
            
            case description = "description"
            
            case headerImage = "header_image"
            
            case shouldNotify = "should_notify"
            
            case successMessage = "success_message"
            
            case pollForAssignment = "poll_for_assignment"
            
        }

        public init(description: String?, headerImage: String?, inputs: [[String: Any]], pollForAssignment: PollForAssignment?, shouldNotify: Bool?, slug: String, successMessage: String?, title: String) {
            
            self.slug = slug
            
            self.title = title
            
            self.inputs = inputs
            
            self.description = description
            
            self.headerImage = headerImage
            
            self.shouldNotify = shouldNotify
            
            self.successMessage = successMessage
            
            self.pollForAssignment = pollForAssignment
            
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
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case inputs = "inputs"
            
            case description = "description"
            
            case headerImage = "header_image"
            
            case shouldNotify = "should_notify"
            
            case loginRequired = "login_required"
            
            case successMessage = "success_message"
            
            case pollForAssignment = "poll_for_assignment"
            
        }

        public init(description: String?, headerImage: String?, inputs: [[String: Any]], loginRequired: Bool?, pollForAssignment: PollForAssignment?, shouldNotify: Bool?, successMessage: String?, title: String) {
            
            self.title = title
            
            self.inputs = inputs
            
            self.description = description
            
            self.headerImage = headerImage
            
            self.shouldNotify = shouldNotify
            
            self.loginRequired = loginRequired
            
            self.successMessage = successMessage
            
            self.pollForAssignment = pollForAssignment
            
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
        
        
        public var content: TicketContent?
        
        public var category: String?
        
        public var source: String?
        
        public var status: String?
        
        public var priority: String?
        
        public var assignedTo: AgentChangePayload?
        
        public var tags: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case content = "content"
            
            case category = "category"
            
            case source = "source"
            
            case status = "status"
            
            case priority = "priority"
            
            case assignedTo = "assigned_to"
            
            case tags = "tags"
            
        }

        public init(assignedTo: AgentChangePayload?, category: String?, content: TicketContent?, priority: String?, source: String?, status: String?, tags: [String]?) {
            
            self.content = content
            
            self.category = category
            
            self.source = source
            
            self.status = status
            
            self.priority = priority
            
            self.assignedTo = assignedTo
            
            self.tags = tags
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            content = try? container.decode(TicketContent.self, forKey: .content)
            
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
        

        public enum CodingKeys: String, CodingKey {
            
            case agentId = "agent_id"
            
        }

        public init(agentId: String) {
            
            self.agentId = agentId
            
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
        

        public enum CodingKeys: String, CodingKey {
            
            case uniqueName = "unique_name"
            
        }

        public init(uniqueName: String) {
            
            self.uniqueName = uniqueName
            
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
        Model: CloseVideoRoomResponse
    */

    struct CloseVideoRoomResponse: Codable {
        
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
        }

        public init(success: Bool) {
            
            self.success = success
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try container.decode(Bool.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: CreateVideoRoomPayload
    */

    struct CreateVideoRoomPayload: Codable {
        
        
        public var uniqueName: String
        
        public var notify: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case uniqueName = "unique_name"
            
            case notify = "notify"
            
        }

        public init(notify: [[String: Any]]?, uniqueName: String) {
            
            self.uniqueName = uniqueName
            
            self.notify = notify
            
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
        

        public enum CodingKeys: String, CodingKey {
            
            case priorities = "priorities"
            
            case categories = "categories"
            
            case statuses = "statuses"
            
            case assignees = "assignees"
            
        }

        public init(assignees: [[String: Any]], categories: Category?, priorities: Priority, statuses: Status) {
            
            self.priorities = priorities
            
            self.categories = categories
            
            self.statuses = statuses
            
            self.assignees = assignees
            
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
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case type = "type"
            
        }

        public init(type: String?, value: [String: Any]?) {
            
            self.value = value
            
            self.type = type
            
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
        

        public enum CodingKeys: String, CodingKey {
            
            case response = "response"
            
        }

        public init(response: [[String: Any]]) {
            
            self.response = response
            
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
        

        public enum CodingKeys: String, CodingKey {
            
            case accessToken = "access_token"
            
        }

        public init(accessToken: String) {
            
            self.accessToken = accessToken
            
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
        

        public enum CodingKeys: String, CodingKey {
            
            case participants = "participants"
            
        }

        public init(participants: [[String: Any]]) {
            
            self.participants = participants
            
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
        

        public enum CodingKeys: String, CodingKey {
            
            case ticket = "ticket"
            
        }

        public init(ticket: Ticket) {
            
            self.ticket = ticket
            
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
        

        public enum CodingKeys: String, CodingKey {
            
            case applicationId = "application_id"
            
            case companyId = "company_id"
            
        }

        public init(applicationId: String?, companyId: String) {
            
            self.applicationId = applicationId
            
            self.companyId = companyId
            
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
        

        public enum CodingKeys: String, CodingKey {
            
            case userAgent = "user_agent"
            
        }

        public init(userAgent: String) {
            
            self.userAgent = userAgent
            
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
        

        public enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case value = "value"
            
            case type = "type"
            
        }

        public init(display: String?, type: String, value: String) {
            
            self.display = display
            
            self.value = value
            
            self.type = type
            
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
        Model: TicketContent
    */

    struct TicketContent: Codable {
        
        
        public var title: String
        
        public var description: String?
        
        public var attachments: [Asset]?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case description = "description"
            
            case attachments = "attachments"
            
        }

        public init(attachments: [Asset]?, description: String?, title: String) {
            
            self.title = title
            
            self.description = description
            
            self.attachments = attachments
            
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
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case error = "error"
            
            case message = "message"
            
        }

        public init(code: Double?, error: [String: Any]?, message: String) {
            
            self.code = code
            
            self.error = error
            
            self.message = message
            
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
        
        public var content: TicketContent
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case priority = "priority"
            
            case category = "category"
            
            case content = "content"
            
        }

        public init(category: String, content: TicketContent, priority: String, status: String) {
            
            self.status = status
            
            self.priority = priority
            
            self.category = category
            
            self.content = content
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            status = try container.decode(String.self, forKey: .status)
            
            priority = try container.decode(String.self, forKey: .priority)
            
            category = try container.decode(String.self, forKey: .category)
            
            content = try container.decode(TicketContent.self, forKey: .content)
            
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
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case display = "display"
            
            case color = "color"
            
        }

        public init(color: String, display: String, key: String) {
            
            self.key = key
            
            self.display = display
            
            self.color = color
            
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
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case display = "display"
            
            case color = "color"
            
        }

        public init(color: String, display: String, key: String) {
            
            self.key = key
            
            self.display = display
            
            self.color = color
            
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
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case display = "display"
            
            case form = "form"
            
        }

        public init(display: String, form: CustomForm?, key: String) {
            
            self.key = key
            
            self.display = display
            
            self.form = form
            
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
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case titleColor = "title_color"
            
            case backgroundColor = "background_color"
            
        }

        public init(backgroundColor: String, title: String, titleColor: String) {
            
            self.title = title
            
            self.titleColor = titleColor
            
            self.backgroundColor = backgroundColor
            
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
        

        public enum CodingKeys: String, CodingKey {
            
            case duration = "duration"
            
            case message = "message"
            
            case successMessage = "success_message"
            
            case failureMessage = "failure_message"
            
        }

        public init(duration: Double, failureMessage: String, message: String, successMessage: String) {
            
            self.duration = duration
            
            self.message = message
            
            self.successMessage = successMessage
            
            self.failureMessage = failureMessage
            
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
        

        public enum CodingKeys: String, CodingKey {
            
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

        public init(applicationId: String, createdAt: String?, createdBy: [String: Any]?, createdOn: CreatedOn?, description: String?, headerImage: String?, inputs: [[String: Any]], loginRequired: Bool, pollForAssignment: PollForAssignment?, shouldNotify: Bool, slug: String, submitButton: SubmitButton?, successMessage: String?, title: String, updatedAt: String?, id: String) {
            
            self.applicationId = applicationId
            
            self.slug = slug
            
            self.headerImage = headerImage
            
            self.title = title
            
            self.description = description
            
            self.loginRequired = loginRequired
            
            self.shouldNotify = shouldNotify
            
            self.successMessage = successMessage
            
            self.submitButton = submitButton
            
            self.inputs = inputs
            
            self.createdOn = createdOn
            
            self.createdBy = createdBy
            
            self.pollForAssignment = pollForAssignment
            
            self.id = id
            
            self.updatedAt = updatedAt
            
            self.createdAt = createdAt
            
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
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case value = "value"
            
            case ticketId = "ticket_id"
            
            case createdOn = "created_on"
            
            case createdBy = "created_by"
            
            case id = "_id"
            
            case updatedAt = "updatedAt"
            
            case createdAt = "createdAt"
            
        }

        public init(createdAt: String?, createdBy: [String: Any]?, createdOn: CreatedOn?, ticketId: String, type: String, updatedAt: String?, value: [String: Any], id: String) {
            
            self.type = type
            
            self.value = value
            
            self.ticketId = ticketId
            
            self.createdOn = createdOn
            
            self.createdBy = createdBy
            
            self.id = id
            
            self.updatedAt = updatedAt
            
            self.createdAt = createdAt
            
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
        
        public var content: TicketContent?
        
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
        

        public enum CodingKeys: String, CodingKey {
            
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

        public init(assignedTo: [String: Any]?, category: Category, content: TicketContent?, context: TicketContext?, createdAt: String?, createdBy: [String: Any]?, createdOn: CreatedOn?, priority: Priority, responseId: String?, source: String, status: Status, tags: [String]?, ticketId: String, updatedAt: String?, customJson: [String: Any]?, id: String?) {
            
            self.context = context
            
            self.createdOn = createdOn
            
            self.responseId = responseId
            
            self.content = content
            
            self.ticketId = ticketId
            
            self.category = category
            
            self.source = source
            
            self.status = status
            
            self.priority = priority
            
            self.createdBy = createdBy
            
            self.assignedTo = assignedTo
            
            self.tags = tags
            
            self.customJson = customJson
            
            self.id = id
            
            self.updatedAt = updatedAt
            
            self.createdAt = createdAt
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            context = try? container.decode(TicketContext.self, forKey: .context)
            
            createdOn = try? container.decode(CreatedOn.self, forKey: .createdOn)
            
            responseId = try? container.decode(String.self, forKey: .responseId)
            
            content = try? container.decode(TicketContent.self, forKey: .content)
            
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
    
    
    
    /*
        Model: PaginationSchema
    */

    struct PaginationSchema: Codable {
        
        
        public var size: Int?
        
        public var itemTotal: Int?
        
        public var hasNext: Bool?
        
        public var type: String?
        
        public var current: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
            case itemTotal = "item_total"
            
            case hasNext = "has_next"
            
            case type = "type"
            
            case current = "current"
            
        }

        public init(current: Int?, hasNext: Bool?, itemTotal: Int?, size: Int?, type: String?) {
            
            self.size = size
            
            self.itemTotal = itemTotal
            
            self.hasNext = hasNext
            
            self.type = type
            
            self.current = current
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            size = try? container.decode(Int.self, forKey: .size)
            
            itemTotal = try? container.decode(Int.self, forKey: .itemTotal)
            
            hasNext = try? container.decode(Bool.self, forKey: .hasNext)
            
            type = try? container.decode(String.self, forKey: .type)
            
            current = try? container.decode(Int.self, forKey: .current)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(current, forKey: .current)
            
        }
        
    }
    
    /*
        Model: ThemesListingResponseSchema
    */

    struct ThemesListingResponseSchema: Codable {
        
        
        public var items: [ThemesSchema]?
        
        public var page: PaginationSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [ThemesSchema]?, page: PaginationSchema?) {
            
            self.items = items
            
            self.page = page
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([ThemesSchema].self, forKey: .items)
            
            page = try? container.decode(PaginationSchema.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: AddThemeRequestSchema
    */

    struct AddThemeRequestSchema: Codable {
        
        
        public var themeId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case themeId = "theme_id"
            
        }

        public init(themeId: String?) {
            
            self.themeId = themeId
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            themeId = try? container.decode(String.self, forKey: .themeId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(themeId, forKey: .themeId)
            
        }
        
    }
    
    /*
        Model: UpgradableThemeSchema
    */

    struct UpgradableThemeSchema: Codable {
        
        
        public var parentTheme: String?
        
        public var appliedTheme: String?
        
        public var upgrade: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case parentTheme = "parent_theme"
            
            case appliedTheme = "applied_theme"
            
            case upgrade = "upgrade"
            
        }

        public init(appliedTheme: String?, parentTheme: String?, upgrade: Bool?) {
            
            self.parentTheme = parentTheme
            
            self.appliedTheme = appliedTheme
            
            self.upgrade = upgrade
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            parentTheme = try? container.decode(String.self, forKey: .parentTheme)
            
            appliedTheme = try? container.decode(String.self, forKey: .appliedTheme)
            
            upgrade = try? container.decode(Bool.self, forKey: .upgrade)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(parentTheme, forKey: .parentTheme)
            
            try? container.encodeIfPresent(appliedTheme, forKey: .appliedTheme)
            
            try? container.encodeIfPresent(upgrade, forKey: .upgrade)
            
        }
        
    }
    
    /*
        Model: FontsSchema
    */

    struct FontsSchema: Codable {
        
        
        public var items: [[String: Any]]?
        
        public var kind: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case kind = "kind"
            
        }

        public init(items: [[String: Any]]?, kind: String?) {
            
            self.items = items
            
            self.kind = kind
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([[String: Any]].self, forKey: .items)
            
            kind = try? container.decode(String.self, forKey: .kind)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(kind, forKey: .kind)
            
        }
        
    }
    
    /*
        Model: ThemesSchema
    */

    struct ThemesSchema: Codable {
        
        
        public var application: String?
        
        public var applied: Bool?
        
        public var customized: Bool?
        
        public var published: Bool?
        
        public var archived: Bool?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var version: String?
        
        public var parentThemeVersion: String?
        
        public var parentTheme: String?
        
        public var information: [String: Any]?
        
        public var tags: [String]?
        
        public var src: [String: Any]?
        
        public var assets: [String: Any]?
        
        public var availablePages: [[String: Any]]?
        
        public var pages: [String: Any]?
        
        public var availableSections: [availableSectionSchema]?
        
        public var sections: [sectionSchema]?
        
        public var constants: [String: Any]?
        
        public var styles: [String: Any]?
        
        public var config: [String: Any]?
        
        public var settings: [String: Any]?
        
        public var font: [String: Any]?
        
        public var id: String?
        
        public var v: Int?
        
        public var colors: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case application = "application"
            
            case applied = "applied"
            
            case customized = "customized"
            
            case published = "published"
            
            case archived = "archived"
            
            case createdAt = "createdAt"
            
            case updatedAt = "updatedAt"
            
            case version = "version"
            
            case parentThemeVersion = "parentThemeVersion"
            
            case parentTheme = "parentTheme"
            
            case information = "information"
            
            case tags = "tags"
            
            case src = "src"
            
            case assets = "assets"
            
            case availablePages = "available_pages"
            
            case pages = "pages"
            
            case availableSections = "available_sections"
            
            case sections = "sections"
            
            case constants = "constants"
            
            case styles = "styles"
            
            case config = "config"
            
            case settings = "settings"
            
            case font = "font"
            
            case id = "_id"
            
            case v = "__v"
            
            case colors = "colors"
            
        }

        public init(application: String?, applied: Bool?, archived: Bool?, assets: [String: Any]?, availablePages: [[String: Any]]?, availableSections: [availableSectionSchema]?, colors: [String: Any]?, config: [String: Any]?, constants: [String: Any]?, createdAt: String?, customized: Bool?, font: [String: Any]?, information: [String: Any]?, pages: [String: Any]?, parentTheme: String?, parentThemeVersion: String?, published: Bool?, sections: [sectionSchema]?, settings: [String: Any]?, src: [String: Any]?, styles: [String: Any]?, tags: [String]?, updatedAt: String?, version: String?, id: String?, v: Int?) {
            
            self.application = application
            
            self.applied = applied
            
            self.customized = customized
            
            self.published = published
            
            self.archived = archived
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.version = version
            
            self.parentThemeVersion = parentThemeVersion
            
            self.parentTheme = parentTheme
            
            self.information = information
            
            self.tags = tags
            
            self.src = src
            
            self.assets = assets
            
            self.availablePages = availablePages
            
            self.pages = pages
            
            self.availableSections = availableSections
            
            self.sections = sections
            
            self.constants = constants
            
            self.styles = styles
            
            self.config = config
            
            self.settings = settings
            
            self.font = font
            
            self.id = id
            
            self.v = v
            
            self.colors = colors
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            application = try? container.decode(String.self, forKey: .application)
            
            applied = try? container.decode(Bool.self, forKey: .applied)
            
            customized = try? container.decode(Bool.self, forKey: .customized)
            
            published = try? container.decode(Bool.self, forKey: .published)
            
            archived = try? container.decode(Bool.self, forKey: .archived)
            
            createdAt = try? container.decode(String.self, forKey: .createdAt)
            
            updatedAt = try? container.decode(String.self, forKey: .updatedAt)
            
            version = try? container.decode(String.self, forKey: .version)
            
            parentThemeVersion = try? container.decode(String.self, forKey: .parentThemeVersion)
            
            parentTheme = try? container.decode(String.self, forKey: .parentTheme)
            
            information = try? container.decode([String: Any].self, forKey: .information)
            
            tags = try? container.decode([String].self, forKey: .tags)
            
            src = try? container.decode([String: Any].self, forKey: .src)
            
            assets = try? container.decode([String: Any].self, forKey: .assets)
            
            availablePages = try? container.decode([[String: Any]].self, forKey: .availablePages)
            
            pages = try? container.decode([String: Any].self, forKey: .pages)
            
            availableSections = try? container.decode([availableSectionSchema].self, forKey: .availableSections)
            
            sections = try? container.decode([sectionSchema].self, forKey: .sections)
            
            constants = try? container.decode([String: Any].self, forKey: .constants)
            
            styles = try? container.decode([String: Any].self, forKey: .styles)
            
            config = try? container.decode([String: Any].self, forKey: .config)
            
            settings = try? container.decode([String: Any].self, forKey: .settings)
            
            font = try? container.decode([String: Any].self, forKey: .font)
            
            id = try? container.decode(String.self, forKey: .id)
            
            v = try? container.decode(Int.self, forKey: .v)
            
            colors = try? container.decode([String: Any].self, forKey: .colors)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            try? container.encodeIfPresent(applied, forKey: .applied)
            
            try? container.encodeIfPresent(customized, forKey: .customized)
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            try? container.encodeIfPresent(archived, forKey: .archived)
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            try? container.encodeIfPresent(parentThemeVersion, forKey: .parentThemeVersion)
            
            try? container.encodeIfPresent(parentTheme, forKey: .parentTheme)
            
            try? container.encodeIfPresent(information, forKey: .information)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(src, forKey: .src)
            
            try? container.encodeIfPresent(assets, forKey: .assets)
            
            try? container.encodeIfPresent(availablePages, forKey: .availablePages)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            try? container.encodeIfPresent(availableSections, forKey: .availableSections)
            
            try? container.encodeIfPresent(sections, forKey: .sections)
            
            try? container.encodeIfPresent(constants, forKey: .constants)
            
            try? container.encodeIfPresent(styles, forKey: .styles)
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            try? container.encodeIfPresent(settings, forKey: .settings)
            
            try? container.encodeIfPresent(font, forKey: .font)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            try? container.encodeIfPresent(colors, forKey: .colors)
            
        }
        
    }
    
    /*
        Model: pagesSchema
    */

    struct pagesSchema: Codable {
        
        
        public var text: String?
        
        public var path: String?
        
        public var type: String?
        
        public var value: String?
        
        public var sections: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case text = "text"
            
            case path = "path"
            
            case type = "type"
            
            case value = "value"
            
            case sections = "sections"
            
        }

        public init(path: String?, sections: [[String: Any]]?, text: String?, type: String?, value: String?) {
            
            self.text = text
            
            self.path = path
            
            self.type = type
            
            self.value = value
            
            self.sections = sections
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            text = try? container.decode(String.self, forKey: .text)
            
            path = try? container.decode(String.self, forKey: .path)
            
            type = try? container.decode(String.self, forKey: .type)
            
            value = try? container.decode(String.self, forKey: .value)
            
            sections = try? container.decode([[String: Any]].self, forKey: .sections)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            try? container.encodeIfPresent(path, forKey: .path)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(sections, forKey: .sections)
            
        }
        
    }
    
    /*
        Model: availableSectionSchema
    */

    struct availableSectionSchema: Codable {
        
        
        public var blocks: [[String: Any]]?
        
        public var name: String?
        
        public var label: String?
        
        public var props: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case blocks = "blocks"
            
            case name = "name"
            
            case label = "label"
            
            case props = "props"
            
        }

        public init(blocks: [[String: Any]]?, label: String?, name: String?, props: [[String: Any]]?) {
            
            self.blocks = blocks
            
            self.name = name
            
            self.label = label
            
            self.props = props
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            blocks = try? container.decode([[String: Any]].self, forKey: .blocks)
            
            name = try? container.decode(String.self, forKey: .name)
            
            label = try? container.decode(String.self, forKey: .label)
            
            props = try? container.decode([[String: Any]].self, forKey: .props)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(blocks, forKey: .blocks)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(label, forKey: .label)
            
            try? container.encodeIfPresent(props, forKey: .props)
            
        }
        
    }
    
    /*
        Model: sectionSchema
    */

    struct sectionSchema: Codable {
        
        
        public var pageKey: String?
        
        public var pageSections: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case pageKey = "page_key"
            
            case pageSections = "page_sections"
            
        }

        public init(pageKey: String?, pageSections: [[String: Any]]?) {
            
            self.pageKey = pageKey
            
            self.pageSections = pageSections
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            pageKey = try? container.decode(String.self, forKey: .pageKey)
            
            pageSections = try? container.decode([[String: Any]].self, forKey: .pageSections)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(pageKey, forKey: .pageKey)
            
            try? container.encodeIfPresent(pageSections, forKey: .pageSections)
            
        }
        
    }
    
    
    
    /*
        Model: PaymentGatewayConfigResponse
    */

    struct PaymentGatewayConfigResponse: Codable {
        
        
        public var appId: String
        
        public var displayFields: [String]
        
        public var created: Bool
        
        public var excludedFields: [String]
        
        public var aggregators: [[String: Any]]?
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "app_id"
            
            case displayFields = "display_fields"
            
            case created = "created"
            
            case excludedFields = "excluded_fields"
            
            case aggregators = "aggregators"
            
            case success = "success"
            
        }

        public init(aggregators: [[String: Any]]?, appId: String, created: Bool, displayFields: [String], excludedFields: [String], success: Bool) {
            
            self.appId = appId
            
            self.displayFields = displayFields
            
            self.created = created
            
            self.excludedFields = excludedFields
            
            self.aggregators = aggregators
            
            self.success = success
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            appId = try container.decode(String.self, forKey: .appId)
            
            displayFields = try container.decode([String].self, forKey: .displayFields)
            
            created = try container.decode(Bool.self, forKey: .created)
            
            excludedFields = try container.decode([String].self, forKey: .excludedFields)
            
            aggregators = try? container.decode([[String: Any]].self, forKey: .aggregators)
            
            success = try container.decode(Bool.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            try? container.encodeIfPresent(displayFields, forKey: .displayFields)
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            try? container.encodeIfPresent(excludedFields, forKey: .excludedFields)
            
            try? container.encodeIfPresent(aggregators, forKey: .aggregators)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: ErrorCodeDescription
    */

    struct ErrorCodeDescription: Codable {
        
        
        public var success: Bool
        
        public var code: String
        
        public var description: String
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case code = "code"
            
            case description = "description"
            
        }

        public init(code: String, description: String, success: Bool) {
            
            self.success = success
            
            self.code = code
            
            self.description = description
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            code = try container.decode(String.self, forKey: .code)
            
            description = try container.decode(String.self, forKey: .description)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
        }
        
    }
    
    /*
        Model: PaymentGatewayConfig
    */

    struct PaymentGatewayConfig: Codable {
        
        
        public var merchantSalt: String
        
        public var isActive: Bool?
        
        public var key: String
        
        public var secret: String
        
        public var configType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case merchantSalt = "merchant_salt"
            
            case isActive = "is_active"
            
            case key = "key"
            
            case secret = "secret"
            
            case configType = "config_type"
            
        }

        public init(configType: String, isActive: Bool?, key: String, merchantSalt: String, secret: String) {
            
            self.merchantSalt = merchantSalt
            
            self.isActive = isActive
            
            self.key = key
            
            self.secret = secret
            
            self.configType = configType
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            merchantSalt = try container.decode(String.self, forKey: .merchantSalt)
            
            isActive = try? container.decode(Bool.self, forKey: .isActive)
            
            key = try container.decode(String.self, forKey: .key)
            
            secret = try container.decode(String.self, forKey: .secret)
            
            configType = try container.decode(String.self, forKey: .configType)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(merchantSalt, forKey: .merchantSalt)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(secret, forKey: .secret)
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
        }
        
    }
    
    /*
        Model: PaymentGatewayConfigRequest
    */

    struct PaymentGatewayConfigRequest: Codable {
        
        
        public var aggregatorName: PaymentGatewayConfig?
        
        public var isActive: Bool?
        
        public var appId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregatorName = "aggregator_name"
            
            case isActive = "is_active"
            
            case appId = "app_id"
            
        }

        public init(aggregatorName: PaymentGatewayConfig?, appId: String, isActive: Bool?) {
            
            self.aggregatorName = aggregatorName
            
            self.isActive = isActive
            
            self.appId = appId
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            aggregatorName = try? container.decode(PaymentGatewayConfig.self, forKey: .aggregatorName)
            
            isActive = try? container.decode(Bool.self, forKey: .isActive)
            
            appId = try container.decode(String.self, forKey: .appId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
        }
        
    }
    
    /*
        Model: PaymentGatewayToBeReviewed
    */

    struct PaymentGatewayToBeReviewed: Codable {
        
        
        public var success: Bool
        
        public var aggregator: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case aggregator = "aggregator"
            
        }

        public init(aggregator: [String], success: Bool) {
            
            self.success = success
            
            self.aggregator = aggregator
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            aggregator = try container.decode([String].self, forKey: .aggregator)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
        }
        
    }
    
    /*
        Model: ErrorCodeAndDescription
    */

    struct ErrorCodeAndDescription: Codable {
        
        
        public var code: String
        
        public var description: String
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case description = "description"
            
        }

        public init(code: String, description: String) {
            
            self.code = code
            
            self.description = description
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            code = try container.decode(String.self, forKey: .code)
            
            description = try container.decode(String.self, forKey: .description)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
        }
        
    }
    
    /*
        Model: HttpErrorCodeAndResponse
    */

    struct HttpErrorCodeAndResponse: Codable {
        
        
        public var success: Bool
        
        public var error: ErrorCodeAndDescription
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case error = "error"
            
        }

        public init(error: ErrorCodeAndDescription, success: Bool) {
            
            self.success = success
            
            self.error = error
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            error = try container.decode(ErrorCodeAndDescription.self, forKey: .error)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(error, forKey: .error)
            
        }
        
    }
    
    /*
        Model: PaymentModeLogo
    */

    struct PaymentModeLogo: Codable {
        
        
        public var large: String
        
        public var small: String
        

        public enum CodingKeys: String, CodingKey {
            
            case large = "large"
            
            case small = "small"
            
        }

        public init(large: String, small: String) {
            
            self.large = large
            
            self.small = small
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            large = try container.decode(String.self, forKey: .large)
            
            small = try container.decode(String.self, forKey: .small)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(large, forKey: .large)
            
            try? container.encodeIfPresent(small, forKey: .small)
            
        }
        
    }
    
    /*
        Model: PaymentModeList
    */

    struct PaymentModeList: Codable {
        
        
        public var merchantCode: String?
        
        public var cardName: String?
        
        public var cardToken: String?
        
        public var cardFingerprint: String?
        
        public var expMonth: Int?
        
        public var displayPriority: Int?
        
        public var expired: Bool?
        
        public var cardBrandImage: String?
        
        public var expYear: Int?
        
        public var cardIsin: String?
        
        public var cardBrand: String?
        
        public var displayName: String?
        
        public var cardNumber: String?
        
        public var cardIssuer: String?
        
        public var aggregatorName: String
        
        public var cardReference: String?
        
        public var nickname: String?
        
        public var code: String?
        
        public var cardType: String?
        
        public var logoUrl: PaymentModeLogo?
        
        public var cardId: String?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case merchantCode = "merchant_code"
            
            case cardName = "card_name"
            
            case cardToken = "card_token"
            
            case cardFingerprint = "card_fingerprint"
            
            case expMonth = "exp_month"
            
            case displayPriority = "display_priority"
            
            case expired = "expired"
            
            case cardBrandImage = "card_brand_image"
            
            case expYear = "exp_year"
            
            case cardIsin = "card_isin"
            
            case cardBrand = "card_brand"
            
            case displayName = "display_name"
            
            case cardNumber = "card_number"
            
            case cardIssuer = "card_issuer"
            
            case aggregatorName = "aggregator_name"
            
            case cardReference = "card_reference"
            
            case nickname = "nickname"
            
            case code = "code"
            
            case cardType = "card_type"
            
            case logoUrl = "logo_url"
            
            case cardId = "card_id"
            
            case name = "name"
            
        }

        public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, code: String?, displayName: String?, displayPriority: Int?, expired: Bool?, expMonth: Int?, expYear: Int?, logoUrl: PaymentModeLogo?, merchantCode: String?, name: String?, nickname: String?) {
            
            self.merchantCode = merchantCode
            
            self.cardName = cardName
            
            self.cardToken = cardToken
            
            self.cardFingerprint = cardFingerprint
            
            self.expMonth = expMonth
            
            self.displayPriority = displayPriority
            
            self.expired = expired
            
            self.cardBrandImage = cardBrandImage
            
            self.expYear = expYear
            
            self.cardIsin = cardIsin
            
            self.cardBrand = cardBrand
            
            self.displayName = displayName
            
            self.cardNumber = cardNumber
            
            self.cardIssuer = cardIssuer
            
            self.aggregatorName = aggregatorName
            
            self.cardReference = cardReference
            
            self.nickname = nickname
            
            self.code = code
            
            self.cardType = cardType
            
            self.logoUrl = logoUrl
            
            self.cardId = cardId
            
            self.name = name
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            merchantCode = try? container.decode(String.self, forKey: .merchantCode)
            
            cardName = try? container.decode(String.self, forKey: .cardName)
            
            cardToken = try? container.decode(String.self, forKey: .cardToken)
            
            cardFingerprint = try? container.decode(String.self, forKey: .cardFingerprint)
            
            expMonth = try? container.decode(Int.self, forKey: .expMonth)
            
            displayPriority = try? container.decode(Int.self, forKey: .displayPriority)
            
            expired = try? container.decode(Bool.self, forKey: .expired)
            
            cardBrandImage = try? container.decode(String.self, forKey: .cardBrandImage)
            
            expYear = try? container.decode(Int.self, forKey: .expYear)
            
            cardIsin = try? container.decode(String.self, forKey: .cardIsin)
            
            cardBrand = try? container.decode(String.self, forKey: .cardBrand)
            
            displayName = try? container.decode(String.self, forKey: .displayName)
            
            cardNumber = try? container.decode(String.self, forKey: .cardNumber)
            
            cardIssuer = try? container.decode(String.self, forKey: .cardIssuer)
            
            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
            
            cardReference = try? container.decode(String.self, forKey: .cardReference)
            
            nickname = try? container.decode(String.self, forKey: .nickname)
            
            code = try? container.decode(String.self, forKey: .code)
            
            cardType = try? container.decode(String.self, forKey: .cardType)
            
            logoUrl = try? container.decode(PaymentModeLogo.self, forKey: .logoUrl)
            
            cardId = try? container.decode(String.self, forKey: .cardId)
            
            name = try? container.decode(String.self, forKey: .name)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
            
            try? container.encodeIfPresent(cardName, forKey: .cardName)
            
            try? container.encodeIfPresent(cardToken, forKey: .cardToken)
            
            try? container.encodeIfPresent(cardFingerprint, forKey: .cardFingerprint)
            
            try? container.encodeIfPresent(expMonth, forKey: .expMonth)
            
            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
            
            try? container.encodeIfPresent(expired, forKey: .expired)
            
            try? container.encodeIfPresent(cardBrandImage, forKey: .cardBrandImage)
            
            try? container.encodeIfPresent(expYear, forKey: .expYear)
            
            try? container.encodeIfPresent(cardIsin, forKey: .cardIsin)
            
            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            try? container.encodeIfPresent(cardNumber, forKey: .cardNumber)
            
            try? container.encodeIfPresent(cardIssuer, forKey: .cardIssuer)
            
            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
            
            try? container.encodeIfPresent(cardReference, forKey: .cardReference)
            
            try? container.encodeIfPresent(nickname, forKey: .nickname)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(cardType, forKey: .cardType)
            
            try? container.encodeIfPresent(logoUrl, forKey: .logoUrl)
            
            try? container.encodeIfPresent(cardId, forKey: .cardId)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
        }
        
    }
    
    /*
        Model: RootPaymentMode
    */

    struct RootPaymentMode: Codable {
        
        
        public var displayName: String
        
        public var list: [PaymentModeList]?
        
        public var displayPriority: Int
        
        public var aggregatorName: String?
        
        public var anonymousEnable: Bool?
        
        public var name: String
        
        public var addCardEnabled: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayName = "display_name"
            
            case list = "list"
            
            case displayPriority = "display_priority"
            
            case aggregatorName = "aggregator_name"
            
            case anonymousEnable = "anonymous_enable"
            
            case name = "name"
            
            case addCardEnabled = "add_card_enabled"
            
        }

        public init(addCardEnabled: Bool?, aggregatorName: String?, anonymousEnable: Bool?, displayName: String, displayPriority: Int, list: [PaymentModeList]?, name: String) {
            
            self.displayName = displayName
            
            self.list = list
            
            self.displayPriority = displayPriority
            
            self.aggregatorName = aggregatorName
            
            self.anonymousEnable = anonymousEnable
            
            self.name = name
            
            self.addCardEnabled = addCardEnabled
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            displayName = try container.decode(String.self, forKey: .displayName)
            
            list = try? container.decode([PaymentModeList].self, forKey: .list)
            
            displayPriority = try container.decode(Int.self, forKey: .displayPriority)
            
            aggregatorName = try? container.decode(String.self, forKey: .aggregatorName)
            
            anonymousEnable = try? container.decode(Bool.self, forKey: .anonymousEnable)
            
            name = try container.decode(String.self, forKey: .name)
            
            addCardEnabled = try? container.decode(Bool.self, forKey: .addCardEnabled)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            try? container.encodeIfPresent(list, forKey: .list)
            
            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
            
            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
            
            try? container.encodeIfPresent(anonymousEnable, forKey: .anonymousEnable)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(addCardEnabled, forKey: .addCardEnabled)
            
        }
        
    }
    
    /*
        Model: PaymentOptionsResponse
    */

    struct PaymentOptionsResponse: Codable {
        
        
        public var success: Bool
        
        public var paymentOptions: [RootPaymentMode]
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case paymentOptions = "payment_options"
            
        }

        public init(paymentOptions: [RootPaymentMode], success: Bool) {
            
            self.success = success
            
            self.paymentOptions = paymentOptions
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            paymentOptions = try container.decode([RootPaymentMode].self, forKey: .paymentOptions)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
            
        }
        
    }
    
    /*
        Model: PayoutsResponse
    */

    struct PayoutsResponse: Codable {
        
        
        public var isDefault: Bool
        
        public var payoutsAggregators: [[String: Any]]
        
        public var isActive: Bool
        
        public var customers: [String: Any]
        
        public var uniqueTransferNo: [String: Any]
        
        public var transferType: String
        
        public var moreAttributes: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case isDefault = "is_default"
            
            case payoutsAggregators = "payouts_aggregators"
            
            case isActive = "is_active"
            
            case customers = "customers"
            
            case uniqueTransferNo = "unique_transfer_no"
            
            case transferType = "transfer_type"
            
            case moreAttributes = "more_attributes"
            
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            
            self.isDefault = isDefault
            
            self.payoutsAggregators = payoutsAggregators
            
            self.isActive = isActive
            
            self.customers = customers
            
            self.uniqueTransferNo = uniqueTransferNo
            
            self.transferType = transferType
            
            self.moreAttributes = moreAttributes
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isDefault = try container.decode(Bool.self, forKey: .isDefault)
            
            payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)
            
            isActive = try container.decode(Bool.self, forKey: .isActive)
            
            customers = try container.decode([String: Any].self, forKey: .customers)
            
            uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)
            
            transferType = try container.decode(String.self, forKey: .transferType)
            
            moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(customers, forKey: .customers)
            
            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)
            
        }
        
    }
    
    /*
        Model: PayoutRequest
    */

    struct PayoutRequest: Codable {
        
        
        public var isActive: Bool
        
        public var aggregator: String
        
        public var transferType: String
        
        public var bankDetails: [String: Any]
        
        public var uniqueExternalId: String
        
        public var users: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case aggregator = "aggregator"
            
            case transferType = "transfer_type"
            
            case bankDetails = "bank_details"
            
            case uniqueExternalId = "unique_external_id"
            
            case users = "users"
            
        }

        public init(aggregator: String, bankDetails: [String: Any], isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            
            self.isActive = isActive
            
            self.aggregator = aggregator
            
            self.transferType = transferType
            
            self.bankDetails = bankDetails
            
            self.uniqueExternalId = uniqueExternalId
            
            self.users = users
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isActive = try container.decode(Bool.self, forKey: .isActive)
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
            transferType = try container.decode(String.self, forKey: .transferType)
            
            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)
            
            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
            
            users = try container.decode([String: Any].self, forKey: .users)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)
            
            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)
            
            try? container.encodeIfPresent(users, forKey: .users)
            
        }
        
    }
    
    /*
        Model: PayoutResponse
    */

    struct PayoutResponse: Codable {
        
        
        public var created: Bool
        
        public var paymentStatus: String
        
        public var payouts: [String: Any]
        
        public var isActive: Bool
        
        public var aggregator: String
        
        public var uniqueTransferNo: String
        
        public var success: Bool
        
        public var transferType: String
        
        public var bankDetails: [String: Any]
        
        public var users: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case created = "created"
            
            case paymentStatus = "payment_status"
            
            case payouts = "payouts"
            
            case isActive = "is_active"
            
            case aggregator = "aggregator"
            
            case uniqueTransferNo = "unique_transfer_no"
            
            case success = "success"
            
            case transferType = "transfer_type"
            
            case bankDetails = "bank_details"
            
            case users = "users"
            
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            
            self.created = created
            
            self.paymentStatus = paymentStatus
            
            self.payouts = payouts
            
            self.isActive = isActive
            
            self.aggregator = aggregator
            
            self.uniqueTransferNo = uniqueTransferNo
            
            self.success = success
            
            self.transferType = transferType
            
            self.bankDetails = bankDetails
            
            self.users = users
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            created = try container.decode(Bool.self, forKey: .created)
            
            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)
            
            payouts = try container.decode([String: Any].self, forKey: .payouts)
            
            isActive = try container.decode(Bool.self, forKey: .isActive)
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            transferType = try container.decode(String.self, forKey: .transferType)
            
            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)
            
            users = try container.decode([String: Any].self, forKey: .users)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)
            
            try? container.encodeIfPresent(payouts, forKey: .payouts)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)
            
            try? container.encodeIfPresent(users, forKey: .users)
            
        }
        
    }
    
    /*
        Model: UpdatePayoutResponse
    */

    struct UpdatePayoutResponse: Codable {
        
        
        public var success: Bool
        
        public var isActive: Bool
        
        public var isDefault: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case isActive = "is_active"
            
            case isDefault = "is_default"
            
        }

        public init(isActive: Bool, isDefault: Bool, success: Bool) {
            
            self.success = success
            
            self.isActive = isActive
            
            self.isDefault = isDefault
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            isActive = try container.decode(Bool.self, forKey: .isActive)
            
            isDefault = try container.decode(Bool.self, forKey: .isDefault)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
        }
        
    }
    
    /*
        Model: UpdatePayoutRequest
    */

    struct UpdatePayoutRequest: Codable {
        
        
        public var isActive: Bool
        
        public var uniqueExternalId: String
        
        public var isDefault: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case uniqueExternalId = "unique_external_id"
            
            case isDefault = "is_default"
            
        }

        public init(isActive: Bool, isDefault: Bool, uniqueExternalId: String) {
            
            self.isActive = isActive
            
            self.uniqueExternalId = uniqueExternalId
            
            self.isDefault = isDefault
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            isActive = try container.decode(Bool.self, forKey: .isActive)
            
            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
            
            isDefault = try container.decode(Bool.self, forKey: .isDefault)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
        }
        
    }
    
    /*
        Model: DeletePayoutResponse
    */

    struct DeletePayoutResponse: Codable {
        
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
        }

        public init(success: Bool) {
            
            self.success = success
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try container.decode(Bool.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: SubscriptionPaymentMethodResponse
    */

    struct SubscriptionPaymentMethodResponse: Codable {
        
        
        public var success: Bool
        
        public var data: [[String: Any]]
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case data = "data"
            
        }

        public init(data: [[String: Any]], success: Bool) {
            
            self.success = success
            
            self.data = data
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            data = try container.decode([[String: Any]].self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    /*
        Model: DeleteSubscriptionPaymentMethodResponse
    */

    struct DeleteSubscriptionPaymentMethodResponse: Codable {
        
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
        }

        public init(success: Bool) {
            
            self.success = success
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try container.decode(Bool.self, forKey: .success)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
        }
        
    }
    
    /*
        Model: SubscriptionConfigResponse
    */

    struct SubscriptionConfigResponse: Codable {
        
        
        public var success: Bool
        
        public var config: [String: Any]
        
        public var aggregator: String
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case config = "config"
            
            case aggregator = "aggregator"
            
        }

        public init(aggregator: String, config: [String: Any], success: Bool) {
            
            self.success = success
            
            self.config = config
            
            self.aggregator = aggregator
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            config = try container.decode([String: Any].self, forKey: .config)
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
        }
        
    }
    
    /*
        Model: SaveSubscriptionSetupIntentRequest
    */

    struct SaveSubscriptionSetupIntentRequest: Codable {
        
        
        public var uniqueExternalId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case uniqueExternalId = "unique_external_id"
            
        }

        public init(uniqueExternalId: String) {
            
            self.uniqueExternalId = uniqueExternalId
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)
            
        }
        
    }
    
    /*
        Model: SaveSubscriptionSetupIntentResponse
    */

    struct SaveSubscriptionSetupIntentResponse: Codable {
        
        
        public var success: Bool
        
        public var data: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case data = "data"
            
        }

        public init(data: [String: Any], success: Bool) {
            
            self.success = success
            
            self.data = data
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try container.decode(Bool.self, forKey: .success)
            
            data = try container.decode([String: Any].self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    
    
    /*
        Model: BusinessCountryInfo
    */

    struct BusinessCountryInfo: Codable {
        
        
        public var countryCode: String?
        
        public var country: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case countryCode = "country_code"
            
            case country = "country"
            
        }

        public init(country: String?, countryCode: String?) {
            
            self.countryCode = countryCode
            
            self.country = country
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
            country = try? container.decode(String.self, forKey: .country)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(country, forKey: .country)
            
        }
        
    }
    
    /*
        Model: ReferralInfo
    */

    struct ReferralInfo: Codable {
        
        
        public var referralCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case referralCode = "referral_code"
            
        }

        public init(referralCode: String?) {
            
            self.referralCode = referralCode
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            referralCode = try? container.decode(String.self, forKey: .referralCode)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(referralCode, forKey: .referralCode)
            
        }
        
    }
    
    /*
        Model: Document
    */

    struct Document: Codable {
        
        
        public var url: String?
        
        public var value: String
        
        public var type: String
        
        public var verified: Bool?
        
        public var legalName: String
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
            case value = "value"
            
            case type = "type"
            
            case verified = "verified"
            
            case legalName = "legal_name"
            
        }

        public init(legalName: String, type: String, url: String?, value: String, verified: Bool?) {
            
            self.url = url
            
            self.value = value
            
            self.type = type
            
            self.verified = verified
            
            self.legalName = legalName
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            url = try? container.decode(String.self, forKey: .url)
            
            value = try container.decode(String.self, forKey: .value)
            
            type = try container.decode(String.self, forKey: .type)
            
            verified = try? container.decode(Bool.self, forKey: .verified)
            
            legalName = try container.decode(String.self, forKey: .legalName)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            try? container.encodeIfPresent(legalName, forKey: .legalName)
            
        }
        
    }
    
    /*
        Model: CompanyAddress
    */

    struct CompanyAddress: Codable {
        
        
        public var city: String
        
        public var country: String
        
        public var countryCode: String?
        
        public var state: String
        
        public var address1: String
        
        public var latitude: Double
        
        public var pincode: Int
        
        public var landmark: String?
        
        public var address2: String?
        
        public var longitude: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case city = "city"
            
            case country = "country"
            
            case countryCode = "country_code"
            
            case state = "state"
            
            case address1 = "address1"
            
            case latitude = "latitude"
            
            case pincode = "pincode"
            
            case landmark = "landmark"
            
            case address2 = "address2"
            
            case longitude = "longitude"
            
        }

        public init(address1: String, address2: String?, city: String, country: String, countryCode: String?, landmark: String?, latitude: Double, longitude: Double, pincode: Int, state: String) {
            
            self.city = city
            
            self.country = country
            
            self.countryCode = countryCode
            
            self.state = state
            
            self.address1 = address1
            
            self.latitude = latitude
            
            self.pincode = pincode
            
            self.landmark = landmark
            
            self.address2 = address2
            
            self.longitude = longitude
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            city = try container.decode(String.self, forKey: .city)
            
            country = try container.decode(String.self, forKey: .country)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
            state = try container.decode(String.self, forKey: .state)
            
            address1 = try container.decode(String.self, forKey: .address1)
            
            latitude = try container.decode(Double.self, forKey: .latitude)
            
            pincode = try container.decode(Int.self, forKey: .pincode)
            
            landmark = try? container.decode(String.self, forKey: .landmark)
            
            address2 = try? container.decode(String.self, forKey: .address2)
            
            longitude = try container.decode(Double.self, forKey: .longitude)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
        }
        
    }
    
    /*
        Model: CompanyStoreSerializerRequest
    */

    struct CompanyStoreSerializerRequest: Codable {
        
        
        public var businessCountryInfo: BusinessCountryInfo
        
        public var businessInfo: String?
        
        public var referralInfo: ReferralInfo?
        
        public var name: String
        
        public var warnings: [String: Any]?
        
        public var franchiseEnabled: Bool?
        
        public var document: Document
        
        public var notificationEmails: [String]?
        
        public var address: CompanyAddress
        
        public var brands: [Int]
        
        public var businessType: String
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case businessCountryInfo = "business_country_info"
            
            case businessInfo = "business_info"
            
            case referralInfo = "referral_info"
            
            case name = "name"
            
            case warnings = "warnings"
            
            case franchiseEnabled = "franchise_enabled"
            
            case document = "document"
            
            case notificationEmails = "notification_emails"
            
            case address = "address"
            
            case brands = "brands"
            
            case businessType = "business_type"
            
            case uid = "uid"
            
        }

        public init(address: CompanyAddress, brands: [Int], businessCountryInfo: BusinessCountryInfo, businessInfo: String?, businessType: String, document: Document, franchiseEnabled: Bool?, name: String, notificationEmails: [String]?, referralInfo: ReferralInfo?, uid: Int?, warnings: [String: Any]?) {
            
            self.businessCountryInfo = businessCountryInfo
            
            self.businessInfo = businessInfo
            
            self.referralInfo = referralInfo
            
            self.name = name
            
            self.warnings = warnings
            
            self.franchiseEnabled = franchiseEnabled
            
            self.document = document
            
            self.notificationEmails = notificationEmails
            
            self.address = address
            
            self.brands = brands
            
            self.businessType = businessType
            
            self.uid = uid
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            businessCountryInfo = try container.decode(BusinessCountryInfo.self, forKey: .businessCountryInfo)
            
            businessInfo = try? container.decode(String.self, forKey: .businessInfo)
            
            referralInfo = try? container.decode(ReferralInfo.self, forKey: .referralInfo)
            
            name = try container.decode(String.self, forKey: .name)
            
            warnings = try? container.decode([String: Any].self, forKey: .warnings)
            
            franchiseEnabled = try? container.decode(Bool.self, forKey: .franchiseEnabled)
            
            document = try container.decode(Document.self, forKey: .document)
            
            notificationEmails = try? container.decode([String].self, forKey: .notificationEmails)
            
            address = try container.decode(CompanyAddress.self, forKey: .address)
            
            brands = try container.decode([Int].self, forKey: .brands)
            
            businessType = try container.decode(String.self, forKey: .businessType)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(businessCountryInfo, forKey: .businessCountryInfo)
            
            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)
            
            try? container.encodeIfPresent(referralInfo, forKey: .referralInfo)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)
            
            try? container.encodeIfPresent(document, forKey: .document)
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(brands, forKey: .brands)
            
            try? container.encodeIfPresent(businessType, forKey: .businessType)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: SuccessResponse
    */

    struct SuccessResponse: Codable {
        
        
        public var success: Bool?
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case uid = "uid"
            
        }

        public init(success: Bool?, uid: Int?) {
            
            self.success = success
            
            self.uid = uid
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            success = try? container.decode(Bool.self, forKey: .success)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: ErrorResponse
    */

    struct ErrorResponse: Codable {
        
        
        public var code: String?
        
        public var message: String?
        
        public var status: Int?
        
        public var meta: [String: Any]?
        
        public var errors: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case message = "message"
            
            case status = "status"
            
            case meta = "meta"
            
            case errors = "errors"
            
        }

        public init(code: String?, errors: [String: Any]?, message: String?, meta: [String: Any]?, status: Int?) {
            
            self.code = code
            
            self.message = message
            
            self.status = status
            
            self.meta = meta
            
            self.errors = errors
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            code = try? container.decode(String.self, forKey: .code)
            
            message = try? container.decode(String.self, forKey: .message)
            
            status = try? container.decode(Int.self, forKey: .status)
            
            meta = try? container.decode([String: Any].self, forKey: .meta)
            
            errors = try? container.decode([String: Any].self, forKey: .errors)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
        }
        
    }
    
    /*
        Model: UserSerializer
    */

    struct UserSerializer: Codable {
        
        
        public var contact: String?
        
        public var username: String?
        
        public var userId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case contact = "contact"
            
            case username = "username"
            
            case userId = "user_id"
            
        }

        public init(contact: String?, username: String?, userId: String?) {
            
            self.contact = contact
            
            self.username = username
            
            self.userId = userId
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            contact = try? container.decode(String.self, forKey: .contact)
            
            username = try? container.decode(String.self, forKey: .username)
            
            userId = try? container.decode(String.self, forKey: .userId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
        }
        
    }
    
    /*
        Model: PhoneNumber
    */

    struct PhoneNumber: Codable {
        
        
        public var countryCode: Int
        
        public var number: String
        

        public enum CodingKeys: String, CodingKey {
            
            case countryCode = "country_code"
            
            case number = "number"
            
        }

        public init(countryCode: Int, number: String) {
            
            self.countryCode = countryCode
            
            self.number = number
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            countryCode = try container.decode(Int.self, forKey: .countryCode)
            
            number = try container.decode(String.self, forKey: .number)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(number, forKey: .number)
            
        }
        
    }
    
    /*
        Model: ContactDetails
    */

    struct ContactDetails: Codable {
        
        
        public var phone: [PhoneNumber]?
        
        public var emails: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case phone = "phone"
            
            case emails = "emails"
            
        }

        public init(emails: [String]?, phone: [PhoneNumber]?) {
            
            self.phone = phone
            
            self.emails = emails
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            phone = try? container.decode([PhoneNumber].self, forKey: .phone)
            
            emails = try? container.decode([String].self, forKey: .emails)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            try? container.encodeIfPresent(emails, forKey: .emails)
            
        }
        
    }
    
    /*
        Model: GetAddressSerializer
    */

    struct GetAddressSerializer: Codable {
        
        
        public var city: String?
        
        public var addressType: String?
        
        public var country: String?
        
        public var landmark: String?
        
        public var address1: String?
        
        public var state: String?
        
        public var latitude: Double?
        
        public var pincode: Int?
        
        public var countryCode: String?
        
        public var address2: String?
        
        public var longitude: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case city = "city"
            
            case addressType = "address_type"
            
            case country = "country"
            
            case landmark = "landmark"
            
            case address1 = "address1"
            
            case state = "state"
            
            case latitude = "latitude"
            
            case pincode = "pincode"
            
            case countryCode = "country_code"
            
            case address2 = "address2"
            
            case longitude = "longitude"
            
        }

        public init(address1: String?, address2: String?, addressType: String?, city: String?, country: String?, countryCode: String?, landmark: String?, latitude: Double?, longitude: Double?, pincode: Int?, state: String?) {
            
            self.city = city
            
            self.addressType = addressType
            
            self.country = country
            
            self.landmark = landmark
            
            self.address1 = address1
            
            self.state = state
            
            self.latitude = latitude
            
            self.pincode = pincode
            
            self.countryCode = countryCode
            
            self.address2 = address2
            
            self.longitude = longitude
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            city = try? container.decode(String.self, forKey: .city)
            
            addressType = try? container.decode(String.self, forKey: .addressType)
            
            country = try? container.decode(String.self, forKey: .country)
            
            landmark = try? container.decode(String.self, forKey: .landmark)
            
            address1 = try? container.decode(String.self, forKey: .address1)
            
            state = try? container.decode(String.self, forKey: .state)
            
            latitude = try? container.decode(Double.self, forKey: .latitude)
            
            pincode = try? container.decode(Int.self, forKey: .pincode)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
            address2 = try? container.decode(String.self, forKey: .address2)
            
            longitude = try? container.decode(Double.self, forKey: .longitude)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
        }
        
    }
    
    /*
        Model: Website
    */

    struct Website: Codable {
        
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
        }

        public init(url: String?) {
            
            self.url = url
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            url = try? container.decode(String.self, forKey: .url)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
        }
        
    }
    
    /*
        Model: BusinessDetails
    */

    struct BusinessDetails: Codable {
        
        
        public var website: Website?
        

        public enum CodingKeys: String, CodingKey {
            
            case website = "website"
            
        }

        public init(website: Website?) {
            
            self.website = website
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            website = try? container.decode(Website.self, forKey: .website)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(website, forKey: .website)
            
        }
        
    }
    
    /*
        Model: BusinessCountryInfo1
    */

    struct BusinessCountryInfo1: Codable {
        
        
        public var countryCode: String?
        
        public var country: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case countryCode = "country_code"
            
            case country = "country"
            
        }

        public init(country: String?, countryCode: String?) {
            
            self.countryCode = countryCode
            
            self.country = country
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
            country = try? container.decode(String.self, forKey: .country)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(country, forKey: .country)
            
        }
        
    }
    
    /*
        Model: GetCompanyProfileSerializerResponse
    */

    struct GetCompanyProfileSerializerResponse: Codable {
        
        
        public var verifiedOn: String?
        
        public var companyType: String
        
        public var warnings: [String: Any]?
        
        public var createdBy: UserSerializer?
        
        public var modifiedBy: UserSerializer?
        
        public var franchiseEnabled: Bool?
        
        public var businessInfo: String?
        
        public var createdOn: String?
        
        public var contactDetails: ContactDetails?
        
        public var addresses: [GetAddressSerializer]?
        
        public var verifiedBy: UserSerializer?
        
        public var stage: String?
        
        public var modifiedOn: String?
        
        public var businessDetails: BusinessDetails?
        
        public var uid: Int
        
        public var businessCountryInfo: BusinessCountryInfo1?
        
        public var name: String?
        
        public var documents: [Document]?
        
        public var notificationEmails: [String]?
        
        public var businessType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case verifiedOn = "verified_on"
            
            case companyType = "company_type"
            
            case warnings = "warnings"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case franchiseEnabled = "franchise_enabled"
            
            case businessInfo = "business_info"
            
            case createdOn = "created_on"
            
            case contactDetails = "contact_details"
            
            case addresses = "addresses"
            
            case verifiedBy = "verified_by"
            
            case stage = "stage"
            
            case modifiedOn = "modified_on"
            
            case businessDetails = "business_details"
            
            case uid = "uid"
            
            case businessCountryInfo = "business_country_info"
            
            case name = "name"
            
            case documents = "documents"
            
            case notificationEmails = "notification_emails"
            
            case businessType = "business_type"
            
        }

        public init(addresses: [GetAddressSerializer]?, businessCountryInfo: BusinessCountryInfo1?, businessDetails: BusinessDetails?, businessInfo: String?, businessType: String, companyType: String, contactDetails: ContactDetails?, createdBy: UserSerializer?, createdOn: String?, documents: [Document]?, franchiseEnabled: Bool?, modifiedBy: UserSerializer?, modifiedOn: String?, name: String?, notificationEmails: [String]?, stage: String?, uid: Int, verifiedBy: UserSerializer?, verifiedOn: String?, warnings: [String: Any]?) {
            
            self.verifiedOn = verifiedOn
            
            self.companyType = companyType
            
            self.warnings = warnings
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.franchiseEnabled = franchiseEnabled
            
            self.businessInfo = businessInfo
            
            self.createdOn = createdOn
            
            self.contactDetails = contactDetails
            
            self.addresses = addresses
            
            self.verifiedBy = verifiedBy
            
            self.stage = stage
            
            self.modifiedOn = modifiedOn
            
            self.businessDetails = businessDetails
            
            self.uid = uid
            
            self.businessCountryInfo = businessCountryInfo
            
            self.name = name
            
            self.documents = documents
            
            self.notificationEmails = notificationEmails
            
            self.businessType = businessType
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            verifiedOn = try? container.decode(String.self, forKey: .verifiedOn)
            
            companyType = try container.decode(String.self, forKey: .companyType)
            
            warnings = try? container.decode([String: Any].self, forKey: .warnings)
            
            createdBy = try? container.decode(UserSerializer.self, forKey: .createdBy)
            
            modifiedBy = try? container.decode(UserSerializer.self, forKey: .modifiedBy)
            
            franchiseEnabled = try? container.decode(Bool.self, forKey: .franchiseEnabled)
            
            businessInfo = try? container.decode(String.self, forKey: .businessInfo)
            
            createdOn = try? container.decode(String.self, forKey: .createdOn)
            
            contactDetails = try? container.decode(ContactDetails.self, forKey: .contactDetails)
            
            addresses = try? container.decode([GetAddressSerializer].self, forKey: .addresses)
            
            verifiedBy = try? container.decode(UserSerializer.self, forKey: .verifiedBy)
            
            stage = try? container.decode(String.self, forKey: .stage)
            
            modifiedOn = try? container.decode(String.self, forKey: .modifiedOn)
            
            businessDetails = try? container.decode(BusinessDetails.self, forKey: .businessDetails)
            
            uid = try container.decode(Int.self, forKey: .uid)
            
            businessCountryInfo = try? container.decode(BusinessCountryInfo1.self, forKey: .businessCountryInfo)
            
            name = try? container.decode(String.self, forKey: .name)
            
            documents = try? container.decode([Document].self, forKey: .documents)
            
            notificationEmails = try? container.decode([String].self, forKey: .notificationEmails)
            
            businessType = try container.decode(String.self, forKey: .businessType)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            try? container.encodeIfPresent(companyType, forKey: .companyType)
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)
            
            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)
            
            try? container.encodeIfPresent(addresses, forKey: .addresses)
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            try? container.encodeIfPresent(businessDetails, forKey: .businessDetails)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(businessCountryInfo, forKey: .businessCountryInfo)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(documents, forKey: .documents)
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            try? container.encodeIfPresent(businessType, forKey: .businessType)
            
        }
        
    }
    
    /*
        Model: DocumentsObj
    */

    struct DocumentsObj: Codable {
        
        
        public var pending: Int?
        
        public var verified: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case pending = "pending"
            
            case verified = "verified"
            
        }

        public init(pending: Int?, verified: Int?) {
            
            self.pending = pending
            
            self.verified = verified
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            pending = try? container.decode(Int.self, forKey: .pending)
            
            verified = try? container.decode(Int.self, forKey: .verified)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(pending, forKey: .pending)
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
        }
        
    }
    
    /*
        Model: MetricsSerializer
    */

    struct MetricsSerializer: Codable {
        
        
        public var storeDocuments: DocumentsObj?
        
        public var uid: Int?
        
        public var companyDocuments: DocumentsObj?
        
        public var stage: String?
        
        public var product: DocumentsObj?
        
        public var store: DocumentsObj?
        
        public var brand: DocumentsObj?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeDocuments = "store_documents"
            
            case uid = "uid"
            
            case companyDocuments = "company_documents"
            
            case stage = "stage"
            
            case product = "product"
            
            case store = "store"
            
            case brand = "brand"
            
        }

        public init(brand: DocumentsObj?, companyDocuments: DocumentsObj?, product: DocumentsObj?, stage: String?, store: DocumentsObj?, storeDocuments: DocumentsObj?, uid: Int?) {
            
            self.storeDocuments = storeDocuments
            
            self.uid = uid
            
            self.companyDocuments = companyDocuments
            
            self.stage = stage
            
            self.product = product
            
            self.store = store
            
            self.brand = brand
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            storeDocuments = try? container.decode(DocumentsObj.self, forKey: .storeDocuments)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            companyDocuments = try? container.decode(DocumentsObj.self, forKey: .companyDocuments)
            
            stage = try? container.decode(String.self, forKey: .stage)
            
            product = try? container.decode(DocumentsObj.self, forKey: .product)
            
            store = try? container.decode(DocumentsObj.self, forKey: .store)
            
            brand = try? container.decode(DocumentsObj.self, forKey: .brand)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(storeDocuments, forKey: .storeDocuments)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(companyDocuments, forKey: .companyDocuments)
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
        }
        
    }
    
    /*
        Model: BrandBannerSerializer
    */

    struct BrandBannerSerializer: Codable {
        
        
        public var portrait: String?
        
        public var landscape: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case portrait = "portrait"
            
            case landscape = "landscape"
            
        }

        public init(landscape: String?, portrait: String?) {
            
            self.portrait = portrait
            
            self.landscape = landscape
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            portrait = try? container.decode(String.self, forKey: .portrait)
            
            landscape = try? container.decode(String.self, forKey: .landscape)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(portrait, forKey: .portrait)
            
            try? container.encodeIfPresent(landscape, forKey: .landscape)
            
        }
        
    }
    
    /*
        Model: UserSerializer1
    */

    struct UserSerializer1: Codable {
        
        
        public var contact: String?
        
        public var username: String?
        
        public var userId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case contact = "contact"
            
            case username = "username"
            
            case userId = "user_id"
            
        }

        public init(contact: String?, username: String?, userId: String?) {
            
            self.contact = contact
            
            self.username = username
            
            self.userId = userId
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            contact = try? container.decode(String.self, forKey: .contact)
            
            username = try? container.decode(String.self, forKey: .username)
            
            userId = try? container.decode(String.self, forKey: .userId)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
        }
        
    }
    
    /*
        Model: GetBrandResponseSerializer
    */

    struct GetBrandResponseSerializer: Codable {
        
        
        public var synonyms: [String]?
        
        public var verifiedOn: String?
        
        public var banner: BrandBannerSerializer?
        
        public var createdOn: String?
        
        public var name: String
        
        public var slugKey: String?
        
        public var rejectReason: String?
        
        public var customJson: [String: Any]?
        
        public var createdBy: UserSerializer1?
        
        public var verifiedBy: UserSerializer1?
        
        public var warnings: [String: Any]?
        
        public var description: String?
        
        public var stage: String?
        
        public var modifiedBy: UserSerializer1?
        
        public var logo: String?
        
        public var modifiedOn: String?
        
        public var uid: Int?
        
        public var localeLanguage: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case synonyms = "synonyms"
            
            case verifiedOn = "verified_on"
            
            case banner = "banner"
            
            case createdOn = "created_on"
            
            case name = "name"
            
            case slugKey = "slug_key"
            
            case rejectReason = "reject_reason"
            
            case customJson = "_custom_json"
            
            case createdBy = "created_by"
            
            case verifiedBy = "verified_by"
            
            case warnings = "warnings"
            
            case description = "description"
            
            case stage = "stage"
            
            case modifiedBy = "modified_by"
            
            case logo = "logo"
            
            case modifiedOn = "modified_on"
            
            case uid = "uid"
            
            case localeLanguage = "_locale_language"
            
        }

        public init(banner: BrandBannerSerializer?, createdBy: UserSerializer1?, createdOn: String?, description: String?, logo: String?, modifiedBy: UserSerializer1?, modifiedOn: String?, name: String, rejectReason: String?, slugKey: String?, stage: String?, synonyms: [String]?, uid: Int?, verifiedBy: UserSerializer1?, verifiedOn: String?, warnings: [String: Any]?, customJson: [String: Any]?, localeLanguage: [String: Any]?) {
            
            self.synonyms = synonyms
            
            self.verifiedOn = verifiedOn
            
            self.banner = banner
            
            self.createdOn = createdOn
            
            self.name = name
            
            self.slugKey = slugKey
            
            self.rejectReason = rejectReason
            
            self.customJson = customJson
            
            self.createdBy = createdBy
            
            self.verifiedBy = verifiedBy
            
            self.warnings = warnings
            
            self.description = description
            
            self.stage = stage
            
            self.modifiedBy = modifiedBy
            
            self.logo = logo
            
            self.modifiedOn = modifiedOn
            
            self.uid = uid
            
            self.localeLanguage = localeLanguage
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            synonyms = try? container.decode([String].self, forKey: .synonyms)
            
            verifiedOn = try? container.decode(String.self, forKey: .verifiedOn)
            
            banner = try? container.decode(BrandBannerSerializer.self, forKey: .banner)
            
            createdOn = try? container.decode(String.self, forKey: .createdOn)
            
            name = try container.decode(String.self, forKey: .name)
            
            slugKey = try? container.decode(String.self, forKey: .slugKey)
            
            rejectReason = try? container.decode(String.self, forKey: .rejectReason)
            
            customJson = try? container.decode([String: Any].self, forKey: .customJson)
            
            createdBy = try? container.decode(UserSerializer1.self, forKey: .createdBy)
            
            verifiedBy = try? container.decode(UserSerializer1.self, forKey: .verifiedBy)
            
            warnings = try? container.decode([String: Any].self, forKey: .warnings)
            
            description = try? container.decode(String.self, forKey: .description)
            
            stage = try? container.decode(String.self, forKey: .stage)
            
            modifiedBy = try? container.decode(UserSerializer1.self, forKey: .modifiedBy)
            
            logo = try? container.decode(String.self, forKey: .logo)
            
            modifiedOn = try? container.decode(String.self, forKey: .modifiedOn)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            localeLanguage = try? container.decode([String: Any].self, forKey: .localeLanguage)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            try? container.encodeIfPresent(banner, forKey: .banner)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(slugKey, forKey: .slugKey)
            
            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
            
        }
        
    }
    
    /*
        Model: CreateUpdateBrandRequestSerializer
    */

    struct CreateUpdateBrandRequestSerializer: Codable {
        
        
        public var synonyms: [String]?
        
        public var banner: BrandBannerSerializer?
        
        public var name: String
        
        public var customJson: [String: Any]?
        
        public var brandTier: String?
        
        public var companyId: Int?
        
        public var description: String?
        
        public var logo: String
        
        public var uid: Int?
        
        public var localeLanguage: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case synonyms = "synonyms"
            
            case banner = "banner"
            
            case name = "name"
            
            case customJson = "_custom_json"
            
            case brandTier = "brand_tier"
            
            case companyId = "company_id"
            
            case description = "description"
            
            case logo = "logo"
            
            case uid = "uid"
            
            case localeLanguage = "_locale_language"
            
        }

        public init(banner: BrandBannerSerializer?, brandTier: String?, companyId: Int?, description: String?, logo: String, name: String, synonyms: [String]?, uid: Int?, customJson: [String: Any]?, localeLanguage: [String: Any]?) {
            
            self.synonyms = synonyms
            
            self.banner = banner
            
            self.name = name
            
            self.customJson = customJson
            
            self.brandTier = brandTier
            
            self.companyId = companyId
            
            self.description = description
            
            self.logo = logo
            
            self.uid = uid
            
            self.localeLanguage = localeLanguage
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            synonyms = try? container.decode([String].self, forKey: .synonyms)
            
            banner = try? container.decode(BrandBannerSerializer.self, forKey: .banner)
            
            name = try container.decode(String.self, forKey: .name)
            
            customJson = try? container.decode([String: Any].self, forKey: .customJson)
            
            brandTier = try? container.decode(String.self, forKey: .brandTier)
            
            companyId = try? container.decode(Int.self, forKey: .companyId)
            
            description = try? container.decode(String.self, forKey: .description)
            
            logo = try container.decode(String.self, forKey: .logo)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            localeLanguage = try? container.decode([String: Any].self, forKey: .localeLanguage)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
            try? container.encodeIfPresent(banner, forKey: .banner)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            try? container.encodeIfPresent(brandTier, forKey: .brandTier)
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
            
        }
        
    }
    
    /*
        Model: CompanyBrandListSerializer
    */

    struct CompanyBrandListSerializer: Codable {
        
        
        public var items: [[String: Any]]?
        
        public var page: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [[String: Any]]?, page: [String: Any]?) {
            
            self.items = items
            
            self.page = page
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([[String: Any]].self, forKey: .items)
            
            page = try? container.decode([String: Any].self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: CompanyBrandPostRequestSerializer
    */

    struct CompanyBrandPostRequestSerializer: Codable {
        
        
        public var company: Int
        
        public var uid: Int?
        
        public var brands: [Int]
        

        public enum CodingKeys: String, CodingKey {
            
            case company = "company"
            
            case uid = "uid"
            
            case brands = "brands"
            
        }

        public init(brands: [Int], company: Int, uid: Int?) {
            
            self.company = company
            
            self.uid = uid
            
            self.brands = brands
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            company = try container.decode(Int.self, forKey: .company)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            brands = try container.decode([Int].self, forKey: .brands)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(brands, forKey: .brands)
            
        }
        
    }
    
    /*
        Model: LocationListSerializer
    */

    struct LocationListSerializer: Codable {
        
        
        public var items: [[String: Any]]?
        
        public var page: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [[String: Any]]?, page: [String: Any]?) {
            
            self.items = items
            
            self.page = page
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            items = try? container.decode([[String: Any]].self, forKey: .items)
            
            page = try? container.decode([String: Any].self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: InvoiceCredSerializer
    */

    struct InvoiceCredSerializer: Codable {
        
        
        public var password: String?
        
        public var username: String?
        
        public var enabled: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case password = "password"
            
            case username = "username"
            
            case enabled = "enabled"
            
        }

        public init(enabled: Bool?, password: String?, username: String?) {
            
            self.password = password
            
            self.username = username
            
            self.enabled = enabled
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            password = try? container.decode(String.self, forKey: .password)
            
            username = try? container.decode(String.self, forKey: .username)
            
            enabled = try? container.decode(Bool.self, forKey: .enabled)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(password, forKey: .password)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
        }
        
    }
    
    /*
        Model: InvoiceDetailsSerializer
    */

    struct InvoiceDetailsSerializer: Codable {
        
        
        public var eInvoice: InvoiceCredSerializer?
        
        public var eWaybill: InvoiceCredSerializer?
        

        public enum CodingKeys: String, CodingKey {
            
            case eInvoice = "e_invoice"
            
            case eWaybill = "e_waybill"
            
        }

        public init(eInvoice: InvoiceCredSerializer?, eWaybill: InvoiceCredSerializer?) {
            
            self.eInvoice = eInvoice
            
            self.eWaybill = eWaybill
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            eInvoice = try? container.decode(InvoiceCredSerializer.self, forKey: .eInvoice)
            
            eWaybill = try? container.decode(InvoiceCredSerializer.self, forKey: .eWaybill)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(eInvoice, forKey: .eInvoice)
            
            try? container.encodeIfPresent(eWaybill, forKey: .eWaybill)
            
        }
        
    }
    
    /*
        Model: LocationTimingSerializer
    */

    struct LocationTimingSerializer: Codable {
        
        
        public var hour: Int?
        
        public var minute: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case hour = "hour"
            
            case minute = "minute"
            
        }

        public init(hour: Int?, minute: Int?) {
            
            self.hour = hour
            
            self.minute = minute
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            hour = try? container.decode(Int.self, forKey: .hour)
            
            minute = try? container.decode(Int.self, forKey: .minute)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(hour, forKey: .hour)
            
            try? container.encodeIfPresent(minute, forKey: .minute)
            
        }
        
    }
    
    /*
        Model: LocationDayWiseSerializer
    */

    struct LocationDayWiseSerializer: Codable {
        
        
        public var closing: LocationTimingSerializer?
        
        public var weekday: String
        
        public var opening: LocationTimingSerializer?
        
        public var open: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case closing = "closing"
            
            case weekday = "weekday"
            
            case opening = "opening"
            
            case open = "open"
            
        }

        public init(closing: LocationTimingSerializer?, open: Bool, opening: LocationTimingSerializer?, weekday: String) {
            
            self.closing = closing
            
            self.weekday = weekday
            
            self.opening = opening
            
            self.open = open
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            closing = try? container.decode(LocationTimingSerializer.self, forKey: .closing)
            
            weekday = try container.decode(String.self, forKey: .weekday)
            
            opening = try? container.decode(LocationTimingSerializer.self, forKey: .opening)
            
            open = try container.decode(Bool.self, forKey: .open)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(closing, forKey: .closing)
            
            try? container.encodeIfPresent(weekday, forKey: .weekday)
            
            try? container.encodeIfPresent(opening, forKey: .opening)
            
            try? container.encodeIfPresent(open, forKey: .open)
            
        }
        
    }
    
    /*
        Model: GetAddressSerializer1
    */

    struct GetAddressSerializer1: Codable {
        
        
        public var city: String?
        
        public var addressType: String?
        
        public var country: String?
        
        public var landmark: String?
        
        public var address1: String?
        
        public var state: String?
        
        public var latitude: Double?
        
        public var pincode: Int?
        
        public var countryCode: String?
        
        public var address2: String?
        
        public var longitude: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case city = "city"
            
            case addressType = "address_type"
            
            case country = "country"
            
            case landmark = "landmark"
            
            case address1 = "address1"
            
            case state = "state"
            
            case latitude = "latitude"
            
            case pincode = "pincode"
            
            case countryCode = "country_code"
            
            case address2 = "address2"
            
            case longitude = "longitude"
            
        }

        public init(address1: String?, address2: String?, addressType: String?, city: String?, country: String?, countryCode: String?, landmark: String?, latitude: Double?, longitude: Double?, pincode: Int?, state: String?) {
            
            self.city = city
            
            self.addressType = addressType
            
            self.country = country
            
            self.landmark = landmark
            
            self.address1 = address1
            
            self.state = state
            
            self.latitude = latitude
            
            self.pincode = pincode
            
            self.countryCode = countryCode
            
            self.address2 = address2
            
            self.longitude = longitude
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            city = try? container.decode(String.self, forKey: .city)
            
            addressType = try? container.decode(String.self, forKey: .addressType)
            
            country = try? container.decode(String.self, forKey: .country)
            
            landmark = try? container.decode(String.self, forKey: .landmark)
            
            address1 = try? container.decode(String.self, forKey: .address1)
            
            state = try? container.decode(String.self, forKey: .state)
            
            latitude = try? container.decode(Double.self, forKey: .latitude)
            
            pincode = try? container.decode(Int.self, forKey: .pincode)
            
            countryCode = try? container.decode(String.self, forKey: .countryCode)
            
            address2 = try? container.decode(String.self, forKey: .address2)
            
            longitude = try? container.decode(Double.self, forKey: .longitude)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
        }
        
    }
    
    /*
        Model: LocationManagerSerializer
    */

    struct LocationManagerSerializer: Codable {
        
        
        public var mobileNo: PhoneNumber
        
        public var name: String?
        
        public var email: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case mobileNo = "mobile_no"
            
            case name = "name"
            
            case email = "email"
            
        }

        public init(email: String?, mobileNo: PhoneNumber, name: String?) {
            
            self.mobileNo = mobileNo
            
            self.name = name
            
            self.email = email
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            mobileNo = try container.decode(PhoneNumber.self, forKey: .mobileNo)
            
            name = try? container.decode(String.self, forKey: .name)
            
            email = try? container.decode(String.self, forKey: .email)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(mobileNo, forKey: .mobileNo)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
        }
        
    }
    
    /*
        Model: ProductReturnConfigSerializer
    */

    struct ProductReturnConfigSerializer: Codable {
        
        
        public var storeUid: Int?
        
        public var onSameStore: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeUid = "store_uid"
            
            case onSameStore = "on_same_store"
            
        }

        public init(onSameStore: Bool?, storeUid: Int?) {
            
            self.storeUid = storeUid
            
            self.onSameStore = onSameStore
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            storeUid = try? container.decode(Int.self, forKey: .storeUid)
            
            onSameStore = try? container.decode(Bool.self, forKey: .onSameStore)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(storeUid, forKey: .storeUid)
            
            try? container.encodeIfPresent(onSameStore, forKey: .onSameStore)
            
        }
        
    }
    
    /*
        Model: LocationSerializer
    */

    struct LocationSerializer: Codable {
        
        
        public var company: Int
        
        public var code: String
        
        public var name: String
        
        public var customJson: [String: Any]?
        
        public var warnings: [String: Any]?
        
        public var gstCredentials: InvoiceDetailsSerializer?
        
        public var displayName: String
        
        public var timing: [LocationDayWiseSerializer]?
        
        public var stage: String?
        
        public var documents: [Document]?
        
        public var notificationEmails: [String]?
        
        public var address: GetAddressSerializer1
        
        public var storeType: String?
        
        public var contactNumbers: [PhoneNumber]?
        
        public var manager: LocationManagerSerializer?
        
        public var productReturnConfig: ProductReturnConfigSerializer?
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case company = "company"
            
            case code = "code"
            
            case name = "name"
            
            case customJson = "_custom_json"
            
            case warnings = "warnings"
            
            case gstCredentials = "gst_credentials"
            
            case displayName = "display_name"
            
            case timing = "timing"
            
            case stage = "stage"
            
            case documents = "documents"
            
            case notificationEmails = "notification_emails"
            
            case address = "address"
            
            case storeType = "store_type"
            
            case contactNumbers = "contact_numbers"
            
            case manager = "manager"
            
            case productReturnConfig = "product_return_config"
            
            case uid = "uid"
            
        }

        public init(address: GetAddressSerializer1, code: String, company: Int, contactNumbers: [PhoneNumber]?, displayName: String, documents: [Document]?, gstCredentials: InvoiceDetailsSerializer?, manager: LocationManagerSerializer?, name: String, notificationEmails: [String]?, productReturnConfig: ProductReturnConfigSerializer?, stage: String?, storeType: String?, timing: [LocationDayWiseSerializer]?, uid: Int?, warnings: [String: Any]?, customJson: [String: Any]?) {
            
            self.company = company
            
            self.code = code
            
            self.name = name
            
            self.customJson = customJson
            
            self.warnings = warnings
            
            self.gstCredentials = gstCredentials
            
            self.displayName = displayName
            
            self.timing = timing
            
            self.stage = stage
            
            self.documents = documents
            
            self.notificationEmails = notificationEmails
            
            self.address = address
            
            self.storeType = storeType
            
            self.contactNumbers = contactNumbers
            
            self.manager = manager
            
            self.productReturnConfig = productReturnConfig
            
            self.uid = uid
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            company = try container.decode(Int.self, forKey: .company)
            
            code = try container.decode(String.self, forKey: .code)
            
            name = try container.decode(String.self, forKey: .name)
            
            customJson = try? container.decode([String: Any].self, forKey: .customJson)
            
            warnings = try? container.decode([String: Any].self, forKey: .warnings)
            
            gstCredentials = try? container.decode(InvoiceDetailsSerializer.self, forKey: .gstCredentials)
            
            displayName = try container.decode(String.self, forKey: .displayName)
            
            timing = try? container.decode([LocationDayWiseSerializer].self, forKey: .timing)
            
            stage = try? container.decode(String.self, forKey: .stage)
            
            documents = try? container.decode([Document].self, forKey: .documents)
            
            notificationEmails = try? container.decode([String].self, forKey: .notificationEmails)
            
            address = try container.decode(GetAddressSerializer1.self, forKey: .address)
            
            storeType = try? container.decode(String.self, forKey: .storeType)
            
            contactNumbers = try? container.decode([PhoneNumber].self, forKey: .contactNumbers)
            
            manager = try? container.decode(LocationManagerSerializer.self, forKey: .manager)
            
            productReturnConfig = try? container.decode(ProductReturnConfigSerializer.self, forKey: .productReturnConfig)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            try? container.encodeIfPresent(timing, forKey: .timing)
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            try? container.encodeIfPresent(documents, forKey: .documents)
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(storeType, forKey: .storeType)
            
            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)
            
            try? container.encodeIfPresent(manager, forKey: .manager)
            
            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: GetCompanySerializer
    */

    struct GetCompanySerializer: Codable {
        
        
        public var verifiedOn: String?
        
        public var businessType: String?
        
        public var createdOn: String?
        
        public var name: String?
        
        public var companyType: String?
        
        public var rejectReason: String?
        
        public var addresses: [GetAddressSerializer]?
        
        public var createdBy: UserSerializer?
        
        public var verifiedBy: UserSerializer?
        
        public var stage: String?
        
        public var modifiedBy: UserSerializer?
        
        public var modifiedOn: String?
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case verifiedOn = "verified_on"
            
            case businessType = "business_type"
            
            case createdOn = "created_on"
            
            case name = "name"
            
            case companyType = "company_type"
            
            case rejectReason = "reject_reason"
            
            case addresses = "addresses"
            
            case createdBy = "created_by"
            
            case verifiedBy = "verified_by"
            
            case stage = "stage"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case uid = "uid"
            
        }

        public init(addresses: [GetAddressSerializer]?, businessType: String?, companyType: String?, createdBy: UserSerializer?, createdOn: String?, modifiedBy: UserSerializer?, modifiedOn: String?, name: String?, rejectReason: String?, stage: String?, uid: Int?, verifiedBy: UserSerializer?, verifiedOn: String?) {
            
            self.verifiedOn = verifiedOn
            
            self.businessType = businessType
            
            self.createdOn = createdOn
            
            self.name = name
            
            self.companyType = companyType
            
            self.rejectReason = rejectReason
            
            self.addresses = addresses
            
            self.createdBy = createdBy
            
            self.verifiedBy = verifiedBy
            
            self.stage = stage
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.uid = uid
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            verifiedOn = try? container.decode(String.self, forKey: .verifiedOn)
            
            businessType = try? container.decode(String.self, forKey: .businessType)
            
            createdOn = try? container.decode(String.self, forKey: .createdOn)
            
            name = try? container.decode(String.self, forKey: .name)
            
            companyType = try? container.decode(String.self, forKey: .companyType)
            
            rejectReason = try? container.decode(String.self, forKey: .rejectReason)
            
            addresses = try? container.decode([GetAddressSerializer].self, forKey: .addresses)
            
            createdBy = try? container.decode(UserSerializer.self, forKey: .createdBy)
            
            verifiedBy = try? container.decode(UserSerializer.self, forKey: .verifiedBy)
            
            stage = try? container.decode(String.self, forKey: .stage)
            
            modifiedBy = try? container.decode(UserSerializer.self, forKey: .modifiedBy)
            
            modifiedOn = try? container.decode(String.self, forKey: .modifiedOn)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            try? container.encodeIfPresent(businessType, forKey: .businessType)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(companyType, forKey: .companyType)
            
            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)
            
            try? container.encodeIfPresent(addresses, forKey: .addresses)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: LocationIntegrationType
    */

    struct LocationIntegrationType: Codable {
        
        
        public var inventory: String?
        
        public var order: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case inventory = "inventory"
            
            case order = "order"
            
        }

        public init(inventory: String?, order: String?) {
            
            self.inventory = inventory
            
            self.order = order
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            inventory = try? container.decode(String.self, forKey: .inventory)
            
            order = try? container.decode(String.self, forKey: .order)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(inventory, forKey: .inventory)
            
            try? container.encodeIfPresent(order, forKey: .order)
            
        }
        
    }
    
    /*
        Model: GetLocationSerializer
    */

    struct GetLocationSerializer: Codable {
        
        
        public var verifiedOn: String?
        
        public var customJson: [String: Any]?
        
        public var warnings: [String: Any]?
        
        public var gstCredentials: InvoiceDetailsSerializer?
        
        public var createdBy: UserSerializer1?
        
        public var displayName: String
        
        public var modifiedBy: UserSerializer1?
        
        public var manager: LocationManagerSerializer?
        
        public var contactNumbers: [PhoneNumber]?
        
        public var createdOn: String?
        
        public var address: GetAddressSerializer
        
        public var productReturnConfig: ProductReturnConfigSerializer?
        
        public var company: GetCompanySerializer?
        
        public var verifiedBy: UserSerializer1?
        
        public var stage: String?
        
        public var storeType: String?
        
        public var modifiedOn: String?
        
        public var phoneNumber: String
        
        public var uid: Int?
        
        public var integrationType: LocationIntegrationType?
        
        public var code: String
        
        public var name: String
        
        public var timing: [LocationDayWiseSerializer]?
        
        public var notificationEmails: [String]?
        
        public var documents: [Document]?
        

        public enum CodingKeys: String, CodingKey {
            
            case verifiedOn = "verified_on"
            
            case customJson = "_custom_json"
            
            case warnings = "warnings"
            
            case gstCredentials = "gst_credentials"
            
            case createdBy = "created_by"
            
            case displayName = "display_name"
            
            case modifiedBy = "modified_by"
            
            case manager = "manager"
            
            case contactNumbers = "contact_numbers"
            
            case createdOn = "created_on"
            
            case address = "address"
            
            case productReturnConfig = "product_return_config"
            
            case company = "company"
            
            case verifiedBy = "verified_by"
            
            case stage = "stage"
            
            case storeType = "store_type"
            
            case modifiedOn = "modified_on"
            
            case phoneNumber = "phone_number"
            
            case uid = "uid"
            
            case integrationType = "integration_type"
            
            case code = "code"
            
            case name = "name"
            
            case timing = "timing"
            
            case notificationEmails = "notification_emails"
            
            case documents = "documents"
            
        }

        public init(address: GetAddressSerializer, code: String, company: GetCompanySerializer?, contactNumbers: [PhoneNumber]?, createdBy: UserSerializer1?, createdOn: String?, displayName: String, documents: [Document]?, gstCredentials: InvoiceDetailsSerializer?, integrationType: LocationIntegrationType?, manager: LocationManagerSerializer?, modifiedBy: UserSerializer1?, modifiedOn: String?, name: String, notificationEmails: [String]?, phoneNumber: String, productReturnConfig: ProductReturnConfigSerializer?, stage: String?, storeType: String?, timing: [LocationDayWiseSerializer]?, uid: Int?, verifiedBy: UserSerializer1?, verifiedOn: String?, warnings: [String: Any]?, customJson: [String: Any]?) {
            
            self.verifiedOn = verifiedOn
            
            self.customJson = customJson
            
            self.warnings = warnings
            
            self.gstCredentials = gstCredentials
            
            self.createdBy = createdBy
            
            self.displayName = displayName
            
            self.modifiedBy = modifiedBy
            
            self.manager = manager
            
            self.contactNumbers = contactNumbers
            
            self.createdOn = createdOn
            
            self.address = address
            
            self.productReturnConfig = productReturnConfig
            
            self.company = company
            
            self.verifiedBy = verifiedBy
            
            self.stage = stage
            
            self.storeType = storeType
            
            self.modifiedOn = modifiedOn
            
            self.phoneNumber = phoneNumber
            
            self.uid = uid
            
            self.integrationType = integrationType
            
            self.code = code
            
            self.name = name
            
            self.timing = timing
            
            self.notificationEmails = notificationEmails
            
            self.documents = documents
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            verifiedOn = try? container.decode(String.self, forKey: .verifiedOn)
            
            customJson = try? container.decode([String: Any].self, forKey: .customJson)
            
            warnings = try? container.decode([String: Any].self, forKey: .warnings)
            
            gstCredentials = try? container.decode(InvoiceDetailsSerializer.self, forKey: .gstCredentials)
            
            createdBy = try? container.decode(UserSerializer1.self, forKey: .createdBy)
            
            displayName = try container.decode(String.self, forKey: .displayName)
            
            modifiedBy = try? container.decode(UserSerializer1.self, forKey: .modifiedBy)
            
            manager = try? container.decode(LocationManagerSerializer.self, forKey: .manager)
            
            contactNumbers = try? container.decode([PhoneNumber].self, forKey: .contactNumbers)
            
            createdOn = try? container.decode(String.self, forKey: .createdOn)
            
            address = try container.decode(GetAddressSerializer.self, forKey: .address)
            
            productReturnConfig = try? container.decode(ProductReturnConfigSerializer.self, forKey: .productReturnConfig)
            
            company = try? container.decode(GetCompanySerializer.self, forKey: .company)
            
            verifiedBy = try? container.decode(UserSerializer1.self, forKey: .verifiedBy)
            
            stage = try? container.decode(String.self, forKey: .stage)
            
            storeType = try? container.decode(String.self, forKey: .storeType)
            
            modifiedOn = try? container.decode(String.self, forKey: .modifiedOn)
            
            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
            
            uid = try? container.decode(Int.self, forKey: .uid)
            
            integrationType = try? container.decode(LocationIntegrationType.self, forKey: .integrationType)
            
            code = try container.decode(String.self, forKey: .code)
            
            name = try container.decode(String.self, forKey: .name)
            
            timing = try? container.decode([LocationDayWiseSerializer].self, forKey: .timing)
            
            notificationEmails = try? container.decode([String].self, forKey: .notificationEmails)
            
            documents = try? container.decode([Document].self, forKey: .documents)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            try? container.encodeIfPresent(manager, forKey: .manager)
            
            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            try? container.encodeIfPresent(storeType, forKey: .storeType)
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(integrationType, forKey: .integrationType)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(timing, forKey: .timing)
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            try? container.encodeIfPresent(documents, forKey: .documents)
            
        }
        
    }
    
    
    
    /*
        Model: DataTresholdDTO
    */

    struct DataTresholdDTO: Codable {
        
        
        public var minPrice: Double?
        
        public var safeStock: Int?
        
        public var periodThreshold: Int?
        
        public var periodThresholdType: String?
        
        public var periodTypeList: [GenericDTO]?
        

        public enum CodingKeys: String, CodingKey {
            
            case minPrice = "min_price"
            
            case safeStock = "safe_stock"
            
            case periodThreshold = "period_threshold"
            
            case periodThresholdType = "period_threshold_type"
            
            case periodTypeList = "period_type_list"
            
        }

        public init(minPrice: Double?, periodThreshold: Int?, periodThresholdType: String?, periodTypeList: [GenericDTO]?, safeStock: Int?) {
            
            self.minPrice = minPrice
            
            self.safeStock = safeStock
            
            self.periodThreshold = periodThreshold
            
            self.periodThresholdType = periodThresholdType
            
            self.periodTypeList = periodTypeList
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            minPrice = try? container.decode(Double.self, forKey: .minPrice)
            
            safeStock = try? container.decode(Int.self, forKey: .safeStock)
            
            periodThreshold = try? container.decode(Int.self, forKey: .periodThreshold)
            
            periodThresholdType = try? container.decode(String.self, forKey: .periodThresholdType)
            
            periodTypeList = try? container.decode([GenericDTO].self, forKey: .periodTypeList)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(minPrice, forKey: .minPrice)
            
            try? container.encodeIfPresent(safeStock, forKey: .safeStock)
            
            try? container.encodeIfPresent(periodThreshold, forKey: .periodThreshold)
            
            try? container.encodeIfPresent(periodThresholdType, forKey: .periodThresholdType)
            
            try? container.encodeIfPresent(periodTypeList, forKey: .periodTypeList)
            
        }
        
    }
    
    /*
        Model: GenericDTO
    */

    struct GenericDTO: Codable {
        
        
        public var text: String?
        
        public var value: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case text = "text"
            
            case value = "value"
            
        }

        public init(text: String?, value: [String: Any]?) {
            
            self.text = text
            
            self.value = value
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            text = try? container.decode(String.self, forKey: .text)
            
            value = try? container.decode([String: Any].self, forKey: .value)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
        }
        
    }
    
    /*
        Model: JobConfigDTO
    */

    struct JobConfigDTO: Codable {
        
        
        public var companyName: String?
        
        public var integration: String
        
        public var companyId: Int
        
        public var integrationData: [String: Any]?
        
        public var taskDetails: TaskDTO?
        
        public var thresholdDetails: DataTresholdDTO?
        
        public var jobCode: String?
        
        public var alias: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyName = "companyName"
            
            case integration = "integration"
            
            case companyId = "companyId"
            
            case integrationData = "integration_data"
            
            case taskDetails = "task_details"
            
            case thresholdDetails = "threshold_details"
            
            case jobCode = "job_code"
            
            case alias = "alias"
            
        }

        public init(alias: String?, companyId: Int, companyName: String?, integration: String, integrationData: [String: Any]?, jobCode: String?, taskDetails: TaskDTO?, thresholdDetails: DataTresholdDTO?) {
            
            self.companyName = companyName
            
            self.integration = integration
            
            self.companyId = companyId
            
            self.integrationData = integrationData
            
            self.taskDetails = taskDetails
            
            self.thresholdDetails = thresholdDetails
            
            self.jobCode = jobCode
            
            self.alias = alias
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            companyName = try? container.decode(String.self, forKey: .companyName)
            
            integration = try container.decode(String.self, forKey: .integration)
            
            companyId = try container.decode(Int.self, forKey: .companyId)
            
            integrationData = try? container.decode([String: Any].self, forKey: .integrationData)
            
            taskDetails = try? container.decode(TaskDTO.self, forKey: .taskDetails)
            
            thresholdDetails = try? container.decode(DataTresholdDTO.self, forKey: .thresholdDetails)
            
            jobCode = try? container.decode(String.self, forKey: .jobCode)
            
            alias = try? container.decode(String.self, forKey: .alias)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(companyName, forKey: .companyName)
            
            try? container.encodeIfPresent(integration, forKey: .integration)
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            try? container.encodeIfPresent(integrationData, forKey: .integrationData)
            
            try? container.encodeIfPresent(taskDetails, forKey: .taskDetails)
            
            try? container.encodeIfPresent(thresholdDetails, forKey: .thresholdDetails)
            
            try? container.encodeIfPresent(jobCode, forKey: .jobCode)
            
            try? container.encodeIfPresent(alias, forKey: .alias)
            
        }
        
    }
    
    /*
        Model: TaskDTO
    */

    struct TaskDTO: Codable {
        
        
        public var type: Int?
        
        public var groupList: [GenericDTO]?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case groupList = "group_list"
            
        }

        public init(groupList: [GenericDTO]?, type: Int?) {
            
            self.type = type
            
            self.groupList = groupList
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            type = try? container.decode(Int.self, forKey: .type)
            
            groupList = try? container.decode([GenericDTO].self, forKey: .groupList)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(groupList, forKey: .groupList)
            
        }
        
    }
    
    /*
        Model: Page
    */

    struct Page: Codable {
        
        
        public var type: String?
        
        public var size: Int?
        
        public var current: Int?
        
        public var hasNext: Bool?
        
        public var itemTotal: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case size = "size"
            
            case current = "current"
            
            case hasNext = "has_next"
            
            case itemTotal = "item_total"
            
        }

        public init(current: Int?, hasNext: Bool?, itemTotal: Int?, size: Int?, type: String?) {
            
            self.type = type
            
            self.size = size
            
            self.current = current
            
            self.hasNext = hasNext
            
            self.itemTotal = itemTotal
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            type = try? container.decode(String.self, forKey: .type)
            
            size = try? container.decode(Int.self, forKey: .size)
            
            current = try? container.decode(Int.self, forKey: .current)
            
            hasNext = try? container.decode(Bool.self, forKey: .hasNext)
            
            itemTotal = try? container.decode(Int.self, forKey: .itemTotal)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
        }
        
    }
    
    /*
        Model: ResponseEnvelopeString
    */

    struct ResponseEnvelopeString: Codable {
        
        
        public var timestamp: String?
        
        public var status: Int?
        
        public var error: String?
        
        public var exception: String?
        
        public var message: String?
        
        public var totalTimeTakenInMillis: Int?
        
        public var httpStatus: String?
        
        public var items: String?
        
        public var payload: String?
        
        public var traceId: String?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case timestamp = "timestamp"
            
            case status = "status"
            
            case error = "error"
            
            case exception = "exception"
            
            case message = "message"
            
            case totalTimeTakenInMillis = "total_time_taken_in_millis"
            
            case httpStatus = "http_status"
            
            case items = "items"
            
            case payload = "payload"
            
            case traceId = "trace_id"
            
            case page = "page"
            
        }

        public init(error: String?, exception: String?, httpStatus: String?, items: String?, message: String?, page: Page?, payload: String?, status: Int?, timestamp: String?, totalTimeTakenInMillis: Int?, traceId: String?) {
            
            self.timestamp = timestamp
            
            self.status = status
            
            self.error = error
            
            self.exception = exception
            
            self.message = message
            
            self.totalTimeTakenInMillis = totalTimeTakenInMillis
            
            self.httpStatus = httpStatus
            
            self.items = items
            
            self.payload = payload
            
            self.traceId = traceId
            
            self.page = page
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            timestamp = try? container.decode(String.self, forKey: .timestamp)
            
            status = try? container.decode(Int.self, forKey: .status)
            
            error = try? container.decode(String.self, forKey: .error)
            
            exception = try? container.decode(String.self, forKey: .exception)
            
            message = try? container.decode(String.self, forKey: .message)
            
            totalTimeTakenInMillis = try? container.decode(Int.self, forKey: .totalTimeTakenInMillis)
            
            httpStatus = try? container.decode(String.self, forKey: .httpStatus)
            
            items = try? container.decode(String.self, forKey: .items)
            
            payload = try? container.decode(String.self, forKey: .payload)
            
            traceId = try? container.decode(String.self, forKey: .traceId)
            
            page = try? container.decode(Page.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            try? container.encodeIfPresent(exception, forKey: .exception)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(totalTimeTakenInMillis, forKey: .totalTimeTakenInMillis)
            
            try? container.encodeIfPresent(httpStatus, forKey: .httpStatus)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(payload, forKey: .payload)
            
            try? container.encodeIfPresent(traceId, forKey: .traceId)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: AWSS3config
    */

    struct AWSS3config: Codable {
        
        
        public var bucket: String?
        
        public var region: String?
        
        public var dir: String?
        
        public var accessKey: String?
        
        public var secretKey: String?
        
        public var localFilePath: String?
        
        public var archivePath: String?
        
        public var archive: Bool?
        
        public var delete: Bool?
        
        public var unzip: Bool?
        
        public var zipFormat: String?
        
        public var fileRegex: String?
        
        public var archiveConfig: ArchiveConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case bucket = "bucket"
            
            case region = "region"
            
            case dir = "dir"
            
            case accessKey = "access_key"
            
            case secretKey = "secret_key"
            
            case localFilePath = "local_file_path"
            
            case archivePath = "archive_path"
            
            case archive = "archive"
            
            case delete = "delete"
            
            case unzip = "unzip"
            
            case zipFormat = "zip_format"
            
            case fileRegex = "file_regex"
            
            case archiveConfig = "archive_config"
            
        }

        public init(accessKey: String?, archive: Bool?, archiveConfig: ArchiveConfig?, archivePath: String?, bucket: String?, delete: Bool?, dir: String?, fileRegex: String?, localFilePath: String?, region: String?, secretKey: String?, unzip: Bool?, zipFormat: String?) {
            
            self.bucket = bucket
            
            self.region = region
            
            self.dir = dir
            
            self.accessKey = accessKey
            
            self.secretKey = secretKey
            
            self.localFilePath = localFilePath
            
            self.archivePath = archivePath
            
            self.archive = archive
            
            self.delete = delete
            
            self.unzip = unzip
            
            self.zipFormat = zipFormat
            
            self.fileRegex = fileRegex
            
            self.archiveConfig = archiveConfig
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            bucket = try? container.decode(String.self, forKey: .bucket)
            
            region = try? container.decode(String.self, forKey: .region)
            
            dir = try? container.decode(String.self, forKey: .dir)
            
            accessKey = try? container.decode(String.self, forKey: .accessKey)
            
            secretKey = try? container.decode(String.self, forKey: .secretKey)
            
            localFilePath = try? container.decode(String.self, forKey: .localFilePath)
            
            archivePath = try? container.decode(String.self, forKey: .archivePath)
            
            archive = try? container.decode(Bool.self, forKey: .archive)
            
            delete = try? container.decode(Bool.self, forKey: .delete)
            
            unzip = try? container.decode(Bool.self, forKey: .unzip)
            
            zipFormat = try? container.decode(String.self, forKey: .zipFormat)
            
            fileRegex = try? container.decode(String.self, forKey: .fileRegex)
            
            archiveConfig = try? container.decode(ArchiveConfig.self, forKey: .archiveConfig)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(bucket, forKey: .bucket)
            
            try? container.encodeIfPresent(region, forKey: .region)
            
            try? container.encodeIfPresent(dir, forKey: .dir)
            
            try? container.encodeIfPresent(accessKey, forKey: .accessKey)
            
            try? container.encodeIfPresent(secretKey, forKey: .secretKey)
            
            try? container.encodeIfPresent(localFilePath, forKey: .localFilePath)
            
            try? container.encodeIfPresent(archivePath, forKey: .archivePath)
            
            try? container.encodeIfPresent(archive, forKey: .archive)
            
            try? container.encodeIfPresent(delete, forKey: .delete)
            
            try? container.encodeIfPresent(unzip, forKey: .unzip)
            
            try? container.encodeIfPresent(zipFormat, forKey: .zipFormat)
            
            try? container.encodeIfPresent(fileRegex, forKey: .fileRegex)
            
            try? container.encodeIfPresent(archiveConfig, forKey: .archiveConfig)
            
        }
        
    }
    
    /*
        Model: ArchiveConfig
    */

    struct ArchiveConfig: Codable {
        
        
        public var delete: Bool?
        
        public var archive: Bool?
        
        public var archiveDir: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case delete = "delete"
            
            case archive = "archive"
            
            case archiveDir = "archive_dir"
            
        }

        public init(archive: Bool?, archiveDir: String?, delete: Bool?) {
            
            self.delete = delete
            
            self.archive = archive
            
            self.archiveDir = archiveDir
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            delete = try? container.decode(Bool.self, forKey: .delete)
            
            archive = try? container.decode(Bool.self, forKey: .archive)
            
            archiveDir = try? container.decode(String.self, forKey: .archiveDir)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(delete, forKey: .delete)
            
            try? container.encodeIfPresent(archive, forKey: .archive)
            
            try? container.encodeIfPresent(archiveDir, forKey: .archiveDir)
            
        }
        
    }
    
    /*
        Model: Audit
    */

    struct Audit: Codable {
        
        
        public var createdBy: String?
        
        public var modifiedBy: String?
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
        }

        public init(createdBy: String?, createdOn: String?, modifiedBy: String?, modifiedOn: String?) {
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            createdBy = try? container.decode(String.self, forKey: .createdBy)
            
            modifiedBy = try? container.decode(String.self, forKey: .modifiedBy)
            
            createdOn = try? container.decode(String.self, forKey: .createdOn)
            
            modifiedOn = try? container.decode(String.self, forKey: .modifiedOn)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
        }
        
    }
    
    /*
        Model: CatalogMasterConfig
    */

    struct CatalogMasterConfig: Codable {
        
        
        public var sourceSlug: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case sourceSlug = "source_slug"
            
        }

        public init(sourceSlug: String?) {
            
            self.sourceSlug = sourceSlug
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            sourceSlug = try? container.decode(String.self, forKey: .sourceSlug)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(sourceSlug, forKey: .sourceSlug)
            
        }
        
    }
    
    /*
        Model: CompanyConfig
    */

    struct CompanyConfig: Codable {
        
        
        public var companyId: Int?
        
        public var excludeSteps: [Int]?
        
        public var hiddenClosetKeys: [String]?
        
        public var openTags: [String: Any]?
        
        public var taxIdentifiers: [String]?
        
        public var deleteQuantityThreshold: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case excludeSteps = "exclude_steps"
            
            case hiddenClosetKeys = "hidden_closet_keys"
            
            case openTags = "open_tags"
            
            case taxIdentifiers = "tax_identifiers"
            
            case deleteQuantityThreshold = "delete_quantity_threshold"
            
        }

        public init(companyId: Int?, deleteQuantityThreshold: Int?, excludeSteps: [Int]?, hiddenClosetKeys: [String]?, openTags: [String: Any]?, taxIdentifiers: [String]?) {
            
            self.companyId = companyId
            
            self.excludeSteps = excludeSteps
            
            self.hiddenClosetKeys = hiddenClosetKeys
            
            self.openTags = openTags
            
            self.taxIdentifiers = taxIdentifiers
            
            self.deleteQuantityThreshold = deleteQuantityThreshold
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            companyId = try? container.decode(Int.self, forKey: .companyId)
            
            excludeSteps = try? container.decode([Int].self, forKey: .excludeSteps)
            
            hiddenClosetKeys = try? container.decode([String].self, forKey: .hiddenClosetKeys)
            
            openTags = try? container.decode([String: Any].self, forKey: .openTags)
            
            taxIdentifiers = try? container.decode([String].self, forKey: .taxIdentifiers)
            
            deleteQuantityThreshold = try? container.decode(Int.self, forKey: .deleteQuantityThreshold)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            try? container.encodeIfPresent(excludeSteps, forKey: .excludeSteps)
            
            try? container.encodeIfPresent(hiddenClosetKeys, forKey: .hiddenClosetKeys)
            
            try? container.encodeIfPresent(openTags, forKey: .openTags)
            
            try? container.encodeIfPresent(taxIdentifiers, forKey: .taxIdentifiers)
            
            try? container.encodeIfPresent(deleteQuantityThreshold, forKey: .deleteQuantityThreshold)
            
        }
        
    }
    
    /*
        Model: DBConfig
    */

    struct DBConfig: Codable {
        
        
        public var vendor: String?
        
        public var host: String?
        
        public var port: Int?
        
        public var username: String?
        
        public var password: String?
        
        public var dbname: String?
        
        public var query: String?
        
        public var procedure: Bool?
        
        public var driverClass: String?
        
        public var jdbcUrl: String?
        
        public var optionalProperties: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case vendor = "vendor"
            
            case host = "host"
            
            case port = "port"
            
            case username = "username"
            
            case password = "password"
            
            case dbname = "dbname"
            
            case query = "query"
            
            case procedure = "procedure"
            
            case driverClass = "driver_class"
            
            case jdbcUrl = "jdbc_url"
            
            case optionalProperties = "optional_properties"
            
        }

        public init(dbname: String?, driverClass: String?, host: String?, jdbcUrl: String?, optionalProperties: [String: Any]?, password: String?, port: Int?, procedure: Bool?, query: String?, username: String?, vendor: String?) {
            
            self.vendor = vendor
            
            self.host = host
            
            self.port = port
            
            self.username = username
            
            self.password = password
            
            self.dbname = dbname
            
            self.query = query
            
            self.procedure = procedure
            
            self.driverClass = driverClass
            
            self.jdbcUrl = jdbcUrl
            
            self.optionalProperties = optionalProperties
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            vendor = try? container.decode(String.self, forKey: .vendor)
            
            host = try? container.decode(String.self, forKey: .host)
            
            port = try? container.decode(Int.self, forKey: .port)
            
            username = try? container.decode(String.self, forKey: .username)
            
            password = try? container.decode(String.self, forKey: .password)
            
            dbname = try? container.decode(String.self, forKey: .dbname)
            
            query = try? container.decode(String.self, forKey: .query)
            
            procedure = try? container.decode(Bool.self, forKey: .procedure)
            
            driverClass = try? container.decode(String.self, forKey: .driverClass)
            
            jdbcUrl = try? container.decode(String.self, forKey: .jdbcUrl)
            
            optionalProperties = try? container.decode([String: Any].self, forKey: .optionalProperties)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(vendor, forKey: .vendor)
            
            try? container.encodeIfPresent(host, forKey: .host)
            
            try? container.encodeIfPresent(port, forKey: .port)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            try? container.encodeIfPresent(password, forKey: .password)
            
            try? container.encodeIfPresent(dbname, forKey: .dbname)
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            try? container.encodeIfPresent(procedure, forKey: .procedure)
            
            try? container.encodeIfPresent(driverClass, forKey: .driverClass)
            
            try? container.encodeIfPresent(jdbcUrl, forKey: .jdbcUrl)
            
            try? container.encodeIfPresent(optionalProperties, forKey: .optionalProperties)
            
        }
        
    }
    
    /*
        Model: DBConnectionProfile
    */

    struct DBConnectionProfile: Codable {
        
        
        public var inventory: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case inventory = "inventory"
            
        }

        public init(inventory: String?) {
            
            self.inventory = inventory
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            inventory = try? container.decode(String.self, forKey: .inventory)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(inventory, forKey: .inventory)
            
        }
        
    }
    
    /*
        Model: DBParamConfig
    */

    struct DBParamConfig: Codable {
        
        
        public var params: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case params = "params"
            
        }

        public init(params: [String: Any]?) {
            
            self.params = params
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            params = try? container.decode([String: Any].self, forKey: .params)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(params, forKey: .params)
            
        }
        
    }
    
    /*
        Model: DefaultHeadersDTO
    */

    struct DefaultHeadersDTO: Codable {
        
        
        public var store: PropBeanDTO?
        
        public var intfArticleId: PropBeanDTO?
        
        public var priceEffective: PropBeanDTO?
        
        public var quantity: PropBeanDTO?
        

        public enum CodingKeys: String, CodingKey {
            
            case store = "store"
            
            case intfArticleId = "intf_article_id"
            
            case priceEffective = "price_effective"
            
            case quantity = "quantity"
            
        }

        public init(intfArticleId: PropBeanDTO?, priceEffective: PropBeanDTO?, quantity: PropBeanDTO?, store: PropBeanDTO?) {
            
            self.store = store
            
            self.intfArticleId = intfArticleId
            
            self.priceEffective = priceEffective
            
            self.quantity = quantity
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            store = try? container.decode(PropBeanDTO.self, forKey: .store)
            
            intfArticleId = try? container.decode(PropBeanDTO.self, forKey: .intfArticleId)
            
            priceEffective = try? container.decode(PropBeanDTO.self, forKey: .priceEffective)
            
            quantity = try? container.decode(PropBeanDTO.self, forKey: .quantity)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            try? container.encodeIfPresent(intfArticleId, forKey: .intfArticleId)
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
        }
        
    }
    
    /*
        Model: DocMappingConfig
    */

    struct DocMappingConfig: Codable {
        
        
        public var properties: [String: Any]?
        
        public var junkDataThresholdCount: Int?
        
        public var propBeanConfigs: [PropBeanConfig]?
        
        public var unwindField: String?
        
        public var defaultHeaders: DefaultHeadersDTO?
        

        public enum CodingKeys: String, CodingKey {
            
            case properties = "properties"
            
            case junkDataThresholdCount = "junk_data_threshold_count"
            
            case propBeanConfigs = "prop_bean_configs"
            
            case unwindField = "unwind_field"
            
            case defaultHeaders = "default_headers"
            
        }

        public init(defaultHeaders: DefaultHeadersDTO?, junkDataThresholdCount: Int?, properties: [String: Any]?, propBeanConfigs: [PropBeanConfig]?, unwindField: String?) {
            
            self.properties = properties
            
            self.junkDataThresholdCount = junkDataThresholdCount
            
            self.propBeanConfigs = propBeanConfigs
            
            self.unwindField = unwindField
            
            self.defaultHeaders = defaultHeaders
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            properties = try? container.decode([String: Any].self, forKey: .properties)
            
            junkDataThresholdCount = try? container.decode(Int.self, forKey: .junkDataThresholdCount)
            
            propBeanConfigs = try? container.decode([PropBeanConfig].self, forKey: .propBeanConfigs)
            
            unwindField = try? container.decode(String.self, forKey: .unwindField)
            
            defaultHeaders = try? container.decode(DefaultHeadersDTO.self, forKey: .defaultHeaders)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(properties, forKey: .properties)
            
            try? container.encodeIfPresent(junkDataThresholdCount, forKey: .junkDataThresholdCount)
            
            try? container.encodeIfPresent(propBeanConfigs, forKey: .propBeanConfigs)
            
            try? container.encodeIfPresent(unwindField, forKey: .unwindField)
            
            try? container.encodeIfPresent(defaultHeaders, forKey: .defaultHeaders)
            
        }
        
    }
    
    /*
        Model: EmailConfig
    */

    struct EmailConfig: Codable {
        
        
        public var recepient: String?
        
        public var host: String?
        
        public var username: String?
        
        public var password: String?
        
        public var unzip: Bool?
        
        public var readFromContent: Bool?
        
        public var filterBasedOnRecepients: Bool?
        
        public var pcol: String?
        
        public var subjectLineRegex: String?
        
        public var senderAddress: String?
        
        public var localDir: String?
        
        public var folderNameHierarchies: [String]?
        
        public var attachmentRegex: String?
        
        public var bodyContentRegex: String?
        
        public var passwordProtected: Bool?
        
        public var zipFormat: String?
        
        public var attachmentMandate: Bool?
        
        public var filterFilesAfterExtraction: Bool?
        
        public var archiveConfig: ArchiveConfig?
        
        public var readAllUnreadMails: Bool?
        
        public var contentType: String?
        
        public var downloadableLink: Bool?
        
        public var properties: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case recepient = "recepient"
            
            case host = "host"
            
            case username = "username"
            
            case password = "password"
            
            case unzip = "unzip"
            
            case readFromContent = "read_from_content"
            
            case filterBasedOnRecepients = "filter_based_on_recepients"
            
            case pcol = "pcol"
            
            case subjectLineRegex = "subject_line_regex"
            
            case senderAddress = "sender_address"
            
            case localDir = "local_dir"
            
            case folderNameHierarchies = "folder_name_hierarchies"
            
            case attachmentRegex = "attachment_regex"
            
            case bodyContentRegex = "body_content_regex"
            
            case passwordProtected = "password_protected"
            
            case zipFormat = "zip_format"
            
            case attachmentMandate = "attachment_mandate"
            
            case filterFilesAfterExtraction = "filterFiles_after_extraction"
            
            case archiveConfig = "archive_config"
            
            case readAllUnreadMails = "read_all_unread_mails"
            
            case contentType = "content_type"
            
            case downloadableLink = "downloadable_link"
            
            case properties = "properties"
            
        }

        public init(archiveConfig: ArchiveConfig?, attachmentMandate: Bool?, attachmentRegex: String?, bodyContentRegex: String?, contentType: String?, downloadableLink: Bool?, filterFilesAfterExtraction: Bool?, filterBasedOnRecepients: Bool?, folderNameHierarchies: [String]?, host: String?, localDir: String?, password: String?, passwordProtected: Bool?, pcol: String?, properties: [String: Any]?, readAllUnreadMails: Bool?, readFromContent: Bool?, recepient: String?, senderAddress: String?, subjectLineRegex: String?, unzip: Bool?, username: String?, zipFormat: String?) {
            
            self.recepient = recepient
            
            self.host = host
            
            self.username = username
            
            self.password = password
            
            self.unzip = unzip
            
            self.readFromContent = readFromContent
            
            self.filterBasedOnRecepients = filterBasedOnRecepients
            
            self.pcol = pcol
            
            self.subjectLineRegex = subjectLineRegex
            
            self.senderAddress = senderAddress
            
            self.localDir = localDir
            
            self.folderNameHierarchies = folderNameHierarchies
            
            self.attachmentRegex = attachmentRegex
            
            self.bodyContentRegex = bodyContentRegex
            
            self.passwordProtected = passwordProtected
            
            self.zipFormat = zipFormat
            
            self.attachmentMandate = attachmentMandate
            
            self.filterFilesAfterExtraction = filterFilesAfterExtraction
            
            self.archiveConfig = archiveConfig
            
            self.readAllUnreadMails = readAllUnreadMails
            
            self.contentType = contentType
            
            self.downloadableLink = downloadableLink
            
            self.properties = properties
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            recepient = try? container.decode(String.self, forKey: .recepient)
            
            host = try? container.decode(String.self, forKey: .host)
            
            username = try? container.decode(String.self, forKey: .username)
            
            password = try? container.decode(String.self, forKey: .password)
            
            unzip = try? container.decode(Bool.self, forKey: .unzip)
            
            readFromContent = try? container.decode(Bool.self, forKey: .readFromContent)
            
            filterBasedOnRecepients = try? container.decode(Bool.self, forKey: .filterBasedOnRecepients)
            
            pcol = try? container.decode(String.self, forKey: .pcol)
            
            subjectLineRegex = try? container.decode(String.self, forKey: .subjectLineRegex)
            
            senderAddress = try? container.decode(String.self, forKey: .senderAddress)
            
            localDir = try? container.decode(String.self, forKey: .localDir)
            
            folderNameHierarchies = try? container.decode([String].self, forKey: .folderNameHierarchies)
            
            attachmentRegex = try? container.decode(String.self, forKey: .attachmentRegex)
            
            bodyContentRegex = try? container.decode(String.self, forKey: .bodyContentRegex)
            
            passwordProtected = try? container.decode(Bool.self, forKey: .passwordProtected)
            
            zipFormat = try? container.decode(String.self, forKey: .zipFormat)
            
            attachmentMandate = try? container.decode(Bool.self, forKey: .attachmentMandate)
            
            filterFilesAfterExtraction = try? container.decode(Bool.self, forKey: .filterFilesAfterExtraction)
            
            archiveConfig = try? container.decode(ArchiveConfig.self, forKey: .archiveConfig)
            
            readAllUnreadMails = try? container.decode(Bool.self, forKey: .readAllUnreadMails)
            
            contentType = try? container.decode(String.self, forKey: .contentType)
            
            downloadableLink = try? container.decode(Bool.self, forKey: .downloadableLink)
            
            properties = try? container.decode([String: Any].self, forKey: .properties)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(recepient, forKey: .recepient)
            
            try? container.encodeIfPresent(host, forKey: .host)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            try? container.encodeIfPresent(password, forKey: .password)
            
            try? container.encodeIfPresent(unzip, forKey: .unzip)
            
            try? container.encodeIfPresent(readFromContent, forKey: .readFromContent)
            
            try? container.encodeIfPresent(filterBasedOnRecepients, forKey: .filterBasedOnRecepients)
            
            try? container.encodeIfPresent(pcol, forKey: .pcol)
            
            try? container.encodeIfPresent(subjectLineRegex, forKey: .subjectLineRegex)
            
            try? container.encodeIfPresent(senderAddress, forKey: .senderAddress)
            
            try? container.encodeIfPresent(localDir, forKey: .localDir)
            
            try? container.encodeIfPresent(folderNameHierarchies, forKey: .folderNameHierarchies)
            
            try? container.encodeIfPresent(attachmentRegex, forKey: .attachmentRegex)
            
            try? container.encodeIfPresent(bodyContentRegex, forKey: .bodyContentRegex)
            
            try? container.encodeIfPresent(passwordProtected, forKey: .passwordProtected)
            
            try? container.encodeIfPresent(zipFormat, forKey: .zipFormat)
            
            try? container.encodeIfPresent(attachmentMandate, forKey: .attachmentMandate)
            
            try? container.encodeIfPresent(filterFilesAfterExtraction, forKey: .filterFilesAfterExtraction)
            
            try? container.encodeIfPresent(archiveConfig, forKey: .archiveConfig)
            
            try? container.encodeIfPresent(readAllUnreadMails, forKey: .readAllUnreadMails)
            
            try? container.encodeIfPresent(contentType, forKey: .contentType)
            
            try? container.encodeIfPresent(downloadableLink, forKey: .downloadableLink)
            
            try? container.encodeIfPresent(properties, forKey: .properties)
            
        }
        
    }
    
    /*
        Model: FTPConfig
    */

    struct FTPConfig: Codable {
        
        
        public var host: String?
        
        public var port: Int?
        
        public var username: String?
        
        public var password: String?
        
        public var unzip: Bool?
        
        public var retries: Int?
        
        public var interval: Int?
        
        public var localDir: String?
        
        public var remoteDir: String?
        
        public var zipFileRegex: String?
        
        public var archiveConfig: ArchiveConfig?
        
        public var fileRegex: String?
        
        public var zipFormat: String?
        
        public var readAllFiles: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case host = "host"
            
            case port = "port"
            
            case username = "username"
            
            case password = "password"
            
            case unzip = "unzip"
            
            case retries = "retries"
            
            case interval = "interval"
            
            case localDir = "local_dir"
            
            case remoteDir = "remote_dir"
            
            case zipFileRegex = "zip_file_regex"
            
            case archiveConfig = "archive_config"
            
            case fileRegex = "file_regex"
            
            case zipFormat = "zip_format"
            
            case readAllFiles = "read_all_files"
            
        }

        public init(archiveConfig: ArchiveConfig?, fileRegex: String?, host: String?, interval: Int?, localDir: String?, password: String?, port: Int?, readAllFiles: Bool?, remoteDir: String?, retries: Int?, unzip: Bool?, username: String?, zipFileRegex: String?, zipFormat: String?) {
            
            self.host = host
            
            self.port = port
            
            self.username = username
            
            self.password = password
            
            self.unzip = unzip
            
            self.retries = retries
            
            self.interval = interval
            
            self.localDir = localDir
            
            self.remoteDir = remoteDir
            
            self.zipFileRegex = zipFileRegex
            
            self.archiveConfig = archiveConfig
            
            self.fileRegex = fileRegex
            
            self.zipFormat = zipFormat
            
            self.readAllFiles = readAllFiles
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            host = try? container.decode(String.self, forKey: .host)
            
            port = try? container.decode(Int.self, forKey: .port)
            
            username = try? container.decode(String.self, forKey: .username)
            
            password = try? container.decode(String.self, forKey: .password)
            
            unzip = try? container.decode(Bool.self, forKey: .unzip)
            
            retries = try? container.decode(Int.self, forKey: .retries)
            
            interval = try? container.decode(Int.self, forKey: .interval)
            
            localDir = try? container.decode(String.self, forKey: .localDir)
            
            remoteDir = try? container.decode(String.self, forKey: .remoteDir)
            
            zipFileRegex = try? container.decode(String.self, forKey: .zipFileRegex)
            
            archiveConfig = try? container.decode(ArchiveConfig.self, forKey: .archiveConfig)
            
            fileRegex = try? container.decode(String.self, forKey: .fileRegex)
            
            zipFormat = try? container.decode(String.self, forKey: .zipFormat)
            
            readAllFiles = try? container.decode(Bool.self, forKey: .readAllFiles)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(host, forKey: .host)
            
            try? container.encodeIfPresent(port, forKey: .port)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            try? container.encodeIfPresent(password, forKey: .password)
            
            try? container.encodeIfPresent(unzip, forKey: .unzip)
            
            try? container.encodeIfPresent(retries, forKey: .retries)
            
            try? container.encodeIfPresent(interval, forKey: .interval)
            
            try? container.encodeIfPresent(localDir, forKey: .localDir)
            
            try? container.encodeIfPresent(remoteDir, forKey: .remoteDir)
            
            try? container.encodeIfPresent(zipFileRegex, forKey: .zipFileRegex)
            
            try? container.encodeIfPresent(archiveConfig, forKey: .archiveConfig)
            
            try? container.encodeIfPresent(fileRegex, forKey: .fileRegex)
            
            try? container.encodeIfPresent(zipFormat, forKey: .zipFormat)
            
            try? container.encodeIfPresent(readAllFiles, forKey: .readAllFiles)
            
        }
        
    }
    
    /*
        Model: FieldValidation
    */

    struct FieldValidation: Codable {
        
        
        public var strict: Bool?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case strict = "strict"
            
            case name = "name"
            
        }

        public init(name: String?, strict: Bool?) {
            
            self.strict = strict
            
            self.name = name
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            strict = try? container.decode(Bool.self, forKey: .strict)
            
            name = try? container.decode(String.self, forKey: .name)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(strict, forKey: .strict)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
        }
        
    }
    
    /*
        Model: FileConfig
    */

    struct FileConfig: Codable {
        
        
        public var delimiter: String?
        
        public var charset: String?
        
        public var properties: [String: Any]?
        
        public var fileHasHeader: Bool?
        
        public var headerIndex: Int?
        
        public var headerArray: [String]?
        
        public var dataStartIndex: Int?
        
        public var propBeanConfigs: [PropBeanConfig]?
        
        public var junkDataThresholdCount: Int?
        
        public var fileType: String?
        
        public var lineValidityCheck: Bool?
        
        public var sheetNames: [String]?
        
        public var readAllSheets: Bool?
        
        public var quoteChar: String?
        
        public var escapeChar: String?
        
        public var defaultHeaders: DefaultHeadersDTO?
        

        public enum CodingKeys: String, CodingKey {
            
            case delimiter = "delimiter"
            
            case charset = "charset"
            
            case properties = "properties"
            
            case fileHasHeader = "file_has_header"
            
            case headerIndex = "header_index"
            
            case headerArray = "header_array"
            
            case dataStartIndex = "data_start_index"
            
            case propBeanConfigs = "prop_bean_configs"
            
            case junkDataThresholdCount = "junk_data_threshold_count"
            
            case fileType = "file_type"
            
            case lineValidityCheck = "line_validity_check"
            
            case sheetNames = "sheet_names"
            
            case readAllSheets = "read_all_sheets"
            
            case quoteChar = "quote_char"
            
            case escapeChar = "escape_char"
            
            case defaultHeaders = "default_headers"
            
        }

        public init(charset: String?, dataStartIndex: Int?, defaultHeaders: DefaultHeadersDTO?, delimiter: String?, escapeChar: String?, fileHasHeader: Bool?, fileType: String?, headerArray: [String]?, headerIndex: Int?, junkDataThresholdCount: Int?, lineValidityCheck: Bool?, properties: [String: Any]?, propBeanConfigs: [PropBeanConfig]?, quoteChar: String?, readAllSheets: Bool?, sheetNames: [String]?) {
            
            self.delimiter = delimiter
            
            self.charset = charset
            
            self.properties = properties
            
            self.fileHasHeader = fileHasHeader
            
            self.headerIndex = headerIndex
            
            self.headerArray = headerArray
            
            self.dataStartIndex = dataStartIndex
            
            self.propBeanConfigs = propBeanConfigs
            
            self.junkDataThresholdCount = junkDataThresholdCount
            
            self.fileType = fileType
            
            self.lineValidityCheck = lineValidityCheck
            
            self.sheetNames = sheetNames
            
            self.readAllSheets = readAllSheets
            
            self.quoteChar = quoteChar
            
            self.escapeChar = escapeChar
            
            self.defaultHeaders = defaultHeaders
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            delimiter = try? container.decode(String.self, forKey: .delimiter)
            
            charset = try? container.decode(String.self, forKey: .charset)
            
            properties = try? container.decode([String: Any].self, forKey: .properties)
            
            fileHasHeader = try? container.decode(Bool.self, forKey: .fileHasHeader)
            
            headerIndex = try? container.decode(Int.self, forKey: .headerIndex)
            
            headerArray = try? container.decode([String].self, forKey: .headerArray)
            
            dataStartIndex = try? container.decode(Int.self, forKey: .dataStartIndex)
            
            propBeanConfigs = try? container.decode([PropBeanConfig].self, forKey: .propBeanConfigs)
            
            junkDataThresholdCount = try? container.decode(Int.self, forKey: .junkDataThresholdCount)
            
            fileType = try? container.decode(String.self, forKey: .fileType)
            
            lineValidityCheck = try? container.decode(Bool.self, forKey: .lineValidityCheck)
            
            sheetNames = try? container.decode([String].self, forKey: .sheetNames)
            
            readAllSheets = try? container.decode(Bool.self, forKey: .readAllSheets)
            
            quoteChar = try? container.decode(String.self, forKey: .quoteChar)
            
            escapeChar = try? container.decode(String.self, forKey: .escapeChar)
            
            defaultHeaders = try? container.decode(DefaultHeadersDTO.self, forKey: .defaultHeaders)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(delimiter, forKey: .delimiter)
            
            try? container.encodeIfPresent(charset, forKey: .charset)
            
            try? container.encodeIfPresent(properties, forKey: .properties)
            
            try? container.encodeIfPresent(fileHasHeader, forKey: .fileHasHeader)
            
            try? container.encodeIfPresent(headerIndex, forKey: .headerIndex)
            
            try? container.encodeIfPresent(headerArray, forKey: .headerArray)
            
            try? container.encodeIfPresent(dataStartIndex, forKey: .dataStartIndex)
            
            try? container.encodeIfPresent(propBeanConfigs, forKey: .propBeanConfigs)
            
            try? container.encodeIfPresent(junkDataThresholdCount, forKey: .junkDataThresholdCount)
            
            try? container.encodeIfPresent(fileType, forKey: .fileType)
            
            try? container.encodeIfPresent(lineValidityCheck, forKey: .lineValidityCheck)
            
            try? container.encodeIfPresent(sheetNames, forKey: .sheetNames)
            
            try? container.encodeIfPresent(readAllSheets, forKey: .readAllSheets)
            
            try? container.encodeIfPresent(quoteChar, forKey: .quoteChar)
            
            try? container.encodeIfPresent(escapeChar, forKey: .escapeChar)
            
            try? container.encodeIfPresent(defaultHeaders, forKey: .defaultHeaders)
            
        }
        
    }
    
    /*
        Model: GoogleSpreadSheetConfig
    */

    struct GoogleSpreadSheetConfig: Codable {
        
        
        public var sheetId: String?
        
        public var range: String?
        
        public var clientSecretLocation: String?
        
        public var credStorageDirectory: String?
        
        public var localDir: String?
        
        public var archiveConfig: ArchiveConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case sheetId = "sheetId"
            
            case range = "range"
            
            case clientSecretLocation = "client_secret_location"
            
            case credStorageDirectory = "cred_storage_directory"
            
            case localDir = "local_dir"
            
            case archiveConfig = "archive_config"
            
        }

        public init(archiveConfig: ArchiveConfig?, clientSecretLocation: String?, credStorageDirectory: String?, localDir: String?, range: String?, sheetId: String?) {
            
            self.sheetId = sheetId
            
            self.range = range
            
            self.clientSecretLocation = clientSecretLocation
            
            self.credStorageDirectory = credStorageDirectory
            
            self.localDir = localDir
            
            self.archiveConfig = archiveConfig
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            sheetId = try? container.decode(String.self, forKey: .sheetId)
            
            range = try? container.decode(String.self, forKey: .range)
            
            clientSecretLocation = try? container.decode(String.self, forKey: .clientSecretLocation)
            
            credStorageDirectory = try? container.decode(String.self, forKey: .credStorageDirectory)
            
            localDir = try? container.decode(String.self, forKey: .localDir)
            
            archiveConfig = try? container.decode(ArchiveConfig.self, forKey: .archiveConfig)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(sheetId, forKey: .sheetId)
            
            try? container.encodeIfPresent(range, forKey: .range)
            
            try? container.encodeIfPresent(clientSecretLocation, forKey: .clientSecretLocation)
            
            try? container.encodeIfPresent(credStorageDirectory, forKey: .credStorageDirectory)
            
            try? container.encodeIfPresent(localDir, forKey: .localDir)
            
            try? container.encodeIfPresent(archiveConfig, forKey: .archiveConfig)
            
        }
        
    }
    
    /*
        Model: HttpConfig
    */

    struct HttpConfig: Codable {
        
        
        public var hosturl: String?
        
        public var username: String?
        
        public var password: String?
        
        public var requestParams: [String: Any]?
        
        public var httpMethod: String?
        
        public var requestPayload: String?
        
        public var localPath: String?
        
        public var archiveConfig: ArchiveConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case hosturl = "hosturl"
            
            case username = "username"
            
            case password = "password"
            
            case requestParams = "request_params"
            
            case httpMethod = "http_method"
            
            case requestPayload = "request_payload"
            
            case localPath = "local_path"
            
            case archiveConfig = "archive_config"
            
        }

        public init(archiveConfig: ArchiveConfig?, hosturl: String?, httpMethod: String?, localPath: String?, password: String?, requestParams: [String: Any]?, requestPayload: String?, username: String?) {
            
            self.hosturl = hosturl
            
            self.username = username
            
            self.password = password
            
            self.requestParams = requestParams
            
            self.httpMethod = httpMethod
            
            self.requestPayload = requestPayload
            
            self.localPath = localPath
            
            self.archiveConfig = archiveConfig
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            hosturl = try? container.decode(String.self, forKey: .hosturl)
            
            username = try? container.decode(String.self, forKey: .username)
            
            password = try? container.decode(String.self, forKey: .password)
            
            requestParams = try? container.decode([String: Any].self, forKey: .requestParams)
            
            httpMethod = try? container.decode(String.self, forKey: .httpMethod)
            
            requestPayload = try? container.decode(String.self, forKey: .requestPayload)
            
            localPath = try? container.decode(String.self, forKey: .localPath)
            
            archiveConfig = try? container.decode(ArchiveConfig.self, forKey: .archiveConfig)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(hosturl, forKey: .hosturl)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            try? container.encodeIfPresent(password, forKey: .password)
            
            try? container.encodeIfPresent(requestParams, forKey: .requestParams)
            
            try? container.encodeIfPresent(httpMethod, forKey: .httpMethod)
            
            try? container.encodeIfPresent(requestPayload, forKey: .requestPayload)
            
            try? container.encodeIfPresent(localPath, forKey: .localPath)
            
            try? container.encodeIfPresent(archiveConfig, forKey: .archiveConfig)
            
        }
        
    }
    
    /*
        Model: JobConfig
    */

    struct JobConfig: Codable {
        
        
        public var syncInterval: Int?
        
        public var brandRemoteNames: [String]?
        
        public var companyNames: [String]?
        
        public var id: Int?
        
        public var jobCode: String?
        
        public var taskType: String?
        
        public var syncDelay: Int?
        
        public var cronExpression: String?
        
        public var storeFilter: StoreFilter?
        
        public var processConfig: ProcessConfig?
        
        public var storeConfig: [StoreConfig]?
        
        public var properties: [String: Any]?
        
        public var immediateFirstRun: Bool?
        
        public var disable: Bool?
        
        public var dependentJobCodes: [String]?
        
        public var companyConfig: [CompanyConfig]?
        
        public var companyIds: [Int]?
        
        public var taxIdentifiers: [String]?
        
        public var priority: String?
        
        public var periodThreshold: Int?
        
        public var periodThresholdType: String?
        
        public var dbConnectionProfile: DBConnectionProfile?
        
        public var params: [String: Any]?
        
        public var openTags: [String: Any]?
        
        public var deleteQuantityThreshold: Int?
        
        public var catalogMasterConfig: CatalogMasterConfig?
        
        public var aggregatorTypes: [String]?
        
        public var integrationType: String?
        
        public var minPrice: Double?
        
        public var audit: Audit?
        
        public var version: Int?
        
        public var alias: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case syncInterval = "syncInterval"
            
            case brandRemoteNames = "brandRemoteNames"
            
            case companyNames = "companyNames"
            
            case id = "_id"
            
            case jobCode = "job_code"
            
            case taskType = "task_type"
            
            case syncDelay = "sync_delay"
            
            case cronExpression = "cron_expression"
            
            case storeFilter = "store_filter"
            
            case processConfig = "process_config"
            
            case storeConfig = "store_config"
            
            case properties = "properties"
            
            case immediateFirstRun = "immediate_first_run"
            
            case disable = "disable"
            
            case dependentJobCodes = "dependent_job_codes"
            
            case companyConfig = "company_config"
            
            case companyIds = "company_ids"
            
            case taxIdentifiers = "tax_identifiers"
            
            case priority = "priority"
            
            case periodThreshold = "period_threshold"
            
            case periodThresholdType = "period_threshold_type"
            
            case dbConnectionProfile = "db_connection_profile"
            
            case params = "params"
            
            case openTags = "open_tags"
            
            case deleteQuantityThreshold = "delete_quantity_threshold"
            
            case catalogMasterConfig = "catalog_master_config"
            
            case aggregatorTypes = "aggregator_types"
            
            case integrationType = "integration_type"
            
            case minPrice = "min_price"
            
            case audit = "audit"
            
            case version = "version"
            
            case alias = "alias"
            
        }

        public init(aggregatorTypes: [String]?, alias: String?, audit: Audit?, brandRemoteNames: [String]?, catalogMasterConfig: CatalogMasterConfig?, companyNames: [String]?, companyConfig: [CompanyConfig]?, companyIds: [Int]?, cronExpression: String?, dbConnectionProfile: DBConnectionProfile?, deleteQuantityThreshold: Int?, dependentJobCodes: [String]?, disable: Bool?, immediateFirstRun: Bool?, integrationType: String?, jobCode: String?, minPrice: Double?, openTags: [String: Any]?, params: [String: Any]?, periodThreshold: Int?, periodThresholdType: String?, priority: String?, processConfig: ProcessConfig?, properties: [String: Any]?, storeConfig: [StoreConfig]?, storeFilter: StoreFilter?, syncInterval: Int?, syncDelay: Int?, taskType: String?, taxIdentifiers: [String]?, version: Int?, id: Int?) {
            
            self.syncInterval = syncInterval
            
            self.brandRemoteNames = brandRemoteNames
            
            self.companyNames = companyNames
            
            self.id = id
            
            self.jobCode = jobCode
            
            self.taskType = taskType
            
            self.syncDelay = syncDelay
            
            self.cronExpression = cronExpression
            
            self.storeFilter = storeFilter
            
            self.processConfig = processConfig
            
            self.storeConfig = storeConfig
            
            self.properties = properties
            
            self.immediateFirstRun = immediateFirstRun
            
            self.disable = disable
            
            self.dependentJobCodes = dependentJobCodes
            
            self.companyConfig = companyConfig
            
            self.companyIds = companyIds
            
            self.taxIdentifiers = taxIdentifiers
            
            self.priority = priority
            
            self.periodThreshold = periodThreshold
            
            self.periodThresholdType = periodThresholdType
            
            self.dbConnectionProfile = dbConnectionProfile
            
            self.params = params
            
            self.openTags = openTags
            
            self.deleteQuantityThreshold = deleteQuantityThreshold
            
            self.catalogMasterConfig = catalogMasterConfig
            
            self.aggregatorTypes = aggregatorTypes
            
            self.integrationType = integrationType
            
            self.minPrice = minPrice
            
            self.audit = audit
            
            self.version = version
            
            self.alias = alias
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            syncInterval = try? container.decode(Int.self, forKey: .syncInterval)
            
            brandRemoteNames = try? container.decode([String].self, forKey: .brandRemoteNames)
            
            companyNames = try? container.decode([String].self, forKey: .companyNames)
            
            id = try? container.decode(Int.self, forKey: .id)
            
            jobCode = try? container.decode(String.self, forKey: .jobCode)
            
            taskType = try? container.decode(String.self, forKey: .taskType)
            
            syncDelay = try? container.decode(Int.self, forKey: .syncDelay)
            
            cronExpression = try? container.decode(String.self, forKey: .cronExpression)
            
            storeFilter = try? container.decode(StoreFilter.self, forKey: .storeFilter)
            
            processConfig = try? container.decode(ProcessConfig.self, forKey: .processConfig)
            
            storeConfig = try? container.decode([StoreConfig].self, forKey: .storeConfig)
            
            properties = try? container.decode([String: Any].self, forKey: .properties)
            
            immediateFirstRun = try? container.decode(Bool.self, forKey: .immediateFirstRun)
            
            disable = try? container.decode(Bool.self, forKey: .disable)
            
            dependentJobCodes = try? container.decode([String].self, forKey: .dependentJobCodes)
            
            companyConfig = try? container.decode([CompanyConfig].self, forKey: .companyConfig)
            
            companyIds = try? container.decode([Int].self, forKey: .companyIds)
            
            taxIdentifiers = try? container.decode([String].self, forKey: .taxIdentifiers)
            
            priority = try? container.decode(String.self, forKey: .priority)
            
            periodThreshold = try? container.decode(Int.self, forKey: .periodThreshold)
            
            periodThresholdType = try? container.decode(String.self, forKey: .periodThresholdType)
            
            dbConnectionProfile = try? container.decode(DBConnectionProfile.self, forKey: .dbConnectionProfile)
            
            params = try? container.decode([String: Any].self, forKey: .params)
            
            openTags = try? container.decode([String: Any].self, forKey: .openTags)
            
            deleteQuantityThreshold = try? container.decode(Int.self, forKey: .deleteQuantityThreshold)
            
            catalogMasterConfig = try? container.decode(CatalogMasterConfig.self, forKey: .catalogMasterConfig)
            
            aggregatorTypes = try? container.decode([String].self, forKey: .aggregatorTypes)
            
            integrationType = try? container.decode(String.self, forKey: .integrationType)
            
            minPrice = try? container.decode(Double.self, forKey: .minPrice)
            
            audit = try? container.decode(Audit.self, forKey: .audit)
            
            version = try? container.decode(Int.self, forKey: .version)
            
            alias = try? container.decode(String.self, forKey: .alias)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(syncInterval, forKey: .syncInterval)
            
            try? container.encodeIfPresent(brandRemoteNames, forKey: .brandRemoteNames)
            
            try? container.encodeIfPresent(companyNames, forKey: .companyNames)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(jobCode, forKey: .jobCode)
            
            try? container.encodeIfPresent(taskType, forKey: .taskType)
            
            try? container.encodeIfPresent(syncDelay, forKey: .syncDelay)
            
            try? container.encodeIfPresent(cronExpression, forKey: .cronExpression)
            
            try? container.encodeIfPresent(storeFilter, forKey: .storeFilter)
            
            try? container.encodeIfPresent(processConfig, forKey: .processConfig)
            
            try? container.encodeIfPresent(storeConfig, forKey: .storeConfig)
            
            try? container.encodeIfPresent(properties, forKey: .properties)
            
            try? container.encodeIfPresent(immediateFirstRun, forKey: .immediateFirstRun)
            
            try? container.encodeIfPresent(disable, forKey: .disable)
            
            try? container.encodeIfPresent(dependentJobCodes, forKey: .dependentJobCodes)
            
            try? container.encodeIfPresent(companyConfig, forKey: .companyConfig)
            
            try? container.encodeIfPresent(companyIds, forKey: .companyIds)
            
            try? container.encodeIfPresent(taxIdentifiers, forKey: .taxIdentifiers)
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            try? container.encodeIfPresent(periodThreshold, forKey: .periodThreshold)
            
            try? container.encodeIfPresent(periodThresholdType, forKey: .periodThresholdType)
            
            try? container.encodeIfPresent(dbConnectionProfile, forKey: .dbConnectionProfile)
            
            try? container.encodeIfPresent(params, forKey: .params)
            
            try? container.encodeIfPresent(openTags, forKey: .openTags)
            
            try? container.encodeIfPresent(deleteQuantityThreshold, forKey: .deleteQuantityThreshold)
            
            try? container.encodeIfPresent(catalogMasterConfig, forKey: .catalogMasterConfig)
            
            try? container.encodeIfPresent(aggregatorTypes, forKey: .aggregatorTypes)
            
            try? container.encodeIfPresent(integrationType, forKey: .integrationType)
            
            try? container.encodeIfPresent(minPrice, forKey: .minPrice)
            
            try? container.encodeIfPresent(audit, forKey: .audit)
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            try? container.encodeIfPresent(alias, forKey: .alias)
            
        }
        
    }
    
    /*
        Model: JobConfigRawDTO
    */

    struct JobConfigRawDTO: Codable {
        
        
        public var companyName: String
        
        public var integration: String
        
        public var companyId: Int
        
        public var data: JobConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyName = "companyName"
            
            case integration = "integration"
            
            case companyId = "companyId"
            
            case data = "data"
            
        }

        public init(companyId: Int, companyName: String, data: JobConfig?, integration: String) {
            
            self.companyName = companyName
            
            self.integration = integration
            
            self.companyId = companyId
            
            self.data = data
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            companyName = try container.decode(String.self, forKey: .companyName)
            
            integration = try container.decode(String.self, forKey: .integration)
            
            companyId = try container.decode(Int.self, forKey: .companyId)
            
            data = try? container.decode(JobConfig.self, forKey: .data)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(companyName, forKey: .companyName)
            
            try? container.encodeIfPresent(integration, forKey: .integration)
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
        }
        
    }
    
    /*
        Model: JsonDocConfig
    */

    struct JsonDocConfig: Codable {
        
        
        public var propBeanConfigs: [PropBeanConfig]?
        

        public enum CodingKeys: String, CodingKey {
            
            case propBeanConfigs = "prop_bean_configs"
            
        }

        public init(propBeanConfigs: [PropBeanConfig]?) {
            
            self.propBeanConfigs = propBeanConfigs
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            propBeanConfigs = try? container.decode([PropBeanConfig].self, forKey: .propBeanConfigs)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(propBeanConfigs, forKey: .propBeanConfigs)
            
        }
        
    }
    
    /*
        Model: LocalFileConfig
    */

    struct LocalFileConfig: Codable {
        
        
        public var retries: Int?
        
        public var interval: Int?
        
        public var localDir: String?
        
        public var workingDir: String?
        
        public var unzip: Bool?
        
        public var zipFileRegex: String?
        
        public var fileRegex: String?
        
        public var zipFormat: String?
        
        public var archiveConfig: ArchiveConfig?
        
        public var readAllFiles: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case retries = "retries"
            
            case interval = "interval"
            
            case localDir = "local_dir"
            
            case workingDir = "working_dir"
            
            case unzip = "unzip"
            
            case zipFileRegex = "zip_file_regex"
            
            case fileRegex = "file_regex"
            
            case zipFormat = "zip_format"
            
            case archiveConfig = "archive_config"
            
            case readAllFiles = "read_all_files"
            
        }

        public init(archiveConfig: ArchiveConfig?, fileRegex: String?, interval: Int?, localDir: String?, readAllFiles: Bool?, retries: Int?, unzip: Bool?, workingDir: String?, zipFileRegex: String?, zipFormat: String?) {
            
            self.retries = retries
            
            self.interval = interval
            
            self.localDir = localDir
            
            self.workingDir = workingDir
            
            self.unzip = unzip
            
            self.zipFileRegex = zipFileRegex
            
            self.fileRegex = fileRegex
            
            self.zipFormat = zipFormat
            
            self.archiveConfig = archiveConfig
            
            self.readAllFiles = readAllFiles
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            retries = try? container.decode(Int.self, forKey: .retries)
            
            interval = try? container.decode(Int.self, forKey: .interval)
            
            localDir = try? container.decode(String.self, forKey: .localDir)
            
            workingDir = try? container.decode(String.self, forKey: .workingDir)
            
            unzip = try? container.decode(Bool.self, forKey: .unzip)
            
            zipFileRegex = try? container.decode(String.self, forKey: .zipFileRegex)
            
            fileRegex = try? container.decode(String.self, forKey: .fileRegex)
            
            zipFormat = try? container.decode(String.self, forKey: .zipFormat)
            
            archiveConfig = try? container.decode(ArchiveConfig.self, forKey: .archiveConfig)
            
            readAllFiles = try? container.decode(Bool.self, forKey: .readAllFiles)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(retries, forKey: .retries)
            
            try? container.encodeIfPresent(interval, forKey: .interval)
            
            try? container.encodeIfPresent(localDir, forKey: .localDir)
            
            try? container.encodeIfPresent(workingDir, forKey: .workingDir)
            
            try? container.encodeIfPresent(unzip, forKey: .unzip)
            
            try? container.encodeIfPresent(zipFileRegex, forKey: .zipFileRegex)
            
            try? container.encodeIfPresent(fileRegex, forKey: .fileRegex)
            
            try? container.encodeIfPresent(zipFormat, forKey: .zipFormat)
            
            try? container.encodeIfPresent(archiveConfig, forKey: .archiveConfig)
            
            try? container.encodeIfPresent(readAllFiles, forKey: .readAllFiles)
            
        }
        
    }
    
    /*
        Model: MongoDocConfig
    */

    struct MongoDocConfig: Codable {
        
        
        public var collectionName: String?
        
        public var findQuery: Document?
        
        public var projectionQuery: Document?
        
        public var propBeanConfigs: [PropBeanConfig]?
        
        public var aggregatePipeLine: [Document]?
        
        public var skipSave: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case collectionName = "collection_name"
            
            case findQuery = "find_query"
            
            case projectionQuery = "projection_query"
            
            case propBeanConfigs = "prop_bean_configs"
            
            case aggregatePipeLine = "aggregate_pipeLine"
            
            case skipSave = "skip_save"
            
        }

        public init(aggregatePipeLine: [Document]?, collectionName: String?, findQuery: Document?, projectionQuery: Document?, propBeanConfigs: [PropBeanConfig]?, skipSave: Bool?) {
            
            self.collectionName = collectionName
            
            self.findQuery = findQuery
            
            self.projectionQuery = projectionQuery
            
            self.propBeanConfigs = propBeanConfigs
            
            self.aggregatePipeLine = aggregatePipeLine
            
            self.skipSave = skipSave
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            collectionName = try? container.decode(String.self, forKey: .collectionName)
            
            findQuery = try? container.decode(Document.self, forKey: .findQuery)
            
            projectionQuery = try? container.decode(Document.self, forKey: .projectionQuery)
            
            propBeanConfigs = try? container.decode([PropBeanConfig].self, forKey: .propBeanConfigs)
            
            aggregatePipeLine = try? container.decode([Document].self, forKey: .aggregatePipeLine)
            
            skipSave = try? container.decode(Bool.self, forKey: .skipSave)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(collectionName, forKey: .collectionName)
            
            try? container.encodeIfPresent(findQuery, forKey: .findQuery)
            
            try? container.encodeIfPresent(projectionQuery, forKey: .projectionQuery)
            
            try? container.encodeIfPresent(propBeanConfigs, forKey: .propBeanConfigs)
            
            try? container.encodeIfPresent(aggregatePipeLine, forKey: .aggregatePipeLine)
            
            try? container.encodeIfPresent(skipSave, forKey: .skipSave)
            
        }
        
    }
    
    /*
        Model: OAuthConfig
    */

    struct OAuthConfig: Codable {
        
        
        public var limit: Int?
        
        public var pages: Int?
        
        public var interval: Int?
        
        public var consumerKey: String?
        
        public var consumerSecret: String?
        
        public var token: String?
        
        public var tokenSecret: String?
        
        public var restUrl: String?
        
        public var restBaseUrl: String?
        
        public var functionName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case limit = "limit"
            
            case pages = "pages"
            
            case interval = "interval"
            
            case consumerKey = "consumer_key"
            
            case consumerSecret = "consumer_secret"
            
            case token = "token"
            
            case tokenSecret = "token_secret"
            
            case restUrl = "rest_url"
            
            case restBaseUrl = "rest_base_url"
            
            case functionName = "function_name"
            
        }

        public init(consumerKey: String?, consumerSecret: String?, functionName: String?, interval: Int?, limit: Int?, pages: Int?, restBaseUrl: String?, restUrl: String?, token: String?, tokenSecret: String?) {
            
            self.limit = limit
            
            self.pages = pages
            
            self.interval = interval
            
            self.consumerKey = consumerKey
            
            self.consumerSecret = consumerSecret
            
            self.token = token
            
            self.tokenSecret = tokenSecret
            
            self.restUrl = restUrl
            
            self.restBaseUrl = restBaseUrl
            
            self.functionName = functionName
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            limit = try? container.decode(Int.self, forKey: .limit)
            
            pages = try? container.decode(Int.self, forKey: .pages)
            
            interval = try? container.decode(Int.self, forKey: .interval)
            
            consumerKey = try? container.decode(String.self, forKey: .consumerKey)
            
            consumerSecret = try? container.decode(String.self, forKey: .consumerSecret)
            
            token = try? container.decode(String.self, forKey: .token)
            
            tokenSecret = try? container.decode(String.self, forKey: .tokenSecret)
            
            restUrl = try? container.decode(String.self, forKey: .restUrl)
            
            restBaseUrl = try? container.decode(String.self, forKey: .restBaseUrl)
            
            functionName = try? container.decode(String.self, forKey: .functionName)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            try? container.encodeIfPresent(interval, forKey: .interval)
            
            try? container.encodeIfPresent(consumerKey, forKey: .consumerKey)
            
            try? container.encodeIfPresent(consumerSecret, forKey: .consumerSecret)
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            try? container.encodeIfPresent(tokenSecret, forKey: .tokenSecret)
            
            try? container.encodeIfPresent(restUrl, forKey: .restUrl)
            
            try? container.encodeIfPresent(restBaseUrl, forKey: .restBaseUrl)
            
            try? container.encodeIfPresent(functionName, forKey: .functionName)
            
        }
        
    }
    
    /*
        Model: ProcessConfig
    */

    struct ProcessConfig: Codable {
        
        
        public var dbConfig: DBConfig?
        
        public var dbParamConfig: DBParamConfig?
        
        public var sftpConfig: SFTPConfig?
        
        public var awsS3Config: AWSS3config?
        
        public var mongoDocConfig: MongoDocConfig?
        
        public var ftpConfig: FTPConfig?
        
        public var emailConfig: EmailConfig?
        
        public var fileConfig: FileConfig?
        
        public var jsonDocConfig: JsonDocConfig?
        
        public var docMappingConfig: DocMappingConfig?
        
        public var taskStepConfig: TaskStepConfig?
        
        public var httpConfig: HttpConfig?
        
        public var localFileConfig: LocalFileConfig?
        
        public var oauthConfig: OAuthConfig?
        
        public var googleSpreadsheetConfig: GoogleSpreadSheetConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case dbConfig = "db_config"
            
            case dbParamConfig = "db_param_config"
            
            case sftpConfig = "sftp_config"
            
            case awsS3Config = "aws_s3_config"
            
            case mongoDocConfig = "mongo_doc_config"
            
            case ftpConfig = "ftp_config"
            
            case emailConfig = "email_config"
            
            case fileConfig = "file_config"
            
            case jsonDocConfig = "json_doc_config"
            
            case docMappingConfig = "doc_mapping_config"
            
            case taskStepConfig = "task_step_config"
            
            case httpConfig = "http_config"
            
            case localFileConfig = "local_file_config"
            
            case oauthConfig = "oauth_config"
            
            case googleSpreadsheetConfig = "google_spreadsheet_config"
            
        }

        public init(awsS3Config: AWSS3config?, dbConfig: DBConfig?, dbParamConfig: DBParamConfig?, docMappingConfig: DocMappingConfig?, emailConfig: EmailConfig?, fileConfig: FileConfig?, ftpConfig: FTPConfig?, googleSpreadsheetConfig: GoogleSpreadSheetConfig?, httpConfig: HttpConfig?, jsonDocConfig: JsonDocConfig?, localFileConfig: LocalFileConfig?, mongoDocConfig: MongoDocConfig?, oauthConfig: OAuthConfig?, sftpConfig: SFTPConfig?, taskStepConfig: TaskStepConfig?) {
            
            self.dbConfig = dbConfig
            
            self.dbParamConfig = dbParamConfig
            
            self.sftpConfig = sftpConfig
            
            self.awsS3Config = awsS3Config
            
            self.mongoDocConfig = mongoDocConfig
            
            self.ftpConfig = ftpConfig
            
            self.emailConfig = emailConfig
            
            self.fileConfig = fileConfig
            
            self.jsonDocConfig = jsonDocConfig
            
            self.docMappingConfig = docMappingConfig
            
            self.taskStepConfig = taskStepConfig
            
            self.httpConfig = httpConfig
            
            self.localFileConfig = localFileConfig
            
            self.oauthConfig = oauthConfig
            
            self.googleSpreadsheetConfig = googleSpreadsheetConfig
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            dbConfig = try? container.decode(DBConfig.self, forKey: .dbConfig)
            
            dbParamConfig = try? container.decode(DBParamConfig.self, forKey: .dbParamConfig)
            
            sftpConfig = try? container.decode(SFTPConfig.self, forKey: .sftpConfig)
            
            awsS3Config = try? container.decode(AWSS3config.self, forKey: .awsS3Config)
            
            mongoDocConfig = try? container.decode(MongoDocConfig.self, forKey: .mongoDocConfig)
            
            ftpConfig = try? container.decode(FTPConfig.self, forKey: .ftpConfig)
            
            emailConfig = try? container.decode(EmailConfig.self, forKey: .emailConfig)
            
            fileConfig = try? container.decode(FileConfig.self, forKey: .fileConfig)
            
            jsonDocConfig = try? container.decode(JsonDocConfig.self, forKey: .jsonDocConfig)
            
            docMappingConfig = try? container.decode(DocMappingConfig.self, forKey: .docMappingConfig)
            
            taskStepConfig = try? container.decode(TaskStepConfig.self, forKey: .taskStepConfig)
            
            httpConfig = try? container.decode(HttpConfig.self, forKey: .httpConfig)
            
            localFileConfig = try? container.decode(LocalFileConfig.self, forKey: .localFileConfig)
            
            oauthConfig = try? container.decode(OAuthConfig.self, forKey: .oauthConfig)
            
            googleSpreadsheetConfig = try? container.decode(GoogleSpreadSheetConfig.self, forKey: .googleSpreadsheetConfig)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(dbConfig, forKey: .dbConfig)
            
            try? container.encodeIfPresent(dbParamConfig, forKey: .dbParamConfig)
            
            try? container.encodeIfPresent(sftpConfig, forKey: .sftpConfig)
            
            try? container.encodeIfPresent(awsS3Config, forKey: .awsS3Config)
            
            try? container.encodeIfPresent(mongoDocConfig, forKey: .mongoDocConfig)
            
            try? container.encodeIfPresent(ftpConfig, forKey: .ftpConfig)
            
            try? container.encodeIfPresent(emailConfig, forKey: .emailConfig)
            
            try? container.encodeIfPresent(fileConfig, forKey: .fileConfig)
            
            try? container.encodeIfPresent(jsonDocConfig, forKey: .jsonDocConfig)
            
            try? container.encodeIfPresent(docMappingConfig, forKey: .docMappingConfig)
            
            try? container.encodeIfPresent(taskStepConfig, forKey: .taskStepConfig)
            
            try? container.encodeIfPresent(httpConfig, forKey: .httpConfig)
            
            try? container.encodeIfPresent(localFileConfig, forKey: .localFileConfig)
            
            try? container.encodeIfPresent(oauthConfig, forKey: .oauthConfig)
            
            try? container.encodeIfPresent(googleSpreadsheetConfig, forKey: .googleSpreadsheetConfig)
            
        }
        
    }
    
    /*
        Model: PropBeanConfig
    */

    struct PropBeanConfig: Codable {
        
        
        public var required: Bool?
        
        public var mapping: [String: Any]?
        
        public var optional: Bool?
        
        public var send: Send?
        
        public var fieldValidations: [FieldValidation]?
        
        public var validations: [Document]?
        
        public var values: [String]?
        
        public var include: Bool?
        
        public var sourceField: String?
        
        public var sourceFields: [String]?
        
        public var destinationField: String?
        
        public var dataType: String?
        
        public var defaultValue: [String: Any]?
        
        public var constValue: [String: Any]?
        
        public var concatStr: String?
        
        public var functionName: String?
        
        public var transformerName: String?
        
        public var allParamFunctionName: String?
        
        public var subSeparator: String?
        
        public var indexField: String?
        
        public var ignoreIfNotExists: Bool?
        
        public var identifierType: String?
        
        public var projectionQuery: Document?
        
        public var enrichFromMaster: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case required = "required"
            
            case mapping = "mapping"
            
            case optional = "optional"
            
            case send = "send"
            
            case fieldValidations = "fieldValidations"
            
            case validations = "validations"
            
            case values = "values"
            
            case include = "include"
            
            case sourceField = "source_field"
            
            case sourceFields = "source_fields"
            
            case destinationField = "destination_field"
            
            case dataType = "data_type"
            
            case defaultValue = "default_value"
            
            case constValue = "const_value"
            
            case concatStr = "concat_str"
            
            case functionName = "function_name"
            
            case transformerName = "transformer_name"
            
            case allParamFunctionName = "all_param_function_name"
            
            case subSeparator = "sub_separator"
            
            case indexField = "index_field"
            
            case ignoreIfNotExists = "ignore_if_not_exists"
            
            case identifierType = "identifier_type"
            
            case projectionQuery = "projection_query"
            
            case enrichFromMaster = "enrich_from_master"
            
        }

        public init(allParamFunctionName: String?, concatStr: String?, constValue: [String: Any]?, dataType: String?, defaultValue: [String: Any]?, destinationField: String?, enrichFromMaster: Bool?, fieldValidations: [FieldValidation]?, functionName: String?, identifierType: String?, ignoreIfNotExists: Bool?, include: Bool?, indexField: String?, mapping: [String: Any]?, optional: Bool?, projectionQuery: Document?, required: Bool?, send: Send?, sourceField: String?, sourceFields: [String]?, subSeparator: String?, transformerName: String?, validations: [Document]?, values: [String]?) {
            
            self.required = required
            
            self.mapping = mapping
            
            self.optional = optional
            
            self.send = send
            
            self.fieldValidations = fieldValidations
            
            self.validations = validations
            
            self.values = values
            
            self.include = include
            
            self.sourceField = sourceField
            
            self.sourceFields = sourceFields
            
            self.destinationField = destinationField
            
            self.dataType = dataType
            
            self.defaultValue = defaultValue
            
            self.constValue = constValue
            
            self.concatStr = concatStr
            
            self.functionName = functionName
            
            self.transformerName = transformerName
            
            self.allParamFunctionName = allParamFunctionName
            
            self.subSeparator = subSeparator
            
            self.indexField = indexField
            
            self.ignoreIfNotExists = ignoreIfNotExists
            
            self.identifierType = identifierType
            
            self.projectionQuery = projectionQuery
            
            self.enrichFromMaster = enrichFromMaster
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            required = try? container.decode(Bool.self, forKey: .required)
            
            mapping = try? container.decode([String: Any].self, forKey: .mapping)
            
            optional = try? container.decode(Bool.self, forKey: .optional)
            
            send = try? container.decode(Send.self, forKey: .send)
            
            fieldValidations = try? container.decode([FieldValidation].self, forKey: .fieldValidations)
            
            validations = try? container.decode([Document].self, forKey: .validations)
            
            values = try? container.decode([String].self, forKey: .values)
            
            include = try? container.decode(Bool.self, forKey: .include)
            
            sourceField = try? container.decode(String.self, forKey: .sourceField)
            
            sourceFields = try? container.decode([String].self, forKey: .sourceFields)
            
            destinationField = try? container.decode(String.self, forKey: .destinationField)
            
            dataType = try? container.decode(String.self, forKey: .dataType)
            
            defaultValue = try? container.decode([String: Any].self, forKey: .defaultValue)
            
            constValue = try? container.decode([String: Any].self, forKey: .constValue)
            
            concatStr = try? container.decode(String.self, forKey: .concatStr)
            
            functionName = try? container.decode(String.self, forKey: .functionName)
            
            transformerName = try? container.decode(String.self, forKey: .transformerName)
            
            allParamFunctionName = try? container.decode(String.self, forKey: .allParamFunctionName)
            
            subSeparator = try? container.decode(String.self, forKey: .subSeparator)
            
            indexField = try? container.decode(String.self, forKey: .indexField)
            
            ignoreIfNotExists = try? container.decode(Bool.self, forKey: .ignoreIfNotExists)
            
            identifierType = try? container.decode(String.self, forKey: .identifierType)
            
            projectionQuery = try? container.decode(Document.self, forKey: .projectionQuery)
            
            enrichFromMaster = try? container.decode(Bool.self, forKey: .enrichFromMaster)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(required, forKey: .required)
            
            try? container.encodeIfPresent(mapping, forKey: .mapping)
            
            try? container.encodeIfPresent(optional, forKey: .optional)
            
            try? container.encodeIfPresent(send, forKey: .send)
            
            try? container.encodeIfPresent(fieldValidations, forKey: .fieldValidations)
            
            try? container.encodeIfPresent(validations, forKey: .validations)
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            try? container.encodeIfPresent(include, forKey: .include)
            
            try? container.encodeIfPresent(sourceField, forKey: .sourceField)
            
            try? container.encodeIfPresent(sourceFields, forKey: .sourceFields)
            
            try? container.encodeIfPresent(destinationField, forKey: .destinationField)
            
            try? container.encodeIfPresent(dataType, forKey: .dataType)
            
            try? container.encodeIfPresent(defaultValue, forKey: .defaultValue)
            
            try? container.encodeIfPresent(constValue, forKey: .constValue)
            
            try? container.encodeIfPresent(concatStr, forKey: .concatStr)
            
            try? container.encodeIfPresent(functionName, forKey: .functionName)
            
            try? container.encodeIfPresent(transformerName, forKey: .transformerName)
            
            try? container.encodeIfPresent(allParamFunctionName, forKey: .allParamFunctionName)
            
            try? container.encodeIfPresent(subSeparator, forKey: .subSeparator)
            
            try? container.encodeIfPresent(indexField, forKey: .indexField)
            
            try? container.encodeIfPresent(ignoreIfNotExists, forKey: .ignoreIfNotExists)
            
            try? container.encodeIfPresent(identifierType, forKey: .identifierType)
            
            try? container.encodeIfPresent(projectionQuery, forKey: .projectionQuery)
            
            try? container.encodeIfPresent(enrichFromMaster, forKey: .enrichFromMaster)
            
        }
        
    }
    
    /*
        Model: PropBeanDTO
    */

    struct PropBeanDTO: Codable {
        
        
        public var required: Bool?
        
        public var optional: Bool?
        
        public var include: Bool?
        
        public var sourceField: String?
        
        public var sourceFields: [String]?
        
        public var destinationField: String?
        
        public var dataType: String?
        
        public var defaultValue: [String: Any]?
        
        public var constValue: [String: Any]?
        
        public var concatStr: String?
        
        public var functionName: String?
        
        public var transformerName: String?
        
        public var allParamFunctionName: String?
        
        public var subSeparator: String?
        
        public var indexField: String?
        
        public var ignoreIfNotExists: Bool?
        
        public var identifierType: String?
        
        public var projectionQuery: Document?
        
        public var enrichFromMaster: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case required = "required"
            
            case optional = "optional"
            
            case include = "include"
            
            case sourceField = "source_field"
            
            case sourceFields = "source_fields"
            
            case destinationField = "destination_field"
            
            case dataType = "data_type"
            
            case defaultValue = "default_value"
            
            case constValue = "const_value"
            
            case concatStr = "concat_str"
            
            case functionName = "function_name"
            
            case transformerName = "transformer_name"
            
            case allParamFunctionName = "all_param_function_name"
            
            case subSeparator = "sub_separator"
            
            case indexField = "index_field"
            
            case ignoreIfNotExists = "ignore_if_not_exists"
            
            case identifierType = "identifier_type"
            
            case projectionQuery = "projection_query"
            
            case enrichFromMaster = "enrich_from_master"
            
        }

        public init(allParamFunctionName: String?, concatStr: String?, constValue: [String: Any]?, dataType: String?, defaultValue: [String: Any]?, destinationField: String?, enrichFromMaster: Bool?, functionName: String?, identifierType: String?, ignoreIfNotExists: Bool?, include: Bool?, indexField: String?, optional: Bool?, projectionQuery: Document?, required: Bool?, sourceField: String?, sourceFields: [String]?, subSeparator: String?, transformerName: String?) {
            
            self.required = required
            
            self.optional = optional
            
            self.include = include
            
            self.sourceField = sourceField
            
            self.sourceFields = sourceFields
            
            self.destinationField = destinationField
            
            self.dataType = dataType
            
            self.defaultValue = defaultValue
            
            self.constValue = constValue
            
            self.concatStr = concatStr
            
            self.functionName = functionName
            
            self.transformerName = transformerName
            
            self.allParamFunctionName = allParamFunctionName
            
            self.subSeparator = subSeparator
            
            self.indexField = indexField
            
            self.ignoreIfNotExists = ignoreIfNotExists
            
            self.identifierType = identifierType
            
            self.projectionQuery = projectionQuery
            
            self.enrichFromMaster = enrichFromMaster
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            required = try? container.decode(Bool.self, forKey: .required)
            
            optional = try? container.decode(Bool.self, forKey: .optional)
            
            include = try? container.decode(Bool.self, forKey: .include)
            
            sourceField = try? container.decode(String.self, forKey: .sourceField)
            
            sourceFields = try? container.decode([String].self, forKey: .sourceFields)
            
            destinationField = try? container.decode(String.self, forKey: .destinationField)
            
            dataType = try? container.decode(String.self, forKey: .dataType)
            
            defaultValue = try? container.decode([String: Any].self, forKey: .defaultValue)
            
            constValue = try? container.decode([String: Any].self, forKey: .constValue)
            
            concatStr = try? container.decode(String.self, forKey: .concatStr)
            
            functionName = try? container.decode(String.self, forKey: .functionName)
            
            transformerName = try? container.decode(String.self, forKey: .transformerName)
            
            allParamFunctionName = try? container.decode(String.self, forKey: .allParamFunctionName)
            
            subSeparator = try? container.decode(String.self, forKey: .subSeparator)
            
            indexField = try? container.decode(String.self, forKey: .indexField)
            
            ignoreIfNotExists = try? container.decode(Bool.self, forKey: .ignoreIfNotExists)
            
            identifierType = try? container.decode(String.self, forKey: .identifierType)
            
            projectionQuery = try? container.decode(Document.self, forKey: .projectionQuery)
            
            enrichFromMaster = try? container.decode(Bool.self, forKey: .enrichFromMaster)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(required, forKey: .required)
            
            try? container.encodeIfPresent(optional, forKey: .optional)
            
            try? container.encodeIfPresent(include, forKey: .include)
            
            try? container.encodeIfPresent(sourceField, forKey: .sourceField)
            
            try? container.encodeIfPresent(sourceFields, forKey: .sourceFields)
            
            try? container.encodeIfPresent(destinationField, forKey: .destinationField)
            
            try? container.encodeIfPresent(dataType, forKey: .dataType)
            
            try? container.encodeIfPresent(defaultValue, forKey: .defaultValue)
            
            try? container.encodeIfPresent(constValue, forKey: .constValue)
            
            try? container.encodeIfPresent(concatStr, forKey: .concatStr)
            
            try? container.encodeIfPresent(functionName, forKey: .functionName)
            
            try? container.encodeIfPresent(transformerName, forKey: .transformerName)
            
            try? container.encodeIfPresent(allParamFunctionName, forKey: .allParamFunctionName)
            
            try? container.encodeIfPresent(subSeparator, forKey: .subSeparator)
            
            try? container.encodeIfPresent(indexField, forKey: .indexField)
            
            try? container.encodeIfPresent(ignoreIfNotExists, forKey: .ignoreIfNotExists)
            
            try? container.encodeIfPresent(identifierType, forKey: .identifierType)
            
            try? container.encodeIfPresent(projectionQuery, forKey: .projectionQuery)
            
            try? container.encodeIfPresent(enrichFromMaster, forKey: .enrichFromMaster)
            
        }
        
    }
    
    /*
        Model: ResponseEnvelopeListJobConfigRawDTO
    */

    struct ResponseEnvelopeListJobConfigRawDTO: Codable {
        
        
        public var timestamp: String?
        
        public var status: Int?
        
        public var error: String?
        
        public var exception: String?
        
        public var message: String?
        
        public var totalTimeTakenInMillis: Int?
        
        public var httpStatus: String?
        
        public var items: [JobConfigRawDTO]?
        
        public var payload: [JobConfigRawDTO]?
        
        public var traceId: String?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case timestamp = "timestamp"
            
            case status = "status"
            
            case error = "error"
            
            case exception = "exception"
            
            case message = "message"
            
            case totalTimeTakenInMillis = "total_time_taken_in_millis"
            
            case httpStatus = "http_status"
            
            case items = "items"
            
            case payload = "payload"
            
            case traceId = "trace_id"
            
            case page = "page"
            
        }

        public init(error: String?, exception: String?, httpStatus: String?, items: [JobConfigRawDTO]?, message: String?, page: Page?, payload: [JobConfigRawDTO]?, status: Int?, timestamp: String?, totalTimeTakenInMillis: Int?, traceId: String?) {
            
            self.timestamp = timestamp
            
            self.status = status
            
            self.error = error
            
            self.exception = exception
            
            self.message = message
            
            self.totalTimeTakenInMillis = totalTimeTakenInMillis
            
            self.httpStatus = httpStatus
            
            self.items = items
            
            self.payload = payload
            
            self.traceId = traceId
            
            self.page = page
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            timestamp = try? container.decode(String.self, forKey: .timestamp)
            
            status = try? container.decode(Int.self, forKey: .status)
            
            error = try? container.decode(String.self, forKey: .error)
            
            exception = try? container.decode(String.self, forKey: .exception)
            
            message = try? container.decode(String.self, forKey: .message)
            
            totalTimeTakenInMillis = try? container.decode(Int.self, forKey: .totalTimeTakenInMillis)
            
            httpStatus = try? container.decode(String.self, forKey: .httpStatus)
            
            items = try? container.decode([JobConfigRawDTO].self, forKey: .items)
            
            payload = try? container.decode([JobConfigRawDTO].self, forKey: .payload)
            
            traceId = try? container.decode(String.self, forKey: .traceId)
            
            page = try? container.decode(Page.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            try? container.encodeIfPresent(exception, forKey: .exception)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(totalTimeTakenInMillis, forKey: .totalTimeTakenInMillis)
            
            try? container.encodeIfPresent(httpStatus, forKey: .httpStatus)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(payload, forKey: .payload)
            
            try? container.encodeIfPresent(traceId, forKey: .traceId)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: SFTPConfig
    */

    struct SFTPConfig: Codable {
        
        
        public var host: String?
        
        public var port: Int?
        
        public var username: String?
        
        public var password: String?
        
        public var unzip: Bool?
        
        public var retries: Int?
        
        public var interval: Int?
        
        public var privateKeyPath: String?
        
        public var strictHostKeyChecking: Bool?
        
        public var localDir: String?
        
        public var remoteDir: String?
        
        public var passwordProtected: Bool?
        
        public var zipFileRegex: String?
        
        public var fileRegex: String?
        
        public var zipFormat: String?
        
        public var archiveConfig: ArchiveConfig?
        
        public var readAllFiles: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case host = "host"
            
            case port = "port"
            
            case username = "username"
            
            case password = "password"
            
            case unzip = "unzip"
            
            case retries = "retries"
            
            case interval = "interval"
            
            case privateKeyPath = "private_key_path"
            
            case strictHostKeyChecking = "strict_host_key_checking"
            
            case localDir = "local_dir"
            
            case remoteDir = "remote_dir"
            
            case passwordProtected = "password_protected"
            
            case zipFileRegex = "zip_file_regex"
            
            case fileRegex = "file_regex"
            
            case zipFormat = "zip_format"
            
            case archiveConfig = "archive_config"
            
            case readAllFiles = "read_all_files"
            
        }

        public init(archiveConfig: ArchiveConfig?, fileRegex: String?, host: String?, interval: Int?, localDir: String?, password: String?, passwordProtected: Bool?, port: Int?, privateKeyPath: String?, readAllFiles: Bool?, remoteDir: String?, retries: Int?, strictHostKeyChecking: Bool?, unzip: Bool?, username: String?, zipFileRegex: String?, zipFormat: String?) {
            
            self.host = host
            
            self.port = port
            
            self.username = username
            
            self.password = password
            
            self.unzip = unzip
            
            self.retries = retries
            
            self.interval = interval
            
            self.privateKeyPath = privateKeyPath
            
            self.strictHostKeyChecking = strictHostKeyChecking
            
            self.localDir = localDir
            
            self.remoteDir = remoteDir
            
            self.passwordProtected = passwordProtected
            
            self.zipFileRegex = zipFileRegex
            
            self.fileRegex = fileRegex
            
            self.zipFormat = zipFormat
            
            self.archiveConfig = archiveConfig
            
            self.readAllFiles = readAllFiles
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            host = try? container.decode(String.self, forKey: .host)
            
            port = try? container.decode(Int.self, forKey: .port)
            
            username = try? container.decode(String.self, forKey: .username)
            
            password = try? container.decode(String.self, forKey: .password)
            
            unzip = try? container.decode(Bool.self, forKey: .unzip)
            
            retries = try? container.decode(Int.self, forKey: .retries)
            
            interval = try? container.decode(Int.self, forKey: .interval)
            
            privateKeyPath = try? container.decode(String.self, forKey: .privateKeyPath)
            
            strictHostKeyChecking = try? container.decode(Bool.self, forKey: .strictHostKeyChecking)
            
            localDir = try? container.decode(String.self, forKey: .localDir)
            
            remoteDir = try? container.decode(String.self, forKey: .remoteDir)
            
            passwordProtected = try? container.decode(Bool.self, forKey: .passwordProtected)
            
            zipFileRegex = try? container.decode(String.self, forKey: .zipFileRegex)
            
            fileRegex = try? container.decode(String.self, forKey: .fileRegex)
            
            zipFormat = try? container.decode(String.self, forKey: .zipFormat)
            
            archiveConfig = try? container.decode(ArchiveConfig.self, forKey: .archiveConfig)
            
            readAllFiles = try? container.decode(Bool.self, forKey: .readAllFiles)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(host, forKey: .host)
            
            try? container.encodeIfPresent(port, forKey: .port)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            try? container.encodeIfPresent(password, forKey: .password)
            
            try? container.encodeIfPresent(unzip, forKey: .unzip)
            
            try? container.encodeIfPresent(retries, forKey: .retries)
            
            try? container.encodeIfPresent(interval, forKey: .interval)
            
            try? container.encodeIfPresent(privateKeyPath, forKey: .privateKeyPath)
            
            try? container.encodeIfPresent(strictHostKeyChecking, forKey: .strictHostKeyChecking)
            
            try? container.encodeIfPresent(localDir, forKey: .localDir)
            
            try? container.encodeIfPresent(remoteDir, forKey: .remoteDir)
            
            try? container.encodeIfPresent(passwordProtected, forKey: .passwordProtected)
            
            try? container.encodeIfPresent(zipFileRegex, forKey: .zipFileRegex)
            
            try? container.encodeIfPresent(fileRegex, forKey: .fileRegex)
            
            try? container.encodeIfPresent(zipFormat, forKey: .zipFormat)
            
            try? container.encodeIfPresent(archiveConfig, forKey: .archiveConfig)
            
            try? container.encodeIfPresent(readAllFiles, forKey: .readAllFiles)
            
        }
        
    }
    
    /*
        Model: Send
    */

    struct Send: Codable {
        
        
        public var raw: Bool?
        
        public var processed: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case raw = "raw"
            
            case processed = "processed"
            
        }

        public init(processed: Bool?, raw: Bool?) {
            
            self.raw = raw
            
            self.processed = processed
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            raw = try? container.decode(Bool.self, forKey: .raw)
            
            processed = try? container.decode(Bool.self, forKey: .processed)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(raw, forKey: .raw)
            
            try? container.encodeIfPresent(processed, forKey: .processed)
            
        }
        
    }
    
    /*
        Model: StoreConfig
    */

    struct StoreConfig: Codable {
        
        
        public var jobCode: String?
        
        public var storeid: String?
        
        public var storeAlias: String?
        
        public var storeFileRegex: String?
        
        public var storeFileName: String?
        
        public var processConfig: ProcessConfig?
        
        public var properties: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case jobCode = "job_code"
            
            case storeid = "storeid"
            
            case storeAlias = "store_alias"
            
            case storeFileRegex = "store_file_regex"
            
            case storeFileName = "store_file_name"
            
            case processConfig = "process_config"
            
            case properties = "properties"
            
        }

        public init(jobCode: String?, processConfig: ProcessConfig?, properties: [String: Any]?, storeid: String?, storeAlias: String?, storeFileName: String?, storeFileRegex: String?) {
            
            self.jobCode = jobCode
            
            self.storeid = storeid
            
            self.storeAlias = storeAlias
            
            self.storeFileRegex = storeFileRegex
            
            self.storeFileName = storeFileName
            
            self.processConfig = processConfig
            
            self.properties = properties
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            jobCode = try? container.decode(String.self, forKey: .jobCode)
            
            storeid = try? container.decode(String.self, forKey: .storeid)
            
            storeAlias = try? container.decode(String.self, forKey: .storeAlias)
            
            storeFileRegex = try? container.decode(String.self, forKey: .storeFileRegex)
            
            storeFileName = try? container.decode(String.self, forKey: .storeFileName)
            
            processConfig = try? container.decode(ProcessConfig.self, forKey: .processConfig)
            
            properties = try? container.decode([String: Any].self, forKey: .properties)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(jobCode, forKey: .jobCode)
            
            try? container.encodeIfPresent(storeid, forKey: .storeid)
            
            try? container.encodeIfPresent(storeAlias, forKey: .storeAlias)
            
            try? container.encodeIfPresent(storeFileRegex, forKey: .storeFileRegex)
            
            try? container.encodeIfPresent(storeFileName, forKey: .storeFileName)
            
            try? container.encodeIfPresent(processConfig, forKey: .processConfig)
            
            try? container.encodeIfPresent(properties, forKey: .properties)
            
        }
        
    }
    
    /*
        Model: StoreFilter
    */

    struct StoreFilter: Codable {
        
        
        public var includeTags: [String]?
        
        public var excludeTags: [String]?
        
        public var query: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case includeTags = "include_tags"
            
            case excludeTags = "exclude_tags"
            
            case query = "query"
            
        }

        public init(excludeTags: [String]?, includeTags: [String]?, query: [String: Any]?) {
            
            self.includeTags = includeTags
            
            self.excludeTags = excludeTags
            
            self.query = query
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            includeTags = try? container.decode([String].self, forKey: .includeTags)
            
            excludeTags = try? container.decode([String].self, forKey: .excludeTags)
            
            query = try? container.decode([String: Any].self, forKey: .query)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(includeTags, forKey: .includeTags)
            
            try? container.encodeIfPresent(excludeTags, forKey: .excludeTags)
            
            try? container.encodeIfPresent(query, forKey: .query)
            
        }
        
    }
    
    /*
        Model: TaskConfig
    */

    struct TaskConfig: Codable {
        
        
        public var name: String?
        
        public var taskConfigId: Int?
        
        public var taskParams: [TaskParam]?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case taskConfigId = "taskConfigId"
            
            case taskParams = "taskParams"
            
        }

        public init(name: String?, taskConfigId: Int?, taskParams: [TaskParam]?) {
            
            self.name = name
            
            self.taskConfigId = taskConfigId
            
            self.taskParams = taskParams
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            taskConfigId = try? container.decode(Int.self, forKey: .taskConfigId)
            
            taskParams = try? container.decode([TaskParam].self, forKey: .taskParams)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(taskConfigId, forKey: .taskConfigId)
            
            try? container.encodeIfPresent(taskParams, forKey: .taskParams)
            
        }
        
    }
    
    /*
        Model: TaskParam
    */

    struct TaskParam: Codable {
        
        
        public var name: String?
        
        public var value: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case value = "value"
            
        }

        public init(name: String?, value: [String: Any]?) {
            
            self.name = name
            
            self.value = value
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            name = try? container.decode(String.self, forKey: .name)
            
            value = try? container.decode([String: Any].self, forKey: .value)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
        }
        
    }
    
    /*
        Model: TaskStepConfig
    */

    struct TaskStepConfig: Codable {
        
        
        public var taskConfigs: [TaskConfig]?
        
        public var taskConfigIds: [Int]?
        
        public var taskConfigGroupIds: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case taskConfigs = "task_configs"
            
            case taskConfigIds = "task_config_ids"
            
            case taskConfigGroupIds = "task_config_group_ids"
            
        }

        public init(taskConfigs: [TaskConfig]?, taskConfigGroupIds: [Int]?, taskConfigIds: [Int]?) {
            
            self.taskConfigs = taskConfigs
            
            self.taskConfigIds = taskConfigIds
            
            self.taskConfigGroupIds = taskConfigGroupIds
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            taskConfigs = try? container.decode([TaskConfig].self, forKey: .taskConfigs)
            
            taskConfigIds = try? container.decode([Int].self, forKey: .taskConfigIds)
            
            taskConfigGroupIds = try? container.decode([Int].self, forKey: .taskConfigGroupIds)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(taskConfigs, forKey: .taskConfigs)
            
            try? container.encodeIfPresent(taskConfigIds, forKey: .taskConfigIds)
            
            try? container.encodeIfPresent(taskConfigGroupIds, forKey: .taskConfigGroupIds)
            
        }
        
    }
    
    /*
        Model: ResponseEnvelopeListJobConfigDTO
    */

    struct ResponseEnvelopeListJobConfigDTO: Codable {
        
        
        public var timestamp: String?
        
        public var status: Int?
        
        public var error: String?
        
        public var exception: String?
        
        public var message: String?
        
        public var totalTimeTakenInMillis: Int?
        
        public var httpStatus: String?
        
        public var items: [JobConfigDTO]?
        
        public var payload: [JobConfigDTO]?
        
        public var traceId: String?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case timestamp = "timestamp"
            
            case status = "status"
            
            case error = "error"
            
            case exception = "exception"
            
            case message = "message"
            
            case totalTimeTakenInMillis = "total_time_taken_in_millis"
            
            case httpStatus = "http_status"
            
            case items = "items"
            
            case payload = "payload"
            
            case traceId = "trace_id"
            
            case page = "page"
            
        }

        public init(error: String?, exception: String?, httpStatus: String?, items: [JobConfigDTO]?, message: String?, page: Page?, payload: [JobConfigDTO]?, status: Int?, timestamp: String?, totalTimeTakenInMillis: Int?, traceId: String?) {
            
            self.timestamp = timestamp
            
            self.status = status
            
            self.error = error
            
            self.exception = exception
            
            self.message = message
            
            self.totalTimeTakenInMillis = totalTimeTakenInMillis
            
            self.httpStatus = httpStatus
            
            self.items = items
            
            self.payload = payload
            
            self.traceId = traceId
            
            self.page = page
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            timestamp = try? container.decode(String.self, forKey: .timestamp)
            
            status = try? container.decode(Int.self, forKey: .status)
            
            error = try? container.decode(String.self, forKey: .error)
            
            exception = try? container.decode(String.self, forKey: .exception)
            
            message = try? container.decode(String.self, forKey: .message)
            
            totalTimeTakenInMillis = try? container.decode(Int.self, forKey: .totalTimeTakenInMillis)
            
            httpStatus = try? container.decode(String.self, forKey: .httpStatus)
            
            items = try? container.decode([JobConfigDTO].self, forKey: .items)
            
            payload = try? container.decode([JobConfigDTO].self, forKey: .payload)
            
            traceId = try? container.decode(String.self, forKey: .traceId)
            
            page = try? container.decode(Page.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            try? container.encodeIfPresent(exception, forKey: .exception)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(totalTimeTakenInMillis, forKey: .totalTimeTakenInMillis)
            
            try? container.encodeIfPresent(httpStatus, forKey: .httpStatus)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(payload, forKey: .payload)
            
            try? container.encodeIfPresent(traceId, forKey: .traceId)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: ResponseEnvelopeJobConfigDTO
    */

    struct ResponseEnvelopeJobConfigDTO: Codable {
        
        
        public var timestamp: String?
        
        public var status: Int?
        
        public var error: String?
        
        public var exception: String?
        
        public var message: String?
        
        public var totalTimeTakenInMillis: Int?
        
        public var httpStatus: String?
        
        public var items: JobConfigDTO?
        
        public var payload: JobConfigDTO?
        
        public var traceId: String?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case timestamp = "timestamp"
            
            case status = "status"
            
            case error = "error"
            
            case exception = "exception"
            
            case message = "message"
            
            case totalTimeTakenInMillis = "total_time_taken_in_millis"
            
            case httpStatus = "http_status"
            
            case items = "items"
            
            case payload = "payload"
            
            case traceId = "trace_id"
            
            case page = "page"
            
        }

        public init(error: String?, exception: String?, httpStatus: String?, items: JobConfigDTO?, message: String?, page: Page?, payload: JobConfigDTO?, status: Int?, timestamp: String?, totalTimeTakenInMillis: Int?, traceId: String?) {
            
            self.timestamp = timestamp
            
            self.status = status
            
            self.error = error
            
            self.exception = exception
            
            self.message = message
            
            self.totalTimeTakenInMillis = totalTimeTakenInMillis
            
            self.httpStatus = httpStatus
            
            self.items = items
            
            self.payload = payload
            
            self.traceId = traceId
            
            self.page = page
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            timestamp = try? container.decode(String.self, forKey: .timestamp)
            
            status = try? container.decode(Int.self, forKey: .status)
            
            error = try? container.decode(String.self, forKey: .error)
            
            exception = try? container.decode(String.self, forKey: .exception)
            
            message = try? container.decode(String.self, forKey: .message)
            
            totalTimeTakenInMillis = try? container.decode(Int.self, forKey: .totalTimeTakenInMillis)
            
            httpStatus = try? container.decode(String.self, forKey: .httpStatus)
            
            items = try? container.decode(JobConfigDTO.self, forKey: .items)
            
            payload = try? container.decode(JobConfigDTO.self, forKey: .payload)
            
            traceId = try? container.decode(String.self, forKey: .traceId)
            
            page = try? container.decode(Page.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            try? container.encodeIfPresent(exception, forKey: .exception)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(totalTimeTakenInMillis, forKey: .totalTimeTakenInMillis)
            
            try? container.encodeIfPresent(httpStatus, forKey: .httpStatus)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(payload, forKey: .payload)
            
            try? container.encodeIfPresent(traceId, forKey: .traceId)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    /*
        Model: JobConfigListDTO
    */

    struct JobConfigListDTO: Codable {
        
        
        public var code: String?
        
        public var alias: String?
        
        public var modifiedBy: String?
        
        public var createdBy: String?
        
        public var modifiedOn: String?
        
        public var createdOn: String?
        
        public var active: Bool?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case alias = "alias"
            
            case modifiedBy = "modified_by"
            
            case createdBy = "created_by"
            
            case modifiedOn = "modified_on"
            
            case createdOn = "created_on"
            
            case active = "active"
            
            case type = "type"
            
        }

        public init(active: Bool?, alias: String?, code: String?, createdBy: String?, createdOn: String?, modifiedBy: String?, modifiedOn: String?, type: String?) {
            
            self.code = code
            
            self.alias = alias
            
            self.modifiedBy = modifiedBy
            
            self.createdBy = createdBy
            
            self.modifiedOn = modifiedOn
            
            self.createdOn = createdOn
            
            self.active = active
            
            self.type = type
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            code = try? container.decode(String.self, forKey: .code)
            
            alias = try? container.decode(String.self, forKey: .alias)
            
            modifiedBy = try? container.decode(String.self, forKey: .modifiedBy)
            
            createdBy = try? container.decode(String.self, forKey: .createdBy)
            
            modifiedOn = try? container.decode(String.self, forKey: .modifiedOn)
            
            createdOn = try? container.decode(String.self, forKey: .createdOn)
            
            active = try? container.decode(Bool.self, forKey: .active)
            
            type = try? container.decode(String.self, forKey: .type)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(alias, forKey: .alias)
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
        }
        
    }
    
    /*
        Model: ResponseEnvelopeListJobConfigListDTO
    */

    struct ResponseEnvelopeListJobConfigListDTO: Codable {
        
        
        public var timestamp: String?
        
        public var status: Int?
        
        public var error: String?
        
        public var exception: String?
        
        public var message: String?
        
        public var totalTimeTakenInMillis: Int?
        
        public var httpStatus: String?
        
        public var items: [JobConfigListDTO]?
        
        public var payload: [JobConfigListDTO]?
        
        public var traceId: String?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case timestamp = "timestamp"
            
            case status = "status"
            
            case error = "error"
            
            case exception = "exception"
            
            case message = "message"
            
            case totalTimeTakenInMillis = "total_time_taken_in_millis"
            
            case httpStatus = "http_status"
            
            case items = "items"
            
            case payload = "payload"
            
            case traceId = "trace_id"
            
            case page = "page"
            
        }

        public init(error: String?, exception: String?, httpStatus: String?, items: [JobConfigListDTO]?, message: String?, page: Page?, payload: [JobConfigListDTO]?, status: Int?, timestamp: String?, totalTimeTakenInMillis: Int?, traceId: String?) {
            
            self.timestamp = timestamp
            
            self.status = status
            
            self.error = error
            
            self.exception = exception
            
            self.message = message
            
            self.totalTimeTakenInMillis = totalTimeTakenInMillis
            
            self.httpStatus = httpStatus
            
            self.items = items
            
            self.payload = payload
            
            self.traceId = traceId
            
            self.page = page
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            timestamp = try? container.decode(String.self, forKey: .timestamp)
            
            status = try? container.decode(Int.self, forKey: .status)
            
            error = try? container.decode(String.self, forKey: .error)
            
            exception = try? container.decode(String.self, forKey: .exception)
            
            message = try? container.decode(String.self, forKey: .message)
            
            totalTimeTakenInMillis = try? container.decode(Int.self, forKey: .totalTimeTakenInMillis)
            
            httpStatus = try? container.decode(String.self, forKey: .httpStatus)
            
            items = try? container.decode([JobConfigListDTO].self, forKey: .items)
            
            payload = try? container.decode([JobConfigListDTO].self, forKey: .payload)
            
            traceId = try? container.decode(String.self, forKey: .traceId)
            
            page = try? container.decode(Page.self, forKey: .page)
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            try? container.encodeIfPresent(exception, forKey: .exception)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(totalTimeTakenInMillis, forKey: .totalTimeTakenInMillis)
            
            try? container.encodeIfPresent(httpStatus, forKey: .httpStatus)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(payload, forKey: .payload)
            
            try? container.encodeIfPresent(traceId, forKey: .traceId)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    
}