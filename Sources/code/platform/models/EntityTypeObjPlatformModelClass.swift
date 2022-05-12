

import Foundation
public extension PlatformClient {
    /*
         Model: EntityTypeObj
         Used By: AuditTrail
     */

    class EntityTypeObj: Codable {
        public var entityValue: String?

        public var displayName: String?

        public enum CodingKeys: String, CodingKey {
            case entityValue = "entity_value"

            case displayName = "display_name"
        }

        public init(displayName: String? = nil, entityValue: String? = nil) {
            self.entityValue = entityValue

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                entityValue = try container.decode(String.self, forKey: .entityValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(entityValue, forKey: .entityValue)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
