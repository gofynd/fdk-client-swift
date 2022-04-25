

import Foundation
public extension ApplicationClient {
    /*
         Model: CreateUserSessionResponseSchema
         Used By: User
     */
    class CreateUserSessionResponseSchema: Codable {
        public var domain: String?

        public var maxAge: Double?

        public var secure: Bool?

        public var httpOnly: Bool?

        public var cookie: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case domain

            case maxAge = "max_age"

            case secure

            case httpOnly = "http_only"

            case cookie
        }

        public init(cookie: [String: Any]? = nil, domain: String? = nil, httpOnly: Bool? = nil, maxAge: Double? = nil, secure: Bool? = nil) {
            self.domain = domain

            self.maxAge = maxAge

            self.secure = secure

            self.httpOnly = httpOnly

            self.cookie = cookie
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                domain = try container.decode(String.self, forKey: .domain)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maxAge = try container.decode(Double.self, forKey: .maxAge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                secure = try container.decode(Bool.self, forKey: .secure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                httpOnly = try container.decode(Bool.self, forKey: .httpOnly)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cookie = try container.decode([String: Any].self, forKey: .cookie)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(domain, forKey: .domain)

            try? container.encodeIfPresent(maxAge, forKey: .maxAge)

            try? container.encodeIfPresent(secure, forKey: .secure)

            try? container.encodeIfPresent(httpOnly, forKey: .httpOnly)

            try? container.encodeIfPresent(cookie, forKey: .cookie)
        }
    }
}
