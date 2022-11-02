

import Foundation
public extension ApplicationClient {
    /*
         Model: ShipmentStatusUpdateBody
         Used By: Order
     */
    class ShipmentStatusUpdateBody: Codable {
        public var forceTransition: Bool?

        public var task: Bool?

        public var statuses: [Statuses1]?

        public enum CodingKeys: String, CodingKey {
            case forceTransition = "force_transition"

            case task

            case statuses
        }

        public init(forceTransition: Bool? = nil, statuses: [Statuses1]? = nil, task: Bool? = nil) {
            self.forceTransition = forceTransition

            self.task = task

            self.statuses = statuses
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                forceTransition = try container.decode(Bool.self, forKey: .forceTransition)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                task = try container.decode(Bool.self, forKey: .task)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                statuses = try container.decode([Statuses1].self, forKey: .statuses)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(forceTransition, forKey: .forceTransition)

            try? container.encodeIfPresent(task, forKey: .task)

            try? container.encodeIfPresent(statuses, forKey: .statuses)
        }
    }
}
