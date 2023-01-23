

import Foundation
public extension ApplicationClient {
    /*
         Model: RedirectURL
         Used By: Payment
     */
    class RedirectURL: Codable {
        public var signupUrl: String

        public var status: Bool

        public enum CodingKeys: String, CodingKey {
            case signupUrl = "signup_url"

            case status
        }

        public init(signupUrl: String, status: Bool) {
            self.signupUrl = signupUrl

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            signupUrl = try container.decode(String.self, forKey: .signupUrl)

            status = try container.decode(Bool.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(signupUrl, forKey: .signupUrl)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
