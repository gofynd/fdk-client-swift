

import Foundation
public extension ApplicationClient {
    /*
         Model: UpdateShipmentExternalRequest
         Used By: Order
     */
    class UpdateShipmentExternalRequest: Codable {
        public var statuses: [[String: Any]]

        public var forceTransition: Bool?

        public enum CodingKeys: String, CodingKey {
            case statuses

            case forceTransition = "force_transition"
        }

        public init(forceTransition: Bool? = nil, statuses: [[String: Any]]) {
            self.statuses = statuses

            self.forceTransition = forceTransition
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            statuses = try container.decode([[String: Any]].self, forKey: .statuses)

            do {
                forceTransition = try container.decode(Bool.self, forKey: .forceTransition)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(statuses, forKey: .statuses)

            try? container.encodeIfPresent(forceTransition, forKey: .forceTransition)
        }
    }
}
