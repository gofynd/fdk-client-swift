

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentsResponse
         Used By: OrderManage
     */

    class ShipmentsResponse: Codable {
        public var exception: String?

        public var identifier: String

        public var status: Int?

        public var message: String?

        public var code: String?

        public var stackTrace: String?

        public var finalState: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case exception

            case identifier

            case status

            case message

            case code

            case stackTrace = "stack_trace"

            case finalState = "final_state"
        }

        public init(code: String? = nil, exception: String? = nil, finalState: [String: Any]? = nil, identifier: String, message: String? = nil, stackTrace: String? = nil, status: Int? = nil) {
            self.exception = exception

            self.identifier = identifier

            self.status = status

            self.message = message

            self.code = code

            self.stackTrace = stackTrace

            self.finalState = finalState
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                exception = try container.decode(String.self, forKey: .exception)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode(String.self, forKey: .identifier)

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
                code = try container.decode(String.self, forKey: .code)

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
                finalState = try container.decode([String: Any].self, forKey: .finalState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(exception, forKey: .exception)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(stackTrace, forKey: .stackTrace)

            try? container.encodeIfPresent(finalState, forKey: .finalState)
        }
    }
}
