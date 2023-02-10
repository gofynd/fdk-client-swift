

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBrandName
         Used By: Order
     */

    class OrderBrandName: Codable {
        public var createdOn: Int

        public var id: Int

        public var logo: String

        public var modifiedOn: Int?

        public var brandName: String

        public var company: String?

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case id

            case logo

            case modifiedOn = "modified_on"

            case brandName = "brand_name"

            case company
        }

        public init(brandName: String, company: String? = nil, createdOn: Int, id: Int, logo: String, modifiedOn: Int? = nil) {
            self.createdOn = createdOn

            self.id = id

            self.logo = logo

            self.modifiedOn = modifiedOn

            self.brandName = brandName

            self.company = company
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            id = try container.decode(Int.self, forKey: .id)

            logo = try container.decode(String.self, forKey: .logo)

            do {
                modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandName = try container.decode(String.self, forKey: .brandName)

            do {
                company = try container.decode(String.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(company, forKey: .company)
        }
    }
}
