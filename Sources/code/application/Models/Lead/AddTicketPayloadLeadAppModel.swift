

import Foundation
public extension ApplicationClient.Lead {
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

        public var customJson: [String: Any]?

        public var subscribers: [String]?

        public enum CodingKeys: String, CodingKey {
            case createdBy = "created_by"

            case status

            case priority

            case category

            case content

            case customJson = "_custom_json"

            case subscribers
        }

        public init(category: String, content: TicketContent, createdBy: [String: Any]? = nil, priority: PriorityEnum? = nil, status: String? = nil, subscribers: [String]? = nil, customJson: [String: Any]? = nil) {
            self.createdBy = createdBy

            self.status = status

            self.priority = priority

            self.category = category

            self.content = content

            self.customJson = customJson

            self.subscribers = subscribers
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

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subscribers = try container.decode([String].self, forKey: .subscribers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(content, forKey: .content)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(subscribers, forKey: .subscribers)
        }
    }
}
