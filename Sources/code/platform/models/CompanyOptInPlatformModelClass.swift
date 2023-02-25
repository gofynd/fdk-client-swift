

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var modifiedOn: Int

        public var enabled: Bool

        public var modifiedBy: [String: Any]?

        public var platform: String

        public var createdOn: Int

        public var brandIds: [Int]

        public var optLevel: String

        public var createdBy: [String: Any]?

        public var storeIds: [Int]

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case enabled

            case modifiedBy = "modified_by"

            case platform

            case createdOn = "created_on"

            case brandIds = "brand_ids"

            case optLevel = "opt_level"

            case createdBy = "created_by"

            case storeIds = "store_ids"

            case companyId = "company_id"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.modifiedOn = modifiedOn

            self.enabled = enabled

            self.modifiedBy = modifiedBy

            self.platform = platform

            self.createdOn = createdOn

            self.brandIds = brandIds

            self.optLevel = optLevel

            self.createdBy = createdBy

            self.storeIds = storeIds

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            platform = try container.decode(String.self, forKey: .platform)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
