

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CreditDetail
         Used By: Payment
     */
    class CreditDetail: Codable {
        public var signupUrl: String

        public var isRegistered: Bool

        public var status: Bool

        public enum CodingKeys: String, CodingKey {
            case signupUrl = "signup_url"

            case isRegistered = "is_registered"

            case status
        }

        public init(isRegistered: Bool, signupUrl: String, status: Bool) {
            self.signupUrl = signupUrl

            self.isRegistered = isRegistered

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            signupUrl = try container.decode(String.self, forKey: .signupUrl)

            isRegistered = try container.decode(Bool.self, forKey: .isRegistered)

            status = try container.decode(Bool.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(signupUrl, forKey: .signupUrl)

            try? container.encodeIfPresent(isRegistered, forKey: .isRegistered)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
