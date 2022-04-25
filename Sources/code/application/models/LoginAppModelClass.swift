

import Foundation
public extension ApplicationClient {
    /*
         Model: Login
         Used By: User
     */
    class Login: Codable {
        public var password: Bool?

        public var otp: Bool?

        public enum CodingKeys: String, CodingKey {
            case password

            case otp
        }

        public init(otp: Bool? = nil, password: Bool? = nil) {
            self.password = password

            self.otp = otp
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                password = try container.decode(Bool.self, forKey: .password)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                otp = try container.decode(Bool.self, forKey: .otp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(password, forKey: .password)

            try? container.encodeIfPresent(otp, forKey: .otp)
        }
    }
}
