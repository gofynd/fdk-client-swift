

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BuyerDetails
         Used By: Order
     */

    class BuyerDetails: Codable {
        public var name: String

        public var pincode: Int

        public var gstin: String

        public var address: String

        public var ajioSiteId: String?

        public var state: String

        public var city: String

        public enum CodingKeys: String, CodingKey {
            case name

            case pincode

            case gstin

            case address

            case ajioSiteId = "ajio_site_id"

            case state

            case city
        }

        public init(address: String, ajioSiteId: String? = nil, city: String, gstin: String, name: String, pincode: Int, state: String) {
            self.name = name

            self.pincode = pincode

            self.gstin = gstin

            self.address = address

            self.ajioSiteId = ajioSiteId

            self.state = state

            self.city = city
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            pincode = try container.decode(Int.self, forKey: .pincode)

            gstin = try container.decode(String.self, forKey: .gstin)

            address = try container.decode(String.self, forKey: .address)

            do {
                ajioSiteId = try container.decode(String.self, forKey: .ajioSiteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encode(address, forKey: .address)

            try? container.encodeIfPresent(ajioSiteId, forKey: .ajioSiteId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BuyerDetails
         Used By: Order
     */

    class BuyerDetails: Codable {
        public var name: String

        public var pincode: Int

        public var gstin: String

        public var address: String

        public var ajioSiteId: String?

        public var state: String

        public var city: String

        public enum CodingKeys: String, CodingKey {
            case name

            case pincode

            case gstin

            case address

            case ajioSiteId = "ajio_site_id"

            case state

            case city
        }

        public init(address: String, ajioSiteId: String? = nil, city: String, gstin: String, name: String, pincode: Int, state: String) {
            self.name = name

            self.pincode = pincode

            self.gstin = gstin

            self.address = address

            self.ajioSiteId = ajioSiteId

            self.state = state

            self.city = city
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            pincode = try container.decode(Int.self, forKey: .pincode)

            gstin = try container.decode(String.self, forKey: .gstin)

            address = try container.decode(String.self, forKey: .address)

            do {
                ajioSiteId = try container.decode(String.self, forKey: .ajioSiteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encode(address, forKey: .address)

            try? container.encodeIfPresent(ajioSiteId, forKey: .ajioSiteId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)
        }
    }
}
