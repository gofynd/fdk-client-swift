

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: ErrorResponse
         Used By: Order
     */
    class ErrorResponse: Codable {
        public var code: String?

        public var status: Int?

        public var message: String?

        public var exception: String?

        public var stackTrace: String?

        public enum CodingKeys: String, CodingKey {
            case code

            case status

            case message

            case exception

            case stackTrace = "stack_trace"
        }

        public init(code: String? = nil, exception: String? = nil, message: String? = nil, stackTrace: String? = nil, status: Int? = nil) {
            self.code = code

            self.status = status

            self.message = message

            self.exception = exception

            self.stackTrace = stackTrace
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                exception = try container.decode(String.self, forKey: .exception)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(code, forKey: .code)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(message, forKey: .message)

            try? container.encode(exception, forKey: .exception)

            try? container.encode(stackTrace, forKey: .stackTrace)
        }
    }
}
