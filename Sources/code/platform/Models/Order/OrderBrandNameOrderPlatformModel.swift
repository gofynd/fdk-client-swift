

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderBrandName
         Used By: Order
     */

    class OrderBrandName: Codable {
        public var brandName: String

        public var id: Int

        public var logo: String

        public var createdOn: String

        public var company: String

        public var modifiedOn: String?

        public enum CodingKeys: String, CodingKey {
            case brandName = "brand_name"

            case id

            case logo

            case createdOn = "created_on"

            case company

            case modifiedOn = "modified_on"
        }

        public init(brandName: String, company: String, createdOn: String, id: Int, logo: String, modifiedOn: String? = nil) {
            self.brandName = brandName

            self.id = id

            self.logo = logo

            self.createdOn = createdOn

            self.company = company

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandName = try container.decode(String.self, forKey: .brandName)

            id = try container.decode(Int.self, forKey: .id)

            logo = try container.decode(String.self, forKey: .logo)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            company = try container.decode(String.self, forKey: .company)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(company, forKey: .company)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderBrandName
         Used By: Order
     */

    class OrderBrandName: Codable {
        public var brandName: String

        public var id: Int

        public var logo: String

        public var createdOn: String

        public var company: String

        public var modifiedOn: String?

        public enum CodingKeys: String, CodingKey {
            case brandName = "brand_name"

            case id

            case logo

            case createdOn = "created_on"

            case company

            case modifiedOn = "modified_on"
        }

        public init(brandName: String, company: String, createdOn: String, id: Int, logo: String, modifiedOn: String? = nil) {
            self.brandName = brandName

            self.id = id

            self.logo = logo

            self.createdOn = createdOn

            self.company = company

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandName = try container.decode(String.self, forKey: .brandName)

            id = try container.decode(Int.self, forKey: .id)

            logo = try container.decode(String.self, forKey: .logo)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            company = try container.decode(String.self, forKey: .company)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(company, forKey: .company)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
