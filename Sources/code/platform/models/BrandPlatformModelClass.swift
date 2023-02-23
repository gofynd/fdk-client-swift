

import Foundation
public extension PlatformClient {
    /*
         Model: Brand
         Used By: Order
     */

    class Brand: Codable {
        public var modifiedOn: Int?

        public var company: String

        public var createdOn: Int?

        public var startDate: String?

        public var creditNoteExpiryDays: Int?

        public var pickupLocation: String?

        public var creditNoteAllowed: Bool?

        public var logo: String?

        public var scriptLastRan: String?

        public var brandName: String

        public var isVirtualInvoice: Bool?

        public var brandId: Int

        public var invoicePrefix: String?

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case company

            case createdOn = "created_on"

            case startDate = "start_date"

            case creditNoteExpiryDays = "credit_note_expiry_days"

            case pickupLocation = "pickup_location"

            case creditNoteAllowed = "credit_note_allowed"

            case logo

            case scriptLastRan = "script_last_ran"

            case brandName = "brand_name"

            case isVirtualInvoice = "is_virtual_invoice"

            case brandId = "brand_id"

            case invoicePrefix = "invoice_prefix"
        }

        public init(brandId: Int, brandName: String, company: String, createdOn: Int? = nil, creditNoteAllowed: Bool? = nil, creditNoteExpiryDays: Int? = nil, invoicePrefix: String? = nil, isVirtualInvoice: Bool? = nil, logo: String? = nil, modifiedOn: Int? = nil, pickupLocation: String? = nil, scriptLastRan: String? = nil, startDate: String? = nil) {
            self.modifiedOn = modifiedOn

            self.company = company

            self.createdOn = createdOn

            self.startDate = startDate

            self.creditNoteExpiryDays = creditNoteExpiryDays

            self.pickupLocation = pickupLocation

            self.creditNoteAllowed = creditNoteAllowed

            self.logo = logo

            self.scriptLastRan = scriptLastRan

            self.brandName = brandName

            self.isVirtualInvoice = isVirtualInvoice

            self.brandId = brandId

            self.invoicePrefix = invoicePrefix
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(String.self, forKey: .company)

            do {
                createdOn = try container.decode(Int.self, forKey: .createdOn)

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
                creditNoteExpiryDays = try container.decode(Int.self, forKey: .creditNoteExpiryDays)

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
                creditNoteAllowed = try container.decode(Bool.self, forKey: .creditNoteAllowed)

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
                scriptLastRan = try container.decode(String.self, forKey: .scriptLastRan)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandName = try container.decode(String.self, forKey: .brandName)

            do {
                isVirtualInvoice = try container.decode(Bool.self, forKey: .isVirtualInvoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandId = try container.decode(Int.self, forKey: .brandId)

            do {
                invoicePrefix = try container.decode(String.self, forKey: .invoicePrefix)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(startDate, forKey: .startDate)

            try? container.encode(creditNoteExpiryDays, forKey: .creditNoteExpiryDays)

            try? container.encode(pickupLocation, forKey: .pickupLocation)

            try? container.encodeIfPresent(creditNoteAllowed, forKey: .creditNoteAllowed)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encode(scriptLastRan, forKey: .scriptLastRan)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encode(isVirtualInvoice, forKey: .isVirtualInvoice)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encode(invoicePrefix, forKey: .invoicePrefix)
        }
    }
}
