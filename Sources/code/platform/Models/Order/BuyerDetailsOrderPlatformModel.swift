

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BuyerDetails
         Used By: Order
     */

    class BuyerDetails: Codable {
        public var pincode: Int

        public var city: String

        public var address: String

        public var name: String

        public var state: String

        public var gstin: String

        public var ajioSiteId: String?

        public enum CodingKeys: String, CodingKey {
            case pincode

            case city

            case address

            case name

            case state

            case gstin

            case ajioSiteId = "ajio_site_id"
        }

        public init(address: String, ajioSiteId: String? = nil, city: String, gstin: String, name: String, pincode: Int, state: String) {
            self.pincode = pincode

            self.city = city

            self.address = address

            self.name = name

            self.state = state

            self.gstin = gstin

            self.ajioSiteId = ajioSiteId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(Int.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            address = try container.decode(String.self, forKey: .address)

            name = try container.decode(String.self, forKey: .name)

            state = try container.decode(String.self, forKey: .state)

            gstin = try container.decode(String.self, forKey: .gstin)

            do {
                ajioSiteId = try container.decode(String.self, forKey: .ajioSiteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(address, forKey: .address)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(ajioSiteId, forKey: .ajioSiteId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BuyerDetails
         Used By: Order
     */

    class BuyerDetails: Codable {
        public var pincode: Int

        public var city: String

        public var address: String

        public var name: String

        public var state: String

        public var gstin: String

        public var ajioSiteId: String?

        public enum CodingKeys: String, CodingKey {
            case pincode

            case city

            case address

            case name

            case state

            case gstin

            case ajioSiteId = "ajio_site_id"
        }

        public init(address: String, ajioSiteId: String? = nil, city: String, gstin: String, name: String, pincode: Int, state: String) {
            self.pincode = pincode

            self.city = city

            self.address = address

            self.name = name

            self.state = state

            self.gstin = gstin

            self.ajioSiteId = ajioSiteId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(Int.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            address = try container.decode(String.self, forKey: .address)

            name = try container.decode(String.self, forKey: .name)

            state = try container.decode(String.self, forKey: .state)

            gstin = try container.decode(String.self, forKey: .gstin)

            do {
                ajioSiteId = try container.decode(String.self, forKey: .ajioSiteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(address, forKey: .address)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(ajioSiteId, forKey: .ajioSiteId)
        }
    }
}
