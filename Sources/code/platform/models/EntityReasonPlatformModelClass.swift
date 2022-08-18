

import Foundation
public extension PlatformClient {
    /*
         Model: EntityReason
         Used By: Order
     */

    class EntityReason: Codable {
        public var bagIds: ReasonsPerEntity?

        public enum CodingKeys: String, CodingKey {
            case bagIds = "bag_ids"
        }

        public init(bagIds: ReasonsPerEntity? = nil) {
            self.bagIds = bagIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bagIds = try container.decode(ReasonsPerEntity.self, forKey: .bagIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagIds, forKey: .bagIds)
        }
    }
}
