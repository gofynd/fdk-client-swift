import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: ValidateCustomerResponse
         Used By: Payment
     */
    class ValidateCustomerResponse: Codable {
        public var data: [String: Any]

        public var message: String

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case data

            case message

            case success
        }

        public init(data: [String: Any], message: String, success: Bool) {
            self.data = data

            self.message = message

            self.success = success
        }

        public func duplicate() -> ValidateCustomerResponse {
            let dict = self.dictionary!
            let copy = ValidateCustomerResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([String: Any].self, forKey: .data)

            message = try container.decode(String.self, forKey: .message)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
