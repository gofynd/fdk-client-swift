

import Foundation

public extension PlatformClient.Discount {
    /*
         Model: FileJobRequest
         Used By: Discount
     */

    class FileJobRequest: Codable {
        public var name: String

        public var isActive: Bool

        public var appIds: [String]?

        public var jobType: String?

        public var discountType: String?

        public var discountLevel: String?

        public var filePath: String?

        public var brandIds: [Int]?

        public var storeIds: [Int]?

        public var validity: ValidityObject

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case name

            case isActive = "is_active"

            case appIds = "app_ids"

            case jobType = "job_type"

            case discountType = "discount_type"

            case discountLevel = "discount_level"

            case filePath = "file_path"

            case brandIds = "brand_ids"

            case storeIds = "store_ids"

            case validity

            case meta
        }

        public init(appIds: [String]? = nil, brandIds: [Int]? = nil, discountLevel: String? = nil, discountType: String? = nil, filePath: String? = nil, isActive: Bool, jobType: String? = nil, meta: [String: Any]? = nil, name: String, storeIds: [Int]? = nil, validity: ValidityObject) {
            self.name = name

            self.isActive = isActive

            self.appIds = appIds

            self.jobType = jobType

            self.discountType = discountType

            self.discountLevel = discountLevel

            self.filePath = filePath

            self.brandIds = brandIds

            self.storeIds = storeIds

            self.validity = validity

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

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

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(appIds, forKey: .appIds)

            try? container.encodeIfPresent(jobType, forKey: .jobType)

            try? container.encodeIfPresent(discountType, forKey: .discountType)

            try? container.encodeIfPresent(discountLevel, forKey: .discountLevel)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
