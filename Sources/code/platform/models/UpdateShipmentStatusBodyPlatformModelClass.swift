

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateShipmentStatusBody
         Used By: Order
     */

    class UpdateShipmentStatusBody: Codable {
        public var shipments: [String: Any]

        public var statuses: [ShipmentUpdateObject]

        public var forceTransition: Bool

        public var task: Bool

        public enum CodingKeys: String, CodingKey {
            case shipments

            case statuses

            case forceTransition = "force_transition"

            case task
        }

        public init(forceTransition: Bool, shipments: [String: Any], statuses: [ShipmentUpdateObject], task: Bool) {
            self.shipments = shipments

            self.statuses = statuses

            self.forceTransition = forceTransition

            self.task = task
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipments = try container.decode([String: Any].self, forKey: .shipments)

            statuses = try container.decode([ShipmentUpdateObject].self, forKey: .statuses)

            forceTransition = try container.decode(Bool.self, forKey: .forceTransition)

            task = try container.decode(Bool.self, forKey: .task)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(statuses, forKey: .statuses)

            try? container.encodeIfPresent(forceTransition, forKey: .forceTransition)

            try? container.encodeIfPresent(task, forKey: .task)
        }
    }
}
