

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentListingBrand
         Used By: Order
     */

    class ShipmentListingBrand: Codable {
        public var createdOn: String?

        public var logo: String?

        public var name: String?

        public var logoBase64: String?

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case logo

            case name

            case logoBase64 = "logo_base64"
        }

        public init(createdOn: String? = nil, logo: String? = nil, logoBase64: String? = nil, name: String? = nil) {
            self.createdOn = createdOn

            self.logo = logo

            self.name = name

            self.logoBase64 = logoBase64
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

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

            do {
                logoBase64 = try container.decode(String.self, forKey: .logoBase64)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logoBase64, forKey: .logoBase64)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentListingBrand
         Used By: Order
     */

    class ShipmentListingBrand: Codable {
        public var createdOn: String?

        public var logo: String?

        public var name: String?

        public var logoBase64: String?

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case logo

            case name

            case logoBase64 = "logo_base64"
        }

        public init(createdOn: String? = nil, logo: String? = nil, logoBase64: String? = nil, name: String? = nil) {
            self.createdOn = createdOn

            self.logo = logo

            self.name = name

            self.logoBase64 = logoBase64
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

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

            do {
                logoBase64 = try container.decode(String.self, forKey: .logoBase64)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logoBase64, forKey: .logoBase64)
        }
    }
}
