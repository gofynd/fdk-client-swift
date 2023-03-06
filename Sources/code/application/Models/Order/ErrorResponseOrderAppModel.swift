

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: ErrorResponse
         Used By: Order
     */
    class ErrorResponse: Codable {
        public var exception: String?

        public var code: String?

        public var status: Int?

        public var stackTrace: String?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case exception

            case code

            case status

            case stackTrace = "stack_trace"

            case message
        }

        public init(code: String? = nil, exception: String? = nil, message: String? = nil, stackTrace: String? = nil, status: Int? = nil) {
            self.exception = exception

            self.code = code

            self.status = status

            self.stackTrace = stackTrace

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                exception = try container.decode(String.self, forKey: .exception)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(Int.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stackTrace = try container.decode(String.self, forKey: .stackTrace)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(exception, forKey: .exception)

            try? container.encode(code, forKey: .code)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(stackTrace, forKey: .stackTrace)

            try? container.encode(message, forKey: .message)
        }
    }
}