

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateShipmentLockPayload
         Used By: Order
     */

    class UpdateShipmentLockPayload: Codable {
        public var action: String

        public var actionType: String

        public var entityType: String

        public var entities: [Entities]

        public enum CodingKeys: String, CodingKey {
            case action

            case actionType = "action_type"

            case entityType = "entity_type"

            case entities
        }

        public init(action: String, actionType: String, entities: [Entities], entityType: String) {
            self.action = action

            self.actionType = actionType

            self.entityType = entityType

            self.entities = entities
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            action = try container.decode(String.self, forKey: .action)

            actionType = try container.decode(String.self, forKey: .actionType)

            entityType = try container.decode(String.self, forKey: .entityType)

            entities = try container.decode([Entities].self, forKey: .entities)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(actionType, forKey: .actionType)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(entities, forKey: .entities)
        }
    }
}