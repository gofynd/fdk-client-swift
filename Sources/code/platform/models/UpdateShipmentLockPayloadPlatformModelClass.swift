

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateShipmentLockPayload
         Used By: Order
     */

    class UpdateShipmentLockPayload: Codable {
        public var action: String

        public var entityType: String

        public var actionType: String

        public var entities: [Entities]

        public enum CodingKeys: String, CodingKey {
            case action

            case entityType = "entity_type"

            case actionType = "action_type"

            case entities
        }

        public init(action: String, actionType: String, entities: [Entities], entityType: String) {
            self.action = action

            self.entityType = entityType

            self.actionType = actionType

            self.entities = entities
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            action = try container.decode(String.self, forKey: .action)

            entityType = try container.decode(String.self, forKey: .entityType)

            actionType = try container.decode(String.self, forKey: .actionType)

            entities = try container.decode([Entities].self, forKey: .entities)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(actionType, forKey: .actionType)

            try? container.encodeIfPresent(entities, forKey: .entities)
        }
    }
}
