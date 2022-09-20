

import Foundation
public extension PlatformClient {
    /*
         Model: RecursiveUpdate
         Used By: Order
     */

    class RecursiveUpdate: Codable {
        public var bagIds: [String]?

        public var entityIds: [String]?

        public enum CodingKeys: String, CodingKey {
            case bagIds = "bag_ids"

            case entityIds = "entity_ids"
        }

        public init(bagIds: [String]? = nil, entityIds: [String]? = nil) {
            self.bagIds = bagIds

            self.entityIds = entityIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bagIds = try container.decode([String].self, forKey: .bagIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entityIds = try container.decode([String].self, forKey: .entityIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagIds, forKey: .bagIds)

            try? container.encodeIfPresent(entityIds, forKey: .entityIds)
        }
    }
}
