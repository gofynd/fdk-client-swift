

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var modifiedBy: [String: Any]?

        public var platform: String

        public var brandIds: [Int]

        public var optLevel: String

        public var createdOn: Int

        public var createdBy: [String: Any]?

        public var companyId: Int

        public var storeIds: [Int]

        public var enabled: Bool

        public var modifiedOn: Int

        public enum CodingKeys: String, CodingKey {
            case modifiedBy = "modified_by"

            case platform

            case brandIds = "brand_ids"

            case optLevel = "opt_level"

            case createdOn = "created_on"

            case createdBy = "created_by"

            case companyId = "company_id"

            case storeIds = "store_ids"

            case enabled

            case modifiedOn = "modified_on"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.modifiedBy = modifiedBy

            self.platform = platform

            self.brandIds = brandIds

            self.optLevel = optLevel

            self.createdOn = createdOn

            self.createdBy = createdBy

            self.companyId = companyId

            self.storeIds = storeIds

            self.enabled = enabled

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            platform = try container.decode(String.self, forKey: .platform)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
