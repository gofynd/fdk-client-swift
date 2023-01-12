

import Foundation
public extension ApplicationClient {
    /*
         Model: UpdateShipmentResponse
         Used By: Order
     */
    class UpdateShipmentResponse: Codable {
        public var message: [String]

        public var status: Bool

        public var finalState: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case message

            case status

            case finalState = "final_state"
        }

        public init(finalState: [String: Any]? = nil, message: [String], status: Bool) {
            self.message = message

            self.status = status

            self.finalState = finalState
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode([String].self, forKey: .message)

            status = try container.decode(Bool.self, forKey: .status)

            do {
                finalState = try container.decode([String: Any].self, forKey: .finalState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(finalState, forKey: .finalState)
        }
    }
}
