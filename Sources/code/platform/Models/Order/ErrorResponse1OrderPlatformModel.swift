

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ErrorResponse1
         Used By: Order
     */

    class ErrorResponse1: Codable {
        public var status: Int

        public var message: String

        public var errorTrace: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case message

            case errorTrace = "error_trace"
        }

        public init(errorTrace: String? = nil, message: String, status: Int) {
            self.status = status

            self.message = message

            self.errorTrace = errorTrace
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(Int.self, forKey: .status)

            message = try container.decode(String.self, forKey: .message)

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
        public var status: Int

        public var message: String

        public var errorTrace: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case message

            case errorTrace = "error_trace"
        }

        public init(errorTrace: String? = nil, message: String, status: Int) {
            self.status = status

            self.message = message

            self.errorTrace = errorTrace
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(Int.self, forKey: .status)

            message = try container.decode(String.self, forKey: .message)

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

            try? container.encodeIfPresent(errorTrace, forKey: .errorTrace)
        }
    }
}
