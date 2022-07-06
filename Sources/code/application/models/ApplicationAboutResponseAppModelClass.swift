

import Foundation
public extension ApplicationClient {
    /*
         Model: ApplicationAboutResponse
         Used By: Configuration
     */
    class ApplicationAboutResponse: Codable {
        public var applicationInfo: ApplicationInfo?

        public var companyInfo: CompanyInfo?

        public var ownerInfo: OwnerInfo?

        public enum CodingKeys: String, CodingKey {
            case applicationInfo = "application_info"

            case companyInfo = "company_info"

            case ownerInfo = "owner_info"
        }

        public init(applicationInfo: ApplicationInfo? = nil, companyInfo: CompanyInfo? = nil, ownerInfo: OwnerInfo? = nil) {
            self.applicationInfo = applicationInfo

            self.companyInfo = companyInfo

            self.ownerInfo = ownerInfo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                applicationInfo = try container.decode(ApplicationInfo.self, forKey: .applicationInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyInfo = try container.decode(CompanyInfo.self, forKey: .companyInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ownerInfo = try container.decode(OwnerInfo.self, forKey: .ownerInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applicationInfo, forKey: .applicationInfo)

            try? container.encodeIfPresent(companyInfo, forKey: .companyInfo)

            try? container.encodeIfPresent(ownerInfo, forKey: .ownerInfo)
        }
    }
}
