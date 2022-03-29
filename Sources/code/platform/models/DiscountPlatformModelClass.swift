import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ValidityObject
         Used By: Discount
     */

    class ValidityObject: Codable {
        public var start: String

        public var end: String

        public enum CodingKeys: String, CodingKey {
            case start

            case end
        }

        public init(end: String, start: String) {
            self.start = start

            self.end = end
        }

        public func duplicate() -> ValidityObject {
            let dict = self.dictionary!
            let copy = ValidityObject(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            start = try container.decode(String.self, forKey: .start)

            end = try container.decode(String.self, forKey: .end)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(start, forKey: .start)

            try? container.encodeIfPresent(end, forKey: .end)
        }
    }

    /*
         Model: CreateUpdateDiscount
         Used By: Discount
     */

    class CreateUpdateDiscount: Codable {
        public var name: String

        public var companyId: Int

        public var isActive: Bool

        public var appIds: [String]

        public var extensionIds: [String]

        public var jobType: String

        public var discountType: String

        public var discountLevel: String

        public var value: Int?

        public var filePath: String?

        public var brandIds: [Int]?

        public var storeIds: [Int]?

        public var validity: ValidityObject

        public enum CodingKeys: String, CodingKey {
            case name

            case companyId = "company_id"

            case isActive = "is_active"

            case appIds = "app_ids"

            case extensionIds = "extension_ids"

            case jobType = "job_type"

            case discountType = "discount_type"

            case discountLevel = "discount_level"

            case value

            case filePath = "file_path"

            case brandIds = "brand_ids"

            case storeIds = "store_ids"

            case validity
        }

        public init(appIds: [String], brandIds: [Int]?, companyId: Int, discountLevel: String, discountType: String, extensionIds: [String], filePath: String?, isActive: Bool, jobType: String, name: String, storeIds: [Int]?, validity: ValidityObject, value: Int?) {
            self.name = name

            self.companyId = companyId

            self.isActive = isActive

            self.appIds = appIds

            self.extensionIds = extensionIds

            self.jobType = jobType

            self.discountType = discountType

            self.discountLevel = discountLevel

            self.value = value

            self.filePath = filePath

            self.brandIds = brandIds

            self.storeIds = storeIds

            self.validity = validity
        }

        public func duplicate() -> CreateUpdateDiscount {
            let dict = self.dictionary!
            let copy = CreateUpdateDiscount(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            companyId = try container.decode(Int.self, forKey: .companyId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            appIds = try container.decode([String].self, forKey: .appIds)

            extensionIds = try container.decode([String].self, forKey: .extensionIds)

            jobType = try container.decode(String.self, forKey: .jobType)

            discountType = try container.decode(String.self, forKey: .discountType)

            discountLevel = try container.decode(String.self, forKey: .discountLevel)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(appIds, forKey: .appIds)

            try? container.encodeIfPresent(extensionIds, forKey: .extensionIds)

            try? container.encodeIfPresent(jobType, forKey: .jobType)

            try? container.encodeIfPresent(discountType, forKey: .discountType)

            try? container.encodeIfPresent(discountLevel, forKey: .discountLevel)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(validity, forKey: .validity)
        }
    }

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

        public init(appIds: [String]?, brandIds: [Int]?, companyId: Int, createdBy: UserDetails, createdOn: String, discountLevel: String?, discountType: String?, filePath: String?, isActive: Bool, jobType: String?, meta: [String: Any]?, modifiedBy: UserDetails, modifiedOn: String, name: String, storeIds: [Int]?, validity: ValidityObject, value: Int?, id: String) {
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

        public func duplicate() -> DiscountJob {
            let dict = self.dictionary!
            let copy = DiscountJob(dictionary: dict)!
            return copy
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

    /*
         Model: ListOrCalender
         Used By: Discount
     */

    class ListOrCalender: Codable {
        public var items: [DiscountJob]

        public var page: Page

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [DiscountJob], page: Page) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> ListOrCalender {
            let dict = self.dictionary!
            let copy = ListOrCalender(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([DiscountJob].self, forKey: .items)

            page = try container.decode(Page.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: FileJobResponse
         Used By: Discount
     */

    class FileJobResponse: Codable {
        public var stage: String

        public var total: Int

        public var failed: Int

        public var companyId: Int

        public var body: [String: Any]?

        public var type: String

        public var fileType: String

        public enum CodingKeys: String, CodingKey {
            case stage

            case total

            case failed

            case companyId = "company_id"

            case body

            case type

            case fileType = "file_type"
        }

        public init(body: [String: Any]?, companyId: Int, failed: Int, fileType: String, stage: String, total: Int, type: String) {
            self.stage = stage

            self.total = total

            self.failed = failed

            self.companyId = companyId

            self.body = body

            self.type = type

            self.fileType = fileType
        }

        public func duplicate() -> FileJobResponse {
            let dict = self.dictionary!
            let copy = FileJobResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            stage = try container.decode(String.self, forKey: .stage)

            total = try container.decode(Int.self, forKey: .total)

            failed = try container.decode(Int.self, forKey: .failed)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                body = try container.decode([String: Any].self, forKey: .body)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            fileType = try container.decode(String.self, forKey: .fileType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(body, forKey: .body)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(fileType, forKey: .fileType)
        }
    }

    /*
         Model: DownloadFileJob
         Used By: Discount
     */

    class DownloadFileJob: Codable {
        public var brandIds: [Int]?

        public var storeIds: [Int]?

        public enum CodingKeys: String, CodingKey {
            case brandIds = "brand_ids"

            case storeIds = "store_ids"
        }

        public init(brandIds: [Int]?, storeIds: [Int]?) {
            self.brandIds = brandIds

            self.storeIds = storeIds
        }

        public func duplicate() -> DownloadFileJob {
            let dict = self.dictionary!
            let copy = DownloadFileJob(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
        }
    }

    /*
         Model: CancelJobResponse
         Used By: Discount
     */

    class CancelJobResponse: Codable {
        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case success
        }

        public init(success: Bool) {
            self.success = success
        }

        public func duplicate() -> CancelJobResponse {
            let dict = self.dictionary!
            let copy = CancelJobResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }

    /*
         Model: UserDetails
         Used By: Discount
     */

    class UserDetails: Codable {
        public var username: String

        public var userId: String

        public enum CodingKeys: String, CodingKey {
            case username

            case userId = "user_id"
        }

        public init(username: String, userId: String) {
            self.username = username

            self.userId = userId
        }

        public func duplicate() -> UserDetails {
            let dict = self.dictionary!
            let copy = UserDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            username = try container.decode(String.self, forKey: .username)

            userId = try container.decode(String.self, forKey: .userId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }

    /*
         Model: BadRequestObject
         Used By: Discount
     */

    class BadRequestObject: Codable {
        public var message: String

        public enum CodingKeys: String, CodingKey {
            case message
        }

        public init(message: String) {
            self.message = message
        }

        public func duplicate() -> BadRequestObject {
            let dict = self.dictionary!
            let copy = BadRequestObject(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
