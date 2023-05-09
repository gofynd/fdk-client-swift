

import Foundation

public extension PlatformClient.Order {
    /*
         Model: UpdateShipmentLockPayload
         Used By: Order
     */

    class UpdateShipmentLockPayload: Codable {
        public var actionType: String

        public var entityType: String

        public var action: String

        public var entities: [Entities]

        public enum CodingKeys: String, CodingKey {
            case actionType = "action_type"

            case entityType = "entity_type"

            case action

            case entities
        }

        public init(action: String, actionType: String, entities: [Entities], entityType: String) {
            self.actionType = actionType

            self.entityType = entityType

            self.action = action

            self.entities = entities
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            actionType = try container.decode(String.self, forKey: .actionType)

            entityType = try container.decode(String.self, forKey: .entityType)

            action = try container.decode(String.self, forKey: .action)

            entities = try container.decode([Entities].self, forKey: .entities)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(actionType, forKey: .actionType)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(entities, forKey: .entities)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: UpdateShipmentLockPayload
         Used By: Order
     */

    class UpdateShipmentLockPayload: Codable {
        public var actionType: String

        public var entityType: String

        public var action: String

        public var entities: [Entities]

        public enum CodingKeys: String, CodingKey {
            case actionType = "action_type"

            case entityType = "entity_type"

            case action

            case entities
        }

        public init(action: String, actionType: String, entities: [Entities], entityType: String) {
            self.actionType = actionType

            self.entityType = entityType

            self.action = action

            self.entities = entities
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            actionType = try container.decode(String.self, forKey: .actionType)

            entityType = try container.decode(String.self, forKey: .entityType)

            action = try container.decode(String.self, forKey: .action)

            entities = try container.decode([Entities].self, forKey: .entities)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(actionType, forKey: .actionType)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(entities, forKey: .entities)
        }
    }
}
