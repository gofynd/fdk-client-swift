

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var createdBy: [String: Any]?

        public var optLevel: String

        public var enabled: Bool

        public var brandIds: [Int]

        public var modifiedBy: [String: Any]?

        public var companyId: Int

        public var createdOn: Int

        public var storeIds: [Int]

        public var modifiedOn: Int

        public var platform: String

        public enum CodingKeys: String, CodingKey {
            case createdBy = "created_by"

            case optLevel = "opt_level"

            case enabled

            case brandIds = "brand_ids"

            case modifiedBy = "modified_by"

            case companyId = "company_id"

            case createdOn = "created_on"

            case storeIds = "store_ids"

            case modifiedOn = "modified_on"

            case platform
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.createdBy = createdBy

            self.optLevel = optLevel

            self.enabled = enabled

            self.brandIds = brandIds

            self.modifiedBy = modifiedBy

            self.companyId = companyId

            self.createdOn = createdOn

            self.storeIds = storeIds

            self.modifiedOn = modifiedOn

            self.platform = platform
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            optLevel = try container.decode(String.self, forKey: .optLevel)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            platform = try container.decode(String.self, forKey: .platform)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(platform, forKey: .platform)
        }
    }
}
