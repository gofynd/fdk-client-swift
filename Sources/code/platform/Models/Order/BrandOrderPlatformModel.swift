

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Brand
         Used By: Order
     */

    class Brand: Codable {
        public var isVirtualInvoice: Bool?

        public var logo: String?

        public var createdOn: Int?

        public var scriptLastRan: String?

        public var modifiedOn: Int?

        public var startDate: String?

        public var company: String

        public var creditNoteAllowed: Bool?

        public var pickupLocation: String?

        public var brandId: Int

        public var brandName: String

        public var creditNoteExpiryDays: Int?

        public var invoicePrefix: String?

        public enum CodingKeys: String, CodingKey {
            case isVirtualInvoice = "is_virtual_invoice"

            case logo

            case createdOn = "created_on"

            case scriptLastRan = "script_last_ran"

            case modifiedOn = "modified_on"

            case startDate = "start_date"

            case company

            case creditNoteAllowed = "credit_note_allowed"

            case pickupLocation = "pickup_location"

            case brandId = "brand_id"

            case brandName = "brand_name"

            case creditNoteExpiryDays = "credit_note_expiry_days"

            case invoicePrefix = "invoice_prefix"
        }

        public init(brandId: Int, brandName: String, company: String, createdOn: Int? = nil, creditNoteAllowed: Bool? = nil, creditNoteExpiryDays: Int? = nil, invoicePrefix: String? = nil, isVirtualInvoice: Bool? = nil, logo: String? = nil, modifiedOn: Int? = nil, pickupLocation: String? = nil, scriptLastRan: String? = nil, startDate: String? = nil) {
            self.isVirtualInvoice = isVirtualInvoice

            self.logo = logo

            self.createdOn = createdOn

            self.scriptLastRan = scriptLastRan

            self.modifiedOn = modifiedOn

            self.startDate = startDate

            self.company = company

            self.creditNoteAllowed = creditNoteAllowed

            self.pickupLocation = pickupLocation

            self.brandId = brandId

            self.brandName = brandName

            self.creditNoteExpiryDays = creditNoteExpiryDays

            self.invoicePrefix = invoicePrefix
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isVirtualInvoice = try container.decode(Bool.self, forKey: .isVirtualInvoice)

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
                createdOn = try container.decode(Int.self, forKey: .createdOn)

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
                modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

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

            company = try container.decode(String.self, forKey: .company)

            do {
                creditNoteAllowed = try container.decode(Bool.self, forKey: .creditNoteAllowed)

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

            brandId = try container.decode(Int.self, forKey: .brandId)

            brandName = try container.decode(String.self, forKey: .brandName)

            do {
                creditNoteExpiryDays = try container.decode(Int.self, forKey: .creditNoteExpiryDays)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoicePrefix = try container.decode(String.self, forKey: .invoicePrefix)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(isVirtualInvoice, forKey: .isVirtualInvoice)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(scriptLastRan, forKey: .scriptLastRan)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(startDate, forKey: .startDate)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(creditNoteAllowed, forKey: .creditNoteAllowed)

            try? container.encode(pickupLocation, forKey: .pickupLocation)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encode(creditNoteExpiryDays, forKey: .creditNoteExpiryDays)

            try? container.encode(invoicePrefix, forKey: .invoicePrefix)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Brand
         Used By: Order
     */

    class Brand: Codable {
        public var isVirtualInvoice: Bool?

        public var logo: String?

        public var createdOn: Int?

        public var scriptLastRan: String?

        public var modifiedOn: Int?

        public var startDate: String?

        public var company: String

        public var creditNoteAllowed: Bool?

        public var pickupLocation: String?

        public var brandId: Int

        public var brandName: String

        public var creditNoteExpiryDays: Int?

        public var invoicePrefix: String?

        public enum CodingKeys: String, CodingKey {
            case isVirtualInvoice = "is_virtual_invoice"

            case logo

            case createdOn = "created_on"

            case scriptLastRan = "script_last_ran"

            case modifiedOn = "modified_on"

            case startDate = "start_date"

            case company

            case creditNoteAllowed = "credit_note_allowed"

            case pickupLocation = "pickup_location"

            case brandId = "brand_id"

            case brandName = "brand_name"

            case creditNoteExpiryDays = "credit_note_expiry_days"

            case invoicePrefix = "invoice_prefix"
        }

        public init(brandId: Int, brandName: String, company: String, createdOn: Int? = nil, creditNoteAllowed: Bool? = nil, creditNoteExpiryDays: Int? = nil, invoicePrefix: String? = nil, isVirtualInvoice: Bool? = nil, logo: String? = nil, modifiedOn: Int? = nil, pickupLocation: String? = nil, scriptLastRan: String? = nil, startDate: String? = nil) {
            self.isVirtualInvoice = isVirtualInvoice

            self.logo = logo

            self.createdOn = createdOn

            self.scriptLastRan = scriptLastRan

            self.modifiedOn = modifiedOn

            self.startDate = startDate

            self.company = company

            self.creditNoteAllowed = creditNoteAllowed

            self.pickupLocation = pickupLocation

            self.brandId = brandId

            self.brandName = brandName

            self.creditNoteExpiryDays = creditNoteExpiryDays

            self.invoicePrefix = invoicePrefix
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isVirtualInvoice = try container.decode(Bool.self, forKey: .isVirtualInvoice)

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
                createdOn = try container.decode(Int.self, forKey: .createdOn)

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
                modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

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

            company = try container.decode(String.self, forKey: .company)

            do {
                creditNoteAllowed = try container.decode(Bool.self, forKey: .creditNoteAllowed)

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

            brandId = try container.decode(Int.self, forKey: .brandId)

            brandName = try container.decode(String.self, forKey: .brandName)

            do {
                creditNoteExpiryDays = try container.decode(Int.self, forKey: .creditNoteExpiryDays)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoicePrefix = try container.decode(String.self, forKey: .invoicePrefix)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(isVirtualInvoice, forKey: .isVirtualInvoice)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(scriptLastRan, forKey: .scriptLastRan)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(startDate, forKey: .startDate)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(creditNoteAllowed, forKey: .creditNoteAllowed)

            try? container.encode(pickupLocation, forKey: .pickupLocation)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encode(creditNoteExpiryDays, forKey: .creditNoteExpiryDays)

            try? container.encode(invoicePrefix, forKey: .invoicePrefix)
        }
    }
}
