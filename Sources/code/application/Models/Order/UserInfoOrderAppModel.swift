

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: UserInfo
         Used By: Order
     */
    class UserInfo: Codable {
        public var name: String?

        public var mobile: String?

        public var gender: String?

        public var email: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case mobile

            case gender

            case email
        }

        public init(email: String? = nil, gender: String? = nil, mobile: String? = nil, name: String? = nil) {
            self.name = name

            self.mobile = mobile

            self.gender = gender

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
