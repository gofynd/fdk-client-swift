

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentsResponse
         Used By: Order
     */

    class ShipmentsResponse: Codable {
        public var meta: [String: Any]?

        public var stackTrace: String?

        public var exception: String?

        public var finalState: [String: Any]?

        public var status: Int?

        public var identifier: String?

        public var message: String?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case meta

            case stackTrace = "stack_trace"

            case exception

            case finalState = "final_state"

            case status

            case identifier

            case message

            case code
        }

        public init(code: String? = nil, exception: String? = nil, finalState: [String: Any]? = nil, identifier: String? = nil, message: String? = nil, meta: [String: Any]? = nil, stackTrace: String? = nil, status: Int? = nil) {
            self.meta = meta

            self.stackTrace = stackTrace

            self.exception = exception

            self.finalState = finalState

            self.status = status

            self.identifier = identifier

            self.message = message

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                exception = try container.decode(String.self, forKey: .exception)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                finalState = try container.decode([String: Any].self, forKey: .finalState)

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
                identifier = try container.decode(String.self, forKey: .identifier)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(stackTrace, forKey: .stackTrace)

            try? container.encodeIfPresent(exception, forKey: .exception)

            try? container.encodeIfPresent(finalState, forKey: .finalState)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
