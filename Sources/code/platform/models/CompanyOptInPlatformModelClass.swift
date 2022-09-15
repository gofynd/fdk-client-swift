

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var optLevel: String

        public var brandIds: [Int]

        public var createdBy: [String: Any]?

        public var platform: String

        public var storeIds: [Int]

        public var companyId: Int

        public var modifiedOn: Int

        public var modifiedBy: [String: Any]?

        public var createdOn: Int

        public var enabled: Bool

        public enum CodingKeys: String, CodingKey {
            case optLevel = "opt_level"

            case brandIds = "brand_ids"

            case createdBy = "created_by"

            case platform

            case storeIds = "store_ids"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case enabled
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.optLevel = optLevel

            self.brandIds = brandIds

            self.createdBy = createdBy

            self.platform = platform

            self.storeIds = storeIds

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.enabled = enabled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            platform = try container.decode(String.self, forKey: .platform)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            enabled = try container.decode(Bool.self, forKey: .enabled)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }
}
