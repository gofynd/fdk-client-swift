

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBrandName
         Used By: Order
     */

    class OrderBrandName: Codable {
        public var company: String

        public var id: Int

        public var logo: String

        public var createdOn: Int

        public var modifiedOn: Int?

        public var brandName: String

        public enum CodingKeys: String, CodingKey {
            case company

            case id

            case logo

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case brandName = "brand_name"
        }

        public init(brandName: String, company: String, createdOn: Int, id: Int, logo: String, modifiedOn: Int? = nil) {
            self.company = company

            self.id = id

            self.logo = logo

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.brandName = brandName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            company = try container.decode(String.self, forKey: .company)

            id = try container.decode(Int.self, forKey: .id)

            logo = try container.decode(String.self, forKey: .logo)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            do {
                modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandName = try container.decode(String.self, forKey: .brandName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(brandName, forKey: .brandName)
        }
    }
}
