

import Foundation
public extension PlatformClient {
    /*
         Model: ItemResponse
         Used By: Logistic
     */

    class ItemResponse: Codable {
        public var stage: String?

        public var company: Int?

        public var createdOn: String?

        public var modifiedOn: String?

        public var timing: [TimmingResponse]?

        public var uid: Int?

        public var verifiedOn: String?

        public var modifiedBy: ModifiedByResponse?

        public var address: AddressResponse?

        public var createdBy: CreatedByResponse?

        public var warnings: WarningsResponse?

        public var verifiedBy: ModifiedByResponse?

        public var customJson: [String: Any]?

        public var contactNumbers: [ContactNumberResponse]?

        public var code: String?

        public var notificationEmails: [String]?

        public var storeType: String?

        public var subType: String?

        public var documents: [DocumentsResponse]?

        public var productReturnConfig: ProductReturnConfigResponse?

        public var logistics: LogisticsResponse?

        public var integrationType: IntegrationTypeResponse?

        public var displayName: String?

        public var companyId: Int?

        public var cls: String?

        public var gstCredentials: GstCredentialsResponse?

        public var name: String?

        public var manager: ManagerResponse?

        public enum CodingKeys: String, CodingKey {
            case stage

            case company

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case timing

            case uid

            case verifiedOn = "verified_on"

            case modifiedBy = "modified_by"

            case address

            case createdBy = "created_by"

            case warnings

            case verifiedBy = "verified_by"

            case customJson = "_custom_json"

            case contactNumbers = "contact_numbers"

            case code

            case notificationEmails = "notification_emails"

            case storeType = "store_type"

            case subType = "sub_type"

            case documents

            case productReturnConfig = "product_return_config"

            case logistics

            case integrationType = "integration_type"

            case displayName = "display_name"

            case companyId = "company_id"

            case cls = "_cls"

            case gstCredentials = "gst_credentials"

            case name

            case manager
        }

        public init(address: AddressResponse? = nil, code: String? = nil, company: Int? = nil, companyId: Int? = nil, contactNumbers: [ContactNumberResponse]? = nil, createdBy: CreatedByResponse? = nil, createdOn: String? = nil, displayName: String? = nil, documents: [DocumentsResponse]? = nil, gstCredentials: GstCredentialsResponse? = nil, integrationType: IntegrationTypeResponse? = nil, logistics: LogisticsResponse? = nil, manager: ManagerResponse? = nil, modifiedBy: ModifiedByResponse? = nil, modifiedOn: String? = nil, name: String? = nil, notificationEmails: [String]? = nil, productReturnConfig: ProductReturnConfigResponse? = nil, stage: String? = nil, storeType: String? = nil, subType: String? = nil, timing: [TimmingResponse]? = nil, uid: Int? = nil, verifiedBy: ModifiedByResponse? = nil, verifiedOn: String? = nil, warnings: WarningsResponse? = nil, cls: String? = nil, customJson: [String: Any]? = nil) {
            self.stage = stage

            self.company = company

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.timing = timing

            self.uid = uid

            self.verifiedOn = verifiedOn

            self.modifiedBy = modifiedBy

            self.address = address

            self.createdBy = createdBy

            self.warnings = warnings

            self.verifiedBy = verifiedBy

            self.customJson = customJson

            self.contactNumbers = contactNumbers

            self.code = code

            self.notificationEmails = notificationEmails

            self.storeType = storeType

            self.subType = subType

            self.documents = documents

            self.productReturnConfig = productReturnConfig

            self.logistics = logistics

            self.integrationType = integrationType

            self.displayName = displayName

            self.companyId = companyId

            self.cls = cls

            self.gstCredentials = gstCredentials

            self.name = name

            self.manager = manager
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode(Int.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timing = try container.decode([TimmingResponse].self, forKey: .timing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedOn = try container.decode(String.self, forKey: .verifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(ModifiedByResponse.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode(AddressResponse.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(CreatedByResponse.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                warnings = try container.decode(WarningsResponse.self, forKey: .warnings)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedBy = try container.decode(ModifiedByResponse.self, forKey: .verifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contactNumbers = try container.decode([ContactNumberResponse].self, forKey: .contactNumbers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeType = try container.decode(String.self, forKey: .storeType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subType = try container.decode(String.self, forKey: .subType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                documents = try container.decode([DocumentsResponse].self, forKey: .documents)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productReturnConfig = try container.decode(ProductReturnConfigResponse.self, forKey: .productReturnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logistics = try container.decode(LogisticsResponse.self, forKey: .logistics)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                integrationType = try container.decode(IntegrationTypeResponse.self, forKey: .integrationType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cls = try container.decode(String.self, forKey: .cls)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstCredentials = try container.decode(GstCredentialsResponse.self, forKey: .gstCredentials)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manager = try container.decode(ManagerResponse.self, forKey: .manager)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(subType, forKey: .subType)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(logistics, forKey: .logistics)

            try? container.encodeIfPresent(integrationType, forKey: .integrationType)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(cls, forKey: .cls)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(manager, forKey: .manager)
        }
    }
}
