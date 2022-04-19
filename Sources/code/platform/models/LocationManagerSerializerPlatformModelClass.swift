import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: LocationManagerSerializer
         Used By: Catalog
     */

    class LocationManagerSerializer: Codable {
        public var name: String?

        public var mobileNo: SellerPhoneNumber

        public var email: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case mobileNo = "mobile_no"

            case email
        }

        public init(email: String? = nil, mobileNo: SellerPhoneNumber, name: String? = nil) {
            self.name = name

            self.mobileNo = mobileNo

            self.email = email
        }

        public func duplicate() -> LocationManagerSerializer {
            let dict = self.dictionary!
            let copy = LocationManagerSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobileNo = try container.decode(SellerPhoneNumber.self, forKey: .mobileNo)

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

            try? container.encodeIfPresent(mobileNo, forKey: .mobileNo)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
