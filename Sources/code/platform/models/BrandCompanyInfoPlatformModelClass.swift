

import Foundation
public extension PlatformClient {
    /*
         Model: BrandCompanyInfo
         Used By: Configuration
     */

    class BrandCompanyInfo: Codable {
        public var companyName: String?

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case companyName = "company_name"

            case companyId = "company_id"
        }

        public init(companyId: Int? = nil, companyName: String? = nil) {
            self.companyName = companyName

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyName = try container.decode(String.self, forKey: .companyName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyName, forKey: .companyName)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
