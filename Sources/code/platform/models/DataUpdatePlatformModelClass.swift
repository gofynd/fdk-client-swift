

import Foundation
public extension PlatformClient {
    /*
         Model: DataUpdate
         Used By: Order
     */

    class DataUpdate: Codable {
        public var recursiveUpdates: RecursiveUpdate?

        public var entityIds: DataUpdatePerEntity?

        public enum CodingKeys: String, CodingKey {
            case recursiveUpdates = "recursive_updates"

            case entityIds = "entity_ids"
        }

        public init(entityIds: DataUpdatePerEntity? = nil, recursiveUpdates: RecursiveUpdate? = nil) {
            self.recursiveUpdates = recursiveUpdates

            self.entityIds = entityIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                recursiveUpdates = try container.decode(RecursiveUpdate.self, forKey: .recursiveUpdates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entityIds = try container.decode(DataUpdatePerEntity.self, forKey: .entityIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(recursiveUpdates, forKey: .recursiveUpdates)

            try? container.encodeIfPresent(entityIds, forKey: .entityIds)
        }
    }
}
