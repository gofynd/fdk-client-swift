

import Foundation
public extension PlatformClient {
    /*
         Model: ApproveRequest
         Used By: Feedback
     */

    class ApproveRequest: Codable {
        public var approve: Bool?

        public var entityType: String?

        public var id: String

        public var reason: String?

        public enum CodingKeys: String, CodingKey {
            case approve

            case entityType = "entity_type"

            case id

            case reason
        }

        public init(approve: Bool? = nil, entityType: String? = nil, id: String, reason: String? = nil) {
            self.approve = approve

            self.entityType = entityType

            self.id = id

            self.reason = reason
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                approve = try container.decode(Bool.self, forKey: .approve)

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

            id = try container.decode(String.self, forKey: .id)

            do {
                reason = try container.decode(String.self, forKey: .reason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(approve, forKey: .approve)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(reason, forKey: .reason)
        }
    }
}
