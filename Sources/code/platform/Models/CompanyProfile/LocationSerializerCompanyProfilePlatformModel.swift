

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: LocationSerializer
         Used By: CompanyProfile
     */

    class LocationSerializer: Codable {
        public var code: String

        public var gstCredentials: InvoiceDetailsSerializer?

        public var contactNumbers: [SellerPhoneNumber]?

        public var name: String

        public var customJson: [String: Any]?

        public var warnings: [String: Any]?

        public var address: AddressSerializer

        public var company: Int

        public var storeType: String?

        public var manager: LocationManagerSerializer?

        public var autoInvoice: Bool?

        public var uid: Int?

        public var timing: [LocationDayWiseSerializer]?

        public var stage: String?

        public var documents: [Document]?

        public var creditNote: Bool?

        public var holiday: [HolidaySchemaSerializer]?

        public var productReturnConfig: ProductReturnConfigSerializer?

        public var displayName: String

        public var notificationEmails: [String]?

        public var tags: [String]?

        public var defaultOrderAcceptanceTiming: Bool?

        public var orderAcceptanceTiming: [LocationDayWiseSerializer]?

        public var avgOrderProcessingTime: AverageOrderProcessingTime?

        public var bulkShipment: Bool?

        public enum CodingKeys: String, CodingKey {
            case code

            case gstCredentials = "gst_credentials"

            case contactNumbers = "contact_numbers"

            case name

            case customJson = "_custom_json"

            case warnings

            case address

            case company

            case storeType = "store_type"

            case manager

            case autoInvoice = "auto_invoice"

            case uid

            case timing

            case stage

            case documents

            case creditNote = "credit_note"

            case holiday

            case productReturnConfig = "product_return_config"

            case displayName = "display_name"

            case notificationEmails = "notification_emails"

            case tags

            case defaultOrderAcceptanceTiming = "default_order_acceptance_timing"

            case orderAcceptanceTiming = "order_acceptance_timing"

            case avgOrderProcessingTime = "avg_order_processing_time"

            case bulkShipment = "bulk_shipment"
        }

        public init(address: AddressSerializer, autoInvoice: Bool? = nil, avgOrderProcessingTime: AverageOrderProcessingTime? = nil, bulkShipment: Bool? = nil, code: String, company: Int, contactNumbers: [SellerPhoneNumber]? = nil, creditNote: Bool? = nil, defaultOrderAcceptanceTiming: Bool? = nil, displayName: String, documents: [Document]? = nil, gstCredentials: InvoiceDetailsSerializer? = nil, holiday: [HolidaySchemaSerializer]? = nil, manager: LocationManagerSerializer? = nil, name: String, notificationEmails: [String]? = nil, orderAcceptanceTiming: [LocationDayWiseSerializer]? = nil, productReturnConfig: ProductReturnConfigSerializer? = nil, stage: String? = nil, storeType: String? = nil, tags: [String]? = nil, timing: [LocationDayWiseSerializer]? = nil, uid: Int? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.code = code

            self.gstCredentials = gstCredentials

            self.contactNumbers = contactNumbers

            self.name = name

            self.customJson = customJson

            self.warnings = warnings

            self.address = address

            self.company = company

            self.storeType = storeType

            self.manager = manager

            self.autoInvoice = autoInvoice

            self.uid = uid

            self.timing = timing

            self.stage = stage

            self.documents = documents

            self.creditNote = creditNote

            self.holiday = holiday

            self.productReturnConfig = productReturnConfig

            self.displayName = displayName

            self.notificationEmails = notificationEmails

            self.tags = tags

            self.defaultOrderAcceptanceTiming = defaultOrderAcceptanceTiming

            self.orderAcceptanceTiming = orderAcceptanceTiming

            self.avgOrderProcessingTime = avgOrderProcessingTime

            self.bulkShipment = bulkShipment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            code = try container.decode(String.self, forKey: .code)

            do {
                gstCredentials = try container.decode(InvoiceDetailsSerializer.self, forKey: .gstCredentials)

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

            name = try container.decode(String.self, forKey: .name)

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

            address = try container.decode(AddressSerializer.self, forKey: .address)

            company = try container.decode(Int.self, forKey: .company)

            do {
                storeType = try container.decode(String.self, forKey: .storeType)

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
                autoInvoice = try container.decode(Bool.self, forKey: .autoInvoice)

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
                documents = try container.decode([Document].self, forKey: .documents)

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
                holiday = try container.decode([HolidaySchemaSerializer].self, forKey: .holiday)

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

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                defaultOrderAcceptanceTiming = try container.decode(Bool.self, forKey: .defaultOrderAcceptanceTiming)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderAcceptanceTiming = try container.decode([LocationDayWiseSerializer].self, forKey: .orderAcceptanceTiming)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                avgOrderProcessingTime = try container.decode(AverageOrderProcessingTime.self, forKey: .avgOrderProcessingTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bulkShipment = try container.decode(Bool.self, forKey: .bulkShipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(autoInvoice, forKey: .autoInvoice)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(creditNote, forKey: .creditNote)

            try? container.encodeIfPresent(holiday, forKey: .holiday)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(defaultOrderAcceptanceTiming, forKey: .defaultOrderAcceptanceTiming)

            try? container.encodeIfPresent(orderAcceptanceTiming, forKey: .orderAcceptanceTiming)

            try? container.encodeIfPresent(avgOrderProcessingTime, forKey: .avgOrderProcessingTime)

            try? container.encodeIfPresent(bulkShipment, forKey: .bulkShipment)
        }
    }
}
