

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: LocationSerializer
         Used By: CompanyProfile
     */

    class LocationSerializer: Codable {
        public var name: String

        public var gstCredentials: InvoiceDetailsSerializer?

        public var warnings: [String: Any]?

        public var contactNumbers: [SellerPhoneNumber]?

        public var timing: [LocationDayWiseSerializer]?

        public var company: Int

        public var storeType: String?

        public var holiday: [HolidaySchemaSerializer]?

        public var customJson: [String: Any]?

        public var code: String

        public var productReturnConfig: ProductReturnConfigSerializer?

        public var displayName: String

        public var uid: Int?

        public var notificationEmails: [String]?

        public var documents: [Document]?

        public var manager: LocationManagerSerializer?

        public var address: AddressSerializer

        public var stage: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case gstCredentials = "gst_credentials"

            case warnings

            case contactNumbers = "contact_numbers"

            case timing

            case company

            case storeType = "store_type"

            case holiday

            case customJson = "_custom_json"

            case code

            case productReturnConfig = "product_return_config"

            case displayName = "display_name"

            case uid

            case notificationEmails = "notification_emails"

            case documents

            case manager

            case address

            case stage
        }

        public init(address: AddressSerializer, code: String, company: Int, contactNumbers: [SellerPhoneNumber]? = nil, displayName: String, documents: [Document]? = nil, gstCredentials: InvoiceDetailsSerializer? = nil, holiday: [HolidaySchemaSerializer]? = nil, manager: LocationManagerSerializer? = nil, name: String, notificationEmails: [String]? = nil, productReturnConfig: ProductReturnConfigSerializer? = nil, stage: String? = nil, storeType: String? = nil, timing: [LocationDayWiseSerializer]? = nil, uid: Int? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.name = name

            self.gstCredentials = gstCredentials

            self.warnings = warnings

            self.contactNumbers = contactNumbers

            self.timing = timing

            self.company = company

            self.storeType = storeType

            self.holiday = holiday

            self.customJson = customJson

            self.code = code

            self.productReturnConfig = productReturnConfig

            self.displayName = displayName

            self.uid = uid

            self.notificationEmails = notificationEmails

            self.documents = documents

            self.manager = manager

            self.address = address

            self.stage = stage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            do {
                gstCredentials = try container.decode(InvoiceDetailsSerializer.self, forKey: .gstCredentials)

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
                contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)

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

            company = try container.decode(Int.self, forKey: .company)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)

            do {
                productReturnConfig = try container.decode(ProductReturnConfigSerializer.self, forKey: .productReturnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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
                documents = try container.decode([Document].self, forKey: .documents)

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

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(holiday, forKey: .holiday)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(stage, forKey: .stage)
        }
    }
}
