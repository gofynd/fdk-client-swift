

import Foundation
public extension PlatformClient {
    /*
         Model: LocationSerializer
         Used By: CompanyProfile
     */

    class LocationSerializer: Codable {
        public var address: GetAddressSerializer

        public var manager: LocationManagerSerializer?

        public var documents: [Document]?

        public var addverbReferenceCode: String?

        public var uid: Int?

        public var notificationEmails: [String]?

        public var productReturnConfig: ProductReturnConfigSerializer?

        public var timing: [LocationDayWiseSerializer]?

        public var displayName: String

        public var holiday: [Storeholiday1]?

        public var contactNumbers: [SellerPhoneNumber]?

        public var storeType: String?

        public var gstCredentials: InvoiceDetailsSerializer?

        public var code: String

        public var stage: String?

        public var warnings: [String: Any]?

        public var fulfilmentType: String

        public var name: String

        public var company: Int

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case address

            case manager

            case documents

            case addverbReferenceCode = "addverb_reference_code"

            case uid

            case notificationEmails = "notification_emails"

            case productReturnConfig = "product_return_config"

            case timing

            case displayName = "display_name"

            case holiday

            case contactNumbers = "contact_numbers"

            case storeType = "store_type"

            case gstCredentials = "gst_credentials"

            case code

            case stage

            case warnings

            case fulfilmentType = "fulfilment_type"

            case name

            case company

            case customJson = "_custom_json"
        }

        public init(address: GetAddressSerializer, addverbReferenceCode: String? = nil, code: String, company: Int, contactNumbers: [SellerPhoneNumber]? = nil, displayName: String, documents: [Document]? = nil, fulfilmentType: String, gstCredentials: InvoiceDetailsSerializer? = nil, holiday: [Storeholiday1]? = nil, manager: LocationManagerSerializer? = nil, name: String, notificationEmails: [String]? = nil, productReturnConfig: ProductReturnConfigSerializer? = nil, stage: String? = nil, storeType: String? = nil, timing: [LocationDayWiseSerializer]? = nil, uid: Int? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.address = address

            self.manager = manager

            self.documents = documents

            self.addverbReferenceCode = addverbReferenceCode

            self.uid = uid

            self.notificationEmails = notificationEmails

            self.productReturnConfig = productReturnConfig

            self.timing = timing

            self.displayName = displayName

            self.holiday = holiday

            self.contactNumbers = contactNumbers

            self.storeType = storeType

            self.gstCredentials = gstCredentials

            self.code = code

            self.stage = stage

            self.warnings = warnings

            self.fulfilmentType = fulfilmentType

            self.name = name

            self.company = company

            self.customJson = customJson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(GetAddressSerializer.self, forKey: .address)

            do {
                manager = try container.decode(LocationManagerSerializer.self, forKey: .manager)

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
                addverbReferenceCode = try container.decode(String.self, forKey: .addverbReferenceCode)

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
                timing = try container.decode([LocationDayWiseSerializer].self, forKey: .timing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                holiday = try container.decode([Storeholiday1].self, forKey: .holiday)

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
                storeType = try container.decode(String.self, forKey: .storeType)

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

            code = try container.decode(String.self, forKey: .code)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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

            fulfilmentType = try container.decode(String.self, forKey: .fulfilmentType)

            name = try container.decode(String.self, forKey: .name)

            company = try container.decode(Int.self, forKey: .company)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(addverbReferenceCode, forKey: .addverbReferenceCode)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(holiday, forKey: .holiday)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(fulfilmentType, forKey: .fulfilmentType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }
}
