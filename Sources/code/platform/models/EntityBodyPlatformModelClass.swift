

import Foundation
public extension PlatformClient {
    /*
         Model: EntityBody
         Used By: Order
     */

    class EntityBody: Codable {
        public var dataUpdates: DataUpdate?

        public var reasons: EntityReason?

        public var bagIds: [String]

        public var entityIds: [String]?

        public var nextStatus: String?

        public enum CodingKeys: String, CodingKey {
            case dataUpdates = "data_updates"

            case reasons

            case bagIds = "bag_ids"

            case entityIds = "entity_ids"

            case nextStatus = "next_status"
        }

        public init(bagIds: [String], dataUpdates: DataUpdate? = nil, entityIds: [String]? = nil, nextStatus: String? = nil, reasons: EntityReason? = nil) {
            self.dataUpdates = dataUpdates

            self.reasons = reasons

            self.bagIds = bagIds

            self.entityIds = entityIds

            self.nextStatus = nextStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dataUpdates = try container.decode(DataUpdate.self, forKey: .dataUpdates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reasons = try container.decode(EntityReason.self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagIds = try container.decode([String].self, forKey: .bagIds)

            do {
                entityIds = try container.decode([String].self, forKey: .entityIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nextStatus = try container.decode(String.self, forKey: .nextStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dataUpdates, forKey: .dataUpdates)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(bagIds, forKey: .bagIds)

            try? container.encodeIfPresent(entityIds, forKey: .entityIds)

            try? container.encodeIfPresent(nextStatus, forKey: .nextStatus)
        }
    }
}
