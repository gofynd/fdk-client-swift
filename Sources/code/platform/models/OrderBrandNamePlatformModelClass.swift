

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBrandName
         Used By: Order
     */

    class OrderBrandName: Codable {
        public var modifiedOn: Int?

        public var company: String

        public var createdOn: Int

        public var brandName: String

        public var id: Int

        public var logo: String

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case company

            case createdOn = "created_on"

            case brandName = "brand_name"

            case id

            case logo
        }

        public init(brandName: String, company: String, createdOn: Int, id: Int, logo: String, modifiedOn: Int? = nil) {
            self.modifiedOn = modifiedOn

            self.company = company

            self.createdOn = createdOn

            self.brandName = brandName

            self.id = id

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(String.self, forKey: .company)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            brandName = try container.decode(String.self, forKey: .brandName)

            id = try container.decode(Int.self, forKey: .id)

            logo = try container.decode(String.self, forKey: .logo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}
