

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ErrorResponse1
         Used By: Order
     */

    class ErrorResponse1: Codable {
        public var message: String

        public var errorTrace: String?

        public var status: Int

        public enum CodingKeys: String, CodingKey {
            case message

            case errorTrace = "error_trace"

            case status
        }

        public init(errorTrace: String? = nil, message: String, status: Int) {
            self.message = message

            self.errorTrace = errorTrace

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            do {
                errorTrace = try container.decode(String.self, forKey: .errorTrace)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Int.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(errorTrace, forKey: .errorTrace)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ErrorResponse1
         Used By: Order
     */

    class ErrorResponse1: Codable {
        public var message: String

        public var errorTrace: String?

        public var status: Int

        public enum CodingKeys: String, CodingKey {
            case message

            case errorTrace = "error_trace"

            case status
        }

        public init(errorTrace: String? = nil, message: String, status: Int) {
            self.message = message

            self.errorTrace = errorTrace

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            do {
                errorTrace = try container.decode(String.self, forKey: .errorTrace)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Int.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(errorTrace, forKey: .errorTrace)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
