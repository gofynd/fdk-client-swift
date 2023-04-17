

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BuyerDetails
         Used By: Order
     */

    class BuyerDetails: Codable {
        public var address: String

        public var ajioSiteId: String?

        public var pincode: Int

        public var state: String

        public var gstin: String

        public var city: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case address

            case ajioSiteId = "ajio_site_id"

            case pincode

            case state

            case gstin

            case city

            case name
        }

        public init(address: String, ajioSiteId: String? = nil, city: String, gstin: String, name: String, pincode: Int, state: String) {
            self.address = address

            self.ajioSiteId = ajioSiteId

            self.pincode = pincode

            self.state = state

            self.gstin = gstin

            self.city = city

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            do {
                ajioSiteId = try container.decode(String.self, forKey: .ajioSiteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(Int.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            gstin = try container.decode(String.self, forKey: .gstin)

            city = try container.decode(String.self, forKey: .city)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(address, forKey: .address)

            try? container.encodeIfPresent(ajioSiteId, forKey: .ajioSiteId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BuyerDetails
         Used By: Order
     */

    class BuyerDetails: Codable {
        public var address: String

        public var ajioSiteId: String?

        public var pincode: Int

        public var state: String

        public var gstin: String

        public var city: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case address

            case ajioSiteId = "ajio_site_id"

            case pincode

            case state

            case gstin

            case city

            case name
        }

        public init(address: String, ajioSiteId: String? = nil, city: String, gstin: String, name: String, pincode: Int, state: String) {
            self.address = address

            self.ajioSiteId = ajioSiteId

            self.pincode = pincode

            self.state = state

            self.gstin = gstin

            self.city = city

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            do {
                ajioSiteId = try container.decode(String.self, forKey: .ajioSiteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(Int.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            gstin = try container.decode(String.self, forKey: .gstin)

            city = try container.decode(String.self, forKey: .city)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(address, forKey: .address)

            try? container.encodeIfPresent(ajioSiteId, forKey: .ajioSiteId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
