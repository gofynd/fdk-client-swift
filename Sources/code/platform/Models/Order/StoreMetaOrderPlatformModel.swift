

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreMeta
         Used By: Order
     */

    class StoreMeta: Codable {
        public var ewaybillPortalDetails: [String: Any]?

        public var timing: [[String: Any]]?

        public var stage: String

        public var displayName: String

        public var documents: StoreDocuments?

        public var einvoicePortalDetails: EInvoicePortalDetails?

        public var additionalContactDetails: [String: Any]?

        public var gstCredentials: StoreGstCredentials

        public var notificationEmails: [String]?

        public var productReturnConfig: [String: Any]?

        public var gstNumber: String?

        public enum CodingKeys: String, CodingKey {
            case ewaybillPortalDetails = "ewaybill_portal_details"

            case timing

            case stage

            case displayName = "display_name"

            case documents

            case einvoicePortalDetails = "einvoice_portal_details"

            case additionalContactDetails = "additional_contact_details"

            case gstCredentials = "gst_credentials"

            case notificationEmails = "notification_emails"

            case productReturnConfig = "product_return_config"

            case gstNumber = "gst_number"
        }

        public init(additionalContactDetails: [String: Any]? = nil, displayName: String, documents: StoreDocuments? = nil, einvoicePortalDetails: EInvoicePortalDetails? = nil, ewaybillPortalDetails: [String: Any]? = nil, gstCredentials: StoreGstCredentials, gstNumber: String? = nil, notificationEmails: [String]? = nil, productReturnConfig: [String: Any]? = nil, stage: String, timing: [[String: Any]]? = nil) {
            self.ewaybillPortalDetails = ewaybillPortalDetails

            self.timing = timing

            self.stage = stage

            self.displayName = displayName

            self.documents = documents

            self.einvoicePortalDetails = einvoicePortalDetails

            self.additionalContactDetails = additionalContactDetails

            self.gstCredentials = gstCredentials

            self.notificationEmails = notificationEmails

            self.productReturnConfig = productReturnConfig

            self.gstNumber = gstNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                ewaybillPortalDetails = try container.decode([String: Any].self, forKey: .ewaybillPortalDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timing = try container.decode([[String: Any]].self, forKey: .timing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            stage = try container.decode(String.self, forKey: .stage)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                documents = try container.decode(StoreDocuments.self, forKey: .documents)

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
                additionalContactDetails = try container.decode([String: Any].self, forKey: .additionalContactDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstCredentials = try container.decode(StoreGstCredentials.self, forKey: .gstCredentials)

            do {
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

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
                gstNumber = try container.decode(String.self, forKey: .gstNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ewaybillPortalDetails, forKey: .ewaybillPortalDetails)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(einvoicePortalDetails, forKey: .einvoicePortalDetails)

            try? container.encodeIfPresent(additionalContactDetails, forKey: .additionalContactDetails)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(gstNumber, forKey: .gstNumber)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreMeta
         Used By: Order
     */

    class StoreMeta: Codable {
        public var ewaybillPortalDetails: [String: Any]?

        public var timing: [[String: Any]]?

        public var stage: String

        public var displayName: String

        public var documents: StoreDocuments?

        public var einvoicePortalDetails: EInvoicePortalDetails?

        public var additionalContactDetails: [String: Any]?

        public var gstCredentials: StoreGstCredentials

        public var notificationEmails: [String]?

        public var productReturnConfig: [String: Any]?

        public var gstNumber: String?

        public enum CodingKeys: String, CodingKey {
            case ewaybillPortalDetails = "ewaybill_portal_details"

            case timing

            case stage

            case displayName = "display_name"

            case documents

            case einvoicePortalDetails = "einvoice_portal_details"

            case additionalContactDetails = "additional_contact_details"

            case gstCredentials = "gst_credentials"

            case notificationEmails = "notification_emails"

            case productReturnConfig = "product_return_config"

            case gstNumber = "gst_number"
        }

        public init(additionalContactDetails: [String: Any]? = nil, displayName: String, documents: StoreDocuments? = nil, einvoicePortalDetails: EInvoicePortalDetails? = nil, ewaybillPortalDetails: [String: Any]? = nil, gstCredentials: StoreGstCredentials, gstNumber: String? = nil, notificationEmails: [String]? = nil, productReturnConfig: [String: Any]? = nil, stage: String, timing: [[String: Any]]? = nil) {
            self.ewaybillPortalDetails = ewaybillPortalDetails

            self.timing = timing

            self.stage = stage

            self.displayName = displayName

            self.documents = documents

            self.einvoicePortalDetails = einvoicePortalDetails

            self.additionalContactDetails = additionalContactDetails

            self.gstCredentials = gstCredentials

            self.notificationEmails = notificationEmails

            self.productReturnConfig = productReturnConfig

            self.gstNumber = gstNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                ewaybillPortalDetails = try container.decode([String: Any].self, forKey: .ewaybillPortalDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timing = try container.decode([[String: Any]].self, forKey: .timing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            stage = try container.decode(String.self, forKey: .stage)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                documents = try container.decode(StoreDocuments.self, forKey: .documents)

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
                additionalContactDetails = try container.decode([String: Any].self, forKey: .additionalContactDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstCredentials = try container.decode(StoreGstCredentials.self, forKey: .gstCredentials)

            do {
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

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
                gstNumber = try container.decode(String.self, forKey: .gstNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ewaybillPortalDetails, forKey: .ewaybillPortalDetails)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(einvoicePortalDetails, forKey: .einvoicePortalDetails)

            try? container.encodeIfPresent(additionalContactDetails, forKey: .additionalContactDetails)

            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)

            try? container.encodeIfPresent(gstNumber, forKey: .gstNumber)
        }
    }
}
