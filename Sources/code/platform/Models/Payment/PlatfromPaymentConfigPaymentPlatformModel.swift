

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PlatfromPaymentConfig
         Used By: Payment
     */

    class PlatfromPaymentConfig: Codable {
        public var data: PlatformPaymentOptions

        public var success: Bool

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case data

            case success

            case message
        }

        public init(data: PlatformPaymentOptions, message: String, success: Bool) {
            self.data = data

            self.success = success

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode(PlatformPaymentOptions.self, forKey: .data)

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PlatfromPaymentConfig
         Used By: Payment
     */

    class PlatfromPaymentConfig: Codable {
        public var data: PlatformPaymentOptions

        public var success: Bool

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case data

            case success

            case message
        }

        public init(data: PlatformPaymentOptions, message: String, success: Bool) {
            self.data = data

            self.success = success

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode(PlatformPaymentOptions.self, forKey: .data)

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
