

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBrandName
         Used By: Order
     */

    class OrderBrandName: Codable {
        public var modifiedOn: Int?

        public var brandName: String

        public var company: String

        public var logo: String

        public var createdOn: Int

        public var id: Int

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case brandName = "brand_name"

            case company

            case logo

            case createdOn = "created_on"

            case id
        }

        public init(brandName: String, company: String, createdOn: Int, id: Int, logo: String, modifiedOn: Int? = nil) {
            self.modifiedOn = modifiedOn

            self.brandName = brandName

            self.company = company

            self.logo = logo

            self.createdOn = createdOn

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandName = try container.decode(String.self, forKey: .brandName)

            company = try container.decode(String.self, forKey: .company)

            logo = try container.decode(String.self, forKey: .logo)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            id = try container.decode(Int.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
