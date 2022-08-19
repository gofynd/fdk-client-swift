

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetails1
         Used By: Order
     */

    class ShipmentDetails1: Codable {
        public var meta: ShipmentMeta

        public var lockStatus: String

        public var creditNoteId: String?

        public var deliveryAwbNumber: String?

        public var sId: String

        public var affiliateId: String

        public var tags: [String]?

        public var packagingType: String

        public var parentId: String?

        public var sdType: String

        public var ewayBillId: String?

        public var deliveryAddressJson: DeliveryAddress

        public var affiliateShipmentId: String

        public var billingAddressJson: BillingAddress1

        public var createdAt: Int

        public var fyndOrderId: String

        public var pdfLinks: PDFLinks

        public var fulfilmentPriority: Int

        public var isActive: Bool

        public var handOverContactJson: ShipmentHandOverCustomerContact

        public var parentType: String?

        public var previousShipmentId: String?

        public var storeInvoiceId: String?

        public enum CodingKeys: String, CodingKey {
            case meta

            case lockStatus = "lock_status"

            case creditNoteId = "credit_note_id"

            case deliveryAwbNumber = "delivery_awb_number"

            case sId = "s_id"

            case affiliateId = "affiliate_id"

            case tags

            case packagingType = "packaging_type"

            case parentId = "parent_id"

            case sdType = "sd_type"

            case ewayBillId = "eway_bill_id"

            case deliveryAddressJson = "delivery_address_json"

            case affiliateShipmentId = "affiliate_shipment_id"

            case billingAddressJson = "billing_address_json"

            case createdAt = "created_at"

            case fyndOrderId = "fynd_order_id"

            case pdfLinks = "pdf_links"

            case fulfilmentPriority = "fulfilment_priority"

            case isActive = "is_active"

            case handOverContactJson = "hand_over_contact_json"

            case parentType = "parent_type"

            case previousShipmentId = "previous_shipment_id"

            case storeInvoiceId = "store_invoice_id"
        }

        public init(affiliateId: String, affiliateShipmentId: String, billingAddressJson: BillingAddress1, createdAt: Int, creditNoteId: String? = nil, deliveryAddressJson: DeliveryAddress, deliveryAwbNumber: String? = nil, ewayBillId: String? = nil, fulfilmentPriority: Int, fyndOrderId: String, handOverContactJson: ShipmentHandOverCustomerContact, isActive: Bool, lockStatus: String, meta: ShipmentMeta, packagingType: String, parentId: String? = nil, parentType: String? = nil, pdfLinks: PDFLinks, previousShipmentId: String? = nil, sdType: String, storeInvoiceId: String? = nil, sId: String, tags: [String]? = nil) {
            self.meta = meta

            self.lockStatus = lockStatus

            self.creditNoteId = creditNoteId

            self.deliveryAwbNumber = deliveryAwbNumber

            self.sId = sId

            self.affiliateId = affiliateId

            self.tags = tags

            self.packagingType = packagingType

            self.parentId = parentId

            self.sdType = sdType

            self.ewayBillId = ewayBillId

            self.deliveryAddressJson = deliveryAddressJson

            self.affiliateShipmentId = affiliateShipmentId

            self.billingAddressJson = billingAddressJson

            self.createdAt = createdAt

            self.fyndOrderId = fyndOrderId

            self.pdfLinks = pdfLinks

            self.fulfilmentPriority = fulfilmentPriority

            self.isActive = isActive

            self.handOverContactJson = handOverContactJson

            self.parentType = parentType

            self.previousShipmentId = previousShipmentId

            self.storeInvoiceId = storeInvoiceId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            meta = try container.decode(ShipmentMeta.self, forKey: .meta)

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            do {
                creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sId = try container.decode(String.self, forKey: .sId)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            packagingType = try container.decode(String.self, forKey: .packagingType)

            do {
                parentId = try container.decode(String.self, forKey: .parentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sdType = try container.decode(String.self, forKey: .sdType)

            do {
                ewayBillId = try container.decode(String.self, forKey: .ewayBillId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryAddressJson = try container.decode(DeliveryAddress.self, forKey: .deliveryAddressJson)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            billingAddressJson = try container.decode(BillingAddress1.self, forKey: .billingAddressJson)

            createdAt = try container.decode(Int.self, forKey: .createdAt)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)

            fulfilmentPriority = try container.decode(Int.self, forKey: .fulfilmentPriority)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            handOverContactJson = try container.decode(ShipmentHandOverCustomerContact.self, forKey: .handOverContactJson)

            do {
                parentType = try container.decode(String.self, forKey: .parentType)

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

            do {
                storeInvoiceId = try container.decode(String.self, forKey: .storeInvoiceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(lockStatus, forKey: .lockStatus)

            try? container.encode(creditNoteId, forKey: .creditNoteId)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encode(parentId, forKey: .parentId)

            try? container.encodeIfPresent(sdType, forKey: .sdType)

            try? container.encode(ewayBillId, forKey: .ewayBillId)

            try? container.encodeIfPresent(deliveryAddressJson, forKey: .deliveryAddressJson)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(billingAddressJson, forKey: .billingAddressJson)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)

            try? container.encode(isActive, forKey: .isActive)

            try? container.encodeIfPresent(handOverContactJson, forKey: .handOverContactJson)

            try? container.encode(parentType, forKey: .parentType)

            try? container.encode(previousShipmentId, forKey: .previousShipmentId)

            try? container.encode(storeInvoiceId, forKey: .storeInvoiceId)
        }
    }
}
