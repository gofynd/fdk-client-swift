

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: ErrorResponse
         Used By: Payment
     */

    class ErrorResponse: Codable {
        public var error: ErrorDescription?

        public var success: Bool

        public var message: String

        public var statusCode: Int

        public enum CodingKeys: String, CodingKey {
            case error

            case success

            case message

            case statusCode = "status_code"
        }

        public init(error: ErrorDescription? = nil, message: String, statusCode: Int, success: Bool) {
            self.error = error

            self.success = success

            self.message = message

            self.statusCode = statusCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                error = try container.decode(ErrorDescription.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)

            statusCode = try container.decode(Int.self, forKey: .statusCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(error, forKey: .error)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

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
        public var error: ErrorDescription?

        public var success: Bool

        public var message: String

        public var statusCode: Int

        public enum CodingKeys: String, CodingKey {
            case error

            case success

            case message

            case statusCode = "status_code"
        }

        public init(error: ErrorDescription? = nil, message: String, statusCode: Int, success: Bool) {
            self.error = error

            self.success = success

            self.message = message

            self.statusCode = statusCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                error = try container.decode(ErrorDescription.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)

            statusCode = try container.decode(Int.self, forKey: .statusCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(error, forKey: .error)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
        }
    }
}
