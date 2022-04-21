

import Foundation
public extension ApplicationClient {
    /*
         Model: CreateQNARequest
         Used By: Feedback
     */
    class CreateQNARequest: Codable {
        public var choices: [String]?

        public var entityId: String

        public var entityType: String

        public var maxLen: Int?

        public var sortPriority: Int?

        public var tags: [String]?

        public var text: String

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case choices

            case entityId = "entity_id"

            case entityType = "entity_type"

            case maxLen = "max_len"

            case sortPriority = "sort_priority"

            case tags

            case text

            case type
        }

        public init(choices: [String]? = nil, entityId: String, entityType: String, maxLen: Int? = nil, sortPriority: Int? = nil, tags: [String]? = nil, text: String, type: String? = nil) {
            self.choices = choices

            self.entityId = entityId

            self.entityType = entityType

            self.maxLen = maxLen

            self.sortPriority = sortPriority

            self.tags = tags

            self.text = text

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                choices = try container.decode([String].self, forKey: .choices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            entityId = try container.decode(String.self, forKey: .entityId)

            entityType = try container.decode(String.self, forKey: .entityType)

            do {
                maxLen = try container.decode(Int.self, forKey: .maxLen)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sortPriority = try container.decode(Int.self, forKey: .sortPriority)

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

            text = try container.decode(String.self, forKey: .text)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(choices, forKey: .choices)

            try? container.encodeIfPresent(entityId, forKey: .entityId)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(maxLen, forKey: .maxLen)

            try? container.encodeIfPresent(sortPriority, forKey: .sortPriority)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
