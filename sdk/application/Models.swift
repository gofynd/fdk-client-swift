

/*
    Model: Context,
*/

public struct Context: Decodable {
    
    public let applicationId: String?
    
    public let companyId: String?
    

    enum CodingKeys: String, CodingKey {
        
        case applicationId = "application_id"
        
        case companyId = "company_id"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        applicationId = try? container.decode(String.self, forKey: .applicationId)
        
        companyId = try? container.decode(String.self, forKey: .companyId)
        
    }
}

/*
    Model: CreatedOn,
*/

public struct CreatedOn: Decodable {
    

    enum CodingKeys: String, CodingKey {
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
    }
}

/*
    Model: Asset,
*/

public struct Asset: Decodable {
    
    public let display: String?
    
    public let value: String?
    
    public let type: String?
    

    enum CodingKeys: String, CodingKey {
        
        case display = "display"
        
        case value = "value"
        
        case type = "type"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        display = try? container.decode(String.self, forKey: .display)
        
        value = try? container.decode(String.self, forKey: .value)
        
        type = try? container.decode(String.self, forKey: .type)
        
    }
}

/*
    Model: Content,
*/

public struct Content: Decodable {
    
    public let title: String?
    
    public let description: String?
    
    public let attachments: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case title = "title"
        
        case description = "description"
        
        case attachments = "attachments"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        title = try? container.decode(String.self, forKey: .title)
        
        description = try? container.decode(String.self, forKey: .description)
        
        attachments = try? container.decode([Any].self, forKey: .attachments)
        
    }
}

/*
    Model: APIError,
*/

public struct APIError: Decodable {
    
    public let code: Double?
    
    public let error: [String: Any]?
    
    public let message: String?
    

    enum CodingKeys: String, CodingKey {
        
        case code = "code"
        
        case error = "error"
        
        case message = "message"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        code = try? container.decode(Double.self, forKey: .code)
        
        error = try? container.decode([String: Any].self, forKey: .error)
        
        message = try? container.decode(String.self, forKey: .message)
        
    }
}

/*
    Model: AddTicketPayload,
*/

public struct AddTicketPayload: Decodable {
    
    public let status: String?
    
    public let priority: String?
    
    public let category: String?
    
    public let content: Content?
    

    enum CodingKeys: String, CodingKey {
        
        case status = "status"
        
        case priority = "priority"
        
        case category = "category"
        
        case content = "content"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        status = try? container.decode(String.self, forKey: .status)
        
        priority = try? container.decode(String.self, forKey: .priority)
        
        category = try? container.decode(String.self, forKey: .category)
        
        content = try? container.decode(Content.self, forKey: .content)
        
    }
}

/*
    Model: Priority,
*/

public struct Priority: Decodable {
    
    public let key: String?
    
    public let display: String?
    
    public let color: String?
    

    enum CodingKeys: String, CodingKey {
        
        case key = "key"
        
        case display = "display"
        
        case color = "color"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        key = try? container.decode(String.self, forKey: .key)
        
        display = try? container.decode(String.self, forKey: .display)
        
        color = try? container.decode(String.self, forKey: .color)
        
    }
}

/*
    Model: Status,
*/

public struct Status: Decodable {
    
    public let key: String?
    
    public let display: String?
    
    public let color: String?
    

    enum CodingKeys: String, CodingKey {
        
        case key = "key"
        
        case display = "display"
        
        case color = "color"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        key = try? container.decode(String.self, forKey: .key)
        
        display = try? container.decode(String.self, forKey: .display)
        
        color = try? container.decode(String.self, forKey: .color)
        
    }
}

/*
    Model: Category,
*/

public struct Category: Decodable {
    
    public let key: String?
    
    public let display: String?
    

    enum CodingKeys: String, CodingKey {
        
        case key = "key"
        
        case display = "display"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        key = try? container.decode(String.self, forKey: .key)
        
        display = try? container.decode(String.self, forKey: .display)
        
    }
}

/*
    Model: SubmitButton,
*/

public struct SubmitButton: Decodable {
    
    public let title: String?
    
    public let titleColor: String?
    
    public let backgroundColor: String?
    

    enum CodingKeys: String, CodingKey {
        
        case title = "title"
        
        case titleColor = "title_color"
        
        case backgroundColor = "background_color"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        title = try? container.decode(String.self, forKey: .title)
        
        titleColor = try? container.decode(String.self, forKey: .titleColor)
        
        backgroundColor = try? container.decode(String.self, forKey: .backgroundColor)
        
    }
}

/*
    Model: PollForAssignment,
*/

public struct PollForAssignment: Decodable {
    
    public let duration: Double?
    
    public let message: String?
    
    public let successMessage: String?
    
    public let failureMessage: String?
    

    enum CodingKeys: String, CodingKey {
        
        case duration = "duration"
        
        case message = "message"
        
        case successMessage = "success_message"
        
        case failureMessage = "failure_message"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        duration = try? container.decode(Double.self, forKey: .duration)
        
