

import Foundation
public extension PlatformClient {
    /*
         Model: Brand
         Used By: Order
     */

    class Brand: Codable {
        public var creditNoteAllowed: Bool?

        public var scriptLastRan: String?

        public var startDate: String?

        public var pickupLocation: String?

        public var creditNoteExpiryDays: Int?

        public var modifiedOn: Int?

        public var logo: String?

        public var isVirtualInvoice: Bool?

        public var createdOn: Int?

        public var company: String

        public var brandId: Int

        public var invoicePrefix: String?

        public var brandName: String

        public enum CodingKeys: String, CodingKey {
            case creditNoteAllowed = "credit_note_allowed"

            case scriptLastRan = "script_last_ran"

            case startDate = "start_date"

            case pickupLocation = "pickup_location"

            case creditNoteExpiryDays = "credit_note_expiry_days"

            case modifiedOn = "modified_on"

            case logo

            case isVirtualInvoice = "is_virtual_invoice"

            case createdOn = "created_on"

            case company

            case brandId = "brand_id"

            case invoicePrefix = "invoice_prefix"

            case brandName = "brand_name"
        }

        public init(brandId: Int, brandName: String, company: String, createdOn: Int? = nil, creditNoteAllowed: Bool? = nil, creditNoteExpiryDays: Int? = nil, invoicePrefix: String? = nil, isVirtualInvoice: Bool? = nil, logo: String? = nil, modifiedOn: Int? = nil, pickupLocation: String? = nil, scriptLastRan: String? = nil, startDate: String? = nil) {
            self.creditNoteAllowed = creditNoteAllowed

            self.scriptLastRan = scriptLastRan

            self.startDate = startDate

            self.pickupLocation = pickupLocation

            self.creditNoteExpiryDays = creditNoteExpiryDays

            self.modifiedOn = modifiedOn

            self.logo = logo

            self.isVirtualInvoice = isVirtualInvoice

            self.createdOn = createdOn

            self.company = company

            self.brandId = brandId

            self.invoicePrefix = invoicePrefix

            self.brandName = brandName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                creditNoteAllowed = try container.decode(Bool.self, forKey: .creditNoteAllowed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                scriptLastRan = try container.decode(String.self, forKey: .scriptLastRan)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                startDate = try container.decode(String.self, forKey: .startDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pickupLocation = try container.decode(String.self, forKey: .pickupLocation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                creditNoteExpiryDays = try container.decode(Int.self, forKey: .creditNoteExpiryDays)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isVirtualInvoice = try container.decode(Bool.self, forKey: .isVirtualInvoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(Int.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(String.self, forKey: .company)

            brandId = try container.decode(Int.self, forKey: .brandId)

            do {
                invoicePrefix = try container.decode(String.self, forKey: .invoicePrefix)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandName = try container.decode(String.self, forKey: .brandName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(creditNoteAllowed, forKey: .creditNoteAllowed)

            try? container.encode(scriptLastRan, forKey: .scriptLastRan)

            try? container.encode(startDate, forKey: .startDate)

            try? container.encode(pickupLocation, forKey: .pickupLocation)

            try? container.encode(creditNoteExpiryDays, forKey: .creditNoteExpiryDays)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encode(isVirtualInvoice, forKey: .isVirtualInvoice)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encode(invoicePrefix, forKey: .invoicePrefix)

            try? container.encodeIfPresent(brandName, forKey: .brandName)
        }
    }
}
