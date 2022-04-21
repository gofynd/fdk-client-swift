

import Foundation
public extension PlatformClient {
    /*
         Model: GetNRecordsCsvResItems
         Used By: Communication
     */

    class GetNRecordsCsvResItems: Codable {
        public var phoneNumber: String?

        public var email: String?

        public var firstname: String?

        public var lastname: String?

        public var orderid: String?

        public enum CodingKeys: String, CodingKey {
            case phoneNumber = "phone_number"

            case email

            case firstname

            case lastname

            case orderid
        }

        public init(email: String? = nil, firstname: String? = nil, lastname: String? = nil, orderid: String? = nil, phoneNumber: String? = nil) {
            self.phoneNumber = phoneNumber

            self.email = email

            self.firstname = firstname

            self.lastname = lastname

            self.orderid = orderid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                phoneNumber = try container.decode(String.self, forKey: .phoneNumber)

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

            do {
                firstname = try container.decode(String.self, forKey: .firstname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastname = try container.decode(String.self, forKey: .lastname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderid = try container.decode(String.self, forKey: .orderid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(firstname, forKey: .firstname)

            try? container.encodeIfPresent(lastname, forKey: .lastname)

            try? container.encodeIfPresent(orderid, forKey: .orderid)
        }
    }
}
