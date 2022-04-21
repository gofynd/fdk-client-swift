

import Foundation
public extension ApplicationClient {
    /*
         Model: ShipmentStatusUpdateBody
         Used By: Order
     */
    class ShipmentStatusUpdateBody: Codable {
        public var statuses: [StatusesBody]

        public var forceTransition: Bool

        public var task: Bool?

        public enum CodingKeys: String, CodingKey {
            case statuses

            case forceTransition = "force_transition"

            case task
        }

        public init(forceTransition: Bool, statuses: [StatusesBody], task: Bool? = nil) {
            self.statuses = statuses

            self.forceTransition = forceTransition

            self.task = task
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            statuses = try container.decode([StatusesBody].self, forKey: .statuses)

            forceTransition = try container.decode(Bool.self, forKey: .forceTransition)

            do {
                task = try container.decode(Bool.self, forKey: .task)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(statuses, forKey: .statuses)

            try? container.encodeIfPresent(forceTransition, forKey: .forceTransition)

            try? container.encodeIfPresent(task, forKey: .task)
        }
    }
}
