

import Foundation
public extension PlatformClient {
    /*
         Model: DiscountJob
         Used By: Discount
     */

    class DiscountJob: Codable {
        public var id: String

        public var name: String

        public var companyId: Int

        public var isActive: Bool

        public var appIds: [String]?

        public var jobType: String?

        public var discountType: String?

        public var discountLevel: String?

        public var value: Int?

        public var filePath: String?

        public var brandIds: [Int]?

        public var storeIds: [Int]?

        public var validity: ValidityObject

        public var createdOn: String

        public var modifiedOn: String

        public var createdBy: UserDetails

        public var modifiedBy: UserDetails

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case name

            case companyId = "company_id"

            case isActive = "is_active"

            case appIds = "app_ids"

            case jobType = "job_type"

            case discountType = "discount_type"

            case discountLevel = "discount_level"

            case value

            case filePath = "file_path"

            case brandIds = "brand_ids"

            case storeIds = "store_ids"

            case validity

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case meta
        }

        public init(appIds: [String]? = nil, brandIds: [Int]? = nil, companyId: Int, createdBy: UserDetails, createdOn: String, discountLevel: String? = nil, discountType: String? = nil, filePath: String? = nil, isActive: Bool, jobType: String? = nil, meta: [String: Any]? = nil, modifiedBy: UserDetails, modifiedOn: String, name: String, storeIds: [Int]? = nil, validity: ValidityObject, value: Int? = nil, id: String) {
            self.id = id

            self.name = name

            self.companyId = companyId

            self.isActive = isActive

            self.appIds = appIds

            self.jobType = jobType

            self.discountType = discountType

            self.discountLevel = discountLevel

            self.value = value

            self.filePath = filePath

            self.brandIds = brandIds

            self.storeIds = storeIds

            self.validity = validity

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            name = try container.decode(String.self, forKey: .name)

            companyId = try container.decode(Int.self, forKey: .companyId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                appIds = try container.decode([String].self, forKey: .appIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                jobType = try container.decode(String.self, forKey: .jobType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discountType = try container.decode(String.self, forKey: .discountType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discountLevel = try container.decode(String.self, forKey: .discountLevel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(Int.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filePath = try container.decode(String.self, forKey: .filePath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandIds = try container.decode([Int].self, forKey: .brandIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeIds = try container.decode([Int].self, forKey: .storeIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            validity = try container.decode(ValidityObject.self, forKey: .validity)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            createdBy = try container.decode(UserDetails.self, forKey: .createdBy)

            modifiedBy = try container.decode(UserDetails.self, forKey: .modifiedBy)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(appIds, forKey: .appIds)

            try? container.encodeIfPresent(jobType, forKey: .jobType)

            try? container.encodeIfPresent(discountType, forKey: .discountType)

            try? container.encodeIfPresent(discountLevel, forKey: .discountLevel)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
