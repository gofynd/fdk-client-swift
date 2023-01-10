

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateShipmentLockPayload
         Used By: Order
     */

    class UpdateShipmentLockPayload: Codable {
        public var actionType: String

        public var entities: [Entities]

        public var action: String

        public var entityType: String

        public enum CodingKeys: String, CodingKey {
            case actionType = "action_type"

            case entities

            case action

            case entityType = "entity_type"
        }

        public init(action: String, actionType: String, entities: [Entities], entityType: String) {
            self.actionType = actionType

            self.entities = entities

            self.action = action

            self.entityType = entityType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            actionType = try container.decode(String.self, forKey: .actionType)

            entities = try container.decode([Entities].self, forKey: .entities)

            action = try container.decode(String.self, forKey: .action)

            entityType = try container.decode(String.self, forKey: .entityType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(actionType, forKey: .actionType)

            try? container.encodeIfPresent(entities, forKey: .entities)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(entityType, forKey: .entityType)
        }
    }
}
