

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BuyerDetails
         Used By: Order
     */

    class BuyerDetails: Codable {
        public var pincode: Int

        public var name: String

        public var ajioSiteId: String?

        public var gstin: String

        public var state: String

        public var city: String

        public var address: String

        public enum CodingKeys: String, CodingKey {
            case pincode

            case name

            case ajioSiteId = "ajio_site_id"

            case gstin

            case state

            case city

            case address
        }

        public init(address: String, ajioSiteId: String? = nil, city: String, gstin: String, name: String, pincode: Int, state: String) {
            self.pincode = pincode

            self.name = name

            self.ajioSiteId = ajioSiteId

            self.gstin = gstin

            self.state = state

            self.city = city

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(Int.self, forKey: .pincode)

            name = try container.decode(String.self, forKey: .name)

            do {
                ajioSiteId = try container.decode(String.self, forKey: .ajioSiteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstin = try container.decode(String.self, forKey: .gstin)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            address = try container.decode(String.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(ajioSiteId, forKey: .ajioSiteId)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(address, forKey: .address)
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

        public var name: String

        public var ajioSiteId: String?

        public var gstin: String

        public var state: String

        public var city: String

        public var address: String

        public enum CodingKeys: String, CodingKey {
            case pincode

            case name

            case ajioSiteId = "ajio_site_id"

            case gstin

            case state

            case city

            case address
        }

        public init(address: String, ajioSiteId: String? = nil, city: String, gstin: String, name: String, pincode: Int, state: String) {
            self.pincode = pincode

            self.name = name

            self.ajioSiteId = ajioSiteId

            self.gstin = gstin

            self.state = state

            self.city = city

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(Int.self, forKey: .pincode)

            name = try container.decode(String.self, forKey: .name)

            do {
                ajioSiteId = try container.decode(String.self, forKey: .ajioSiteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstin = try container.decode(String.self, forKey: .gstin)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            address = try container.decode(String.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(ajioSiteId, forKey: .ajioSiteId)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(address, forKey: .address)
        }
    }
}
