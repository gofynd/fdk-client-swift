

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentidResponse
         Used By: OrderManage
     */

    class ShipmentidResponse: Codable {
        public var message: String?

        public var exception: String?

        public var stackTrace: String?

        public var status: Int?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case exception

            case stackTrace = "stack_trace"

            case status

            case code
        }

        public init(code: String? = nil, exception: String? = nil, message: String? = nil, stackTrace: String? = nil, status: Int? = nil) {
            self.message = message

            self.exception = exception

            self.stackTrace = stackTrace

            self.status = status

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                status = try container.decode(Int.self, forKey: .status)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(exception, forKey: .exception)

            try? container.encodeIfPresent(stackTrace, forKey: .stackTrace)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
