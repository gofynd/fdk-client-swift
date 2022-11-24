

import Foundation
public extension ApplicationClient {
    /*
         Model: CustomerDetails
         Used By: Cart
     */
    class CustomerDetails: Codable {
        public var mobile: String

        public var name: String?

        public var email: String?

        public enum CodingKeys: String, CodingKey {
            case mobile

            case name

            case email
        }

        public init(email: String? = nil, mobile: String, name: String? = nil) {
            self.mobile = mobile

            self.name = name

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobile = try container.decode(String.self, forKey: .mobile)

            do {
                name = try container.decode(String.self, forKey: .name)

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

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(email, forKey: .email)
        }
    }
}
