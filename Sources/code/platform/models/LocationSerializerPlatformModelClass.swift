

import Foundation
public extension PlatformClient {
    /*
         Model: LocationSerializer
         Used By: CompanyProfile
     */

    class LocationSerializer: Codable {
        public var warnings: [String: Any]?

        public var documents: [Document]?

        public var customJson: [String: Any]?

        public var stage: String?

        public var holiday: [HolidaySchemaSerializer]?

        public var name: String

        public var productReturnConfig: ProductReturnConfigSerializer?

        public var gstCredentials: InvoiceDetailsSerializer?

        public var displayName: String

        public var notificationEmails: [String]?

        public var company: Int

        public var uid: Int?

        public var address: AddressSerializer

        public var manager: LocationManagerSerializer?

        public var code: String

        public var storeType: String?

        public var timing: [LocationDayWiseSerializer]?

        public var contactNumbers: [SellerPhoneNumber]?

        public enum CodingKeys: String, CodingKey {
            case warnings

            case documents

            case customJson = "_custom_json"

            case stage

            case holiday

            case name

            case productReturnConfig = "product_return_config"

            case gstCredentials = "gst_credentials"

            case displayName = "display_name"

            case notificationEmails = "notification_emails"

            case company

            case uid

            case address

            case manager

            case code

            case storeType = "store_type"

            case timing

            case contactNumbers = "contact_numbers"
        }

        public init(address: AddressSerializer, code: String, company: Int, contactNumbers: [SellerPhoneNumber]? = nil, displayName: String, documents: [Document]? = nil, gstCredentials: InvoiceDetailsSerializer? = nil, holiday: [HolidaySchemaSerializer]? = nil, manager: LocationManagerSerializer? = nil, name: String, notificationEmails: [String]? = nil, productReturnConfig: ProductReturnConfigSerializer? = nil, stage: String? = nil, storeType: String? = nil, timing: [LocationDayWiseSerializer]? = nil, uid: Int? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.warnings = warnings

            self.documents = documents

            self.customJson = customJson

            self.stage = stage

            self.holiday = holiday

            self.name = name

            self.productReturnConfig = productReturnConfig

            self.gstCredentials = gstCredentials

            self.displayName = displayName

            self.notificationEmails = notificationEmails

            self.company = company

            self.uid = uid

            self.address = address

            self.manager = manager

            self.code = code

            self.storeType = storeType

            self.timing = timing

            self.contactNumbers = contactNumbers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                warnings = try container.decode([String: Any].self, forKey: .warnings)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                holiday = try container.decode([HolidaySchemaSerializer].self, forKey: .holiday)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                productReturnConfig = try container.decode(ProductReturnConfigSerializer.self, forKey: .productReturnConfig)

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

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(Int.self, forKey: .company)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(AddressSerializer.self, forKey: .address)

            do {
                manager = try container.decode(LocationManagerSerializer.self, forKey: .manager)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)

            do {
                storeType = try container.decode(String.self, forKey: .storeType)

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
                contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(holiday, forKey: .holiday)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)
        }
    }
}
