

import Foundation
public extension PlatformClient {
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
}
