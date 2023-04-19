

import Foundation

public extension PlatformClient.ApplicationClient.User {
    /*
         Model: SessionListResponseInfo
         Used By: User
     */

    class SessionListResponseInfo: Codable {
        public var sessionId: String?

        public var userAgent: String?

        public var ip: String?

        public var domain: String?

        public var expireIn: String?

        public enum CodingKeys: String, CodingKey {
            case sessionId = "session_id"

            case userAgent = "user_agent"

            case ip

            case domain

            case expireIn = "expire_in"
        }

        public init(domain: String? = nil, expireIn: String? = nil, ip: String? = nil, sessionId: String? = nil, userAgent: String? = nil) {
            self.sessionId = sessionId

            self.userAgent = userAgent

            self.ip = ip

            self.domain = domain

            self.expireIn = expireIn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sessionId = try container.decode(String.self, forKey: .sessionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userAgent = try container.decode(String.self, forKey: .userAgent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ip = try container.decode(String.self, forKey: .ip)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                domain = try container.decode(String.self, forKey: .domain)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expireIn = try container.decode(String.self, forKey: .expireIn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sessionId, forKey: .sessionId)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(ip, forKey: .ip)

            try? container.encodeIfPresent(domain, forKey: .domain)

            try? container.encodeIfPresent(expireIn, forKey: .expireIn)
        }
    }
}
