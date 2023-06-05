

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PlatfromPaymentConfig
         Used By: Payment
     */

    class PlatfromPaymentConfig: Codable {
        public var success: Bool

        public var message: String

        public var data: PlatformPaymentOptions

        public enum CodingKeys: String, CodingKey {
            case success

            case message

            case data
        }

        public init(data: PlatformPaymentOptions, message: String, success: Bool) {
            self.success = success

            self.message = message

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)

            data = try container.decode(PlatformPaymentOptions.self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PlatfromPaymentConfig
         Used By: Payment
     */

    class PlatfromPaymentConfig: Codable {
        public var success: Bool

        public var message: String

        public var data: PlatformPaymentOptions

        public enum CodingKeys: String, CodingKey {
            case success

            case message

            case data
        }

        public init(data: PlatformPaymentOptions, message: String, success: Bool) {
            self.success = success

            self.message = message

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)

            data = try container.decode(PlatformPaymentOptions.self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
