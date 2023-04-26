

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderBrandName
         Used By: Order
     */

    class OrderBrandName: Codable {
        public var company: String

        public var logo: String

        public var brandName: String

        public var createdOn: String

        public var id: Int

        public var modifiedOn: String?

        public enum CodingKeys: String, CodingKey {
            case company

            case logo

            case brandName = "brand_name"

            case createdOn = "created_on"

            case id

            case modifiedOn = "modified_on"
        }

        public init(brandName: String, company: String, createdOn: String, id: Int, logo: String, modifiedOn: String? = nil) {
            self.company = company

            self.logo = logo

            self.brandName = brandName

            self.createdOn = createdOn

            self.id = id

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            company = try container.decode(String.self, forKey: .company)

            logo = try container.decode(String.self, forKey: .logo)

            brandName = try container.decode(String.self, forKey: .brandName)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            id = try container.decode(Int.self, forKey: .id)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(company, forKey: .company)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(id, forKey: .id)

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
        public var company: String

        public var logo: String

        public var brandName: String

        public var createdOn: String

        public var id: Int

        public var modifiedOn: String?

        public enum CodingKeys: String, CodingKey {
            case company

            case logo

            case brandName = "brand_name"

            case createdOn = "created_on"

            case id

            case modifiedOn = "modified_on"
        }

        public init(brandName: String, company: String, createdOn: String, id: Int, logo: String, modifiedOn: String? = nil) {
            self.company = company

            self.logo = logo

            self.brandName = brandName

            self.createdOn = createdOn

            self.id = id

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            company = try container.decode(String.self, forKey: .company)

            logo = try container.decode(String.self, forKey: .logo)

            brandName = try container.decode(String.self, forKey: .brandName)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            id = try container.decode(Int.self, forKey: .id)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(company, forKey: .company)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
