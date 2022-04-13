import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: PlatformShipmentDetailsBrand
         Used By: Order
     */

    class PlatformShipmentDetailsBrand: Codable {
        public var creditNoteAllowed: Bool?

        public var brandName: String?

        public var modifiedOn: String?

        public var id: Int?

        public var isVirtualInvoice: Bool?

        public var createdOn: String?

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case creditNoteAllowed = "credit_note_allowed"

            case brandName = "brand_name"

            case modifiedOn = "modified_on"

            case id

            case isVirtualInvoice = "is_virtual_invoice"

            case createdOn = "created_on"

            case logo
        }

        public init(brandName: String?, createdOn: String?, creditNoteAllowed: Bool?, id: Int?, isVirtualInvoice: Bool?, logo: String?, modifiedOn: String?) {
            self.creditNoteAllowed = creditNoteAllowed

            self.brandName = brandName

            self.modifiedOn = modifiedOn

            self.id = id

            self.isVirtualInvoice = isVirtualInvoice

            self.createdOn = createdOn

            self.logo = logo
        }

        public func duplicate() -> PlatformShipmentDetailsBrand {
            let dict = self.dictionary!
            let copy = PlatformShipmentDetailsBrand(dictionary: dict)!
            return copy
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
                brandName = try container.decode(String.self, forKey: .brandName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

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
                createdOn = try container.decode(String.self, forKey: .createdOn)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(creditNoteAllowed, forKey: .creditNoteAllowed)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isVirtualInvoice, forKey: .isVirtualInvoice)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}
