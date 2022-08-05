

import Foundation
public extension PlatformClient {
    /*
         Model: LocationSerializer
         Used By: CompanyProfile
     */

    class LocationSerializer: Codable {
        public var holiday: [Storeholiday1]?

        public var notificationEmails: [String]?

        public var fulfilmentType: String

        public var manager: LocationManagerSerializer?

        public var documents: [Document]?

        public var name: String

        public var stage: String?

        public var displayName: String

        public var warnings: [String: Any]?

        public var timing: [LocationDayWiseSerializer]?

        public var company: Int

        public var gstCredentials: InvoiceDetailsSerializer?

        public var code: String

        public var address: GetAddressSerializer

        public var storeType: String?

        public var addverbReferenceCode: String?

        public var uid: Int?

        public var customJson: [String: Any]?

        public var productReturnConfig: ProductReturnConfigSerializer?

        public var contactNumbers: [SellerPhoneNumber]?

        public enum CodingKeys: String, CodingKey {
            case holiday

            case notificationEmails = "notification_emails"

            case fulfilmentType = "fulfilment_type"

            case manager

            case documents

            case name

            case stage

            case displayName = "display_name"

            case warnings

            case timing

            case company

            case gstCredentials = "gst_credentials"

            case code

            case address

            case storeType = "store_type"

            case addverbReferenceCode = "addverb_reference_code"

            case uid

            case customJson = "_custom_json"

            case productReturnConfig = "product_return_config"

            case contactNumbers = "contact_numbers"
        }

        public init(address: GetAddressSerializer, addverbReferenceCode: String? = nil, code: String, company: Int, contactNumbers: [SellerPhoneNumber]? = nil, displayName: String, documents: [Document]? = nil, fulfilmentType: String, gstCredentials: InvoiceDetailsSerializer? = nil, holiday: [Storeholiday1]? = nil, manager: LocationManagerSerializer? = nil, name: String, notificationEmails: [String]? = nil, productReturnConfig: ProductReturnConfigSerializer? = nil, stage: String? = nil, storeType: String? = nil, timing: [LocationDayWiseSerializer]? = nil, uid: Int? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.holiday = holiday

            self.notificationEmails = notificationEmails

            self.fulfilmentType = fulfilmentType

            self.manager = manager

            self.documents = documents

            self.name = name

            self.stage = stage

            self.displayName = displayName

            self.warnings = warnings

            self.timing = timing

            self.company = company

            self.gstCredentials = gstCredentials

            self.code = code

            self.address = address

            self.storeType = storeType

            self.addverbReferenceCode = addverbReferenceCode

            self.uid = uid

            self.customJson = customJson

            self.productReturnConfig = productReturnConfig

            self.contactNumbers = contactNumbers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            fulfilmentType = try container.decode(String.self, forKey: .fulfilmentType)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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
                timing = try container.decode([LocationDayWiseSerializer].self, forKey: .timing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(Int.self, forKey: .company)

            do {
                gstCredentials = try container.decode(InvoiceDetailsSerializer.self, forKey: .gstCredentials)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)

            address = try container.decode(GetAddressSerializer.self, forKey: .address)

            do {
                storeType = try container.decode(String.self, forKey: .storeType)

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
                contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(holiday, forKey: .holiday)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(fulfilmentType, forKey: .fulfilmentType)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(addverbReferenceCode, forKey: .addverbReferenceCode)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)
        }
    }
}
