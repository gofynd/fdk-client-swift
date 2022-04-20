

import Foundation
public extension ApplicationClient {
    /*
         Model: ValidateCustomerResponse
         Used By: Payment
     */
    class ValidateCustomerResponse: Codable {
        public var success: Bool

        public var data: [String: Any]

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case success

            case data

            case message
        }

        public init(data: [String: Any], message: String, success: Bool) {
            self.success = success

            self.data = data

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode([String: Any].self, forKey: .data)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
