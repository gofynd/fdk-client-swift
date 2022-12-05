

import Foundation
public extension PlatformClient {
    /*
         Model: DepartmentErrorResponse
         Used By: Catalog
     */

    class DepartmentErrorResponse: Codable {
        public var message: String?

        public var code: String?

        public var status: Int?

        public var errors: [String: Any]?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case message

            case code

            case status

            case errors

            case meta
        }

        public init(code: String? = nil, errors: [String: Any]? = nil, message: String? = nil, meta: [String: Any]? = nil, status: Int? = nil) {
            self.message = message

            self.code = code

            self.status = status

            self.errors = errors

            self.meta = meta
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
                errors = try container.decode([String: Any].self, forKey: .errors)

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

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(errors, forKey: .errors)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
