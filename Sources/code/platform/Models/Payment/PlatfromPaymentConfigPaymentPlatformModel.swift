

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PlatfromPaymentConfig
         Used By: Payment
     */

    class PlatfromPaymentConfig: Codable {
        public var message: String

        public var data: PlatformPaymentOptions

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case message

            case data

            case success
        }

        public init(data: PlatformPaymentOptions, message: String, success: Bool) {
            self.message = message

            self.data = data

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            data = try container.decode(PlatformPaymentOptions.self, forKey: .data)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PlatfromPaymentConfig
         Used By: Payment
     */

    class PlatfromPaymentConfig: Codable {
        public var message: String

        public var data: PlatformPaymentOptions

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case message

            case data

            case success
        }

        public init(data: PlatformPaymentOptions, message: String, success: Bool) {
            self.message = message

            self.data = data

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            data = try container.decode(PlatformPaymentOptions.self, forKey: .data)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
