

import Foundation
public extension ApplicationClient {
    /*
         Model: ShipmentUserInfo
         Used By: Order
     */
    class ShipmentUserInfo: Codable {
        public var gender: String?

        public var lastName: String?

        public var firstName: String?

        public var mobile: String?

        public enum CodingKeys: String, CodingKey {
            case gender

            case lastName = "last_name"

            case firstName = "first_name"

            case mobile
        }

        public init(firstName: String? = nil, gender: String? = nil, lastName: String? = nil, mobile: String? = nil) {
            self.gender = gender

            self.lastName = lastName

            self.firstName = firstName

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                firstName = try container.decode(String.self, forKey: .firstName)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}
