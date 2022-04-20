import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: ValidateCustomerResponse
         Used By: Payment
     */
    class ValidateCustomerResponse: Codable {
        public var success: Bool

        public var message: String

        public var data: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case success

            case message

            case data
        }

        public init(data: [String: Any], message: String, success: Bool) {
            self.success = success

            self.message = message

            self.data = data
        }

        public func duplicate() -> ValidateCustomerResponse {
            let dict = self.dictionary!
            let copy = ValidateCustomerResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)

            data = try container.decode([String: Any].self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