        message = try? container.decode(String.self, forKey: .message)
        
        successMessage = try? container.decode(String.self, forKey: .successMessage)
        
        failureMessage = try? container.decode(String.self, forKey: .failureMessage)
        
    }
}

/*
    Model: CustomForm,
*/

public struct CustomForm: Decodable {
    
    public let applicationId: String?
    
    public let slug: String?
    
    public let headerImage: String?
    
    public let title: String?
    
    public let description: String?
    
    public let loginRequired: Bool?
    
    public let shouldNotify: Bool?
    
    public let successMessage: String?
    
    public let submitButton: SubmitButton?
    
    public let inputs: [Any]?
    
    public let createdOn: CreatedOn?
    
    public let createdBy: [String: Any]?
    
    public let pollForAssignment: PollForAssignment?
    
    public let id: String?
    
    public let updatedAt: String?
    
    public let createdAt: String?
    

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
        
        applicationId = try? container.decode(String.self, forKey: .applicationId)
        
        slug = try? container.decode(String.self, forKey: .slug)
        
        headerImage = try? container.decode(String.self, forKey: .headerImage)
        
        title = try? container.decode(String.self, forKey: .title)
        
        description = try? container.decode(String.self, forKey: .description)
        
        loginRequired = try? container.decode(Bool.self, forKey: .loginRequired)
        
        shouldNotify = try? container.decode(Bool.self, forKey: .shouldNotify)
        
        successMessage = try? container.decode(String.self, forKey: .successMessage)
        
        submitButton = try? container.decode(SubmitButton.self, forKey: .submitButton)
        
        inputs = try? container.decode([Any].self, forKey: .inputs)
        
        createdOn = try? container.decode(CreatedOn.self, forKey: .createdOn)
        
        createdBy = try? container.decode([String: Any].self, forKey: .createdBy)
        
        pollForAssignment = try? container.decode(PollForAssignment.self, forKey: .pollForAssignment)
        
        id = try? container.decode(String.self, forKey: .id)
        
        updatedAt = try? container.decode(String.self, forKey: .updatedAt)
        
        createdAt = try? container.decode(String.self, forKey: .createdAt)
        
    }
}

/*
    Model: TicketHistory,
*/

public struct TicketHistory: Decodable {
    
    public let type: String?
    
    public let value: [String: Any]?
    
    public let ticketId: String?
    
    public let createdOn: CreatedOn?
    
    public let createdBy: [String: Any]?
    
    public let id: String?
    
    public let updatedAt: String?
    
    public let createdAt: String?
    

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
        
        type = try? container.decode(String.self, forKey: .type)
        
        value = try? container.decode([String: Any].self, forKey: .value)
        
        ticketId = try? container.decode(String.self, forKey: .ticketId)
        
        createdOn = try? container.decode(CreatedOn.self, forKey: .createdOn)
        
        createdBy = try? container.decode([String: Any].self, forKey: .createdBy)
        
        id = try? container.decode(String.self, forKey: .id)
        
        updatedAt = try? container.decode(String.self, forKey: .updatedAt)
        
        createdAt = try? container.decode(String.self, forKey: .createdAt)
        
    }
}

/*
    Model: Ticket,
*/

public struct Ticket: Decodable {
    
    public let context: Context?
    
    public let createdOn: CreatedOn?
    
    public let responseId: String?
    
    public let content: Content?
    
    public let ticketId: String?
    
    public let category: Category?
    
    public let source: String?
    
    public let status: Status?
    
    public let priority: Priority?
    
    public let createdBy: [String: Any]?
    
    public let assignedTo: [String: Any]?
    
    public let tags: [Any]?
    
    public let customJson: [String: Any]?
    
    public let id: String?
    
    public let updatedAt: String?
    
    public let createdAt: String?
    

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
        
        context = try? container.decode(Context.self, forKey: .context)
        
        createdOn = try? container.decode(CreatedOn.self, forKey: .createdOn)
        
        responseId = try? container.decode(String.self, forKey: .responseId)
        
        content = try? container.decode(Content.self, forKey: .content)
        
        ticketId = try? container.decode(String.self, forKey: .ticketId)
        
        category = try? container.decode(Category.self, forKey: .category)
        
        source = try? container.decode(String.self, forKey: .source)
        
        status = try? container.decode(Status.self, forKey: .status)
        
        priority = try? container.decode(Priority.self, forKey: .priority)
        
        createdBy = try? container.decode([String: Any].self, forKey: .createdBy)
        
        assignedTo = try? container.decode([String: Any].self, forKey: .assignedTo)
        
        tags = try? container.decode([Any].self, forKey: .tags)
        
        customJson = try? container.decode([String: Any].self, forKey: .customJson)
        
        id = try? container.decode(String.self, forKey: .id)
        
        updatedAt = try? container.decode(String.self, forKey: .updatedAt)
        
        createdAt = try? container.decode(String.self, forKey: .createdAt)
        
    }
}

