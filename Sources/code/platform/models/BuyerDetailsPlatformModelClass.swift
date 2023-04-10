

import Foundation
public extension PlatformClient {
    /*
         Model: BuyerDetails
         Used By: Order
     */

    class BuyerDetails: Codable {
        public var city: String

        public var address: String

        public var ajioSiteId: String?

        public var gstin: String

        public var name: String

        public var pincode: Int

        public var state: String

        public enum CodingKeys: String, CodingKey {
            case city

            case address

            case ajioSiteId = "ajio_site_id"

            case gstin

            case name

            case pincode

            case state
        }

        public init(address: String, ajioSiteId: String? = nil, city: String, gstin: String, name: String, pincode: Int, state: String) {
            self.city = city

            self.address = address

            self.ajioSiteId = ajioSiteId

            self.gstin = gstin

            self.name = name

            self.pincode = pincode

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            address = try container.decode(String.self, forKey: .address)

            do {
                ajioSiteId = try container.decode(String.self, forKey: .ajioSiteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstin = try container.decode(String.self, forKey: .gstin)

            name = try container.decode(String.self, forKey: .name)

            pincode = try container.decode(Int.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(address, forKey: .address)

            try? container.encodeIfPresent(ajioSiteId, forKey: .ajioSiteId)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}
