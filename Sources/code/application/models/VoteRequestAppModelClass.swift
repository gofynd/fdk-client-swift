

import Foundation
public extension ApplicationClient {
    /*
         Model: VoteRequest
         Used By: Feedback
     */
    class VoteRequest: Codable {
        public var action: String?

        public var entityId: String?

        public var entityType: String?

        public var refId: String?

        public var refType: String?

        public enum CodingKeys: String, CodingKey {
            case action

            case entityId = "entity_id"

            case entityType = "entity_type"

            case refId = "ref_id"

            case refType = "ref_type"
        }

        public init(action: String? = nil, entityId: String? = nil, entityType: String? = nil, refId: String? = nil, refType: String? = nil) {
            self.action = action

            self.entityId = entityId

            self.entityType = entityType

            self.refId = refId

            self.refType = refType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entityId = try container.decode(String.self, forKey: .entityId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refId = try container.decode(String.self, forKey: .refId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refType = try container.decode(String.self, forKey: .refType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(entityId, forKey: .entityId)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(refId, forKey: .refId)

            try? container.encodeIfPresent(refType, forKey: .refType)
        }
    }
}
