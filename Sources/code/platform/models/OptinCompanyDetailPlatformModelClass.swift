

import Foundation
public extension PlatformClient {
    /*
         Model: OptinCompanyDetail
         Used By: Catalog
     */

    class OptinCompanyDetail: Codable {
        public var companyType: String?

        public var businessType: String?

        public var name: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case companyType = "company_type"

            case businessType = "business_type"

            case name

            case uid
        }

        public init(businessType: String? = nil, companyType: String? = nil, name: String? = nil, uid: Int? = nil) {
            self.companyType = companyType

            self.businessType = businessType

            self.name = name

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyType = try container.decode(String.self, forKey: .companyType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                businessType = try container.decode(String.self, forKey: .businessType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyType, forKey: .companyType)

            try? container.encodeIfPresent(businessType, forKey: .businessType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}
