import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: CreditDetail
         Used By: Payment
     */
    class CreditDetail: Codable {
        public var isRegistered: Bool

        public var status: Bool

        public var signupUrl: String

        public enum CodingKeys: String, CodingKey {
            case isRegistered = "is_registered"

            case status

            case signupUrl = "signup_url"
        }

        public init(isRegistered: Bool, signupUrl: String, status: Bool) {
            self.isRegistered = isRegistered

            self.status = status

            self.signupUrl = signupUrl
        }

        public func duplicate() -> CreditDetail {
            let dict = self.dictionary!
            let copy = CreditDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isRegistered = try container.decode(Bool.self, forKey: .isRegistered)

            status = try container.decode(Bool.self, forKey: .status)

            signupUrl = try container.decode(String.self, forKey: .signupUrl)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isRegistered, forKey: .isRegistered)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(signupUrl, forKey: .signupUrl)
        }
    }
}
