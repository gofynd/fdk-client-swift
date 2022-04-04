import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: TicketList
         Used By: Lead
     */
    class TicketList: Codable {
        public var items: [Ticket]?

        public var filters: Filter?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case filters

            case page
        }

        public init(filters: Filter? = nil, items: [Ticket]? = nil, page: Page? = nil) {
            self.items = items

            self.filters = filters

            self.page = page
        }

        public func duplicate() -> TicketList {
            let dict = self.dictionary!
            let copy = TicketList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([Ticket].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode(Filter.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: Page
         Used By: Lead
     */
    class Page: Codable {
        public var itemTotal: Int?

        public var nextId: String?

        public var hasPrevious: Bool?

        public var hasNext: Bool?

        public var current: Int?

        public var type: String

        public var size: Int?

        public enum CodingKeys: String, CodingKey {
            case itemTotal = "item_total"

            case nextId = "next_id"

            case hasPrevious = "has_previous"

            case hasNext = "has_next"

            case current

            case type

            case size
        }

        public init(current: Int? = nil, hasNext: Bool? = nil, hasPrevious: Bool? = nil, itemTotal: Int? = nil, nextId: String? = nil, size: Int? = nil, type: String) {
            self.itemTotal = itemTotal

            self.nextId = nextId

            self.hasPrevious = hasPrevious

            self.hasNext = hasNext

            self.current = current

            self.type = type

            self.size = size
        }

        public func duplicate() -> Page {
            let dict = self.dictionary!
            let copy = Page(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nextId = try container.decode(String.self, forKey: .nextId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasNext = try container.decode(Bool.self, forKey: .hasNext)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                current = try container.decode(Int.self, forKey: .current)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            do {
                size = try container.decode(Int.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(nextId, forKey: .nextId)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }

    /*
         Model: TicketHistoryList
         Used By: Lead
     */
    class TicketHistoryList: Codable {
        public var items: [TicketHistory]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [TicketHistory]? = nil, page: Page? = nil) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> TicketHistoryList {
            let dict = self.dictionary!
            let copy = TicketHistoryList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([TicketHistory].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: CustomFormList
         Used By: Lead
     */
    class CustomFormList: Codable {
        public var items: [CustomForm]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [CustomForm]? = nil, page: Page? = nil) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> CustomFormList {
            let dict = self.dictionary!
            let copy = CustomFormList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([CustomForm].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: CreateCustomFormPayload
         Used By: Lead
     */
    class CreateCustomFormPayload: Codable {
        public var slug: String

        public var title: String

        public var inputs: [[String: Any]]

        public var description: String?

        public var headerImage: String?

        public var priority: PriorityEnum

        public var shouldNotify: Bool?

        public var successMessage: String?

        public var pollForAssignment: PollForAssignment?

        public enum CodingKeys: String, CodingKey {
            case slug

            case title

            case inputs

            case description

            case headerImage = "header_image"

            case priority

            case shouldNotify = "should_notify"

            case successMessage = "success_message"

            case pollForAssignment = "poll_for_assignment"
        }

        public init(description: String? = nil, headerImage: String? = nil, inputs: [[String: Any]], pollForAssignment: PollForAssignment? = nil, priority: PriorityEnum, shouldNotify: Bool? = nil, slug: String, successMessage: String? = nil, title: String) {
            self.slug = slug

            self.title = title

            self.inputs = inputs

            self.description = description

            self.headerImage = headerImage

            self.priority = priority

            self.shouldNotify = shouldNotify

            self.successMessage = successMessage

            self.pollForAssignment = pollForAssignment
        }

        public func duplicate() -> CreateCustomFormPayload {
            let dict = self.dictionary!
            let copy = CreateCustomFormPayload(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            slug = try container.decode(String.self, forKey: .slug)

            title = try container.decode(String.self, forKey: .title)

            inputs = try container.decode([[String: Any]].self, forKey: .inputs)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headerImage = try container.decode(String.self, forKey: .headerImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priority = try container.decode(PriorityEnum.self, forKey: .priority)

            do {
                shouldNotify = try container.decode(Bool.self, forKey: .shouldNotify)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                successMessage = try container.decode(String.self, forKey: .successMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pollForAssignment = try container.decode(PollForAssignment.self, forKey: .pollForAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(inputs, forKey: .inputs)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(headerImage, forKey: .headerImage)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(shouldNotify, forKey: .shouldNotify)

            try? container.encodeIfPresent(successMessage, forKey: .successMessage)

            try? container.encodeIfPresent(pollForAssignment, forKey: .pollForAssignment)
        }
    }

    /*
         Model: EditCustomFormPayload
         Used By: Lead
     */
    class EditCustomFormPayload: Codable {
        public var title: String

        public var inputs: [[String: Any]]

        public var description: String?

        public var priority: PriorityEnum

        public var headerImage: String?

        public var shouldNotify: Bool?

        public var loginRequired: Bool?

        public var successMessage: String?

        public var pollForAssignment: PollForAssignment?

        public enum CodingKeys: String, CodingKey {
            case title

            case inputs

            case description

            case priority

            case headerImage = "header_image"

            case shouldNotify = "should_notify"

            case loginRequired = "login_required"

            case successMessage = "success_message"

            case pollForAssignment = "poll_for_assignment"
        }

        public init(description: String? = nil, headerImage: String? = nil, inputs: [[String: Any]], loginRequired: Bool? = nil, pollForAssignment: PollForAssignment? = nil, priority: PriorityEnum, shouldNotify: Bool? = nil, successMessage: String? = nil, title: String) {
            self.title = title

            self.inputs = inputs

            self.description = description

            self.priority = priority

            self.headerImage = headerImage

            self.shouldNotify = shouldNotify

            self.loginRequired = loginRequired

            self.successMessage = successMessage

            self.pollForAssignment = pollForAssignment
        }

        public func duplicate() -> EditCustomFormPayload {
            let dict = self.dictionary!
            let copy = EditCustomFormPayload(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            title = try container.decode(String.self, forKey: .title)

            inputs = try container.decode([[String: Any]].self, forKey: .inputs)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priority = try container.decode(PriorityEnum.self, forKey: .priority)

            do {
                headerImage = try container.decode(String.self, forKey: .headerImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shouldNotify = try container.decode(Bool.self, forKey: .shouldNotify)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                loginRequired = try container.decode(Bool.self, forKey: .loginRequired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                successMessage = try container.decode(String.self, forKey: .successMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pollForAssignment = try container.decode(PollForAssignment.self, forKey: .pollForAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(inputs, forKey: .inputs)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(headerImage, forKey: .headerImage)

            try? container.encodeIfPresent(shouldNotify, forKey: .shouldNotify)

            try? container.encodeIfPresent(loginRequired, forKey: .loginRequired)

            try? container.encodeIfPresent(successMessage, forKey: .successMessage)

            try? container.encodeIfPresent(pollForAssignment, forKey: .pollForAssignment)
        }
    }

    /*
         Model: EditTicketPayload
         Used By: Lead
     */
    class EditTicketPayload: Codable {
        public var content: TicketContent?

        public var category: String?

        public var subCategory: String?

        public var source: String?

        public var status: String?

        public var priority: PriorityEnum?

        public var assignedTo: AgentChangePayload?

        public var tags: [String]?

        public enum CodingKeys: String, CodingKey {
            case content

            case category

            case subCategory = "sub_category"

            case source

            case status

            case priority

            case assignedTo = "assigned_to"

            case tags
        }

        public init(assignedTo: AgentChangePayload? = nil, category: String? = nil, content: TicketContent? = nil, priority: PriorityEnum? = nil, source: String? = nil, status: String? = nil, subCategory: String? = nil, tags: [String]? = nil) {
            self.content = content

            self.category = category

            self.subCategory = subCategory

            self.source = source

            self.status = status

            self.priority = priority

            self.assignedTo = assignedTo

            self.tags = tags
        }

        public func duplicate() -> EditTicketPayload {
            let dict = self.dictionary!
            let copy = EditTicketPayload(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                content = try container.decode(TicketContent.self, forKey: .content)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                category = try container.decode(String.self, forKey: .category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subCategory = try container.decode(String.self, forKey: .subCategory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                source = try container.decode(String.self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priority = try container.decode(PriorityEnum.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                assignedTo = try container.decode(AgentChangePayload.self, forKey: .assignedTo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(content, forKey: .content)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(subCategory, forKey: .subCategory)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(assignedTo, forKey: .assignedTo)

            try? container.encodeIfPresent(tags, forKey: .tags)
        }
    }

    /*
         Model: AgentChangePayload
         Used By: Lead
     */
    class AgentChangePayload: Codable {
        public var agentId: String

        public enum CodingKeys: String, CodingKey {
            case agentId = "agent_id"
        }

        public init(agentId: String) {
            self.agentId = agentId
        }

        public func duplicate() -> AgentChangePayload {
            let dict = self.dictionary!
            let copy = AgentChangePayload(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
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
         Used By: Lead
     */
    class CreateVideoRoomResponse: Codable {
        public var uniqueName: String

        public enum CodingKeys: String, CodingKey {
            case uniqueName = "unique_name"
        }

        public init(uniqueName: String) {
            self.uniqueName = uniqueName
        }

        public func duplicate() -> CreateVideoRoomResponse {
            let dict = self.dictionary!
            let copy = CreateVideoRoomResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
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
         Used By: Lead
     */
    class CloseVideoRoomResponse: Codable {
        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case success
        }

        public init(success: Bool) {
            self.success = success
        }

        public func duplicate() -> CloseVideoRoomResponse {
            let dict = self.dictionary!
            let copy = CloseVideoRoomResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
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
         Used By: Lead
     */
    class CreateVideoRoomPayload: Codable {
        public var uniqueName: String

        public var notify: [NotifyUser]?

        public enum CodingKeys: String, CodingKey {
            case uniqueName = "unique_name"

            case notify
        }

        public init(notify: [NotifyUser]? = nil, uniqueName: String) {
            self.uniqueName = uniqueName

            self.notify = notify
        }

        public func duplicate() -> CreateVideoRoomPayload {
            let dict = self.dictionary!
            let copy = CreateVideoRoomPayload(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uniqueName = try container.decode(String.self, forKey: .uniqueName)

            do {
                notify = try container.decode([NotifyUser].self, forKey: .notify)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uniqueName, forKey: .uniqueName)

            try? container.encodeIfPresent(notify, forKey: .notify)
        }
    }

    /*
         Model: NotifyUser
         Used By: Lead
     */
    class NotifyUser: Codable {
        public var countryCode: String

        public var phoneNumber: String

        public enum CodingKeys: String, CodingKey {
            case countryCode = "country_code"

            case phoneNumber = "phone_number"
        }

        public init(countryCode: String, phoneNumber: String) {
            self.countryCode = countryCode

            self.phoneNumber = phoneNumber
        }

        public func duplicate() -> NotifyUser {
            let dict = self.dictionary!
            let copy = NotifyUser(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        }
    }

    /*
         Model: Filter
         Used By: Lead
     */
    class Filter: Codable {
        public var priorities: [Priority]

        public var categories: [TicketCategory]?

        public var statuses: [Status]

        public var assignees: [[String: Any]]

        public enum CodingKeys: String, CodingKey {
            case priorities

            case categories

            case statuses

            case assignees
        }

        public init(assignees: [[String: Any]], categories: [TicketCategory]? = nil, priorities: [Priority], statuses: [Status]) {
            self.priorities = priorities

            self.categories = categories

            self.statuses = statuses

            self.assignees = assignees
        }

        public func duplicate() -> Filter {
            let dict = self.dictionary!
            let copy = Filter(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priorities = try container.decode([Priority].self, forKey: .priorities)

            do {
                categories = try container.decode([TicketCategory].self, forKey: .categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            statuses = try container.decode([Status].self, forKey: .statuses)

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
         Used By: Lead
     */
    class TicketHistoryPayload: Codable {
        public var value: [String: Any]

        public var type: HistoryTypeEnum

        public enum CodingKeys: String, CodingKey {
            case value

            case type
        }

        public init(type: HistoryTypeEnum, value: [String: Any]) {
            self.value = value

            self.type = type
        }

        public func duplicate() -> TicketHistoryPayload {
            let dict = self.dictionary!
            let copy = TicketHistoryPayload(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode([String: Any].self, forKey: .value)

            type = try container.decode(HistoryTypeEnum.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: CustomFormSubmissionPayload
         Used By: Lead
     */
    class CustomFormSubmissionPayload: Codable {
        public var response: [[String: Any]]

        public var attachments: [TicketAsset]?

        public enum CodingKeys: String, CodingKey {
            case response

            case attachments
        }

        public init(attachments: [TicketAsset]? = nil, response: [[String: Any]]) {
            self.response = response

            self.attachments = attachments
        }

        public func duplicate() -> CustomFormSubmissionPayload {
            let dict = self.dictionary!
            let copy = CustomFormSubmissionPayload(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            response = try container.decode([[String: Any]].self, forKey: .response)

            do {
                attachments = try container.decode([TicketAsset].self, forKey: .attachments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(response, forKey: .response)

            try? container.encodeIfPresent(attachments, forKey: .attachments)
        }
    }

    /*
         Model: GetTokenForVideoRoomResponse
         Used By: Lead
     */
    class GetTokenForVideoRoomResponse: Codable {
        public var accessToken: String

        public enum CodingKeys: String, CodingKey {
            case accessToken = "access_token"
        }

        public init(accessToken: String) {
            self.accessToken = accessToken
        }

        public func duplicate() -> GetTokenForVideoRoomResponse {
            let dict = self.dictionary!
            let copy = GetTokenForVideoRoomResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
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
         Used By: Lead
     */
    class GetParticipantsInsideVideoRoomResponse: Codable {
        public var participants: [Participant]

        public enum CodingKeys: String, CodingKey {
            case participants
        }

        public init(participants: [Participant]) {
            self.participants = participants
        }

        public func duplicate() -> GetParticipantsInsideVideoRoomResponse {
            let dict = self.dictionary!
            let copy = GetParticipantsInsideVideoRoomResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            participants = try container.decode([Participant].self, forKey: .participants)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(participants, forKey: .participants)
        }
    }

    /*
         Model: Participant
         Used By: Lead
     */
    class Participant: Codable {
        public var user: UserSchema?

        public var identity: String?

        public var status: String?

        public enum CodingKeys: String, CodingKey {
            case user

            case identity

            case status
        }

        public init(identity: String? = nil, status: String? = nil, user: UserSchema? = nil) {
            self.user = user

            self.identity = identity

            self.status = status
        }

        public func duplicate() -> Participant {
            let dict = self.dictionary!
            let copy = Participant(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                user = try container.decode(UserSchema.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identity = try container.decode(String.self, forKey: .identity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(identity, forKey: .identity)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }

    /*
         Model: PhoneNumber
         Used By: Lead
     */
    class PhoneNumber: Codable {
        public var active: Bool?

        public var primary: Bool?

        public var verified: Bool?

        public var phone: String?

        public var countryCode: Int?

        public enum CodingKeys: String, CodingKey {
            case active

            case primary

            case verified

            case phone

            case countryCode = "country_code"
        }

        public init(active: Bool? = nil, countryCode: Int? = nil, phone: String? = nil, primary: Bool? = nil, verified: Bool? = nil) {
            self.active = active

            self.primary = primary

            self.verified = verified

            self.phone = phone

            self.countryCode = countryCode
        }

        public func duplicate() -> PhoneNumber {
            let dict = self.dictionary!
            let copy = PhoneNumber(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                primary = try container.decode(Bool.self, forKey: .primary)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phone = try container.decode(String.self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryCode = try container.decode(Int.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(primary, forKey: .primary)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
        }
    }

    /*
         Model: Email
         Used By: Lead
     */
    class Email: Codable {
        public var primary: Bool?

        public var verified: Bool?

        public var email: String?

        public var active: Bool?

        public enum CodingKeys: String, CodingKey {
            case primary

            case verified

            case email

            case active
        }

        public init(active: Bool? = nil, email: String? = nil, primary: Bool? = nil, verified: Bool? = nil) {
            self.primary = primary

            self.verified = verified

            self.email = email

            self.active = active
        }

        public func duplicate() -> Email {
            let dict = self.dictionary!
            let copy = Email(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                primary = try container.decode(Bool.self, forKey: .primary)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(primary, forKey: .primary)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(active, forKey: .active)
        }
    }

    /*
         Model: Debug
         Used By: Lead
     */
    class Debug: Codable {
        public var source: String?

        public var platform: String?

        public enum CodingKeys: String, CodingKey {
            case source

            case platform
        }

        public init(platform: String? = nil, source: String? = nil) {
            self.source = source

            self.platform = platform
        }

        public func duplicate() -> Debug {
            let dict = self.dictionary!
            let copy = Debug(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                source = try container.decode(String.self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platform = try container.decode(String.self, forKey: .platform)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(platform, forKey: .platform)
        }
    }

    /*
         Model: SubmitCustomFormResponse
         Used By: Lead
     */
    class SubmitCustomFormResponse: Codable {
        public var message: String

        public var ticket: Ticket

        public enum CodingKeys: String, CodingKey {
            case message

            case ticket
        }

        public init(message: String, ticket: Ticket) {
            self.message = message

            self.ticket = ticket
        }

        public func duplicate() -> SubmitCustomFormResponse {
            let dict = self.dictionary!
            let copy = SubmitCustomFormResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            ticket = try container.decode(Ticket.self, forKey: .ticket)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(ticket, forKey: .ticket)
        }
    }

    /*
         Model: TicketContext
         Used By: Lead
     */
    class TicketContext: Codable {
        public var applicationId: String?

        public var companyId: String

        public enum CodingKeys: String, CodingKey {
            case applicationId = "application_id"

            case companyId = "company_id"
        }

        public init(applicationId: String? = nil, companyId: String) {
            self.applicationId = applicationId

            self.companyId = companyId
        }

        public func duplicate() -> TicketContext {
            let dict = self.dictionary!
            let copy = TicketContext(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
         Used By: Lead
     */
    class CreatedOn: Codable {
        public var userAgent: String

        public enum CodingKeys: String, CodingKey {
            case userAgent = "user_agent"
        }

        public init(userAgent: String) {
            self.userAgent = userAgent
        }

        public func duplicate() -> CreatedOn {
            let dict = self.dictionary!
            let copy = CreatedOn(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            userAgent = try container.decode(String.self, forKey: .userAgent)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)
        }
    }

    /*
         Model: TicketAsset
         Used By: Lead
     */
    class TicketAsset: Codable {
        public var display: String?

        public var value: String

        public var type: TicketAssetTypeEnum

        public enum CodingKeys: String, CodingKey {
            case display

            case value

            case type
        }

        public init(display: String? = nil, type: TicketAssetTypeEnum, value: String) {
            self.display = display

            self.value = value

            self.type = type
        }

        public func duplicate() -> TicketAsset {
            let dict = self.dictionary!
            let copy = TicketAsset(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(String.self, forKey: .value)

            type = try container.decode(TicketAssetTypeEnum.self, forKey: .type)
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
         Used By: Lead
     */
    class TicketContent: Codable {
        public var title: String

        public var description: String?

        public var attachments: [TicketAsset]?

        public enum CodingKeys: String, CodingKey {
            case title

            case description

            case attachments
        }

        public init(attachments: [TicketAsset]? = nil, description: String? = nil, title: String) {
            self.title = title

            self.description = description

            self.attachments = attachments
        }

        public func duplicate() -> TicketContent {
            let dict = self.dictionary!
            let copy = TicketContent(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            title = try container.decode(String.self, forKey: .title)

            do {
                description = try container.decode(String.self, forKey: .description)

                if let strong_description = description,
                   let descriptionData = Data(base64Encoded: strong_description)
                {
                    description = String(data: descriptionData, encoding: .utf8) ?? description
                }

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attachments = try container.decode([TicketAsset].self, forKey: .attachments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(description?.asBase64, forKey: .description)

            try? container.encodeIfPresent(attachments, forKey: .attachments)
        }
    }

    /*
         Model: AddTicketPayload
         Used By: Lead
     */
    class AddTicketPayload: Codable {
        public var createdBy: [String: Any]?

        public var status: String?

        public var priority: PriorityEnum?

        public var category: String

        public var content: TicketContent

        public enum CodingKeys: String, CodingKey {
            case createdBy = "created_by"

            case status

            case priority

            case category

            case content
        }

        public init(category: String, content: TicketContent, createdBy: [String: Any]? = nil, priority: PriorityEnum? = nil, status: String? = nil) {
            self.createdBy = createdBy

            self.status = status

            self.priority = priority

            self.category = category

            self.content = content
        }

        public func duplicate() -> AddTicketPayload {
            let dict = self.dictionary!
            let copy = AddTicketPayload(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priority = try container.decode(PriorityEnum.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            category = try container.decode(String.self, forKey: .category)

            content = try container.decode(TicketContent.self, forKey: .content)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(content, forKey: .content)
        }
    }

    /*
         Model: Priority
         Used By: Lead
     */
    class Priority: Codable {
        public var key: PriorityEnum

        public var display: String

        public var color: String

        public enum CodingKeys: String, CodingKey {
            case key

            case display

            case color
        }

        public init(color: String, display: String, key: PriorityEnum) {
            self.key = key

            self.display = display

            self.color = color
        }

        public func duplicate() -> Priority {
            let dict = self.dictionary!
            let copy = Priority(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(PriorityEnum.self, forKey: .key)

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
         Used By: Lead
     */
    class Status: Codable {
        public var key: String

        public var display: String

        public var color: String

        public enum CodingKeys: String, CodingKey {
            case key

            case display

            case color
        }

        public init(color: String, display: String, key: String) {
            self.key = key

            self.display = display

            self.color = color
        }

        public func duplicate() -> Status {
            let dict = self.dictionary!
            let copy = Status(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
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
         Model: TicketCategory
         Used By: Lead
     */
    class TicketCategory: Codable {
        public var key: String

        public var display: String

        public var form: CustomForm?

        public var subCategories: [TicketSubCategory]?

        public var feedbackForm: TicketFeedbackForm?

        public enum CodingKeys: String, CodingKey {
            case key

            case display

            case form

            case subCategories = "sub_categories"

            case feedbackForm = "feedback_form"
        }

        public init(display: String, feedbackForm: TicketFeedbackForm? = nil, form: CustomForm? = nil, key: String, subCategories: [TicketSubCategory]? = nil) {
            self.key = key

            self.display = display

            self.form = form

            self.subCategories = subCategories

            self.feedbackForm = feedbackForm
        }

        public func duplicate() -> TicketCategory {
            let dict = self.dictionary!
            let copy = TicketCategory(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            display = try container.decode(String.self, forKey: .display)

            do {
                form = try container.decode(CustomForm.self, forKey: .form)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subCategories = try container.decode([TicketSubCategory].self, forKey: .subCategories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                feedbackForm = try container.decode(TicketFeedbackForm.self, forKey: .feedbackForm)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(form, forKey: .form)

            try? container.encodeIfPresent(subCategories, forKey: .subCategories)

            try? container.encodeIfPresent(feedbackForm, forKey: .feedbackForm)
        }
    }

    /*
         Model: TicketSubCategory
         Used By: Lead
     */
    class TicketSubCategory: Codable {
        public var key: String

        public var display: String

        public enum CodingKeys: String, CodingKey {
            case key

            case display
        }

        public init(display: String, key: String) {
            self.key = key

            self.display = display
        }

        public func duplicate() -> TicketSubCategory {
            let dict = self.dictionary!
            let copy = TicketSubCategory(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            display = try container.decode(String.self, forKey: .display)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }

    /*
         Model: TicketFeedbackForm
         Used By: Lead
     */
    class TicketFeedbackForm: Codable {
        public var title: String

        public var display: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case title

            case display
        }

        public init(display: [[String: Any]]? = nil, title: String) {
            self.title = title

            self.display = display
        }

        public func duplicate() -> TicketFeedbackForm {
            let dict = self.dictionary!
            let copy = TicketFeedbackForm(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            title = try container.decode(String.self, forKey: .title)

            do {
                display = try container.decode([[String: Any]].self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }

    /*
         Model: TicketFeedbackList
         Used By: Lead
     */
    class TicketFeedbackList: Codable {
        public var items: [TicketFeedback]?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: [TicketFeedback]? = nil) {
            self.items = items
        }

        public func duplicate() -> TicketFeedbackList {
            let dict = self.dictionary!
            let copy = TicketFeedbackList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([TicketFeedback].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: TicketFeedbackPayload
         Used By: Lead
     */
    class TicketFeedbackPayload: Codable {
        public var formResponse: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case formResponse = "form_response"
        }

        public init(formResponse: [String: Any]? = nil) {
            self.formResponse = formResponse
        }

        public func duplicate() -> TicketFeedbackPayload {
            let dict = self.dictionary!
            let copy = TicketFeedbackPayload(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                formResponse = try container.decode([String: Any].self, forKey: .formResponse)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(formResponse, forKey: .formResponse)
        }
    }

    /*
         Model: SubmitButton
         Used By: Lead
     */
    class SubmitButton: Codable {
        public var title: String

        public var titleColor: String

        public var backgroundColor: String

        public enum CodingKeys: String, CodingKey {
            case title

            case titleColor = "title_color"

            case backgroundColor = "background_color"
        }

        public init(backgroundColor: String, title: String, titleColor: String) {
            self.title = title

            self.titleColor = titleColor

            self.backgroundColor = backgroundColor
        }

        public func duplicate() -> SubmitButton {
            let dict = self.dictionary!
            let copy = SubmitButton(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
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
         Used By: Lead
     */
    class PollForAssignment: Codable {
        public var duration: Double

        public var message: String

        public var successMessage: String

        public var failureMessage: String

        public enum CodingKeys: String, CodingKey {
            case duration

            case message

            case successMessage = "success_message"

            case failureMessage = "failure_message"
        }

        public init(duration: Double, failureMessage: String, message: String, successMessage: String) {
            self.duration = duration

            self.message = message

            self.successMessage = successMessage

            self.failureMessage = failureMessage
        }

        public func duplicate() -> PollForAssignment {
            let dict = self.dictionary!
            let copy = PollForAssignment(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
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
         Used By: Lead
     */
    class CustomForm: Codable {
        public var applicationId: String

        public var slug: String

        public var headerImage: String?

        public var title: String

        public var description: String?

        public var priority: Priority

        public var loginRequired: Bool

        public var shouldNotify: Bool

        public var successMessage: String?

        public var submitButton: SubmitButton?

        public var inputs: [[String: Any]]

        public var createdOn: CreatedOn?

        public var pollForAssignment: PollForAssignment?

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case applicationId = "application_id"

            case slug

            case headerImage = "header_image"

            case title

            case description

            case priority

            case loginRequired = "login_required"

            case shouldNotify = "should_notify"

            case successMessage = "success_message"

            case submitButton = "submit_button"

            case inputs

            case createdOn = "created_on"

            case pollForAssignment = "poll_for_assignment"

            case id = "_id"
        }

        public init(applicationId: String, createdOn: CreatedOn? = nil, description: String? = nil, headerImage: String? = nil, inputs: [[String: Any]], loginRequired: Bool, pollForAssignment: PollForAssignment? = nil, priority: Priority, shouldNotify: Bool, slug: String, submitButton: SubmitButton? = nil, successMessage: String? = nil, title: String, id: String) {
            self.applicationId = applicationId

            self.slug = slug

            self.headerImage = headerImage

            self.title = title

            self.description = description

            self.priority = priority

            self.loginRequired = loginRequired

            self.shouldNotify = shouldNotify

            self.successMessage = successMessage

            self.submitButton = submitButton

            self.inputs = inputs

            self.createdOn = createdOn

            self.pollForAssignment = pollForAssignment

            self.id = id
        }

        public func duplicate() -> CustomForm {
            let dict = self.dictionary!
            let copy = CustomForm(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                headerImage = try container.decode(String.self, forKey: .headerImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priority = try container.decode(Priority.self, forKey: .priority)

            loginRequired = try container.decode(Bool.self, forKey: .loginRequired)

            shouldNotify = try container.decode(Bool.self, forKey: .shouldNotify)

            do {
                successMessage = try container.decode(String.self, forKey: .successMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                submitButton = try container.decode(SubmitButton.self, forKey: .submitButton)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            inputs = try container.decode([[String: Any]].self, forKey: .inputs)

            do {
                createdOn = try container.decode(CreatedOn.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pollForAssignment = try container.decode(PollForAssignment.self, forKey: .pollForAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(headerImage, forKey: .headerImage)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(loginRequired, forKey: .loginRequired)

            try? container.encodeIfPresent(shouldNotify, forKey: .shouldNotify)

            try? container.encodeIfPresent(successMessage, forKey: .successMessage)

            try? container.encodeIfPresent(submitButton, forKey: .submitButton)

            try? container.encodeIfPresent(inputs, forKey: .inputs)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(pollForAssignment, forKey: .pollForAssignment)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }

    /*
         Model: FeedbackResponseItem
         Used By: Lead
     */
    class FeedbackResponseItem: Codable {
        public var display: String

        public var key: String

        public var value: String

        public enum CodingKeys: String, CodingKey {
            case display

            case key

            case value
        }

        public init(display: String, key: String, value: String) {
            self.display = display

            self.key = key

            self.value = value
        }

        public func duplicate() -> FeedbackResponseItem {
            let dict = self.dictionary!
            let copy = FeedbackResponseItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            display = try container.decode(String.self, forKey: .display)

            key = try container.decode(String.self, forKey: .key)

            value = try container.decode(String.self, forKey: .value)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: TicketFeedback
         Used By: Lead
     */
    class TicketFeedback: Codable {
        public var id: String

        public var ticketId: String

        public var companyId: String

        public var response: [FeedbackResponseItem]

        public var category: String?

        public var user: [String: Any]?

        public var updatedAt: String?

        public var createdAt: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case ticketId = "ticket_id"

            case companyId = "company_id"

            case response

            case category

            case user

            case updatedAt = "updated_at"

            case createdAt = "created_at"
        }

        public init(category: String? = nil, companyId: String, createdAt: String? = nil, response: [FeedbackResponseItem], ticketId: String, updatedAt: String? = nil, user: [String: Any]? = nil, id: String) {
            self.id = id

            self.ticketId = ticketId

            self.companyId = companyId

            self.response = response

            self.category = category

            self.user = user

            self.updatedAt = updatedAt

            self.createdAt = createdAt
        }

        public func duplicate() -> TicketFeedback {
            let dict = self.dictionary!
            let copy = TicketFeedback(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            ticketId = try container.decode(String.self, forKey: .ticketId)

            companyId = try container.decode(String.self, forKey: .companyId)

            response = try container.decode([FeedbackResponseItem].self, forKey: .response)

            do {
                category = try container.decode(String.self, forKey: .category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                user = try container.decode([String: Any].self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(ticketId, forKey: .ticketId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(response, forKey: .response)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }

    /*
         Model: TicketHistory
         Used By: Lead
     */
    class TicketHistory: Codable {
        public var type: String

        public var value: [String: Any]

        public var ticketId: String

        public var createdOn: CreatedOn?

        public var createdBy: [String: Any]?

        public var id: String

        public var updatedAt: String?

        public var createdAt: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case value

            case ticketId = "ticket_id"

            case createdOn = "created_on"

            case createdBy = "created_by"

            case id = "_id"

            case updatedAt = "updated_at"

            case createdAt = "created_at"
        }

        public init(createdAt: String? = nil, createdBy: [String: Any]? = nil, createdOn: CreatedOn? = nil, ticketId: String, type: String, updatedAt: String? = nil, value: [String: Any], id: String) {
            self.type = type

            self.value = value

            self.ticketId = ticketId

            self.createdOn = createdOn

            self.createdBy = createdBy

            self.id = id

            self.updatedAt = updatedAt

            self.createdAt = createdAt
        }

        public func duplicate() -> TicketHistory {
            let dict = self.dictionary!
            let copy = TicketHistory(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            value = try container.decode([String: Any].self, forKey: .value)

            ticketId = try container.decode(String.self, forKey: .ticketId)

            do {
                createdOn = try container.decode(CreatedOn.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
         Used By: Lead
     */
    class Ticket: Codable {
        public var context: TicketContext?

        public var createdOn: CreatedOn?

        public var responseId: String?

        public var content: TicketContent?

        public var ticketId: String

        public var category: TicketCategory

        public var subCategory: TicketSubCategory?

        public var source: TicketSourceEnum

        public var status: Status

        public var priority: Priority

        public var createdBy: [String: Any]?

        public var assignedTo: [String: Any]?

        public var tags: [String]?

        public var customJson: [String: Any]?

        public var isFeedbackPending: Bool?

        public var id: String

        public var updatedAt: String?

        public var createdAt: String?

        public enum CodingKeys: String, CodingKey {
            case context

            case createdOn = "created_on"

            case responseId = "response_id"

            case content

            case ticketId = "ticket_id"

            case category

            case subCategory = "sub_category"

            case source

            case status

            case priority

            case createdBy = "created_by"

            case assignedTo = "assigned_to"

            case tags

            case customJson = "_custom_json"

            case isFeedbackPending = "is_feedback_pending"

            case id = "_id"

            case updatedAt = "updated_at"

            case createdAt = "created_at"
        }

        public init(assignedTo: [String: Any]? = nil, category: TicketCategory, content: TicketContent? = nil, context: TicketContext? = nil, createdAt: String? = nil, createdBy: [String: Any]? = nil, createdOn: CreatedOn? = nil, isFeedbackPending: Bool? = nil, priority: Priority, responseId: String? = nil, source: TicketSourceEnum, status: Status, subCategory: TicketSubCategory? = nil, tags: [String]? = nil, ticketId: String, updatedAt: String? = nil, customJson: [String: Any]? = nil, id: String) {
            self.context = context

            self.createdOn = createdOn

            self.responseId = responseId

            self.content = content

            self.ticketId = ticketId

            self.category = category

            self.subCategory = subCategory

            self.source = source

            self.status = status

            self.priority = priority

            self.createdBy = createdBy

            self.assignedTo = assignedTo

            self.tags = tags

            self.customJson = customJson

            self.isFeedbackPending = isFeedbackPending

            self.id = id

            self.updatedAt = updatedAt

            self.createdAt = createdAt
        }

        public func duplicate() -> Ticket {
            let dict = self.dictionary!
            let copy = Ticket(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                context = try container.decode(TicketContext.self, forKey: .context)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(CreatedOn.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                responseId = try container.decode(String.self, forKey: .responseId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                content = try container.decode(TicketContent.self, forKey: .content)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ticketId = try container.decode(String.self, forKey: .ticketId)

            category = try container.decode(TicketCategory.self, forKey: .category)

            do {
                subCategory = try container.decode(TicketSubCategory.self, forKey: .subCategory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            source = try container.decode(TicketSourceEnum.self, forKey: .source)

            status = try container.decode(Status.self, forKey: .status)

            priority = try container.decode(Priority.self, forKey: .priority)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                assignedTo = try container.decode([String: Any].self, forKey: .assignedTo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isFeedbackPending = try container.decode(Bool.self, forKey: .isFeedbackPending)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(context, forKey: .context)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(responseId, forKey: .responseId)

            try? container.encodeIfPresent(content, forKey: .content)

            try? container.encodeIfPresent(ticketId, forKey: .ticketId)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(subCategory, forKey: .subCategory)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(assignedTo, forKey: .assignedTo)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isFeedbackPending, forKey: .isFeedbackPending)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}
