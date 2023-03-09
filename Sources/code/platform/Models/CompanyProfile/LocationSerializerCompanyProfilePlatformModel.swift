

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: LocationSerializer
         Used By: CompanyProfile
     */

    class LocationSerializer: Codable {
        public var address: GetAddressSerializer

        public var notificationEmails: [String]?

        public var storeType: String?

        public var name: String

        public var customJson: [String: Any]?

        public var stage: String?

        public var timing: [LocationDayWiseSerializer]?

        public var displayName: String

        public var gstCredentials: InvoiceDetailsSerializer?

        public var code: String

        public var manager: LocationManagerSerializer?

        public var uid: Int?

        public var company: Int

        public var warnings: [String: Any]?

        public var documents: [Document]?

        public var contactNumbers: [SellerPhoneNumber]?

        public var productReturnConfig: ProductReturnConfigSerializer?

        public enum CodingKeys: String, CodingKey {
            case address

            case notificationEmails = "notification_emails"

            case storeType = "store_type"

            case name

            case customJson = "_custom_json"

            case stage

            case timing

            case displayName = "display_name"

            case gstCredentials = "gst_credentials"

            case code

            case manager

            case uid

            case company

            case warnings

            case documents

            case contactNumbers = "contact_numbers"

            case productReturnConfig = "product_return_config"
        }

        public init(address: GetAddressSerializer, code: String, company: Int, contactNumbers: [SellerPhoneNumber]? = nil, displayName: String, documents: [Document]? = nil, gstCredentials: InvoiceDetailsSerializer? = nil, manager: LocationManagerSerializer? = nil, name: String, notificationEmails: [String]? = nil, productReturnConfig: ProductReturnConfigSerializer? = nil, stage: String? = nil, storeType: String? = nil, timing: [LocationDayWiseSerializer]? = nil, uid: Int? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.address = address

            self.notificationEmails = notificationEmails

            self.storeType = storeType

            self.name = name

            self.customJson = customJson

            self.stage = stage

            self.timing = timing

            self.displayName = displayName

            self.gstCredentials = gstCredentials

            self.code = code

            self.manager = manager

            self.uid = uid

            self.company = company

            self.warnings = warnings

            self.documents = documents

            self.contactNumbers = contactNumbers

            self.productReturnConfig = productReturnConfig
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(GetAddressSerializer.self, forKey: .address)

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

            name = try container.decode(String.self, forKey: .name)

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
                timing = try container.decode([LocationDayWiseSerializer].self, forKey: .timing)

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

            code = try container.decode(String.self, forKey: .code)

            do {
                manager = try container.decode(LocationManagerSerializer.self, forKey: .manager)

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

            company = try container.decode(Int.self, forKey: .company)

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
                contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)
        }
    }
}
