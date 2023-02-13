

import Foundation
public extension ApplicationClient {
    /*
         Model: StoreManagerSerializer
         Used By: Catalog
     */
    class StoreManagerSerializer: Codable {
        public var name: String?

        public var email: String?

        public var mobileNo: SellerPhoneNumber?

        public enum CodingKeys: String, CodingKey {
            case name

            case email

            case mobileNo = "mobile_no"
        }

        public init(email: String? = nil, mobileNo: SellerPhoneNumber? = nil, name: String? = nil) {
            self.name = name

            self.email = email

            self.mobileNo = mobileNo
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
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobileNo = try container.decode(SellerPhoneNumber.self, forKey: .mobileNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(mobileNo, forKey: .mobileNo)
        }
    }
}
