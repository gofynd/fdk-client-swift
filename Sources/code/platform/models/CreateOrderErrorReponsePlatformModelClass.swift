

import Foundation
public extension PlatformClient {
    /*
         Model: CreateOrderErrorReponse
         Used By: Order
     */

    class CreateOrderErrorReponse: Codable {
        public var requestId: String?

        public var status: Int

        public var info: [String: Any]?

        public var meta: String?

        public var code: String?

        public var message: String

        public var stackTrace: String?

        public var exception: String?

        public enum CodingKeys: String, CodingKey {
            case requestId = "request_id"

            case status

            case info

            case meta

            case code

            case message

            case stackTrace = "stack_trace"

            case exception
        }

        public init(code: String? = nil, exception: String? = nil, info: [String: Any]? = nil, message: String, meta: String? = nil, requestId: String? = nil, stackTrace: String? = nil, status: Int) {
            self.requestId = requestId

            self.status = status

            self.info = info

            self.meta = meta

            self.code = code

            self.message = message

            self.stackTrace = stackTrace

            self.exception = exception
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Int.self, forKey: .status)

            do {
                info = try container.decode([String: Any].self, forKey: .info)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(String.self, forKey: .meta)

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

            message = try container.decode(String.self, forKey: .message)

            do {
                stackTrace = try container.decode(String.self, forKey: .stackTrace)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(requestId, forKey: .requestId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(info, forKey: .info)

            try? container.encode(meta, forKey: .meta)

            try? container.encode(code, forKey: .code)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encode(stackTrace, forKey: .stackTrace)

            try? container.encode(exception, forKey: .exception)
        }
    }
}