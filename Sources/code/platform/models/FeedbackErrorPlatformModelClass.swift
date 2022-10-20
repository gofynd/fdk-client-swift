

import Foundation
public extension PlatformClient {
    /*
         Model: FeedbackError
         Used By: Feedback
     */

    class FeedbackError: Codable {
        public var code: [String: Any]?

        public var exception: String?

        public var info: String?

        public var message: String?

        public var meta: [String: Any]?

        public var requestId: String?

        public var stackTrace: String?

        public var status: Int?

        public enum CodingKeys: String, CodingKey {
            case code

            case exception

            case info

            case message

            case meta

            case requestId = "request_id"

            case stackTrace = "stack_trace"

            case status
        }

        public init(code: [String: Any]? = nil, exception: String? = nil, info: String? = nil, message: String? = nil, meta: [String: Any]? = nil, requestId: String? = nil, stackTrace: String? = nil, status: Int? = nil) {
            self.code = code

            self.exception = exception

            self.info = info

            self.message = message

            self.meta = meta

            self.requestId = requestId

            self.stackTrace = stackTrace

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                code = try container.decode([String: Any].self, forKey: .code)

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
                info = try container.decode(String.self, forKey: .info)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(exception, forKey: .exception)

            try? container.encodeIfPresent(info, forKey: .info)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(stackTrace, forKey: .stackTrace)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
