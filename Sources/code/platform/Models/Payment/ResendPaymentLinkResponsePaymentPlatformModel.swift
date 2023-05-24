

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: ResendPaymentLinkResponse
         Used By: Payment
     */

    class ResendPaymentLinkResponse: Codable {
        public var success: Bool

        public var statusCode: Int

        public var message: String

        public var pollingTimeout: Int?

        public enum CodingKeys: String, CodingKey {
            case success

            case statusCode = "status_code"

            case message

            case pollingTimeout = "polling_timeout"
        }

        public init(message: String, pollingTimeout: Int? = nil, statusCode: Int, success: Bool) {
            self.success = success

            self.statusCode = statusCode

            self.message = message

            self.pollingTimeout = pollingTimeout
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            message = try container.decode(String.self, forKey: .message)

            do {
                pollingTimeout = try container.decode(Int.self, forKey: .pollingTimeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encode(pollingTimeout, forKey: .pollingTimeout)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: ResendPaymentLinkResponse
         Used By: Payment
     */

    class ResendPaymentLinkResponse: Codable {
        public var success: Bool

        public var statusCode: Int

        public var message: String

        public var pollingTimeout: Int?

        public enum CodingKeys: String, CodingKey {
            case success

            case statusCode = "status_code"

            case message

            case pollingTimeout = "polling_timeout"
        }

        public init(message: String, pollingTimeout: Int? = nil, statusCode: Int, success: Bool) {
            self.success = success

            self.statusCode = statusCode

            self.message = message

            self.pollingTimeout = pollingTimeout
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            message = try container.decode(String.self, forKey: .message)

            do {
                pollingTimeout = try container.decode(Int.self, forKey: .pollingTimeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encode(pollingTimeout, forKey: .pollingTimeout)
        }
    }
}
