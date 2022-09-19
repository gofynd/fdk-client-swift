

import Foundation
public extension PlatformClient {
    /*
         Model: DataUpdatePerEntity
         Used By: Order
     */

    class DataUpdatePerEntity: Codable {
        public var entityId: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case entityId = "entity_id"
        }

        public init(entityId: [String: Any]? = nil) {
            self.entityId = entityId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                entityId = try container.decode([String: Any].self, forKey: .entityId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(entityId, forKey: .entityId)
        }
    }
}
