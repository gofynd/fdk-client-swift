

import Foundation
public extension PlatformClient {
    /*
         Model: LocationSerializer
         Used By: CompanyProfile
     */

    class LocationSerializer: Codable {
        public var customJson: [String: Any]?

        public var fulfilmentType: String?

        public var displayName: String

        public var gstCredentials: InvoiceDetailsSerializer?

        public var holiday: [Storeholiday1]?

        public var notificationEmails: [String]?

        public var timing: [LocationDayWiseSerializer]?

        public var uid: Int?

        public var warnings: [String: Any]?

        public var documents: [Document]?

        public var productReturnConfig: ProductReturnConfigSerializer?

        public var address: GetAddressSerializer

        public var manager: LocationManagerSerializer?

        public var storeType: String?

        public var company: Int

        public var code: String

        public var stage: String?

        public var name: String

        public var contactNumbers: [SellerPhoneNumber]?

        public enum CodingKeys: String, CodingKey {
            case customJson = "_custom_json"

            case fulfilmentType = "fulfilment_type"

            case displayName = "display_name"

            case gstCredentials = "gst_credentials"

            case holiday

            case notificationEmails = "notification_emails"

            case timing

            case uid

            case warnings

            case documents

            case productReturnConfig = "product_return_config"

            case address

            case manager

            case storeType = "store_type"

            case company

            case code

            case stage

            case name

            case contactNumbers = "contact_numbers"
        }

        public init(address: GetAddressSerializer, code: String, company: Int, contactNumbers: [SellerPhoneNumber]? = nil, displayName: String, documents: [Document]? = nil, fulfilmentType: String? = nil, gstCredentials: InvoiceDetailsSerializer? = nil, holiday: [Storeholiday1]? = nil, manager: LocationManagerSerializer? = nil, name: String, notificationEmails: [String]? = nil, productReturnConfig: ProductReturnConfigSerializer? = nil, stage: String? = nil, storeType: String? = nil, timing: [LocationDayWiseSerializer]? = nil, uid: Int? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.customJson = customJson

            self.fulfilmentType = fulfilmentType

            self.displayName = displayName

            self.gstCredentials = gstCredentials

            self.holiday = holiday

            self.notificationEmails = notificationEmails

            self.timing = timing

            self.uid = uid

            self.warnings = warnings

            self.documents = documents

            self.productReturnConfig = productReturnConfig

            self.address = address

            self.manager = manager

            self.storeType = storeType

            self.company = company

            self.code = code

            self.stage = stage

            self.name = name

            self.contactNumbers = contactNumbers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fulfilmentType = try container.decode(String.self, forKey: .fulfilmentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                gstCredentials = try container.decode(InvoiceDetailsSerializer.self, forKey: .gstCredentials)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                holiday = try container.decode([Storeholiday1].self, forKey: .holiday)

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
                timing = try container.decode([LocationDayWiseSerializer].self, forKey: .timing)

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
                productReturnConfig = try container.decode(ProductReturnConfigSerializer.self, forKey: .productReturnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(GetAddressSerializer.self, forKey: .address)

            do {
                manager = try container.decode(LocationManagerSerializer.self, forKey: .manager)

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

            company = try container.decode(Int.self, forKey: .company)

            code = try container.decode(String.self, forKey: .code)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(fulfilmentType, forKey: .fulfilmentType)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)

            try? container.encodeIfPresent(holiday, forKey: .holiday)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)
        }
    }
}
