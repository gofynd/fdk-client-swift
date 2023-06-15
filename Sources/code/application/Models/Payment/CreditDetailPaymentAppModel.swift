

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CreditDetail
         Used By: Payment
     */
    class CreditDetail: Codable {
        public var isRegistered: Bool

        public var signupUrl: String

        public var status: Bool

        public enum CodingKeys: String, CodingKey {
            case isRegistered = "is_registered"

            case signupUrl = "signup_url"

            case status
        }

        public init(isRegistered: Bool, signupUrl: String, status: Bool) {
            self.isRegistered = isRegistered

            self.signupUrl = signupUrl

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isRegistered = try container.decode(Bool.self, forKey: .isRegistered)

            signupUrl = try container.decode(String.self, forKey: .signupUrl)

            status = try container.decode(Bool.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isRegistered, forKey: .isRegistered)

            try? container.encodeIfPresent(signupUrl, forKey: .signupUrl)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
