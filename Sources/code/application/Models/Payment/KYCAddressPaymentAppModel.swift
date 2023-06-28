

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: KYCAddress
         Used By: Payment
     */
    class KYCAddress: Codable {
        public var addressline1: String

        public var pincode: String

        public var landMark: String?

        public var addressline2: String?

        public var city: String

        public var state: String

        public var ownershipType: String?

        public enum CodingKeys: String, CodingKey {
            case addressline1

            case pincode

            case landMark = "land_mark"

            case addressline2

            case city

            case state

            case ownershipType = "ownership_type"
        }

        public init(addressline1: String, addressline2: String? = nil, city: String, landMark: String? = nil, ownershipType: String? = nil, pincode: String, state: String) {
            self.addressline1 = addressline1

            self.pincode = pincode

            self.landMark = landMark

            self.addressline2 = addressline2

            self.city = city

            self.state = state

            self.ownershipType = ownershipType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addressline1 = try container.decode(String.self, forKey: .addressline1)

            pincode = try container.decode(String.self, forKey: .pincode)

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

            city = try container.decode(String.self, forKey: .city)

            state = try container.decode(String.self, forKey: .state)

            do {
                ownershipType = try container.decode(String.self, forKey: .ownershipType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addressline1, forKey: .addressline1)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(landMark, forKey: .landMark)

            try? container.encode(addressline2, forKey: .addressline2)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(ownershipType, forKey: .ownershipType)
        }
    }
}
