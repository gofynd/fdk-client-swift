

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateShipmentLockPayload
         Used By: OrderManage
     */

    class UpdateShipmentLockPayload: Codable {
        public var actionType: String

        public var action: String

        public var entities: [Entities]

        public var entityType: String

        public enum CodingKeys: String, CodingKey {
            case actionType = "action_type"

            case action

            case entities

            case entityType = "entity_type"
        }

        public init(action: String, actionType: String, entities: [Entities], entityType: String) {
            self.actionType = actionType

            self.action = action

            self.entities = entities

            self.entityType = entityType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            actionType = try container.decode(String.self, forKey: .actionType)

            action = try container.decode(String.self, forKey: .action)

            entities = try container.decode([Entities].self, forKey: .entities)

            entityType = try container.decode(String.self, forKey: .entityType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(actionType, forKey: .actionType)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(entities, forKey: .entities)

            try? container.encodeIfPresent(entityType, forKey: .entityType)
        }
    }
}
