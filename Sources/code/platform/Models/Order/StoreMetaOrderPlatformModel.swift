

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreMeta
         Used By: Order
     */

    class StoreMeta: Codable {
        public var timing: [[String: Any]]?

        public var productReturnConfig: [String: Any]?

        public var documents: StoreDocuments?

        public var ewaybillPortalDetails: [String: Any]?

        public var displayName: String

        public var gstCredentials: StoreGstCredentials

        public var stage: String

        public var additionalContactDetails: [String: Any]?

        public var einvoicePortalDetails: EInvoicePortalDetails?

        public var gstNumber: String?

        public var notificationEmails: [String]?

        public enum CodingKeys: String, CodingKey {
            case timing

            case productReturnConfig = "product_return_config"

            case documents

            case ewaybillPortalDetails = "ewaybill_portal_details"

            case displayName = "display_name"

            case gstCredentials = "gst_credentials"

            case stage

            case additionalContactDetails = "additional_contact_details"

            case einvoicePortalDetails = "einvoice_portal_details"

            case gstNumber = "gst_number"

            case notificationEmails = "notification_emails"
        }

        public init(additionalContactDetails: [String: Any]? = nil, displayName: String, documents: StoreDocuments? = nil, einvoicePortalDetails: EInvoicePortalDetails? = nil, ewaybillPortalDetails: [String: Any]? = nil, gstCredentials: StoreGstCredentials, gstNumber: String? = nil, notificationEmails: [String]? = nil, productReturnConfig: [String: Any]? = nil, stage: String, timing: [[String: Any]]? = nil) {
            self.timing = timing

            self.productReturnConfig = productReturnConfig

            self.documents = documents

            self.ewaybillPortalDetails = ewaybillPortalDetails

            self.displayName = displayName

            self.gstCredentials = gstCredentials

            self.stage = stage

            self.additionalContactDetails = additionalContactDetails

            self.einvoicePortalDetails = einvoicePortalDetails

            self.gstNumber = gstNumber

            self.notificationEmails = notificationEmails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                timing = try container.decode([[String: Any]].self, forKey: .timing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productReturnConfig = try container.decode([String: Any].self, forKey: .productReturnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                documents = try container.decode(StoreDocuments.self, forKey: .documents)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ewaybillPortalDetails = try container.decode([String: Any].self, forKey: .ewaybillPortalDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            gstCredentials = try container.decode(StoreGstCredentials.self, forKey: .gstCredentials)

            stage = try container.decode(String.self, forKey: .stage)

            do {
                additionalContactDetails = try container.decode([String: Any].self, forKey: .additionalContactDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                einvoicePortalDetails = try container.decode(EInvoicePortalDetails.self, forKey: .einvoicePortalDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstNumber = try container.decode(String.self, forKey: .gstNumber)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(ewaybillPortalDetails, forKey: .ewaybillPortalDetails)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(additionalContactDetails, forKey: .additionalContactDetails)

            try? container.encodeIfPresent(einvoicePortalDetails, forKey: .einvoicePortalDetails)

            try? container.encodeIfPresent(gstNumber, forKey: .gstNumber)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreMeta
         Used By: Order
     */

    class StoreMeta: Codable {
        public var timing: [[String: Any]]?

        public var productReturnConfig: [String: Any]?

        public var documents: StoreDocuments?

        public var ewaybillPortalDetails: [String: Any]?

        public var displayName: String

        public var gstCredentials: StoreGstCredentials

        public var stage: String

        public var additionalContactDetails: [String: Any]?

        public var einvoicePortalDetails: EInvoicePortalDetails?

        public var gstNumber: String?

        public var notificationEmails: [String]?

        public enum CodingKeys: String, CodingKey {
            case timing

            case productReturnConfig = "product_return_config"

            case documents

            case ewaybillPortalDetails = "ewaybill_portal_details"

            case displayName = "display_name"

            case gstCredentials = "gst_credentials"

            case stage

            case additionalContactDetails = "additional_contact_details"

            case einvoicePortalDetails = "einvoice_portal_details"

            case gstNumber = "gst_number"

            case notificationEmails = "notification_emails"
        }

        public init(additionalContactDetails: [String: Any]? = nil, displayName: String, documents: StoreDocuments? = nil, einvoicePortalDetails: EInvoicePortalDetails? = nil, ewaybillPortalDetails: [String: Any]? = nil, gstCredentials: StoreGstCredentials, gstNumber: String? = nil, notificationEmails: [String]? = nil, productReturnConfig: [String: Any]? = nil, stage: String, timing: [[String: Any]]? = nil) {
            self.timing = timing

            self.productReturnConfig = productReturnConfig

            self.documents = documents

            self.ewaybillPortalDetails = ewaybillPortalDetails

            self.displayName = displayName

            self.gstCredentials = gstCredentials

            self.stage = stage

            self.additionalContactDetails = additionalContactDetails

            self.einvoicePortalDetails = einvoicePortalDetails

            self.gstNumber = gstNumber

            self.notificationEmails = notificationEmails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                timing = try container.decode([[String: Any]].self, forKey: .timing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productReturnConfig = try container.decode([String: Any].self, forKey: .productReturnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                documents = try container.decode(StoreDocuments.self, forKey: .documents)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ewaybillPortalDetails = try container.decode([String: Any].self, forKey: .ewaybillPortalDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            gstCredentials = try container.decode(StoreGstCredentials.self, forKey: .gstCredentials)

            stage = try container.decode(String.self, forKey: .stage)

            do {
                additionalContactDetails = try container.decode([String: Any].self, forKey: .additionalContactDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                einvoicePortalDetails = try container.decode(EInvoicePortalDetails.self, forKey: .einvoicePortalDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstNumber = try container.decode(String.self, forKey: .gstNumber)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(ewaybillPortalDetails, forKey: .ewaybillPortalDetails)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(additionalContactDetails, forKey: .additionalContactDetails)

            try? container.encodeIfPresent(einvoicePortalDetails, forKey: .einvoicePortalDetails)

            try? container.encodeIfPresent(gstNumber, forKey: .gstNumber)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
        }
    }
}