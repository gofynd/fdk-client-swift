

import Foundation
public extension ApplicationClient {
    /*
         Model: CreditDetail
         Used By: Payment
     */
    class CreditDetail: Codable {
        public var status: Bool

        public var signupUrl: String

        public var isRegistered: Bool

        public enum CodingKeys: String, CodingKey {
            case status

            case signupUrl = "signup_url"

            case isRegistered = "is_registered"
        }

        public init(isRegistered: Bool, signupUrl: String, status: Bool) {
            self.status = status

            self.signupUrl = signupUrl

            self.isRegistered = isRegistered
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(Bool.self, forKey: .status)

            signupUrl = try container.decode(String.self, forKey: .signupUrl)

            isRegistered = try container.decode(Bool.self, forKey: .isRegistered)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(signupUrl, forKey: .signupUrl)

            try? container.encodeIfPresent(isRegistered, forKey: .isRegistered)
        }
    }
}
