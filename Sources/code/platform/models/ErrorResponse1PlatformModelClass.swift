

import Foundation
public extension PlatformClient {
    /*
         Model: ErrorResponse1
         Used By: Order
     */

    class ErrorResponse1: Codable {
        public var message: String

        public var status: Int

        public var errorTrace: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case status

            case errorTrace = "error_trace"
        }

        public init(errorTrace: String? = nil, message: String, status: Int) {
            self.message = message

            self.status = status

            self.errorTrace = errorTrace
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            status = try container.decode(Int.self, forKey: .status)

            do {
                errorTrace = try container.decode(String.self, forKey: .errorTrace)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(errorTrace, forKey: .errorTrace)
        }
    }
}
