

import Foundation
public extension PlatformClient {
    /*
         Model: UserDataSet
         Used By: Orders
     */

    class UserDataSet: Codable {
        public var mobile: Int

        public var email: String?

        public var name: String

        public var gender: String?

        public enum CodingKeys: String, CodingKey {
            case mobile

            case email

            case name

            case gender
        }

        public init(email: String? = nil, gender: String? = nil, mobile: Int, name: String) {
            self.mobile = mobile

            self.email = email

            self.name = name

            self.gender = gender
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobile = try container.decode(Int.self, forKey: .mobile)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(gender, forKey: .gender)
        }
    }
}
