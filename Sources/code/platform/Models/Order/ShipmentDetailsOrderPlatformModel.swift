

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentDetails
         Used By: Order
     */

    class ShipmentDetails: Codable {
        public var actionToStatus: [String: Any]?

        public var lockStatus: Bool?

        public var lockMessage: String?

        public enum CodingKeys: String, CodingKey {
            case actionToStatus = "action_to_status"

            case lockStatus = "lock_status"

            case lockMessage = "lock_message"
        }

        public init(actionToStatus: [String: Any]? = nil, lockMessage: String? = nil, lockStatus: Bool? = nil) {
            self.actionToStatus = actionToStatus

            self.lockStatus = lockStatus

            self.lockMessage = lockMessage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                actionToStatus = try container.decode([String: Any].self, forKey: .actionToStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lockStatus = try container.decode(Bool.self, forKey: .lockStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lockMessage = try container.decode(String.self, forKey: .lockMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(actionToStatus, forKey: .actionToStatus)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(lockMessage, forKey: .lockMessage)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentDetails
         Used By: Order
     */

    class ShipmentDetails: Codable {
        public var actionToStatus: [String: Any]?

        public var lockStatus: Bool?

        public var lockMessage: String?

        public enum CodingKeys: String, CodingKey {
            case actionToStatus = "action_to_status"

            case lockStatus = "lock_status"

            case lockMessage = "lock_message"
        }

        public init(actionToStatus: [String: Any]? = nil, lockMessage: String? = nil, lockStatus: Bool? = nil) {
            self.actionToStatus = actionToStatus

            self.lockStatus = lockStatus

            self.lockMessage = lockMessage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                actionToStatus = try container.decode([String: Any].self, forKey: .actionToStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lockStatus = try container.decode(Bool.self, forKey: .lockStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lockMessage = try container.decode(String.self, forKey: .lockMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(actionToStatus, forKey: .actionToStatus)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(lockMessage, forKey: .lockMessage)
        }
    }
}
