

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: LocationSerializer
         Used By: CompanyProfile
     */

    class LocationSerializer: Codable {
        public var contactNumbers: [SellerPhoneNumber]?

        public var customJson: [String: Any]?

        public var warnings: [String: Any]?

        public var creditNote: Bool?

        public var storeType: String?

        public var code: String

        public var displayName: String

        public var gstCredentials: InvoiceDetailsSerializer?

        public var stage: String?

        public var notificationEmails: [String]?

        public var productReturnConfig: ProductReturnConfigSerializer?

        public var documents: [Document]?

        public var holiday: [HolidaySchemaSerializer]?

        public var manager: LocationManagerSerializer?

        public var address: AddressSerializer

        public var name: String

        public var company: Int

        public var uid: Int?

        public var timing: [LocationDayWiseSerializer]?

        public var autoInvoice: Bool?

        public enum CodingKeys: String, CodingKey {
            case contactNumbers = "contact_numbers"

            case customJson = "_custom_json"

            case warnings

            case creditNote = "credit_note"

            case storeType = "store_type"

            case code

            case displayName = "display_name"

            case gstCredentials = "gst_credentials"

            case stage

            case notificationEmails = "notification_emails"

            case productReturnConfig = "product_return_config"

            case documents

            case holiday

            case manager

            case address

            case name

            case company

            case uid

            case timing

            case autoInvoice = "auto_invoice"
        }

        public init(address: AddressSerializer, autoInvoice: Bool? = nil, code: String, company: Int, contactNumbers: [SellerPhoneNumber]? = nil, creditNote: Bool? = nil, displayName: String, documents: [Document]? = nil, gstCredentials: InvoiceDetailsSerializer? = nil, holiday: [HolidaySchemaSerializer]? = nil, manager: LocationManagerSerializer? = nil, name: String, notificationEmails: [String]? = nil, productReturnConfig: ProductReturnConfigSerializer? = nil, stage: String? = nil, storeType: String? = nil, timing: [LocationDayWiseSerializer]? = nil, uid: Int? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.contactNumbers = contactNumbers

            self.customJson = customJson

            self.warnings = warnings

            self.creditNote = creditNote

            self.storeType = storeType

            self.code = code

            self.displayName = displayName

            self.gstCredentials = gstCredentials

            self.stage = stage

            self.notificationEmails = notificationEmails

            self.productReturnConfig = productReturnConfig

            self.documents = documents

            self.holiday = holiday

            self.manager = manager

            self.address = address

            self.name = name

            self.company = company

            self.uid = uid

            self.timing = timing

            self.autoInvoice = autoInvoice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)

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
                warnings = try container.decode([String: Any].self, forKey: .warnings)

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
                storeType = try container.decode(String.self, forKey: .storeType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                gstCredentials = try container.decode(InvoiceDetailsSerializer.self, forKey: .gstCredentials)

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
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

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
                documents = try container.decode([Document].self, forKey: .documents)

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
                manager = try container.decode(LocationManagerSerializer.self, forKey: .manager)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(AddressSerializer.self, forKey: .address)

            name = try container.decode(String.self, forKey: .name)

            company = try container.decode(Int.self, forKey: .company)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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
                autoInvoice = try container.decode(Bool.self, forKey: .autoInvoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(creditNote, forKey: .creditNote)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(holiday, forKey: .holiday)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(autoInvoice, forKey: .autoInvoice)
        }
    }
}
