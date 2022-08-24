

import Foundation
public extension ApplicationClient {
    /*
         Model: KYCAddress
         Used By: Payment
     */
    class KYCAddress: Codable {
        public var ownershipType: String?

        public var state: String

        public var city: String

        public var addressline1: String

        public var landMark: String?

        public var addressline2: String?

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case ownershipType = "ownership_type"

            case state

            case city

            case addressline1

            case landMark = "land_mark"

            case addressline2

            case pincode
        }

        public init(addressline1: String, addressline2: String? = nil, city: String, landMark: String? = nil, ownershipType: String? = nil, pincode: String, state: String) {
            self.ownershipType = ownershipType

            self.state = state

            self.city = city

            self.addressline1 = addressline1

            self.landMark = landMark

            self.addressline2 = addressline2

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                ownershipType = try container.decode(String.self, forKey: .ownershipType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            addressline1 = try container.decode(String.self, forKey: .addressline1)

            do {
                landMark = try container.decode(String.self, forKey: .landMark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addressline2 = try container.decode(String.self, forKey: .addressline2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(ownershipType, forKey: .ownershipType)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(addressline1, forKey: .addressline1)

            try? container.encode(landMark, forKey: .landMark)

            try? container.encode(addressline2, forKey: .addressline2)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}
