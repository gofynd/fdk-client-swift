

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderBrandName
         Used By: Order
     */

    class OrderBrandName: Codable {
        public var company: String

        public var modifiedOn: String?

        public var logo: String

        public var brandName: String

        public var id: Int

        public var createdOn: String

        public enum CodingKeys: String, CodingKey {
            case company

            case modifiedOn = "modified_on"

            case logo

            case brandName = "brand_name"

            case id

            case createdOn = "created_on"
        }

        public init(brandName: String, company: String, createdOn: String, id: Int, logo: String, modifiedOn: String? = nil) {
            self.company = company

            self.modifiedOn = modifiedOn

            self.logo = logo

            self.brandName = brandName

            self.id = id

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            company = try container.decode(String.self, forKey: .company)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            logo = try container.decode(String.self, forKey: .logo)

            brandName = try container.decode(String.self, forKey: .brandName)

            id = try container.decode(Int.self, forKey: .id)

            createdOn = try container.decode(String.self, forKey: .createdOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(company, forKey: .company)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderBrandName
         Used By: Order
     */

    class OrderBrandName: Codable {
        public var company: String

        public var modifiedOn: String?

        public var logo: String

        public var brandName: String

        public var id: Int

        public var createdOn: String

        public enum CodingKeys: String, CodingKey {
            case company

            case modifiedOn = "modified_on"

            case logo

            case brandName = "brand_name"

            case id

            case createdOn = "created_on"
        }

        public init(brandName: String, company: String, createdOn: String, id: Int, logo: String, modifiedOn: String? = nil) {
            self.company = company

            self.modifiedOn = modifiedOn

            self.logo = logo

            self.brandName = brandName

            self.id = id

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            company = try container.decode(String.self, forKey: .company)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            logo = try container.decode(String.self, forKey: .logo)

            brandName = try container.decode(String.self, forKey: .brandName)

            id = try container.decode(Int.self, forKey: .id)

            createdOn = try container.decode(String.self, forKey: .createdOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(company, forKey: .company)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}
