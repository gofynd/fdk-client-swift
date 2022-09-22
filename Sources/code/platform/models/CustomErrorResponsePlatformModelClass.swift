

import Foundation
public extension PlatformClient {
    /*
         Model: CustomErrorResponse
         Used By: Order
     */

    class CustomErrorResponse: Codable {
        public var status: Int?

        public var stackTrace: String?

        public var code: String?

        public var requestId: String?

        public var meta: [String: Any]?

        public var info: String?

        public var exception: String?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case stackTrace = "stack_trace"

            case code

            case requestId = "request_id"

            case meta

            case info

            case exception

            case message
        }

        public init(code: String? = nil, exception: String? = nil, info: String? = nil, message: String? = nil, meta: [String: Any]? = nil, requestId: String? = nil, stackTrace: String? = nil, status: Int? = nil) {
            self.status = status

            self.stackTrace = stackTrace

            self.code = code

            self.requestId = requestId

            self.meta = meta

            self.info = info

            self.exception = exception

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                info = try container.decode(String.self, forKey: .info)

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
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(stackTrace, forKey: .stackTrace)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(info, forKey: .info)

            try? container.encodeIfPresent(exception, forKey: .exception)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
