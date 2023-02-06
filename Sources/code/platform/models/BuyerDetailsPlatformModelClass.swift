

import Foundation
public extension PlatformClient {
    /*
         Model: BuyerDetails
         Used By: Order
     */

    class BuyerDetails: Codable {
        public var pincode: Int

        public var ajioSiteId: String?

        public var name: String

        public var address: String

        public var gstin: String

        public var city: String

        public var state: String

        public enum CodingKeys: String, CodingKey {
            case pincode

            case ajioSiteId = "ajio_site_id"

            case name

            case address

            case gstin

            case city

            case state
        }

        public init(address: String, ajioSiteId: String? = nil, city: String, gstin: String, name: String, pincode: Int, state: String) {
            self.pincode = pincode

            self.ajioSiteId = ajioSiteId

            self.name = name

            self.address = address

            self.gstin = gstin

            self.city = city

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(Int.self, forKey: .pincode)

            do {
                ajioSiteId = try container.decode(String.self, forKey: .ajioSiteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            address = try container.decode(String.self, forKey: .address)

            gstin = try container.decode(String.self, forKey: .gstin)

            city = try container.decode(String.self, forKey: .city)

            state = try container.decode(String.self, forKey: .state)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(ajioSiteId, forKey: .ajioSiteId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(address, forKey: .address)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}
