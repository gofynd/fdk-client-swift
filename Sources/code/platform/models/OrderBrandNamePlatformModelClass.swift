

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBrandName
         Used By: Order
     */

    class OrderBrandName: Codable {
        public var brandName: String

        public var modifiedOn: Int?

        public var logo: String

        public var createdOn: Int

        public var company: String?

        public var id: Int

        public enum CodingKeys: String, CodingKey {
            case brandName = "brand_name"

            case modifiedOn = "modified_on"

            case logo

            case createdOn = "created_on"

            case company

            case id
        }

        public init(brandName: String, company: String? = nil, createdOn: Int, id: Int, logo: String, modifiedOn: Int? = nil) {
            self.brandName = brandName

            self.modifiedOn = modifiedOn

            self.logo = logo

            self.createdOn = createdOn

            self.company = company

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandName = try container.decode(String.self, forKey: .brandName)

            do {
                modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            logo = try container.decode(String.self, forKey: .logo)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            do {
                company = try container.decode(String.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
