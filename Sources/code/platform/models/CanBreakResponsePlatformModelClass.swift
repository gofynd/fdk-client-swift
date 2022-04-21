

import Foundation
public extension PlatformClient {
    /*
         Model: CanBreakResponse
         Used By: Order
     */

    class CanBreakResponse: Codable {
        public var status: Bool

        public var validActions: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case status

            case validActions = "valid_actions"
        }

        public init(status: Bool, validActions: [String: Any]) {
            self.status = status

            self.validActions = validActions
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(Bool.self, forKey: .status)

            validActions = try container.decode([String: Any].self, forKey: .validActions)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(validActions, forKey: .validActions)
        }
    }
}
