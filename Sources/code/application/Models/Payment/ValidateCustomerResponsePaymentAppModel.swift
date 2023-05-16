

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: ValidateCustomerResponse
         Used By: Payment
     */
    class ValidateCustomerResponse: Codable {
        public var error: [String: Any]?

        public var data: [String: Any]?

        public var message: String

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case error

            case data

            case message

            case success
        }

        public init(data: [String: Any]? = nil, error: [String: Any]? = nil, message: String, success: Bool) {
            self.error = error

            self.data = data

            self.message = message

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                error = try container.decode([String: Any].self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(error, forKey: .error)

            try? container.encode(data, forKey: .data)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
