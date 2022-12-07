

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateShipmentLockPayload
         Used By: OrderManage
     */

    class UpdateShipmentLockPayload: Codable {
        public var entities: [Entities]

        public var entityType: String

        public var action: String

        public var actionType: String

        public enum CodingKeys: String, CodingKey {
            case entities

            case entityType = "entity_type"

            case action

            case actionType = "action_type"
        }

        public init(action: String, actionType: String, entities: [Entities], entityType: String) {
            self.entities = entities

            self.entityType = entityType

            self.action = action

            self.actionType = actionType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            entities = try container.decode([Entities].self, forKey: .entities)

            entityType = try container.decode(String.self, forKey: .entityType)

            action = try container.decode(String.self, forKey: .action)

            actionType = try container.decode(String.self, forKey: .actionType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(entities, forKey: .entities)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(actionType, forKey: .actionType)
        }
    }
}
