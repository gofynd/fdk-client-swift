

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var brandIds: [Int]

        public var storeIds: [Int]

        public var enabled: Bool

        public var platform: String

        public var createdOn: Int

        public var companyId: Int

        public var modifiedBy: [String: Any]?

        public var optLevel: String

        public var modifiedOn: Int

        public var createdBy: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case brandIds = "brand_ids"

            case storeIds = "store_ids"

            case enabled

            case platform

            case createdOn = "created_on"

            case companyId = "company_id"

            case modifiedBy = "modified_by"

            case optLevel = "opt_level"

            case modifiedOn = "modified_on"

            case createdBy = "created_by"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.brandIds = brandIds

            self.storeIds = storeIds

            self.enabled = enabled

            self.platform = platform

            self.createdOn = createdOn

            self.companyId = companyId

            self.modifiedBy = modifiedBy

            self.optLevel = optLevel

            self.modifiedOn = modifiedOn

            self.createdBy = createdBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            platform = try container.decode(String.self, forKey: .platform)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            optLevel = try container.decode(String.self, forKey: .optLevel)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
        }
    }
}
