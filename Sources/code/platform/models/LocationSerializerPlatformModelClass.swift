

import Foundation
public extension PlatformClient {
    /*
         Model: LocationSerializer
         Used By: CompanyProfile
     */

    class LocationSerializer: Codable {
        public var contactNumbers: [SellerPhoneNumber]?

        public var customJson: [String: Any]?

        public var productReturnConfig: ProductReturnConfigSerializer?

        public var notificationEmails: [String]?

        public var displayName: String

        public var address: GetAddressSerializer

        public var company: Int

        public var holiday: [HolidaySchemaSerializer]?

        public var warnings: [String: Any]?

        public var manager: LocationManagerSerializer?

        public var timing: [LocationDayWiseSerializer]?

        public var stage: String?

        public var gstCredentials: InvoiceDetailsSerializer?

        public var documents: [Document]?

        public var storeType: String?

        public var uid: Int?

        public var name: String

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case contactNumbers = "contact_numbers"

            case customJson = "_custom_json"

            case productReturnConfig = "product_return_config"

            case notificationEmails = "notification_emails"

            case displayName = "display_name"

            case address

            case company

            case holiday

            case warnings

            case manager

            case timing

            case stage

            case gstCredentials = "gst_credentials"

            case documents

            case storeType = "store_type"

            case uid

            case name

            case code
        }

        public init(address: GetAddressSerializer, code: String, company: Int, contactNumbers: [SellerPhoneNumber]? = nil, displayName: String, documents: [Document]? = nil, gstCredentials: InvoiceDetailsSerializer? = nil, holiday: [HolidaySchemaSerializer]? = nil, manager: LocationManagerSerializer? = nil, name: String, notificationEmails: [String]? = nil, productReturnConfig: ProductReturnConfigSerializer? = nil, stage: String? = nil, storeType: String? = nil, timing: [LocationDayWiseSerializer]? = nil, uid: Int? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.contactNumbers = contactNumbers

            self.customJson = customJson

            self.productReturnConfig = productReturnConfig

            self.notificationEmails = notificationEmails

            self.displayName = displayName

            self.address = address

            self.company = company

            self.holiday = holiday

            self.warnings = warnings

            self.manager = manager

            self.timing = timing

            self.stage = stage

            self.gstCredentials = gstCredentials

            self.documents = documents

            self.storeType = storeType

            self.uid = uid

            self.name = name

            self.code = code
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
                productReturnConfig = try container.decode(ProductReturnConfigSerializer.self, forKey: .productReturnConfig)

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

            displayName = try container.decode(String.self, forKey: .displayName)

            address = try container.decode(GetAddressSerializer.self, forKey: .address)

            company = try container.decode(Int.self, forKey: .company)

            do {
                holiday = try container.decode([HolidaySchemaSerializer].self, forKey: .holiday)

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
                manager = try container.decode(LocationManagerSerializer.self, forKey: .manager)

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
                stage = try container.decode(String.self, forKey: .stage)

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
                documents = try container.decode([Document].self, forKey: .documents)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(holiday, forKey: .holiday)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
