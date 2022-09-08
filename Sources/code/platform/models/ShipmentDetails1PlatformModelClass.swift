

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetails1
         Used By: Order
     */

    class ShipmentDetails1: Codable {
        public var deliveryAddressJson: DeliveryAddress

        public var fyndOrderId: String

        public var parentId: String?

        public var affiliateId: String

        public var creditNoteId: String?

        public var isActive: Bool

        public var fulfilmentPriority: Int

        public var sdType: String

        public var packagingType: String

        public var createdAt: Int

        public var ewayBillId: String?

        public var previousShipmentId: String?

        public var affiliateShipmentId: String

        public var deliveryAwbNumber: String?

        public var tags: [String]?

        public var lockStatus: String

        public var parentType: String?

        public var storeInvoiceId: String?

        public var sId: String

        public var handOverContactJson: ShipmentHandOverCustomerContact

        public var billingAddressJson: BillingAddress1

        public var pdfLinks: PDFLinks

        public var meta: ShipmentMeta

        public enum CodingKeys: String, CodingKey {
            case deliveryAddressJson = "delivery_address_json"

            case fyndOrderId = "fynd_order_id"

            case parentId = "parent_id"

            case affiliateId = "affiliate_id"

            case creditNoteId = "credit_note_id"

            case isActive = "is_active"

            case fulfilmentPriority = "fulfilment_priority"

            case sdType = "sd_type"

            case packagingType = "packaging_type"

            case createdAt = "created_at"

            case ewayBillId = "eway_bill_id"

            case previousShipmentId = "previous_shipment_id"

            case affiliateShipmentId = "affiliate_shipment_id"

            case deliveryAwbNumber = "delivery_awb_number"

            case tags

            case lockStatus = "lock_status"

            case parentType = "parent_type"

            case storeInvoiceId = "store_invoice_id"

            case sId = "s_id"

            case handOverContactJson = "hand_over_contact_json"

            case billingAddressJson = "billing_address_json"

            case pdfLinks = "pdf_links"

            case meta
        }

        public init(affiliateId: String, affiliateShipmentId: String, billingAddressJson: BillingAddress1, createdAt: Int, creditNoteId: String? = nil, deliveryAddressJson: DeliveryAddress, deliveryAwbNumber: String? = nil, ewayBillId: String? = nil, fulfilmentPriority: Int, fyndOrderId: String, handOverContactJson: ShipmentHandOverCustomerContact, isActive: Bool, lockStatus: String, meta: ShipmentMeta, packagingType: String, parentId: String? = nil, parentType: String? = nil, pdfLinks: PDFLinks, previousShipmentId: String? = nil, sdType: String, storeInvoiceId: String? = nil, sId: String, tags: [String]? = nil) {
            self.deliveryAddressJson = deliveryAddressJson

            self.fyndOrderId = fyndOrderId

            self.parentId = parentId

            self.affiliateId = affiliateId

            self.creditNoteId = creditNoteId

            self.isActive = isActive

            self.fulfilmentPriority = fulfilmentPriority

            self.sdType = sdType

            self.packagingType = packagingType

            self.createdAt = createdAt

            self.ewayBillId = ewayBillId

            self.previousShipmentId = previousShipmentId

            self.affiliateShipmentId = affiliateShipmentId

            self.deliveryAwbNumber = deliveryAwbNumber

            self.tags = tags

            self.lockStatus = lockStatus

            self.parentType = parentType

            self.storeInvoiceId = storeInvoiceId

            self.sId = sId

            self.handOverContactJson = handOverContactJson

            self.billingAddressJson = billingAddressJson

            self.pdfLinks = pdfLinks

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deliveryAddressJson = try container.decode(DeliveryAddress.self, forKey: .deliveryAddressJson)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            do {
                parentId = try container.decode(String.self, forKey: .parentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            do {
                creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            fulfilmentPriority = try container.decode(Int.self, forKey: .fulfilmentPriority)

            sdType = try container.decode(String.self, forKey: .sdType)

            packagingType = try container.decode(String.self, forKey: .packagingType)

            createdAt = try container.decode(Int.self, forKey: .createdAt)

            do {
                ewayBillId = try container.decode(String.self, forKey: .ewayBillId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                previousShipmentId = try container.decode(String.self, forKey: .previousShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

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

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            do {
                parentType = try container.decode(String.self, forKey: .parentType)

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

            sId = try container.decode(String.self, forKey: .sId)

            handOverContactJson = try container.decode(ShipmentHandOverCustomerContact.self, forKey: .handOverContactJson)

            billingAddressJson = try container.decode(BillingAddress1.self, forKey: .billingAddressJson)

            pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)

            meta = try container.decode(ShipmentMeta.self, forKey: .meta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryAddressJson, forKey: .deliveryAddressJson)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encode(parentId, forKey: .parentId)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encode(creditNoteId, forKey: .creditNoteId)

            try? container.encode(isActive, forKey: .isActive)

            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)

            try? container.encodeIfPresent(sdType, forKey: .sdType)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(ewayBillId, forKey: .ewayBillId)

            try? container.encode(previousShipmentId, forKey: .previousShipmentId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encode(lockStatus, forKey: .lockStatus)

            try? container.encode(parentType, forKey: .parentType)

            try? container.encode(storeInvoiceId, forKey: .storeInvoiceId)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(handOverContactJson, forKey: .handOverContactJson)

            try? container.encodeIfPresent(billingAddressJson, forKey: .billingAddressJson)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
