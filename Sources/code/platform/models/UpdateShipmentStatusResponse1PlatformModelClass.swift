

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateShipmentStatusResponse1
         Used By: Order
     */

    class UpdateShipmentStatusResponse1: Codable {
        public var message: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case message
        }

        public init(message: [[String: Any]]? = nil) {
            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode([[String: Any]].self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
