

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: GetLocationSerializer
         Used By: CompanyProfile
     */

    class GetLocationSerializer: Codable {
        public var address: GetAddressSerializer

        public var createdOn: String?

        public var timing: [LocationDayWiseSerializer]?

        public var productReturnConfig: ProductReturnConfigSerializer?

        public var autoInvoice: Bool?

        public var createdBy: UserSerializer?

        public var notificationEmails: [String]?

        public var manager: LocationManagerSerializer?

        public var verifiedBy: UserSerializer?

        public var displayName: String

        public var company: GetCompanySerializer?

        public var contactNumbers: [SellerPhoneNumber]?

        public var warnings: [String: Any]?

        public var name: String

        public var modifiedOn: String?

        public var stage: String?

        public var phoneNumber: String?

        public var gstCredentials: InvoiceDetailsSerializer?

        public var verifiedOn: String?

        public var modifiedBy: UserSerializer?

        public var storeType: String?

        public var holiday: [HolidaySchemaSerializer]?

        public var documents: [Document]?

        public var code: String

        public var customJson: [String: Any]?

        public var uid: Int?

        public var creditNote: Bool?

        public enum CodingKeys: String, CodingKey {
            case address

            case createdOn = "created_on"

            case timing

            case productReturnConfig = "product_return_config"

            case autoInvoice = "auto_invoice"

            case createdBy = "created_by"

            case notificationEmails = "notification_emails"

            case manager

            case verifiedBy = "verified_by"

            case displayName = "display_name"

            case company

            case contactNumbers = "contact_numbers"

            case warnings

            case name

            case modifiedOn = "modified_on"

            case stage

            case phoneNumber = "phone_number"

            case gstCredentials = "gst_credentials"

            case verifiedOn = "verified_on"

            case modifiedBy = "modified_by"

            case storeType = "store_type"

            case holiday

            case documents

            case code

            case customJson = "_custom_json"

            case uid

            case creditNote = "credit_note"
        }

        public init(address: GetAddressSerializer, autoInvoice: Bool? = nil, code: String, company: GetCompanySerializer? = nil, contactNumbers: [SellerPhoneNumber]? = nil, createdBy: UserSerializer? = nil, createdOn: String? = nil, creditNote: Bool? = nil, displayName: String, documents: [Document]? = nil, gstCredentials: InvoiceDetailsSerializer? = nil, holiday: [HolidaySchemaSerializer]? = nil, manager: LocationManagerSerializer? = nil, modifiedBy: UserSerializer? = nil, modifiedOn: String? = nil, name: String, notificationEmails: [String]? = nil, phoneNumber: String? = nil, productReturnConfig: ProductReturnConfigSerializer? = nil, stage: String? = nil, storeType: String? = nil, timing: [LocationDayWiseSerializer]? = nil, uid: Int? = nil, verifiedBy: UserSerializer? = nil, verifiedOn: String? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.address = address

            self.createdOn = createdOn

            self.timing = timing

            self.productReturnConfig = productReturnConfig

            self.autoInvoice = autoInvoice

            self.createdBy = createdBy

            self.notificationEmails = notificationEmails

            self.manager = manager

            self.verifiedBy = verifiedBy

            self.displayName = displayName

            self.company = company

            self.contactNumbers = contactNumbers

            self.warnings = warnings

            self.name = name

            self.modifiedOn = modifiedOn

            self.stage = stage

            self.phoneNumber = phoneNumber

            self.gstCredentials = gstCredentials

            self.verifiedOn = verifiedOn

            self.modifiedBy = modifiedBy

            self.storeType = storeType

            self.holiday = holiday

            self.documents = documents

            self.code = code

            self.customJson = customJson

            self.uid = uid

            self.creditNote = creditNote
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(GetAddressSerializer.self, forKey: .address)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timing = try container.decode([LocationDayWiseSerializer].self, forKey: .timing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productReturnConfig = try container.decode(ProductReturnConfigSerializer.self, forKey: .productReturnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                autoInvoice = try container.decode(Bool.self, forKey: .autoInvoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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
                manager = try container.decode(LocationManagerSerializer.self, forKey: .manager)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedBy = try container.decode(UserSerializer.self, forKey: .verifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                company = try container.decode(GetCompanySerializer.self, forKey: .company)

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
                warnings = try container.decode([String: Any].self, forKey: .warnings)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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
                phoneNumber = try container.decode(String.self, forKey: .phoneNumber)

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

            do {
                verifiedOn = try container.decode(String.self, forKey: .verifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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
                holiday = try container.decode([HolidaySchemaSerializer].self, forKey: .holiday)

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

            code = try container.decode(String.self, forKey: .code)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                creditNote = try container.decode(Bool.self, forKey: .creditNote)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(autoInvoice, forKey: .autoInvoice)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(holiday, forKey: .holiday)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(creditNote, forKey: .creditNote)
        }
    }
}
