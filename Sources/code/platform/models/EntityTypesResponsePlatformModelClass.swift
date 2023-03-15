

import Foundation
public extension PlatformClient {
    /*
         Model: EntityTypesResponse
         Used By: AuditTrail
     */

    class EntityTypesResponse: Codable {
        public var items: [EntityTypeObj]?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: [EntityTypeObj]? = nil) {
            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([EntityTypeObj].self, forKey: .items)

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
}
