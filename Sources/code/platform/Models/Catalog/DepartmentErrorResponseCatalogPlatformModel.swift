

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: DepartmentErrorResponse
         Used By: Catalog
     */

    class DepartmentErrorResponse: Codable {
        public var errors: [String: Any]?

        public var status: Int?

        public var meta: [String: Any]?

        public var message: String?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case errors

            case status

            case meta

            case message

            case code
        }

        public init(code: String? = nil, errors: [String: Any]? = nil, message: String? = nil, meta: [String: Any]? = nil, status: Int? = nil) {
            self.errors = errors

            self.status = status

            self.meta = meta

            self.message = message

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                errors = try container.decode([String: Any].self, forKey: .errors)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            try? container.encodeIfPresent(errors, forKey: .errors)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: DepartmentErrorResponse
         Used By: Catalog
     */

    class DepartmentErrorResponse: Codable {
        public var errors: [String: Any]?

        public var status: Int?

        public var meta: [String: Any]?

        public var message: String?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case errors

            case status

            case meta

            case message

            case code
        }

        public init(code: String? = nil, errors: [String: Any]? = nil, message: String? = nil, meta: [String: Any]? = nil, status: Int? = nil) {
            self.errors = errors

            self.status = status

            self.meta = meta

            self.message = message

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                errors = try container.decode([String: Any].self, forKey: .errors)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            try? container.encodeIfPresent(errors, forKey: .errors)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
