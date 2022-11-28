

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateShipmentLockPayload
         Used By: OrderManage
     */

    class UpdateShipmentLockPayload: Codable {
        public var entityType: String

        public var entities: [Entities]

        public var actionType: String

        public var action: String

        public enum CodingKeys: String, CodingKey {
            case entityType = "entity_type"

            case entities

            case actionType = "action_type"

            case action
        }

        public init(action: String, actionType: String, entities: [Entities], entityType: String) {
            self.entityType = entityType

            self.entities = entities

            self.actionType = actionType

            self.action = action
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            entityType = try container.decode(String.self, forKey: .entityType)

            entities = try container.decode([Entities].self, forKey: .entities)

            actionType = try container.decode(String.self, forKey: .actionType)

            action = try container.decode(String.self, forKey: .action)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(entities, forKey: .entities)

            try? container.encodeIfPresent(actionType, forKey: .actionType)

            try? container.encodeIfPresent(action, forKey: .action)
        }
    }
}
