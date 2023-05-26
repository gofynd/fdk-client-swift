

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderBrandName
         Used By: Order
     */

    class OrderBrandName: Codable {
        public var modifiedOn: String?

        public var brandName: String

        public var id: Int

        public var createdOn: String

        public var company: String

        public var logo: String

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case brandName = "brand_name"

            case id

            case createdOn = "created_on"

            case company

            case logo
        }

        public init(brandName: String, company: String, createdOn: String, id: Int, logo: String, modifiedOn: String? = nil) {
            self.modifiedOn = modifiedOn

            self.brandName = brandName

            self.id = id

            self.createdOn = createdOn

            self.company = company

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandName = try container.decode(String.self, forKey: .brandName)

            id = try container.decode(Int.self, forKey: .id)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            company = try container.decode(String.self, forKey: .company)

            logo = try container.decode(String.self, forKey: .logo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(company, forKey: .company)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderBrandName
         Used By: Order
     */

    class OrderBrandName: Codable {
        public var modifiedOn: String?

        public var brandName: String

        public var id: Int

        public var createdOn: String

        public var company: String

        public var logo: String

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case brandName = "brand_name"

            case id

            case createdOn = "created_on"

            case company

            case logo
        }

        public init(brandName: String, company: String, createdOn: String, id: Int, logo: String, modifiedOn: String? = nil) {
            self.modifiedOn = modifiedOn

            self.brandName = brandName

            self.id = id

            self.createdOn = createdOn

            self.company = company

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandName = try container.decode(String.self, forKey: .brandName)

            id = try container.decode(Int.self, forKey: .id)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            company = try container.decode(String.self, forKey: .company)

            logo = try container.decode(String.self, forKey: .logo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(company, forKey: .company)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}
