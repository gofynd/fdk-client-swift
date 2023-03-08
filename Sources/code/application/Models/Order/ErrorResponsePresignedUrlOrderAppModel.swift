

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: ErrorResponsePresignedUrl
         Used By: Order
     */
    class ErrorResponsePresignedUrl: Codable {
        public var success: Bool

        public var message: String

        public var requestId: String?

        public var exception: String?

        public var stackTrace: String?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case success

            case message

            case requestId = "request_id"

            case exception

            case stackTrace = "stack_trace"

            case meta
        }

        public init(exception: String? = nil, message: String, meta: [String: Any]? = nil, requestId: String? = nil, stackTrace: String? = nil, success: Bool) {
            self.success = success

            self.message = message

            self.requestId = requestId

            self.exception = exception

            self.stackTrace = stackTrace

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(exception, forKey: .exception)

            try? container.encodeIfPresent(stackTrace, forKey: .stackTrace)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
