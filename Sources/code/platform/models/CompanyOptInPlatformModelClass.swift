

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var modifiedOn: Int

        public var modifiedBy: [String: Any]?

        public var brandIds: [Int]

        public var storeIds: [Int]

        public var companyId: Int

        public var optLevel: String

        public var enabled: Bool

        public var createdOn: Int

        public var createdBy: [String: Any]?

        public var platform: String

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case modifiedBy = "modified_by"

            case brandIds = "brand_ids"

            case storeIds = "store_ids"

            case companyId = "company_id"

            case optLevel = "opt_level"

            case enabled

            case createdOn = "created_on"

            case createdBy = "created_by"

            case platform
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.modifiedOn = modifiedOn

            self.modifiedBy = modifiedBy

            self.brandIds = brandIds

            self.storeIds = storeIds

            self.companyId = companyId

            self.optLevel = optLevel

            self.enabled = enabled

            self.createdOn = createdOn

            self.createdBy = createdBy

            self.platform = platform
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            companyId = try container.decode(Int.self, forKey: .companyId)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            platform = try container.decode(String.self, forKey: .platform)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(platform, forKey: .platform)
        }
    }
}
