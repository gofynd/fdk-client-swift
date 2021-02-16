

/*
    Model: TicketHistoryPayload,
*/

public struct TicketHistoryPayload: Codable {
    
    public let value: [String: Any]?
    
    public let type: String?
    

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
    Model: CustomFormSubmissionPayload,
*/

public struct CustomFormSubmissionPayload: Codable {
    
    public let response: [[String: Any]]?
    

    enum CodingKeys: String, CodingKey {
        
        case response = "response"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        response = try? container.decode([[String: Any]].self, forKey: .response)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(response, forKey: .response)
        
    }
}

/*
    Model: GetTokenForVideoRoomResponse,
*/

public struct GetTokenForVideoRoomResponse: Codable {
    
    public let accessToken: String?
    

    enum CodingKeys: String, CodingKey {
        
        case accessToken = "access_token"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        accessToken = try? container.decode(String.self, forKey: .accessToken)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(accessToken, forKey: .accessToken)
        
    }
}

/*
    Model: GetParticipantsInsideVideoRoomResponse,
*/

public struct GetParticipantsInsideVideoRoomResponse: Codable {
    
    public let participants: [Any]?
    

    enum CodingKeys: String, CodingKey {
        
        case participants = "participants"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        participants = try? container.decode([Any].self, forKey: .participants)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(participants, forKey: .participants)
        
    }
}

/*
    Model: SubmitCustomFormResponse,
*/

public struct SubmitCustomFormResponse: Codable {
    
    public let ticket: Ticket?
    

    enum CodingKeys: String, CodingKey {
        
        case ticket = "ticket"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        ticket = try? container.decode(Ticket.self, forKey: .ticket)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(ticket, forKey: .ticket)
        
    }
}

/*
    Model: Context,
*/

public struct Context: Codable {
    
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
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(applicationId, forKey: .applicationId)
        
        try? container.encodeIfPresent(companyId, forKey: .companyId)
        
    }
}

/*
    Model: CreatedOn,
*/

public struct CreatedOn: Codable {
    
    public let userAgent: String?
    

    enum CodingKeys: String, CodingKey {
        
        case userAgent = "user_agent"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        userAgent = try? container.decode(String.self, forKey: .userAgent)
        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(userAgent, forKey: .userAgent)
        
    }
}

/*
    Model: Asset,
*/

public struct Asset: Codable {
    
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
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
        try? container.encodeIfPresent(value, forKey: .value)
        
        try? container.encodeIfPresent(type, forKey: .type)
        
    }
}

/*
    Model: Content,
*/

public struct Content: Codable {
    
    public let title: String?
    
    public let description: String?
    
    public let attachments: [Asset]?
    

    enum CodingKeys: String, CodingKey {
        
        case title = "title"
        
        case description = "description"
        
        case attachments = "attachments"
        
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        title = try? container.decode(String.self, forKey: .title)
        
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
    Model: APIError,
*/

public struct APIError: Codable {
    
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
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(code, forKey: .code)
        
        try? container.encodeIfPresent(error, forKey: .error)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
    }
}

/*
    Model: AddTicketPayload,
*/

public struct AddTicketPayload: Codable {
    
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
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(status, forKey: .status)
        
        try? container.encodeIfPresent(priority, forKey: .priority)
        
        try? container.encodeIfPresent(category, forKey: .category)
        
        try? container.encodeIfPresent(content, forKey: .content)
        
    }
}

/*
    Model: Priority,
*/

public struct Priority: Codable {
    
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
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(key, forKey: .key)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
        try? container.encodeIfPresent(color, forKey: .color)
        
    }
}

/*
    Model: Status,
*/

public struct Status: Codable {
    
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
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(key, forKey: .key)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
        try? container.encodeIfPresent(color, forKey: .color)
        
    }
}

/*
    Model: Category,
*/

public struct Category: Codable {
    
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
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(key, forKey: .key)
        
        try? container.encodeIfPresent(display, forKey: .display)
        
    }
}

/*
    Model: SubmitButton,
*/

public struct SubmitButton: Codable {
    
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
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(title, forKey: .title)
        
        try? container.encodeIfPresent(titleColor, forKey: .titleColor)
        
        try? container.encodeIfPresent(backgroundColor, forKey: .backgroundColor)
        
    }
}

/*
    Model: PollForAssignment,
*/

public struct PollForAssignment: Codable {
    
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
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try? container.encodeIfPresent(duration, forKey: .duration)
        
        try? container.encodeIfPresent(message, forKey: .message)
        
        try? container.encodeIfPresent(successMessage, forKey: .successMessage)
        
        try? container.encodeIfPresent(failureMessage, forKey: .failureMessage)
        
    }
}

/*
    Model: CustomForm,
*/

public struct CustomForm: Codable {
    
    public let applicationId: String?
    
    public let slug: String?
    
    public let headerImage: String?
    
    public let title: String?
    
    public let description: String?
    
    public let loginRequired: Bool?
    
    public let shouldNotify: Bool?
    
    public let successMessage: String?
    
    public let submitButton: SubmitButton?
    
    public let inputs: [[String: Any]]?
    
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
        
        inputs = try? container.decode([[String: Any]].self, forKey: .inputs)
        
        createdOn = try? container.decode(CreatedOn.self, forKey: .createdOn)
        
        createdBy = try? container.decode([String: Any].self, forKey: .createdBy)
        
        pollForAssignment = try? container.decode(PollForAssignment.self, forKey: .pollForAssignment)
        
        id = try? container.decode(String.self, forKey: .id)
        
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
    Model: TicketHistory,
*/

public struct TicketHistory: Codable {
    
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
    Model: Ticket,
*/

public struct Ticket: Codable {
    
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
    
    public let tags: [String]?
    
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

