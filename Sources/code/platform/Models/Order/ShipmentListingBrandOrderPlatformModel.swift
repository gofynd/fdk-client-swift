

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentListingBrand
         Used By: Order
     */

    class ShipmentListingBrand: Codable {
        public var logo: String?

        public var createdOn: String?

        public var logoBase64: String?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case logo

            case createdOn = "created_on"

            case logoBase64 = "logo_base64"

            case name
        }

        public init(createdOn: String? = nil, logo: String? = nil, logoBase64: String? = nil, name: String? = nil) {
            self.logo = logo

            self.createdOn = createdOn

            self.logoBase64 = logoBase64

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logoBase64 = try container.decode(String.self, forKey: .logoBase64)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(logoBase64, forKey: .logoBase64)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentListingBrand
         Used By: Order
     */

    class ShipmentListingBrand: Codable {
        public var logo: String?

        public var createdOn: String?

        public var logoBase64: String?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case logo

            case createdOn = "created_on"

            case logoBase64 = "logo_base64"

            case name
        }

        public init(createdOn: String? = nil, logo: String? = nil, logoBase64: String? = nil, name: String? = nil) {
            self.logo = logo

            self.createdOn = createdOn

            self.logoBase64 = logoBase64

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logoBase64 = try container.decode(String.self, forKey: .logoBase64)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(logoBase64, forKey: .logoBase64)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
