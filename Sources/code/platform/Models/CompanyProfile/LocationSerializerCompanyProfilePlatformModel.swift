

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: LocationSerializer
         Used By: CompanyProfile
     */

    class LocationSerializer: Codable {
        public var creditNote: Bool?

        public var code: String

        public var address: AddressSerializer

        public var contactNumbers: [SellerPhoneNumber]?

        public var tags: [String]?

        public var customJson: [String: Any]?

        public var autoInvoice: Bool?

        public var bulkShipment: Bool?

        public var timing: [LocationDayWiseSerializer]?

        public var avgOrderProcessingTime: AverageOrderProcessingTime?

        public var holiday: [HolidaySchemaSerializer]?

        public var defaultOrderAcceptanceTiming: Bool?

        public var productReturnConfig: ProductReturnConfigSerializer?

        public var warnings: [String: Any]?

        public var orderAcceptanceTiming: [LocationDayWiseSerializer]?

        public var company: Int

        public var name: String

        public var storeType: String?

        public var documents: [Document]?

        public var stage: String?

        public var uid: Int?

        public var gstCredentials: InvoiceDetailsSerializer?

        public var manager: LocationManagerSerializer?

        public var notificationEmails: [String]?

        public var slug: String?

        public var displayName: String

        public enum CodingKeys: String, CodingKey {
            case creditNote = "credit_note"

            case code

            case address

            case contactNumbers = "contact_numbers"

            case tags

            case customJson = "_custom_json"

            case autoInvoice = "auto_invoice"

            case bulkShipment = "bulk_shipment"

            case timing

            case avgOrderProcessingTime = "avg_order_processing_time"

            case holiday

            case defaultOrderAcceptanceTiming = "default_order_acceptance_timing"

            case productReturnConfig = "product_return_config"

            case warnings

            case orderAcceptanceTiming = "order_acceptance_timing"

            case company

            case name

            case storeType = "store_type"

            case documents

            case stage

            case uid

            case gstCredentials = "gst_credentials"

            case manager

            case notificationEmails = "notification_emails"

            case slug

            case displayName = "display_name"
        }

        public init(address: AddressSerializer, autoInvoice: Bool? = nil, avgOrderProcessingTime: AverageOrderProcessingTime? = nil, bulkShipment: Bool? = nil, code: String, company: Int, contactNumbers: [SellerPhoneNumber]? = nil, creditNote: Bool? = nil, defaultOrderAcceptanceTiming: Bool? = nil, displayName: String, documents: [Document]? = nil, gstCredentials: InvoiceDetailsSerializer? = nil, holiday: [HolidaySchemaSerializer]? = nil, manager: LocationManagerSerializer? = nil, name: String, notificationEmails: [String]? = nil, orderAcceptanceTiming: [LocationDayWiseSerializer]? = nil, productReturnConfig: ProductReturnConfigSerializer? = nil, slug: String? = nil, stage: String? = nil, storeType: String? = nil, tags: [String]? = nil, timing: [LocationDayWiseSerializer]? = nil, uid: Int? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.creditNote = creditNote

            self.code = code

            self.address = address

            self.contactNumbers = contactNumbers

            self.tags = tags

            self.customJson = customJson

            self.autoInvoice = autoInvoice

            self.bulkShipment = bulkShipment

            self.timing = timing

            self.avgOrderProcessingTime = avgOrderProcessingTime

            self.holiday = holiday

            self.defaultOrderAcceptanceTiming = defaultOrderAcceptanceTiming

            self.productReturnConfig = productReturnConfig

            self.warnings = warnings

            self.orderAcceptanceTiming = orderAcceptanceTiming

            self.company = company

            self.name = name

            self.storeType = storeType

            self.documents = documents

            self.stage = stage

            self.uid = uid

            self.gstCredentials = gstCredentials

            self.manager = manager

            self.notificationEmails = notificationEmails

            self.slug = slug

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                creditNote = try container.decode(Bool.self, forKey: .creditNote)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)

            address = try container.decode(AddressSerializer.self, forKey: .address)

            do {
                contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                bulkShipment = try container.decode(Bool.self, forKey: .bulkShipment)

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
                avgOrderProcessingTime = try container.decode(AverageOrderProcessingTime.self, forKey: .avgOrderProcessingTime)

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
                defaultOrderAcceptanceTiming = try container.decode(Bool.self, forKey: .defaultOrderAcceptanceTiming)

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
                warnings = try container.decode([String: Any].self, forKey: .warnings)

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

            company = try container.decode(Int.self, forKey: .company)

            name = try container.decode(String.self, forKey: .name)

            do {
                storeType = try container.decode(String.self, forKey: .storeType)

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
                stage = try container.decode(String.self, forKey: .stage)

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
                gstCredentials = try container.decode(InvoiceDetailsSerializer.self, forKey: .gstCredentials)

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
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(creditNote, forKey: .creditNote)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(autoInvoice, forKey: .autoInvoice)

            try? container.encodeIfPresent(bulkShipment, forKey: .bulkShipment)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(avgOrderProcessingTime, forKey: .avgOrderProcessingTime)

            try? container.encodeIfPresent(holiday, forKey: .holiday)

            try? container.encodeIfPresent(defaultOrderAcceptanceTiming, forKey: .defaultOrderAcceptanceTiming)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(warnings, forKey: .warnings)

            try? container.encodeIfPresent(orderAcceptanceTiming, forKey: .orderAcceptanceTiming)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)

            try? container.encodeIfPresent(manager, forKey: .manager)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
