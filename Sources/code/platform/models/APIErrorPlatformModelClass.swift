

import Foundation
public extension PlatformClient {
    /*
         Model: APIError
         Used By: Partner
     */

    class APIError: Codable {
        public var code: String?

        public var message: String?

        public var info: String?

        public var requestId: String?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case code

            case message

            case info

            case requestId = "request_id"

            case meta
        }

        public init(code: String? = nil, info: String? = nil, message: String? = nil, meta: [String: Any]? = nil, requestId: String? = nil) {
            self.code = code

            self.message = message

            self.info = info

            self.requestId = requestId

            self.meta = meta
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
                message = try container.decode(String.self, forKey: .message)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(info, forKey: .info)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
