

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: GetLocationSerializer
         Used By: Catalog
     */

    class GetLocationSerializer: Codable {
        public var uid: Int?

        public var company: GetCompanySerializer?

        public var createdBy: UserSerializer2?

        public var displayName: String

        public var manager: LocationManagerSerializer?

        public var verifiedBy: UserSerializer2?

        public var documents: [Document]?

        public var notificationEmails: [String]?

        public var modifiedBy: UserSerializer2?

        public var stage: String?

        public var createdOn: String?

        public var name: String

        public var timing: [LocationDayWiseSerializer]?

        public var modifiedOn: String?

        public var phoneNumber: String

        public var productReturnConfig: ProductReturnConfigSerializer?

        public var contactNumbers: [SellerPhoneNumber]?

        public var verifiedOn: String?

        public var storeType: String?

        public var integrationType: LocationIntegrationType?

        public var code: String

        public var warnings: [String: Any]?

        public var address: GetAddressSerializer

        public var customJson: [String: Any]?

        public var gstCredentials: InvoiceDetailsSerializer?

        public enum CodingKeys: String, CodingKey {
            case uid

            case company

            case createdBy = "created_by"

            case displayName = "display_name"

            case manager

            case verifiedBy = "verified_by"

            case documents

            case notificationEmails = "notification_emails"

            case modifiedBy = "modified_by"

            case stage

            case createdOn = "created_on"

            case name

            case timing

            case modifiedOn = "modified_on"

            case phoneNumber = "phone_number"

            case productReturnConfig = "product_return_config"

            case contactNumbers = "contact_numbers"

            case verifiedOn = "verified_on"

            case storeType = "store_type"

            case integrationType = "integration_type"

            case code

            case warnings

            case address

            case customJson = "_custom_json"

            case gstCredentials = "gst_credentials"
        }

        public init(address: GetAddressSerializer, code: String, company: GetCompanySerializer? = nil, contactNumbers: [SellerPhoneNumber]? = nil, createdBy: UserSerializer2? = nil, createdOn: String? = nil, displayName: String, documents: [Document]? = nil, gstCredentials: InvoiceDetailsSerializer? = nil, integrationType: LocationIntegrationType? = nil, manager: LocationManagerSerializer? = nil, modifiedBy: UserSerializer2? = nil, modifiedOn: String? = nil, name: String, notificationEmails: [String]? = nil, phoneNumber: String, productReturnConfig: ProductReturnConfigSerializer? = nil, stage: String? = nil, storeType: String? = nil, timing: [LocationDayWiseSerializer]? = nil, uid: Int? = nil, verifiedBy: UserSerializer2? = nil, verifiedOn: String? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.uid = uid

            self.company = company

            self.createdBy = createdBy

            self.displayName = displayName

            self.manager = manager

            self.verifiedBy = verifiedBy

            self.documents = documents

            self.notificationEmails = notificationEmails

            self.modifiedBy = modifiedBy

            self.stage = stage

            self.createdOn = createdOn

            self.name = name

            self.timing = timing

            self.modifiedOn = modifiedOn

            self.phoneNumber = phoneNumber

            self.productReturnConfig = productReturnConfig

            self.contactNumbers = contactNumbers

            self.verifiedOn = verifiedOn

            self.storeType = storeType

            self.integrationType = integrationType

            self.code = code

            self.warnings = warnings

            self.address = address

            self.customJson = customJson

            self.gstCredentials = gstCredentials
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode(GetCompanySerializer.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserSerializer2.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                manager = try container.decode(LocationManagerSerializer.self, forKey: .manager)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedBy = try container.decode(UserSerializer2.self, forKey: .verifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                documents = try container.decode([Document].self, forKey: .documents)

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
                modifiedBy = try container.decode(UserSerializer2.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stage = try container.decode(String.self, forKey: .stage)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                timing = try container.decode([LocationDayWiseSerializer].self, forKey: .timing)

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

            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)

            do {
                productReturnConfig = try container.decode(ProductReturnConfigSerializer.self, forKey: .productReturnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)

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
                storeType = try container.decode(String.self, forKey: .storeType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                integrationType = try container.decode(LocationIntegrationType.self, forKey: .integrationType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)

            do {
                warnings = try container.decode([String: Any].self, forKey: .warnings)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(GetAddressSerializer.self, forKey: .address)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstCredentials = try container.decode(InvoiceDetailsSerializer.self, forKey: .gstCredentials)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(integrationType, forKey: .integrationType)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: GetLocationSerializer
         Used By: Catalog
     */

    class GetLocationSerializer: Codable {
        public var uid: Int?

        public var company: GetCompanySerializer?

        public var createdBy: UserSerializer2?

        public var displayName: String

        public var manager: LocationManagerSerializer?

        public var verifiedBy: UserSerializer2?

        public var documents: [Document]?

        public var notificationEmails: [String]?

        public var modifiedBy: UserSerializer2?

        public var stage: String?

        public var createdOn: String?

        public var name: String

        public var timing: [LocationDayWiseSerializer]?

        public var modifiedOn: String?

        public var phoneNumber: String

        public var productReturnConfig: ProductReturnConfigSerializer?

        public var contactNumbers: [SellerPhoneNumber]?

        public var verifiedOn: String?

        public var storeType: String?

        public var integrationType: LocationIntegrationType?

        public var code: String

        public var warnings: [String: Any]?

        public var address: GetAddressSerializer

        public var customJson: [String: Any]?

        public var gstCredentials: InvoiceDetailsSerializer?

        public enum CodingKeys: String, CodingKey {
            case uid

            case company

            case createdBy = "created_by"

            case displayName = "display_name"

            case manager

            case verifiedBy = "verified_by"

            case documents

            case notificationEmails = "notification_emails"

            case modifiedBy = "modified_by"

            case stage

            case createdOn = "created_on"

            case name

            case timing

            case modifiedOn = "modified_on"

            case phoneNumber = "phone_number"

            case productReturnConfig = "product_return_config"

            case contactNumbers = "contact_numbers"

            case verifiedOn = "verified_on"

            case storeType = "store_type"

            case integrationType = "integration_type"

            case code

            case warnings

            case address

            case customJson = "_custom_json"

            case gstCredentials = "gst_credentials"
        }

        public init(address: GetAddressSerializer, code: String, company: GetCompanySerializer? = nil, contactNumbers: [SellerPhoneNumber]? = nil, createdBy: UserSerializer2? = nil, createdOn: String? = nil, displayName: String, documents: [Document]? = nil, gstCredentials: InvoiceDetailsSerializer? = nil, integrationType: LocationIntegrationType? = nil, manager: LocationManagerSerializer? = nil, modifiedBy: UserSerializer2? = nil, modifiedOn: String? = nil, name: String, notificationEmails: [String]? = nil, phoneNumber: String, productReturnConfig: ProductReturnConfigSerializer? = nil, stage: String? = nil, storeType: String? = nil, timing: [LocationDayWiseSerializer]? = nil, uid: Int? = nil, verifiedBy: UserSerializer2? = nil, verifiedOn: String? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.uid = uid

            self.company = company

            self.createdBy = createdBy

            self.displayName = displayName

            self.manager = manager

            self.verifiedBy = verifiedBy

            self.documents = documents

            self.notificationEmails = notificationEmails

            self.modifiedBy = modifiedBy

            self.stage = stage

            self.createdOn = createdOn

            self.name = name

            self.timing = timing

            self.modifiedOn = modifiedOn

            self.phoneNumber = phoneNumber

            self.productReturnConfig = productReturnConfig

            self.contactNumbers = contactNumbers

            self.verifiedOn = verifiedOn

            self.storeType = storeType

            self.integrationType = integrationType

            self.code = code

            self.warnings = warnings

            self.address = address

            self.customJson = customJson

            self.gstCredentials = gstCredentials
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode(GetCompanySerializer.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserSerializer2.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                manager = try container.decode(LocationManagerSerializer.self, forKey: .manager)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedBy = try container.decode(UserSerializer2.self, forKey: .verifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                documents = try container.decode([Document].self, forKey: .documents)

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
                modifiedBy = try container.decode(UserSerializer2.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stage = try container.decode(String.self, forKey: .stage)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                timing = try container.decode([LocationDayWiseSerializer].self, forKey: .timing)

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

            phoneNumber = try container.decode(String.self, forKey: .phoneNumber)

            do {
                productReturnConfig = try container.decode(ProductReturnConfigSerializer.self, forKey: .productReturnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)

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
                storeType = try container.decode(String.self, forKey: .storeType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                integrationType = try container.decode(LocationIntegrationType.self, forKey: .integrationType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)

            do {
                warnings = try container.decode([String: Any].self, forKey: .warnings)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(GetAddressSerializer.self, forKey: .address)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstCredentials = try container.decode(InvoiceDetailsSerializer.self, forKey: .gstCredentials)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(integrationType, forKey: .integrationType)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)
        }
    }
}
