

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: ValidateCustomerResponse
         Used By: Payment
     */

    class ValidateCustomerResponse: Codable {
        public var success: Bool

        public var error: [String: Any]?

        public var message: String

        public var data: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case success

            case error

            case message

            case data
        }

        public init(data: [String: Any]? = nil, error: [String: Any]? = nil, message: String, success: Bool) {
            self.success = success

            self.error = error

            self.message = message

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                error = try container.decode([String: Any].self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            do {
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(error, forKey: .error)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encode(data, forKey: .data)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: ValidateCustomerResponse
         Used By: Payment
     */

    class ValidateCustomerResponse: Codable {
        public var success: Bool

        public var error: [String: Any]?

        public var message: String

        public var data: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case success

            case error

            case message

            case data
        }

        public init(data: [String: Any]? = nil, error: [String: Any]? = nil, message: String, success: Bool) {
            self.success = success

            self.error = error

            self.message = message

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                error = try container.decode([String: Any].self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            do {
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(error, forKey: .error)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encode(data, forKey: .data)
        }
    }
}
