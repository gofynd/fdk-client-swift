

import Foundation
public extension PlatformClient {
    /*
         Model: ReasonsPerEntity
         Used By: Order
     */

    class ReasonsPerEntity: Codable {
        public var entityKey: ReasonText?

        public enum CodingKeys: String, CodingKey {
            case entityKey = "entity_key"
        }

        public init(entityKey: ReasonText? = nil) {
            self.entityKey = entityKey
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                entityKey = try container.decode(ReasonText.self, forKey: .entityKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(entityKey, forKey: .entityKey)
        }
    }
}
