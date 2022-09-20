

import Foundation
public extension PlatformClient {
    /*
         Model: EntityBody
         Used By: Order
     */

    class EntityBody: Codable {
        public var reasons: EntityReason?

        public var entityIds: [String]?

        public var nextStatus: String?

        public var bagIds: [String]

        public var dataUpdates: DataUpdate?

        public enum CodingKeys: String, CodingKey {
            case reasons

            case entityIds = "entity_ids"

            case nextStatus = "next_status"

            case bagIds = "bag_ids"

            case dataUpdates = "data_updates"
        }

        public init(bagIds: [String], dataUpdates: DataUpdate? = nil, entityIds: [String]? = nil, nextStatus: String? = nil, reasons: EntityReason? = nil) {
            self.reasons = reasons

            self.entityIds = entityIds

            self.nextStatus = nextStatus

            self.bagIds = bagIds

            self.dataUpdates = dataUpdates
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                reasons = try container.decode(EntityReason.self, forKey: .reasons)

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

            do {
                nextStatus = try container.decode(String.self, forKey: .nextStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagIds = try container.decode([String].self, forKey: .bagIds)

            do {
                dataUpdates = try container.decode(DataUpdate.self, forKey: .dataUpdates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(entityIds, forKey: .entityIds)

            try? container.encodeIfPresent(nextStatus, forKey: .nextStatus)

            try? container.encodeIfPresent(bagIds, forKey: .bagIds)

            try? container.encodeIfPresent(dataUpdates, forKey: .dataUpdates)
        }
    }
}
