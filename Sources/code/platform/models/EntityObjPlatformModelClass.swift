

import Foundation
public extension PlatformClient {
    /*
         Model: EntityObj
         Used By: AuditTrail
     */

    class EntityObj: Codable {
        public var id: String?

        public var type: String?

        public var action: String?

        public var entityDetails: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case id

            case type

            case action

            case entityDetails = "entity_details"
        }

        public init(action: String? = nil, entityDetails: [String: Any]? = nil, id: String? = nil, type: String? = nil) {
            self.id = id

            self.type = type

            self.action = action

            self.entityDetails = entityDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entityDetails = try container.decode([String: Any].self, forKey: .entityDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(entityDetails, forKey: .entityDetails)
        }
    }
}
