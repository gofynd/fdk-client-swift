

import Foundation
public extension ApplicationClient {
    /*
         Model: CustomerDetails
         Used By: Cart
     */
    class CustomerDetails: Codable {
        public var email: String?

        public var name: String?

        public var mobile: String

        public enum CodingKeys: String, CodingKey {
            case email

            case name

            case mobile
        }

        public init(email: String? = nil, mobile: String, name: String? = nil) {
            self.email = email

            self.name = name

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobile = try container.decode(String.self, forKey: .mobile)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(email, forKey: .email)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}
