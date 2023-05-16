

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ErrorResponse1
         Used By: Order
     */

    class ErrorResponse1: Codable {
        public var status: Int?

        public var message: String

        public var success: Bool

        public var errorTrace: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case message

            case success

            case errorTrace = "error_trace"
        }

        public init(errorTrace: String? = nil, message: String, status: Int? = nil, success: Bool) {
            self.status = status

            self.message = message

            self.success = success

            self.errorTrace = errorTrace
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(Int.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                errorTrace = try container.decode(String.self, forKey: .errorTrace)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(errorTrace, forKey: .errorTrace)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ErrorResponse1
         Used By: Order
     */

    class ErrorResponse1: Codable {
        public var status: Int?

        public var message: String

        public var success: Bool

        public var errorTrace: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case message

            case success

            case errorTrace = "error_trace"
        }

        public init(errorTrace: String? = nil, message: String, status: Int? = nil, success: Bool) {
            self.status = status

            self.message = message

            self.success = success

            self.errorTrace = errorTrace
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(Int.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                errorTrace = try container.decode(String.self, forKey: .errorTrace)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(errorTrace, forKey: .errorTrace)
        }
    }
}
