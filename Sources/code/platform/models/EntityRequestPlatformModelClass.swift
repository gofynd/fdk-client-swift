

import Foundation
public extension PlatformClient {
    /*
         Model: EntityRequest
         Used By: Feedback
     */

    class EntityRequest: Codable {
        public var entityId: String?

        public var entityType: String?

        public enum CodingKeys: String, CodingKey {
            case entityId = "entity_id"

            case entityType = "entity_type"
        }

        public init(entityId: String? = nil, entityType: String? = nil) {
            self.entityId = entityId

            self.entityType = entityType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(entityId, forKey: .entityId)

            try? container.encodeIfPresent(entityType, forKey: .entityType)
        }
    }
}
