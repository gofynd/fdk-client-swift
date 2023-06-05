

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: ErrorResponse
         Used By: Payment
     */

    class ErrorResponse: Codable {
        public var message: String

        public var success: Bool

        public var error: ErrorDescription?

        public var statusCode: Int

        public enum CodingKeys: String, CodingKey {
            case message

            case success

            case error

            case statusCode = "status_code"
        }

        public init(error: ErrorDescription? = nil, message: String, statusCode: Int, success: Bool) {
            self.message = message

            self.success = success

            self.error = error

            self.statusCode = statusCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                error = try container.decode(ErrorDescription.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            statusCode = try container.decode(Int.self, forKey: .statusCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(error, forKey: .error)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: ErrorResponse
         Used By: Payment
     */

    class ErrorResponse: Codable {
        public var message: String

        public var success: Bool

        public var error: ErrorDescription?

        public var statusCode: Int

        public enum CodingKeys: String, CodingKey {
            case message

            case success

            case error

            case statusCode = "status_code"
        }

        public init(error: ErrorDescription? = nil, message: String, statusCode: Int, success: Bool) {
            self.message = message

            self.success = success

            self.error = error

            self.statusCode = statusCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                error = try container.decode(ErrorDescription.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            statusCode = try container.decode(Int.self, forKey: .statusCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(error, forKey: .error)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
        }
    }
}
