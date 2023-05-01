

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BuyerDetails
         Used By: Order
     */

    class BuyerDetails: Codable {
        public var address: String

        public var pincode: Int

        public var gstin: String

        public var ajioSiteId: String?

        public var name: String

        public var state: String

        public var city: String

        public enum CodingKeys: String, CodingKey {
            case address

            case pincode

            case gstin

            case ajioSiteId = "ajio_site_id"

            case name

            case state

            case city
        }

        public init(address: String, ajioSiteId: String? = nil, city: String, gstin: String, name: String, pincode: Int, state: String) {
            self.address = address

            self.pincode = pincode

            self.gstin = gstin

            self.ajioSiteId = ajioSiteId

            self.name = name

            self.state = state

            self.city = city
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            pincode = try container.decode(Int.self, forKey: .pincode)

            gstin = try container.decode(String.self, forKey: .gstin)

            do {
                ajioSiteId = try container.decode(String.self, forKey: .ajioSiteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(address, forKey: .address)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(ajioSiteId, forKey: .ajioSiteId)

            try? container.encodeIfPresent(name, forKey: .name)

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
        public var address: String

        public var pincode: Int

        public var gstin: String

        public var ajioSiteId: String?

        public var name: String

        public var state: String

        public var city: String

        public enum CodingKeys: String, CodingKey {
            case address

            case pincode

            case gstin

            case ajioSiteId = "ajio_site_id"

            case name

            case state

            case city
        }

        public init(address: String, ajioSiteId: String? = nil, city: String, gstin: String, name: String, pincode: Int, state: String) {
            self.address = address

            self.pincode = pincode

            self.gstin = gstin

            self.ajioSiteId = ajioSiteId

            self.name = name

            self.state = state

            self.city = city
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            pincode = try container.decode(Int.self, forKey: .pincode)

            gstin = try container.decode(String.self, forKey: .gstin)

            do {
                ajioSiteId = try container.decode(String.self, forKey: .ajioSiteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(address, forKey: .address)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(ajioSiteId, forKey: .ajioSiteId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)
        }
    }
}
