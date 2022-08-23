

import Foundation
public extension PlatformClient {
    /*
         Model: ReportAbuseRequest
         Used By: Feedback
     */

    class ReportAbuseRequest: Codable {
        public var description: String?

        public var entityId: String

        public var entityType: String

        public enum CodingKeys: String, CodingKey {
            case description

            case entityId = "entity_id"

            case entityType = "entity_type"
        }

        public init(description: String? = nil, entityId: String, entityType: String) {
            self.description = description

            self.entityId = entityId

            self.entityType = entityType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            entityId = try container.decode(String.self, forKey: .entityId)

            entityType = try container.decode(String.self, forKey: .entityType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(entityId, forKey: .entityId)

            try? container.encodeIfPresent(entityType, forKey: .entityType)
        }
    }
}
