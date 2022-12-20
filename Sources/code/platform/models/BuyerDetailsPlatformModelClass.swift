

import Foundation
public extension PlatformClient {
    /*
         Model: BuyerDetails
         Used By: Order
     */

    class BuyerDetails: Codable {
        public var state: String

        public var city: String

        public var gstin: String

        public var ajioSiteId: String?

        public var pincode: Int

        public var address: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case state

            case city

            case gstin

            case ajioSiteId = "ajio_site_id"

            case pincode

            case address

            case name
        }

        public init(address: String, ajioSiteId: String? = nil, city: String, gstin: String, name: String, pincode: Int, state: String) {
            self.state = state

            self.city = city

            self.gstin = gstin

            self.ajioSiteId = ajioSiteId

            self.pincode = pincode

            self.address = address

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            gstin = try container.decode(String.self, forKey: .gstin)

            do {
                ajioSiteId = try container.decode(String.self, forKey: .ajioSiteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(Int.self, forKey: .pincode)

            address = try container.decode(String.self, forKey: .address)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(ajioSiteId, forKey: .ajioSiteId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(address, forKey: .address)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}