

import Foundation
public extension ApplicationClient.PosCart {
    /*
         Model: CustomerDetails
         Used By: PosCart
     */
    class CustomerDetails: Codable {
        public var mobile: String

        public var email: String?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case mobile

            case email

            case name
        }

        public init(email: String? = nil, mobile: String, name: String? = nil) {
            self.mobile = mobile

            self.email = email

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobile = try container.decode(String.self, forKey: .mobile)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encode(email, forKey: .email)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
