

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Brand
         Used By: Order
     */

    class Brand: Codable {
        public var pickupLocation: String?

        public var company: String

        public var modifiedOn: Int?

        public var brandName: String

        public var brandId: Int

        public var createdOn: Int?

        public var creditNoteExpiryDays: Int?

        public var isVirtualInvoice: Bool?

        public var logo: String?

        public var invoicePrefix: String?

        public var scriptLastRan: String?

        public var startDate: String?

        public var creditNoteAllowed: Bool?

        public enum CodingKeys: String, CodingKey {
            case pickupLocation = "pickup_location"

            case company

            case modifiedOn = "modified_on"

            case brandName = "brand_name"

            case brandId = "brand_id"

            case createdOn = "created_on"

            case creditNoteExpiryDays = "credit_note_expiry_days"

            case isVirtualInvoice = "is_virtual_invoice"

            case logo

            case invoicePrefix = "invoice_prefix"

            case scriptLastRan = "script_last_ran"

            case startDate = "start_date"

            case creditNoteAllowed = "credit_note_allowed"
        }

        public init(brandId: Int, brandName: String, company: String, createdOn: Int? = nil, creditNoteAllowed: Bool? = nil, creditNoteExpiryDays: Int? = nil, invoicePrefix: String? = nil, isVirtualInvoice: Bool? = nil, logo: String? = nil, modifiedOn: Int? = nil, pickupLocation: String? = nil, scriptLastRan: String? = nil, startDate: String? = nil) {
            self.pickupLocation = pickupLocation

            self.company = company

            self.modifiedOn = modifiedOn

            self.brandName = brandName

            self.brandId = brandId

            self.createdOn = createdOn

            self.creditNoteExpiryDays = creditNoteExpiryDays

            self.isVirtualInvoice = isVirtualInvoice

            self.logo = logo

            self.invoicePrefix = invoicePrefix

            self.scriptLastRan = scriptLastRan

            self.startDate = startDate

            self.creditNoteAllowed = creditNoteAllowed
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pickupLocation = try container.decode(String.self, forKey: .pickupLocation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(String.self, forKey: .company)

            do {
                modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandName = try container.decode(String.self, forKey: .brandName)

            brandId = try container.decode(Int.self, forKey: .brandId)

            do {
                createdOn = try container.decode(Int.self, forKey: .createdOn)

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
                invoicePrefix = try container.decode(String.self, forKey: .invoicePrefix)

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
                creditNoteAllowed = try container.decode(Bool.self, forKey: .creditNoteAllowed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(pickupLocation, forKey: .pickupLocation)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(creditNoteExpiryDays, forKey: .creditNoteExpiryDays)

            try? container.encode(isVirtualInvoice, forKey: .isVirtualInvoice)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encode(invoicePrefix, forKey: .invoicePrefix)

            try? container.encode(scriptLastRan, forKey: .scriptLastRan)

            try? container.encode(startDate, forKey: .startDate)

            try? container.encodeIfPresent(creditNoteAllowed, forKey: .creditNoteAllowed)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Brand
         Used By: Order
     */

    class Brand: Codable {
        public var pickupLocation: String?

        public var company: String

        public var modifiedOn: Int?

        public var brandName: String

        public var brandId: Int

        public var createdOn: Int?

        public var creditNoteExpiryDays: Int?

        public var isVirtualInvoice: Bool?

        public var logo: String?

        public var invoicePrefix: String?

        public var scriptLastRan: String?

        public var startDate: String?

        public var creditNoteAllowed: Bool?

        public enum CodingKeys: String, CodingKey {
            case pickupLocation = "pickup_location"

            case company

            case modifiedOn = "modified_on"

            case brandName = "brand_name"

            case brandId = "brand_id"

            case createdOn = "created_on"

            case creditNoteExpiryDays = "credit_note_expiry_days"

            case isVirtualInvoice = "is_virtual_invoice"

            case logo

            case invoicePrefix = "invoice_prefix"

            case scriptLastRan = "script_last_ran"

            case startDate = "start_date"

            case creditNoteAllowed = "credit_note_allowed"
        }

        public init(brandId: Int, brandName: String, company: String, createdOn: Int? = nil, creditNoteAllowed: Bool? = nil, creditNoteExpiryDays: Int? = nil, invoicePrefix: String? = nil, isVirtualInvoice: Bool? = nil, logo: String? = nil, modifiedOn: Int? = nil, pickupLocation: String? = nil, scriptLastRan: String? = nil, startDate: String? = nil) {
            self.pickupLocation = pickupLocation

            self.company = company

            self.modifiedOn = modifiedOn

            self.brandName = brandName

            self.brandId = brandId

            self.createdOn = createdOn

            self.creditNoteExpiryDays = creditNoteExpiryDays

            self.isVirtualInvoice = isVirtualInvoice

            self.logo = logo

            self.invoicePrefix = invoicePrefix

            self.scriptLastRan = scriptLastRan

            self.startDate = startDate

            self.creditNoteAllowed = creditNoteAllowed
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pickupLocation = try container.decode(String.self, forKey: .pickupLocation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(String.self, forKey: .company)

            do {
                modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandName = try container.decode(String.self, forKey: .brandName)

            brandId = try container.decode(Int.self, forKey: .brandId)

            do {
                createdOn = try container.decode(Int.self, forKey: .createdOn)

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
                invoicePrefix = try container.decode(String.self, forKey: .invoicePrefix)

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
                creditNoteAllowed = try container.decode(Bool.self, forKey: .creditNoteAllowed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(pickupLocation, forKey: .pickupLocation)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(creditNoteExpiryDays, forKey: .creditNoteExpiryDays)

            try? container.encode(isVirtualInvoice, forKey: .isVirtualInvoice)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encode(invoicePrefix, forKey: .invoicePrefix)

            try? container.encode(scriptLastRan, forKey: .scriptLastRan)

            try? container.encode(startDate, forKey: .startDate)

            try? container.encodeIfPresent(creditNoteAllowed, forKey: .creditNoteAllowed)
        }
    }
}
