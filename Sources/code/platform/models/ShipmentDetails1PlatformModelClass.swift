

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetails1
         Used By: Order
     */

    class ShipmentDetails1: Codable {
        public var parentType: String?

        public var parentId: String?

        public var fulfilmentPriority: Int

        public var meta: ShipmentMeta

        public var fyndOrderId: String

        public var deliveryAwbNumber: String?

        public var sId: String

        public var affiliateId: String

        public var sdType: String

        public var pdfLinks: PDFLinks

        public var deliveryAddressJson: DeliveryAddress

        public var ewayBillId: String?

        public var creditNoteId: String?

        public var billingAddressJson: BillingAddress1

        public var isActive: Bool

        public var lockStatus: String

        public var affiliateShipmentId: String

        public var previousShipmentId: String?

        public var storeInvoiceId: String?

        public var handOverContactJson: ShipmentHandOverCustomerContact

        public var tags: [String]?

        public var packagingType: String

        public var createdAt: Int

        public enum CodingKeys: String, CodingKey {
            case parentType = "parent_type"

            case parentId = "parent_id"

            case fulfilmentPriority = "fulfilment_priority"

            case meta

            case fyndOrderId = "fynd_order_id"

            case deliveryAwbNumber = "delivery_awb_number"

            case sId = "s_id"

            case affiliateId = "affiliate_id"

            case sdType = "sd_type"

            case pdfLinks = "pdf_links"

            case deliveryAddressJson = "delivery_address_json"

            case ewayBillId = "eway_bill_id"

            case creditNoteId = "credit_note_id"

            case billingAddressJson = "billing_address_json"

            case isActive = "is_active"

            case lockStatus = "lock_status"

            case affiliateShipmentId = "affiliate_shipment_id"

            case previousShipmentId = "previous_shipment_id"

            case storeInvoiceId = "store_invoice_id"

            case handOverContactJson = "hand_over_contact_json"

            case tags

            case packagingType = "packaging_type"

            case createdAt = "created_at"
        }

        public init(affiliateId: String, affiliateShipmentId: String, billingAddressJson: BillingAddress1, createdAt: Int, creditNoteId: String? = nil, deliveryAddressJson: DeliveryAddress, deliveryAwbNumber: String? = nil, ewayBillId: String? = nil, fulfilmentPriority: Int, fyndOrderId: String, handOverContactJson: ShipmentHandOverCustomerContact, isActive: Bool, lockStatus: String, meta: ShipmentMeta, packagingType: String, parentId: String? = nil, parentType: String? = nil, pdfLinks: PDFLinks, previousShipmentId: String? = nil, sdType: String, storeInvoiceId: String? = nil, sId: String, tags: [String]? = nil) {
            self.parentType = parentType

            self.parentId = parentId

            self.fulfilmentPriority = fulfilmentPriority

            self.meta = meta

            self.fyndOrderId = fyndOrderId

            self.deliveryAwbNumber = deliveryAwbNumber

            self.sId = sId

            self.affiliateId = affiliateId

            self.sdType = sdType

            self.pdfLinks = pdfLinks

            self.deliveryAddressJson = deliveryAddressJson

            self.ewayBillId = ewayBillId

            self.creditNoteId = creditNoteId

            self.billingAddressJson = billingAddressJson

            self.isActive = isActive

            self.lockStatus = lockStatus

            self.affiliateShipmentId = affiliateShipmentId

            self.previousShipmentId = previousShipmentId

            self.storeInvoiceId = storeInvoiceId

            self.handOverContactJson = handOverContactJson

            self.tags = tags

            self.packagingType = packagingType

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                parentType = try container.decode(String.self, forKey: .parentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentId = try container.decode(String.self, forKey: .parentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfilmentPriority = try container.decode(Int.self, forKey: .fulfilmentPriority)

            meta = try container.decode(ShipmentMeta.self, forKey: .meta)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            do {
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            sdType = try container.decode(String.self, forKey: .sdType)

            pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)

            deliveryAddressJson = try container.decode(DeliveryAddress.self, forKey: .deliveryAddressJson)

            do {
                ewayBillId = try container.decode(String.self, forKey: .ewayBillId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingAddressJson = try container.decode(BillingAddress1.self, forKey: .billingAddressJson)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                previousShipmentId = try container.decode(String.self, forKey: .previousShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeInvoiceId = try container.decode(String.self, forKey: .storeInvoiceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            handOverContactJson = try container.decode(ShipmentHandOverCustomerContact.self, forKey: .handOverContactJson)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            packagingType = try container.decode(String.self, forKey: .packagingType)

            createdAt = try container.decode(Int.self, forKey: .createdAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(parentType, forKey: .parentType)

            try? container.encode(parentId, forKey: .parentId)

            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(sdType, forKey: .sdType)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(deliveryAddressJson, forKey: .deliveryAddressJson)

            try? container.encode(ewayBillId, forKey: .ewayBillId)

            try? container.encode(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(billingAddressJson, forKey: .billingAddressJson)

            try? container.encode(isActive, forKey: .isActive)

            try? container.encode(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encode(previousShipmentId, forKey: .previousShipmentId)

            try? container.encode(storeInvoiceId, forKey: .storeInvoiceId)

            try? container.encodeIfPresent(handOverContactJson, forKey: .handOverContactJson)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}
