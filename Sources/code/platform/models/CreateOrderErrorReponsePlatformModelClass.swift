

import Foundation
public extension PlatformClient {
    /*
         Model: CreateOrderErrorReponse
         Used By: OrderManage
     */

    class CreateOrderErrorReponse: Codable {
        public var requestId: String?

        public var message: String

        public var status: Int

        public var info: [String: Any]?

        public var stackTrace: String?

        public var code: String?

        public var exception: String?

        public var meta: String?

        public enum CodingKeys: String, CodingKey {
            case requestId = "request_id"

            case message

            case status

            case info

            case stackTrace = "stack_trace"

            case code

            case exception

            case meta
        }

        public init(code: String? = nil, exception: String? = nil, info: [String: Any]? = nil, message: String, meta: String? = nil, requestId: String? = nil, stackTrace: String? = nil, status: Int) {
            self.requestId = requestId

            self.message = message

            self.status = status

            self.info = info

            self.stackTrace = stackTrace

            self.code = code

            self.exception = exception

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            status = try container.decode(Int.self, forKey: .status)

            do {
                info = try container.decode([String: Any].self, forKey: .info)

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
                code = try container.decode(String.self, forKey: .code)

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
                meta = try container.decode(String.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(requestId, forKey: .requestId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(info, forKey: .info)

            try? container.encode(stackTrace, forKey: .stackTrace)

            try? container.encode(code, forKey: .code)

            try? container.encode(exception, forKey: .exception)

            try? container.encode(meta, forKey: .meta)
        }
    }
}
