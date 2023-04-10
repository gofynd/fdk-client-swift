

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CreditDetail
         Used By: Payment
     */
    class CreditDetail: Codable {
        public var status: Bool

        public var isRegistered: Bool

        public var signupUrl: String

        public enum CodingKeys: String, CodingKey {
            case status

            case isRegistered = "is_registered"

            case signupUrl = "signup_url"
        }

        public init(isRegistered: Bool, signupUrl: String, status: Bool) {
            self.status = status

            self.isRegistered = isRegistered

            self.signupUrl = signupUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(Bool.self, forKey: .status)

            isRegistered = try container.decode(Bool.self, forKey: .isRegistered)

            signupUrl = try container.decode(String.self, forKey: .signupUrl)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(isRegistered, forKey: .isRegistered)

            try? container.encodeIfPresent(signupUrl, forKey: .signupUrl)
        }
    }
}
