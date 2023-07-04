

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: GetLocationSerializer
         Used By: CompanyProfile
     */

    class GetLocationSerializer: Codable {
        public var avgOrderProcessingTime: AverageOrderProcessingTime?

        public var defaultOrderAcceptanceTiming: Bool?

        public var stage: String?

        public var createdBy: UserSerializer?

        public var name: String

        public var contactNumbers: [SellerPhoneNumber]?

        public var company: GetCompanySerializer?

        public var gstCredentials: InvoiceDetailsSerializer?

        public var notificationEmails: [String]?

        public var createdOn: String?

        public var manager: LocationManagerSerializer?

        public var creditNote: Bool?

        public var verifiedOn: String?

        public var orderAcceptanceTiming: [LocationDayWiseSerializer]?

        public var verifiedBy: UserSerializer?

        public var code: String

        public var uid: Int?

        public var modifiedOn: String?

        public var address: GetAddressSerializer

        public var warnings: [String: Any]?

        public var tags: [String]?

        public var autoInvoice: Bool?

        public var timing: [LocationDayWiseSerializer]?

        public var displayName: String

        public var storeType: String?

        public var phoneNumber: String?

        public var holiday: [HolidaySchemaSerializer]?

        public var modifiedBy: UserSerializer?

        public var productReturnConfig: ProductReturnConfigSerializer?

        public var customJson: [String: Any]?

        public var documents: [Document]?

        public enum CodingKeys: String, CodingKey {
            case avgOrderProcessingTime = "avg_order_processing_time"

            case defaultOrderAcceptanceTiming = "default_order_acceptance_timing"

            case stage

            case createdBy = "created_by"

            case name

            case contactNumbers = "contact_numbers"

            case company

            case gstCredentials = "gst_credentials"

            case notificationEmails = "notification_emails"

            case createdOn = "created_on"

            case manager

            case creditNote = "credit_note"

            case verifiedOn = "verified_on"

            case orderAcceptanceTiming = "order_acceptance_timing"

            case verifiedBy = "verified_by"

            case code

            case uid

            case modifiedOn = "modified_on"

            case address

            case warnings

            case tags

            case autoInvoice = "auto_invoice"

            case timing

            case displayName = "display_name"

            case storeType = "store_type"

            case phoneNumber = "phone_number"

            case holiday

            case modifiedBy = "modified_by"

            case productReturnConfig = "product_return_config"

            case customJson = "_custom_json"

            case documents
        }

        public init(address: GetAddressSerializer, autoInvoice: Bool? = nil, avgOrderProcessingTime: AverageOrderProcessingTime? = nil, code: String, company: GetCompanySerializer? = nil, contactNumbers: [SellerPhoneNumber]? = nil, createdBy: UserSerializer? = nil, createdOn: String? = nil, creditNote: Bool? = nil, defaultOrderAcceptanceTiming: Bool? = nil, displayName: String, documents: [Document]? = nil, gstCredentials: InvoiceDetailsSerializer? = nil, holiday: [HolidaySchemaSerializer]? = nil, manager: LocationManagerSerializer? = nil, modifiedBy: UserSerializer? = nil, modifiedOn: String? = nil, name: String, notificationEmails: [String]? = nil, orderAcceptanceTiming: [LocationDayWiseSerializer]? = nil, phoneNumber: String? = nil, productReturnConfig: ProductReturnConfigSerializer? = nil, stage: String? = nil, storeType: String? = nil, tags: [String]? = nil, timing: [LocationDayWiseSerializer]? = nil, uid: Int? = nil, verifiedBy: UserSerializer? = nil, verifiedOn: String? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.avgOrderProcessingTime = avgOrderProcessingTime

            self.defaultOrderAcceptanceTiming = defaultOrderAcceptanceTiming

            self.stage = stage

            self.createdBy = createdBy

            self.name = name

            self.contactNumbers = contactNumbers

            self.company = company

            self.gstCredentials = gstCredentials

            self.notificationEmails = notificationEmails

            self.createdOn = createdOn

            self.manager = manager

            self.creditNote = creditNote

            self.verifiedOn = verifiedOn

            self.orderAcceptanceTiming = orderAcceptanceTiming

            self.verifiedBy = verifiedBy

            self.code = code

            self.uid = uid

            self.modifiedOn = modifiedOn

            self.address = address

            self.warnings = warnings

            self.tags = tags

            self.autoInvoice = autoInvoice

            self.timing = timing

            self.displayName = displayName

            self.storeType = storeType

            self.phoneNumber = phoneNumber

            self.holiday = holiday

            self.modifiedBy = modifiedBy

            self.productReturnConfig = productReturnConfig

            self.customJson = customJson

            self.documents = documents
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                avgOrderProcessingTime = try container.decode(AverageOrderProcessingTime.self, forKey: .avgOrderProcessingTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                defaultOrderAcceptanceTiming = try container.decode(Bool.self, forKey: .defaultOrderAcceptanceTiming)

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
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)

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
                gstCredentials = try container.decode(InvoiceDetailsSerializer.self, forKey: .gstCredentials)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

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
                creditNote = try container.decode(Bool.self, forKey: .creditNote)

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
                orderAcceptanceTiming = try container.decode([LocationDayWiseSerializer].self, forKey: .orderAcceptanceTiming)

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

            code = try container.decode(String.self, forKey: .code)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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

            address = try container.decode(GetAddressSerializer.self, forKey: .address)

            do {
                warnings = try container.decode([String: Any].self, forKey: .warnings)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                timing = try container.decode([LocationDayWiseSerializer].self, forKey: .timing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                storeType = try container.decode(String.self, forKey: .storeType)

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
                holiday = try container.decode([HolidaySchemaSerializer].self, forKey: .holiday)

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
                productReturnConfig = try container.decode(ProductReturnConfigSerializer.self, forKey: .productReturnConfig)

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
                documents = try container.decode([Document].self, forKey: .documents)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(avgOrderProcessingTime, forKey: .avgOrderProcessingTime)

            try? container.encodeIfPresent(defaultOrderAcceptanceTiming, forKey: .defaultOrderAcceptanceTiming)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(creditNote, forKey: .creditNote)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(orderAcceptanceTiming, forKey: .orderAcceptanceTiming)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(autoInvoice, forKey: .autoInvoice)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(holiday, forKey: .holiday)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(documents, forKey: .documents)
        }
    }
}
