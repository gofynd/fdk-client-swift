

import Foundation
public extension PlatformClient {
    /*
         Model: LocationSerializer
         Used By: CompanyProfile
     */

    class LocationSerializer: Codable {
        public var code: String

        public var contactNumbers: [SellerPhoneNumber]?

        public var address: GetAddressSerializer

        public var stage: String?

        public var manager: LocationManagerSerializer?

        public var customJson: [String: Any]?

        public var name: String

        public var storeType: String?

        public var timing: [LocationDayWiseSerializer]?

        public var productReturnConfig: ProductReturnConfigSerializer?

        public var gstCredentials: InvoiceDetailsSerializer?

        public var company: Int

        public var documents: [Document]?

        public var notificationEmails: [String]?

        public var displayName: String

        public var warnings: [String: Any]?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case code

            case contactNumbers = "contact_numbers"

            case address

            case stage

            case manager

            case customJson = "_custom_json"

            case name

            case storeType = "store_type"

            case timing

            case productReturnConfig = "product_return_config"

            case gstCredentials = "gst_credentials"

            case company

            case documents

            case notificationEmails = "notification_emails"

            case displayName = "display_name"

            case warnings

            case uid
        }

        public init(address: GetAddressSerializer, code: String, company: Int, contactNumbers: [SellerPhoneNumber]? = nil, displayName: String, documents: [Document]? = nil, gstCredentials: InvoiceDetailsSerializer? = nil, manager: LocationManagerSerializer? = nil, name: String, notificationEmails: [String]? = nil, productReturnConfig: ProductReturnConfigSerializer? = nil, stage: String? = nil, storeType: String? = nil, timing: [LocationDayWiseSerializer]? = nil, uid: Int? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.code = code

            self.contactNumbers = contactNumbers

            self.address = address

            self.stage = stage

            self.manager = manager

            self.customJson = customJson

            self.name = name

            self.storeType = storeType

            self.timing = timing

            self.productReturnConfig = productReturnConfig

            self.gstCredentials = gstCredentials

            self.company = company

            self.documents = documents

            self.notificationEmails = notificationEmails

            self.displayName = displayName

            self.warnings = warnings

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            code = try container.decode(String.self, forKey: .code)

            do {
                contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(GetAddressSerializer.self, forKey: .address)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

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

            company = try container.decode(Int.self, forKey: .company)

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

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                warnings = try container.decode([String: Any].self, forKey: .warnings)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}
