

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateShipmentLockPayload
         Used By: Order
     */

    class UpdateShipmentLockPayload: Codable {
        public var action: String

        public var entities: [Entities]

        public var entityType: String

        public var actionType: String

        public enum CodingKeys: String, CodingKey {
            case action

            case entities

            case entityType = "entity_type"

            case actionType = "action_type"
        }

        public init(action: String, actionType: String, entities: [Entities], entityType: String) {
            self.action = action

            self.entities = entities

            self.entityType = entityType

            self.actionType = actionType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            action = try container.decode(String.self, forKey: .action)

            entities = try container.decode([Entities].self, forKey: .entities)

            entityType = try container.decode(String.self, forKey: .entityType)

            actionType = try container.decode(String.self, forKey: .actionType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(entities, forKey: .entities)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(actionType, forKey: .actionType)
        }
    }
}
