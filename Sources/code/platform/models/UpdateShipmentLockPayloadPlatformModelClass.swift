

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateShipmentLockPayload
         Used By: Order
     */

    class UpdateShipmentLockPayload: Codable {
        public var entityType: String

        public var actionType: String

        public var entities: [Entities]

        public var action: String

        public enum CodingKeys: String, CodingKey {
            case entityType = "entity_type"

            case actionType = "action_type"

            case entities

            case action
        }

        public init(action: String, actionType: String, entities: [Entities], entityType: String) {
            self.entityType = entityType

            self.actionType = actionType

            self.entities = entities

            self.action = action
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            entityType = try container.decode(String.self, forKey: .entityType)

            actionType = try container.decode(String.self, forKey: .actionType)

            entities = try container.decode([Entities].self, forKey: .entities)

            action = try container.decode(String.self, forKey: .action)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(actionType, forKey: .actionType)

            try? container.encodeIfPresent(entities, forKey: .entities)

            try? container.encodeIfPresent(action, forKey: .action)
        }
    }
}
