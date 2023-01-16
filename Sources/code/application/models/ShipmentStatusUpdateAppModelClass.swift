

import Foundation
public extension ApplicationClient {
    /*
         Model: ShipmentStatusUpdate
         Used By: Order
     */
    class ShipmentStatusUpdate: Codable {
        public var message: [String]

        public var finalState: [String: Any]?

        public var status: Bool

        public enum CodingKeys: String, CodingKey {
            case message

            case finalState = "final_state"

            case status
        }

        public init(finalState: [String: Any]? = nil, message: [String], status: Bool) {
            self.message = message

            self.finalState = finalState

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode([String].self, forKey: .message)

            do {
                finalState = try container.decode([String: Any].self, forKey: .finalState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Bool.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(finalState, forKey: .finalState)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
