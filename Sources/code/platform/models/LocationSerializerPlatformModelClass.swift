

import Foundation
public extension PlatformClient {
    /*
         Model: LocationSerializer
         Used By: CompanyProfile
     */

    class LocationSerializer: Codable {
        public var fulfilmentType: String?

        public var name: String

        public var addverbReferenceCode: String?

        public var holiday: [Storeholiday1]?

        public var productReturnConfig: ProductReturnConfigSerializer?

        public var documents: [Document]?

        public var address: GetAddressSerializer

        public var contactNumbers: [SellerPhoneNumber]?

        public var manager: LocationManagerSerializer?

        public var customJson: [String: Any]?

        public var timing: [LocationDayWiseSerializer]?

        public var company: Int

        public var notificationEmails: [String]?

        public var displayName: String

        public var programType: String?

        public var gstCredentials: InvoiceDetailsSerializer?

        public var warnings: [String: Any]?

        public var uid: Int?

        public var stage: String?

        public var code: String

        public var storeType: String?

        public enum CodingKeys: String, CodingKey {
            case fulfilmentType = "fulfilment_type"

            case name

            case addverbReferenceCode = "addverb_reference_code"

            case holiday

            case productReturnConfig = "product_return_config"

            case documents

            case address

            case contactNumbers = "contact_numbers"

            case manager

            case customJson = "_custom_json"

            case timing

            case company

            case notificationEmails = "notification_emails"

            case displayName = "display_name"

            case programType = "program_type"

            case gstCredentials = "gst_credentials"

            case warnings

            case uid

            case stage

            case code

            case storeType = "store_type"
        }

        public init(address: GetAddressSerializer, addverbReferenceCode: String? = nil, code: String, company: Int, contactNumbers: [SellerPhoneNumber]? = nil, displayName: String, documents: [Document]? = nil, fulfilmentType: String? = nil, gstCredentials: InvoiceDetailsSerializer? = nil, holiday: [Storeholiday1]? = nil, manager: LocationManagerSerializer? = nil, name: String, notificationEmails: [String]? = nil, productReturnConfig: ProductReturnConfigSerializer? = nil, programType: String? = nil, stage: String? = nil, storeType: String? = nil, timing: [LocationDayWiseSerializer]? = nil, uid: Int? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.fulfilmentType = fulfilmentType

            self.name = name

            self.addverbReferenceCode = addverbReferenceCode

            self.holiday = holiday

            self.productReturnConfig = productReturnConfig

            self.documents = documents

            self.address = address

            self.contactNumbers = contactNumbers

            self.manager = manager

            self.customJson = customJson

            self.timing = timing

            self.company = company

            self.notificationEmails = notificationEmails

            self.displayName = displayName

            self.programType = programType

            self.gstCredentials = gstCredentials

            self.warnings = warnings

            self.uid = uid

            self.stage = stage

            self.code = code

            self.storeType = storeType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fulfilmentType = try container.decode(String.self, forKey: .fulfilmentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                addverbReferenceCode = try container.decode(String.self, forKey: .addverbReferenceCode)

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

            address = try container.decode(GetAddressSerializer.self, forKey: .address)

            do {
                contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)

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

            do {
                timing = try container.decode([LocationDayWiseSerializer].self, forKey: .timing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(Int.self, forKey: .company)

            do {
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                programType = try container.decode(String.self, forKey: .programType)

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

            do {
                stage = try container.decode(String.self, forKey: .stage)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fulfilmentType, forKey: .fulfilmentType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(addverbReferenceCode, forKey: .addverbReferenceCode)

            try? container.encodeIfPresent(holiday, forKey: .holiday)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(programType, forKey: .programType)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(storeType, forKey: .storeType)
        }
    }
}
